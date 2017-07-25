/++
This module contains the important functions and attributes for interfacing
between Godot and D libraries.

This module is VERY unfinished!
+/
module godot;

import godot.c;
import godot.core;
import godot.object;

import std.format;
import std.range;
import std.traits, std.meta, std.typecons;
import std.experimental.allocator, std.experimental.allocator.mallocator;
import core.stdc.stdlib : malloc, free;
debug import std.stdio;
import core.exception : assertHandler;

/++
Pass this enum to GodotNativeInit and GodotNativeTerminate to skip D runtime
initialization/termination.
+/
enum NoDRuntime;

/++
This mixin will generate the GDNative initialization function for this D library.

It will first initialize the D runtime, unless you pass $(D NoDRuntime) to it.

The following template arguments will be processed in the order they're passed:
 - Classes will be registered into Godot.
 - Functions will be called. Optionally can take a $(D godot_native_init_options*)
argument (from the $(D godot.c) module).
+/
mixin template GodotNativeInit(Args...)
{
	private static import godot.c;
	
	private __gshared void* _GODOT_library_handle;
	
	/// BUG: extern(C) ignored inside mixin template for removing D name mangling.
	/// https://issues.dlang.org/show_bug.cgi?id=12575
	/// workaround: manually specify unmangled name.
	pragma(mangle, "godot_gdnative_init")
	export extern(C) static void godot_gdnative_init(godot.c.godot_gdnative_init_options* options)
	{
		import std.meta, std.traits;
		import core.runtime : Runtime;
		static if(staticIndexOf!(NoDRuntime, Args) == -1) Runtime.initialize();
		
		import core.exception : assertHandler;
		assertHandler = (options.in_editor) ? (&godotAssertHandlerEditorDebug)
			: (&godotAssertHandlerCrash);
		
		foreach(Arg; Args)
		{
			static if(is(Arg)) // is type
			{
				
			}
			else static if( isCallable!Arg )
			{
				static if( is(typeof(Arg())) ) Arg();
				else static if( is(typeof(Arg(options))) ) Arg(options);
			}
			else static if(Arg == NoDRuntime) { }
			else
			{
				static assert(0, "Unrecognized argument <"~Arg.stringof~"> passed to GodotNativeInit");
			}
		}
	}
	pragma(mangle, "godot_nativescript_init")
	export extern(C) static void godot_nativescript_init(void* handle)
	{
		import std.meta, std.traits;
		
		_GODOT_library_handle = handle;
		
		foreach(Arg; Args)
		{
			static if(is(Arg)) // is type
			{
				static assert(is(Arg == class) && extendsGodotBaseClass!Arg,
					Arg.stringof ~ " is not a D class that extends a Godot class!");
				register!Arg(_GODOT_library_handle);
			}
			else static if( isCallable!Arg )
			{
				
			}
			else static if(Arg == NoDRuntime) { }
			else
			{
				static assert(0, "Unrecognized argument <"~Arg.stringof~"> passed to GodotNativeInit");
			}
		}
	}
}

/++
This mixin will generate the GDNative termination function for this D library.

The following template arguments will be processed in the order they're passed:
 - Functions will be called. Optionally can take a $(D godot_native_terminate_options*)
argument (from the $(D godot.c) module).

