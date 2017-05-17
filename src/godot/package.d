/++
This module contains the important functions and attributes for interfacing
between Godot and D libraries.

This module is VERY unfinished!
+/
module godot;

import godot.c;
import godot.core;
import godot.classes.object;

import std.format;
import std.range;
import std.traits, std.meta, std.typecons;
import std.experimental.allocator, std.experimental.allocator.mallocator;
import core.stdc.stdlib : malloc, free;
debug import std.stdio;

enum RPCMode
{
	disabled,
	remote,
	sync,
	master,
	slave,
}

/++
A UDA with which base Godot classes are marked. NOT used by new D classes.
+/
package enum GodotBaseClass;

/++
Determine if T is a class originally from the Godot Engine (but *not* a new D
class registered to Godot).
+/
template isGodotBaseClass(T)
{
	static if(is(T == struct)) enum bool isGodotBaseClass =
		hasUDA!(T, GodotBaseClass);
	else enum bool isGodotBaseClass = false;
}


/++
A UDA to mark a method that should be registered into Godot
+/
struct Method
{
	string nameOverride = null;
	RPCMode rpcMode = RPCMode.disabled;
}

/++
Mixin template with which to allow a D class to "inherit" a Godot class.

Because the actual Godot Object is allocated separately from the D class being
attached to it, true inheritance cannot be used by D classes. This mixin will
generate a close approximation of inheritance by forwarding Base's methods and
implicitly converting to Base using `alias this`.
+/
mixin template extends(Base : GodotObject)
{
	// TODO: or private with property getter?
	Base self; /// pointer to Godot base object
	
	/++
	Implicitly handles both passing the Derived class to functions taking Base
	and calling non-overridden functions on Base.
	+/
	alias self this;
	
	/// HACK to work around evil `alias this` bug in which cast(void*) is SELF rather than this
	/// https://issues.dlang.org/show_bug.cgi?id=6777
	void* opCast(T : void*)()
	{
		import std.traits;
		alias This = typeof(this);
		static assert(!is(Unqual!This == Unqual!Base));
		union U{ void* ptr; This c; }
		U u;
		u.c = this;
		return u.ptr;
	}
	const(void*) opCast(T : const(void*))() const
	{
		import std.traits;
		alias This = typeof(this);
		static assert(!is(Unqual!This == Unqual!Base));
		union U{ const(void*) ptr; const(This) c; }
		U u;
		u.c = this;
		return u.ptr;
	}
}

/++
Determine if T is a D type that extends a Godot base class.

Note that D classes registered to Godot don't *have* to extend Godot classes.
+/
template extendsGodotBaseClass(T)
{
	static if(is(T == class)) enum bool extendsGodotBaseClass =
		hasMember!(T, "self") && isGodotBaseClass!(typeof(T.self));
	else enum bool extendsGodotBaseClass = false;
}

private alias GodotMemberUDAs = AliasSeq!(Method, /*Property, Signal*/);
private enum bool isMemberUDA(T) = staticIndexOf!(T, GodotMemberUDAs) != -1;

private enum string dName(alias a) = __traits(identifier, a);
private template godotName(alias a, Type) if(isMemberUDA!Type && hasUDA!(a, Type))
{
	alias udas = getUDAs!(a, Type);
	static assert(udas.length == 1, "Multiple "~Type.stringof~" UDAs on "~
		fullyQualifiedName!a~"? Why?");
	
	static if(is( udas[0] )) enum string godotName = dName!a;
	else
	{
		enum Method uda = udas[0];
		enum string godotName = uda.nameOverride;
	}
}

private enum bool isGodotMember(alias m, Type) = isMemberUDA!Type && hasUDA!(m, Type);

package template godotMethods(T)
{
	alias mfs(alias mName) = MemberFunctionsTuple!(T, mName);
	alias allMfs = staticMap!(mfs, __traits(allMembers, T));
	alias isMethod(alias mf) = hasUDA!(mf, Method);
	
	alias godotMethods = Filter!(isMethod, allMfs);
	
	alias methodName(alias mf) = godotName!(mf, Method);
	alias godotNames = Filter!(methodName, godotMethods);
	static assert(godotNames.length == NoDuplicates!godotNames.length, T.stringof~
		" methods can't have overloads. Rename one with @Method(\"new_name\").");
	/// TODO: better error message listing which are duplicated
}

// TODO: properties

// TODO: signals