(It's not necessary to un-register classes from Godot.)

It will also terminate the D runtime, unless you pass $(D NoDRuntime) to it.
+/
mixin template GodotNativeTerminate(Args...)
{
	private static import godot.c;
	/// BUG: extern(C) ignored inside mixin template for removing D name mangling.
	/// https://issues.dlang.org/show_bug.cgi?id=12575
	/// workaround: manually specify unmangled name.
	pragma(mangle, "godot_gdnative_terminate")
	export extern(C) static void godot_gdnative_terminate(godot.c.godot_gdnative_terminate_options* options)
	{
		import std.meta, std.traits;
		foreach(Arg; Args)
		{
			static if(is(Arg)) static assert(0, "Can't pass a type <"~Arg.stringof~"> to GodotNativeTerminate");
			else static if( isCallable!Arg && is(typeof(Arg())) )
			{
				Arg();
			}
			else static if( isCallable!Arg && is(typeof(Arg(options))) )
			{
				Arg(options);
			}
			else static if(Arg == NoDRuntime) { }
			else
			{
				static assert(0, "Unrecognized argument <"~Arg.stringof~"> passed to GodotNativeInit");
			}
		}
		
		import core.runtime : Runtime;
		static if(staticIndexOf!(NoDRuntime, Args) == -1) Runtime.terminate();
	}
}

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
A UDA to change the Godot name of a method, property, or signal. Useful for
overloads, which D supports but Godot does not.
+/
struct Rename
{
	string name;
}

/++
A UDA to mark a method that should be registered into Godot
+/
struct Method
{
	RPCMode rpcMode = RPCMode.disabled;
}

/++
A UDA to mark a public variable OR accessor methods as a property in Godot.

Using just the type as a UDA uses default configuration. The UDA can also be
constructed at compile-time to customize how the property should be registered
into Godot.
+/
struct Property
{
	enum Hint
	{
		none, /// no hint provided.
		range, /// hintText = "min,max,step,slider; //slider is optional"
		expRange, /// hintText = "min,max,step", exponential edit
		enumType, /// hintText= "val1,val2,val3,etc"
		expEasing, /// exponential easing funciton (math::ease)
		length, /// hintText= "length" (as integer)
		spriteFrame,
		keyAccel, /// hintText= "length" (as integer)
		flags, /// hintText= "flag1,flag2,etc" (as bit flags)
		layers2DRender,
		layers2DPhysics,
		layers3DRender,
		layers3DPhysics,
		file, /// a file path must be passed, hintText (optionally) is a filter "*.png,*.wav,*.doc,"
		dir, /// a directort path must be passed
		globalFile, /// a file path must be passed, hintText (optionally) is a filter "*.png,*.wav,*.doc,"
		globalDir, /// a directort path must be passed
		resourceType, /// a resource object type
		multilineText, /// used for string properties that can contain multiple lines
		colorNoAlpha, /// used for ignoring alpha component when editing a color
		imageCompressLossy,
		imageCompressLossless,
		objectId,
		typeString, /// a type string, the hint is the base type to choose
		nodePathToEditedNode, /// so something else can provide this (used in scripts)
		methodOfVariantType, /// a method of a type
		methodOfBaseType, /// a method of a base type
		methodOfInstance, /// a method of an instance
		methodOfScript, /// a method of a script & base
		propertyOfVariantType, /// a property of a type
		propertyOfBaseType, /// a property of a base type
		propertyOfInstance, /// a property of an instance
		propertyOfScript, /// a property of a script & base
	}
	
	enum Usage
	{
		storage = 1,
		editor = 2,
		network = 4,
		editorHelper = 8,
		checkable = 16, /// used for editing global variables
		checked = 32, /// used for editing global variables
		internationalized = 64, /// hint for internationalized strings
		group = 128, /// used for grouping props in the editor
		category = 256,
		storeIfNonZero = 512, /// only store if nonzero
		storeIfNonOne = 1024, /// only store if false
		noInstanceState = 2048,
		restartIfChanged = 4096,
		scriptVariable = 8192,
		storeIfNull = 16384,
		animateAsTrigger = 32768,
		updateAllIfModified = 65536,
		
		defaultUsage = storage | editor | network,
		defaultIntl = storage | editor | network | internationalized,
		noEditor = storage | network,
	}
	
	Hint hint = Hint.none;
	string hintString = "";
	Usage usage = Usage.defaultUsage;
	RPCMode rpcMode = RPCMode.disabled;
	
	this(Hint hint, string hintString = "", Usage usage = Usage.defaultUsage,
		RPCMode rpcMode = RPCMode.disabled)
	{
		this.hint = hint;
		this.hintString = hintString;
		this.usage = usage;
		this.rpcMode = rpcMode;
	}
	
	this(Usage usage, Hint hint = Hint.none, string hintString = "",
		RPCMode rpcMode = RPCMode.disabled)
	{
		this.hint = hint;
		this.hintString = hintString;
		this.usage = usage;
		this.rpcMode = rpcMode;
	}
}

template RefOrT(T) if(extendsGodotBaseClass!T)
{
	static if(staticIndexOf!(Reference, typeof(T.owner).BaseClasses) == -1) alias RefOrT = T;
	else alias RefOrT = T; /// TODO: Ref!T;
}

/++
A UDA for marking script variables that should be automatically created when
the script is created, right before _init() is called.

Options for automatically deleting or adding as child node the tagged variable
can be set in the UDA.
+/
struct RAII
{
	bool autoCreate = true; /// create it when the script is created
	bool autoDelete = true; /// delete it when the script is destroyed
	bool autoAddChild = true; /// add it as a child (only for Node types)
	
	private import godot.node;
	package enum bool canAddChild(R, Owner) = is(GodotClass!R : Node)
		&& is(GodotClass!Owner : Node);
	
	static RAII makeDefault(R, Owner)()
	{
		import godot.reference, godot.node, godot.resource;
		RAII ret;
		static if( is(GodotClass!R : Reference) ) ret.autoDelete = false; // ref-counted
		static if( canAddChild!(R, Owner) )
		{
			ret.autoAddChild = true;
			ret.autoDelete = false; // owned by parent node
		}
		return ret;
	}
}
/// TODO: support static arrays

private void initialize(T)(T t) if(extendsGodotBaseClass!T)
{
	import godot.node;
	
	template isRAII(string memberName)
	{
		static if(__traits(getProtection, __traits(getMember, T, memberName)) == "public")
			enum bool isRAII = hasUDA!( __traits(getMember, T, memberName), RAII);
		else enum bool isRAII = false;
	}
	foreach(n; Filter!(isRAII, FieldNameTuple!T ))
	{
		alias M = typeof(mixin("t."~n));
		static assert(getUDAs!(mixin("t."~n), RAII).length == 1, "Multiple RAIIs on "
			~T.stringof~"."~n);
		
		enum RAII raii = is(getUDAs!(mixin("t."~n), RAII)[0]) ?
			RAII.makeDefault!(M, T)() : getUDAs!(mixin("t."~n), RAII)[0];
		
		static if(raii.autoCreate)
		{
			mixin("t."~n) = memnew!M();
			static if( raii.autoAddChild && RAII.canAddChild!(M, T) )
			{
				t.owner.add_child( mixin("t."~n) );
			}
		}
	}
	
	// call _init
	foreach(mf; godotMethods!T)
	{
		enum string funcName = godotName!mf;
		alias Args = Parameters!mf;
		static if(funcName == "_init" && Args.length == 0) t._init();
	}
}

private void finalize(T)(T t) if(extendsGodotBaseClass!T)
{
	import godot.node;
	
	template isRAII(string memberName)
	{
		static if(__traits(getProtection, __traits(getMember, T, memberName)) == "public")
			enum bool isRAII = hasUDA!( __traits(getMember, T, memberName), RAII);
		else enum bool isRAII = false;
	}
	foreach(n; Filter!(isRAII, FieldNameTuple!T ))
	{
		alias M = typeof(mixin("t."~n));
		enum RAII raii(string rn : n) = is(getUDAs!(mixin("t."~n), RAII)[0]) ?
			RAII.makeDefault!(M, T)() : getUDAs!(mixin("t."~n), RAII)[0];
		
		static if(raii!n.autoDelete)
		{
			memdelete(mixin("t."~n));
		}
	}
}

/++
Allocate a new T and attach it to a new Godot object.
+/
T memnew(T)() if(extendsGodotBaseClass!T)
{
	import std.experimental.allocator, std.experimental.allocator.mallocator;
	static import godot;
	
	T t = Mallocator.instance.make!T();
	t.owner = typeof(T.owner)._new();
	
	godot.initialize(t);
	
	return t;
}

/++
Destroy a T and its attached Godot object.
+/
void memdelete(T)(T t) if(extendsGodotBaseClass!T)
{
	t.owner.free(); // owner will handle disposing of t
}

T memnew(T)() if(isGodotBaseClass!T)
{
	/// FIXME: block those that aren't marked instanciable in API JSON (actually a generator bug)
	return T._new(); /// TODO: remove _new and use only this function?
}

void memdelete(T)(T t) if(isGodotBaseClass!T)
{
	t.free();
}

/++
Base class for D native scripts. Native script instances will be attached to a
Godot (C++) object of Base class.

To simulate OOP inheritance, also include `alias owner this;` in your class.
+/
class GodotScript(Base) if(isGodotBaseClass!Base)
{
	Base owner;
	
	/// HACK to work around evil bug in which cast(void*) invokes `alias this`
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
Determine if T is a D native script (extends a Godot base class).
+/
template extendsGodotBaseClass(T)
{
	static if(is(T == class) && hasMember!(T, "owner"))
	{
		enum bool extendsGodotBaseClass = isGodotBaseClass!(typeof(T.owner));
	}
	else enum bool extendsGodotBaseClass = false;
}

/++
Get the Godot class of T (the class of the `owner` for D native scripts)
+/
template GodotClass(T)
{
	static if(isGodotBaseClass!T) alias GodotClass = T;
	else static if(extendsGodotBaseClass!T) alias GodotClass = typeof(T.owner);
}

/++
Determine if T is any Godot class (base C++ class or D native script, but NOT
a godot.core struct)
+/
enum bool isGodotClass(T) = extendsGodotBaseClass!T || isGodotBaseClass!T;

private enum string dName(alias a) = __traits(identifier, a);
private template godotName(alias a)
{
	alias udas = getUDAs!(a, Rename);
	static if(udas.length == 0) enum string godotName = __traits(identifier, a);
	else
	{
	    static assert(udas.length == 1, "Multiple Rename UDAs on "~
		    fullyQualifiedName!a~"? Why?");
	    
	    static if(is( udas[0] )) static assert(0, "Construct the UDA with a string: @Rename(\"name\")");
	    else
	    {
		    enum Rename uda = udas[0];
		    enum string godotName = uda.name;
	    }
	}
}

package template godotMethods(T)
{
	alias mfs(alias mName) = MemberFunctionsTuple!(T, mName);
	alias allMfs = staticMap!(mfs, __traits(allMembers, T));
	enum bool isMethod(alias mf) = hasUDA!(mf, Method);
	
	alias godotMethods = Filter!(isMethod, allMfs);
	
	alias godotNames = Filter!(godotName, godotMethods);
	static assert(godotNames.length == NoDuplicates!godotNames.length, T.stringof~
		" methods can't have overloads. Rename one with @Method(\"new_name\").");
	/// TODO: better error message listing which are duplicated
}

package template godotPropertyGetters(T)
{
	alias mfs(alias mName) = MemberFunctionsTuple!(T, mName);
	alias allMfs = staticMap!(mfs, __traits(allMembers, T));
	template isGetter(alias mf)
	{
		enum bool isGetter = hasUDA!(mf, Property) && !is(ReturnType!mf == void);
	}
	
	alias godotPropertyGetters = Filter!(isGetter, allMfs);
	
	alias godotNames = Filter!(godotName, godotPropertyGetters);
	static assert(godotNames.length == NoDuplicates!godotNames.length, T.stringof~
		" property getters can't have overloads. Rename one with @Property(\"new_name\").");
	/// TODO: better error message listing which are duplicated
}

package template godotPropertySetters(T)
{
	alias mfs(alias mName) = MemberFunctionsTuple!(T, mName);
	alias allMfs = staticMap!(mfs, __traits(allMembers, T));
	template isSetter(alias mf)
	{
		enum bool isSetter = hasUDA!(mf, Property) && is(ReturnType!mf == void);
	}
	
	alias godotPropertySetters = Filter!(isSetter, allMfs);
	
	alias godotNames = Filter!(godotName, godotPropertySetters);
	static assert(godotNames.length == NoDuplicates!godotNames.length, T.stringof~
		" property setters can't have overloads. Rename one with @Property(\"new_name\").");
	/// TODO: better error message listing which are duplicated
}

package template godotPropertyNames(T)
{
	alias godotPropertyNames = NoDuplicates!(staticMap!(godotName, godotPropertyGetters!T,
		godotPropertySetters!T/*, godotPropertyVariables!T*/));
}

/// get the common Variant type for a set of function or variable aliases
private template extractPropertyVariantType(seq...)
{
	template Type(alias a)
	{
		static if(isFunction!a && is(ReturnType!a == void)) alias Type = Parameters!a[0];
		else static if(isFunction!a) alias Type = ReturnType!a;
		//else alias Type = typeof(a);
		
		static assert(Variant.compatible!Type, "Property type "~
			Type.stringof~" is incompatible with Variant.");
	}
	alias types = NoDuplicates!(  staticMap!( Variant.variantTypeOf, staticMap!(Type, seq) )  );
	static assert(types.length == 1); /// TODO: better error message
	enum extractPropertyVariantType = types[0];
}

private template extractPropertyUDA(seq...)
{
	template udas(alias a)
	{
		alias udas = getUDAs!(a, Property);
	}
	enum bool isUDAValue(alias a) = !is(a);
	alias values = Filter!(isUDAValue, staticMap!(udas, seq));
	
	static if(values.length == 0) enum Property extractPropertyUDA = Property.init;
	else static if(values.length == 1) enum Property extractPropertyUDA = values[0];
	else
	{
		// verify that they all have the same value, to avoid wierdness
		enum Property extractPropertyUDA = values[0];
		enum bool isSameAsFirst(Property p) = extractPropertyUDA == p;
		static assert(allSatisfy!(isSameAsFirst, values[1..$]));
	}
}
// TODO: properties

// TODO: signals

private void nop() { }

/++
Register a class and all its $(D @GodotMethod) member functions into Godot.
+/
void register(T)(void* handle) if(is(T == class))
{
	static if(extendsGodotBaseClass!T) alias Base = typeof(T.owner);
	else alias Base = GodotObject; // Default base class - GDScript uses Reference
	
	enum immutable(char*) name = T.stringof; // TODO: add rename UDA
	enum immutable(char*) baseName = Base._GODOT_internal_name;
	
	debug writefln("Registering D class %s", T.stringof);
	
	auto icf = godot_instance_create_func(&createFunc!T, null, null);
	auto idf = godot_instance_destroy_func(&destroyFunc!T, null, null);
	godot_nativescript_register_class(handle, name, baseName, icf, idf);
	
	// register a no-op function that indicates this is a D class
	{
		alias Wrapper = MethodWrapper!(T, void);
		auto wrapped = &nop;
		
		godot_instance_method md;
		md.method_data = Wrapper.make(wrapped);
		md.method = &Wrapper.callMethod;
		md.free_func = &free;
		
		godot_nativescript_register_method(handle, name, "_GDNATIVE_D_typeid", godot_method_attributes.init, md);
	}
	
	foreach(mf; godotMethods!T)
	{
		enum string dName = __traits(identifier, mf);
		enum immutable(char*) funcName = godotName!mf;
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
			godotName!mf);
		godot_nativescript_register_method(handle, name, funcName, ma, md);
	}
	
	enum bool matchName(string p, alias a) = (godotName!a == p);
	foreach(pName; godotPropertyNames!T)
	{
		enum immutable(char*) propName = pName;
		
		alias getterMatches = Filter!(ApplyLeft!(matchName, pName), godotPropertyGetters!T);
		static assert(getterMatches.length <= 1); /// TODO: error message
		alias setterMatches = Filter!(ApplyLeft!(matchName, pName), godotPropertySetters!T);
		static assert(setterMatches.length <= 1);
		//alias varMatches = Filter!(ApplyLeft!(matchName, pName), godotPropertyVariables!T);
		//static assert(varMatches.length <= 1);
		//static assert(getterMatches.length + setterMatches.length + varMatches.length <= 2);
		
		godot_property_set_func sf;
		godot_property_get_func gf;
		godot_property_attributes attr;
		
		enum Variant.Type vt = extractPropertyVariantType!(getterMatches, setterMatches/*, varMatches*/);
		attr.type = cast(godot_int)vt;
		
		enum Property uda = extractPropertyUDA!(getterMatches, setterMatches/*, varMatches*/);
		attr.rset_type = cast(godot_method_rpc_mode)uda.rpcMode;
		attr.hint = cast(godot_property_hint)uda.hint;
		static if(uda.hintString) godot_string_new_data(&attr.hint_string,
			uda.hintString.ptr, cast(int)uda.hintString.length);
		else godot_string_new(&attr.hint_string);
		attr.usage = cast(godot_property_usage_flags)uda.usage;
		
		/// TODO: default value how?
		/+static if(varMatches.length)
		{
			
		}
		else+/
		{
			godot_variant_new_nil(&attr.default_value);
		}
		
		
		static if(getterMatches.length)
		{
			auto gw = &getterMatches[0];
			alias GetWrapper = MethodWrapper!(T, ReturnType!gw);
			gf.method_data = GetWrapper.make(gw);
			gf.get_func = &GetWrapper.callPropertyGet;
			gf.free_func = &free;
		}
		/+else static if(varMatches.length)
		{
			
		}+/
		else
		{
			gf.get_func = &emptyGetter;
		}
		
		static if(setterMatches.length)
		{
			auto sw = &setterMatches[0];
			alias SetWrapper = MethodWrapper!(T, void, Parameters!sw[0]);
			sf.method_data = SetWrapper.make(sw);
			sf.set_func = &SetWrapper.callPropertySet;
			sf.free_func = &free;
		}
		/+else static if(varMatches.length)
		{
			
		}+/
		else
		{
			sf.set_func = &emptySetter;
		}
		
		godot_nativescript_register_property(handle, name, propName, &attr, sf, gf);
	}
	// TODO: signals
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
	
	/++
	C function passed to Godot if this is a property getter
	+/
	static if(!is(R == void) && A.length == 0)
	extern(C) // for calling convention
	static godot_variant callPropertyGet(godot_object o, void* methodData,
		void* userData)
	{
		godot_variant vd;
		godot_variant_new_nil(&vd);
		Variant* v = cast(Variant*)&vd; // just a pointer; no destructor will be called
		
		WrappedDelegateFunc func = (cast(MethodWrapper*)methodData).method;
		T obj = cast(T)userData;
		
		/++
		FIXME
		+/
		R delegate(A) actualDelegate;
		actualDelegate.funcptr = func;
		actualDelegate.ptr = userData;
		
		*v = actualDelegate();
		
		return vd;
	}
	
	/++
	C function passed to Godot if this is a property setter
	+/
	static if(is(R == void) && A.length == 1)
	extern(C) // for calling convention
	static void callPropertySet(godot_object o, void* methodData,
		void* userData, godot_variant* arg)
	{
		Variant* v = cast(Variant*)arg;
		
		WrappedDelegateFunc func = (cast(MethodWrapper*)methodData).method;
		T obj = cast(T)userData;
		
		/++
		FIXME
		+/
		R delegate(A) actualDelegate;
		actualDelegate.funcptr = func;
		actualDelegate.ptr = userData;
		
		auto vt = v.as!(A[0]);
		actualDelegate(vt);
	}
	
	
	
	static void* make(WrappedDelegateFunc m)
	{
		MethodWrapper* ret = cast(MethodWrapper*)malloc(MethodWrapper.sizeof);
		ret.method = m;
		return ret;
	}
}



extern(C) private void emptySetter(godot_object self, void* methodData,
	void* userData, godot_variant value)
{
	assert(0, "Can't call empty property setter");
	//return;
}

extern(C) private godot_variant emptyGetter(godot_object self, void* methodData,
	void* userData)
{
	assert(0, "Can't call empty property getter");
	/+godot_variant v;
	godot_variant_new_nil(&v);
	return v;+/
}

extern(C) private void* createFunc(T)(godot_object self, void* methodData)
{
	static import godot;
	
	T t = Mallocator.instance.make!T();
	static if(extendsGodotBaseClass!T)
	{
		t.owner._godot_object = self;
	}
	
	godot.initialize(t);
	
	return cast(void*)t;
}

extern(C) private void destroyFunc(T)(godot_object self, void* methodData, void* userData)
{
	static import godot;
	
	T t = cast(T)userData;
	godot.finalize(t);
	Mallocator.instance.dispose(t);
}

/++
The release-mode Godot-D assert handler redirects assert messages to the Godot
error handlers and terminates the program.
+/
nothrow
void godotAssertHandlerCrash(string file, size_t line, string msg)
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
	
	throw new AssertError(msg, file, line);
}

/++
The debug-mode Godot-D assert handler redirects assert messages to the Godot
error handlers (including Debugger tab in editor and system console).

Unlike the default D assert handler, this one doesn't terminate the program,
allowing the messages to remain in Godot's Debugger tab and matching how Godot
error macros behave.
+/
nothrow
void godotAssertHandlerEditorDebug(string file, size_t line, string msg)
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

void print(Args...)(Args args)
{
	import godot.core.string;
	
	String str;
	static if(Args.length == 0) str = String(" ");
	foreach(arg; args)
	{
		static if(is(typeof(arg) : String)) str ~= arg;
		else static if(is(typeof(arg) : string)) str ~= String(arg);
	}
	godot_print(&str._godot_string);
}