/++
Register a class and all its $(D @GodotMethod) member functions into Godot.
+/
void register(T)() if(is(T == class))
{
	static if(extendsGodotBaseClass!T) alias Base = typeof(T.self);
	else alias Base = GodotObject; // Default base class - GDScript uses Reference
	
	enum immutable(char*) name = T.stringof; // TODO: add rename UDA
	enum immutable(char*) baseName = Base.stringof; /// FIXME: wrong - internal_name needed!
	
	debug writefln("Registering D class %s", T.stringof);
	
	auto icf = godot_instance_create_func(&createFunc!T, null, null);
	auto idf = godot_instance_destroy_func(&destroyFunc!T, null, null);
	godot_script_register_class(name, baseName, icf, idf);
	
	foreach(mf; godotMethods!T)
	{
		enum string dName = __traits(identifier, mf);
		enum immutable(char*) funcName = godotName!(mf, Method);
		alias udas = getUDAs!(mf, Method);
		
		auto wrapped = &mf; // a *function* pointer (not delegate) to mf
		
		alias Ret = ReturnType!wrapped;
		alias Args = Parameters!wrapped;
		alias Wrapper = MethodWrapper!(T, Ret, Args);
		
		godot_method_attributes ma;
		static if(is( udas[0] )) ma.rpc_type = godot_method_rpc_mode
			.GODOT_METHOD_RPC_MODE_DISABLED;
		else
		{
			ma.rpc_type = cast(godot_method_rpc_mode)udas[0].rpcMode;
		}
		
		godot_instance_method md;
		md.method_data = Wrapper.make(wrapped);
		md.method = &Wrapper.callMethod;
		md.free_func = &free;
		
		debug writefln("	Registering method %s.%s as \"%s\"",T.stringof, dName,
			godotName!(mf, Method));
		godot_script_register_method(name, funcName, ma, md);
	}
	
	// TODO: properties, signals
}

/++
Variadic template for method wrappers.

Params:
	T = the class that owns the method
	R = the return type (can be void)
	A = the argument types (can be empty)
+/
private struct MethodWrapper(T, R, A...)
{
	/++
	Type of the wrapped delegate's *function pointer*.
	This, together with the `this` pointer, forms the delegate that will be
	called from $(D callMethod).
	+/
	alias WrappedDelegateFunc = R function(A);
	
	
	WrappedDelegateFunc method = null;
	
	/++
	C function passed to Godot that calls the wrapped method
	+/
	extern(C) // for calling convention
	static godot_variant callMethod(godot_object o, void* methodData,
		void* userData, int numArgs, godot_variant** args)
	{
		// TODO: check types for Variant compatibility, give a better error here
		// TODO: check numArgs, accounting for D arg defaults
		
		Variant v = Variant.nil;
		
		WrappedDelegateFunc func = (cast(MethodWrapper*)methodData).method;
		T obj = cast(T)userData;
		
		/++
		FIXME
		
		Base class inheritance is NOT accounted for here. Note one major
		difference between D delegates and C++ Member pointers: delegates
		resolve virtual overrides when they're created, NOT when they're
		called. Thus, depending on how Godot methods are bound, a different
		method may be necessary...
		
		See article: $(LINK https://digitalmars.com/articles/b68.html)
		+/
		R delegate(A) actualDelegate;
		actualDelegate.funcptr = func;
		actualDelegate.ptr = cast(void*)obj;
		
		A[ai] variantToArg(size_t ai)()
		{
			return (cast(Variant*)args[ai]).as!(A[ai]);
		}
		template ArgCall(size_t ai)
		{
			alias ArgCall = variantToArg!ai; //A[i] function()
		}
		
		alias argIota = aliasSeqOf!(iota(A.length));
		alias argCall = staticMap!(ArgCall, argIota);
		
		static if(is(R == void))
		{
			actualDelegate(argCall);
		}
		else
		{
			v = actualDelegate(argCall);
		}
		
		return cast(godot_variant)v;
	}
	
	
	
	static void* make(WrappedDelegateFunc m)
	{
		MethodWrapper* ret = cast(MethodWrapper*)malloc(MethodWrapper.sizeof);
		ret.method = m;
		return ret;
	}
}



extern(C) private void* createFunc(T)(godot_object self, void* methodData)
{
	T t = Mallocator.instance.make!T();
	static if(extendsGodotBaseClass!T)
	{
		t.self = cast(typeof(t.self))(cast(void*)self);
	}
	// TODO: init
	return cast(void*)t;
}

extern(C) private void destroyFunc(T)(godot_object self, void* methodData, void* userData)
{
	T t = cast(T)userData;
	Mallocator.instance.dispose(t);
}

/++
The default Godot-D assert handler redirects assert messages to the Godot
error handlers (including Debugger tab in editor and system console).

To use it, assign it to $(D core.exception.assertHandler) when initializing Godot-D:
---
export extern(C) void godot_native_init(godot_native_init_options* options)
{
	Runtime.initialize();
	assertHandler = &godotAssertHandler;
	...
}
---

Unlike the default D assert handler, this one doesn't terminate the program,
allowing the messages to remain in Godot's Debugger tab and matching how Godot
error macros behave.
+/
nothrow
void godotAssertHandler(string file, size_t line, string msg)
{
	import core.exception;
	import std.experimental.allocator.mallocator;
	
	char[] buffer = cast(char[])Mallocator.instance.allocate(file.length + msg.length + 2);
	scope(exit) Mallocator.instance.deallocate(cast(void[])buffer);
	
	buffer[0..file.length] = file[];
	buffer[file.length] = '\0';
	buffer[file.length+1 .. $-1] = msg[];
	buffer[$-1] = '\0';
	
	godot_print_error(&buffer.ptr[file.length+1], "", buffer.ptr, cast(int)line);
	
	version(assert) // any `assert(x)` gets compiled; usually a debug version
	{
		// TODO: if in Editor Debugger, debug_break like GDScript asserts
	}
	else // only `assert(0)`/`assert(false)` get compiled; usually a release version
	{
		// crash on always-false asserts
		throw new AssertError(msg, file, line);
	}
}




