/++
Templates for binding Godot C++ classes to use from D

The binding generator will implement these templates for the classes in Godot's
API JSON.
+/
module godot.d.bind;

import std.meta, std.traits;
import std.conv : text;

import godot.core, godot.c;
import godot.d.meta;

/// Type to mark varargs GodotMethod.
struct GodotVarArgs
{
	
}

/++
Definition of a method from API JSON.

Godot classes will have these as static member variables, and aliases of form
$(D methodBindInfo(string name : "method_name")) to access by name.
+/
struct GodotMethod(Return, Args...)
{
	godot_method_bind* mb; /// MethodBind for ptrcalls
	String name; /// String name from Godot (snake_case, not always valid D)
	
	static if(Args.length) enum bool hasVarArgs = is(Args[$-1] : GodotVarArgs);
	else enum bool hasVarArgs = false;
	
	/+package(godot)+/ void bind(in char* className, in char* methodName)
	{
		if(mb) return;
		mb = godot_method_bind_get_method(className, methodName);
		name = String(methodName);
	}
}

enum bool needsConversion(Src, Dest) = !isGodotClass!Dest && !is(Src : Dest);

/// temporary var if conversion is needed
template tempType(Src, Dest)
{
	static if( needsConversion!(Src, Dest) ) alias tempType = Dest;
	else alias tempType = void[0];
}

/++
Direct pointer call through MethodBind.
+/
Return ptrcall(Return, MB, Args...)(MB method, in godot_object self, Args args)
	if( is(MB : GodotMethod!(Return, MBArgs), MBArgs...) )
{
	import std.typecons;
	import std.range : iota;
	
	alias MBArgs = TemplateArgsOf!(MB)[1..$];
	static assert(Args.length == MBArgs.length);
	
	static if(Args.length != 0)
	{
		alias _iota = aliasSeqOf!(iota(Args.length));
		alias _tempType(size_t i) = tempType!(Args[i], MBArgs[i]);
		const(void)*[Args.length] aarr = void;
		
		Tuple!( staticMap!(_tempType, _iota) ) temp = void;
	}
	foreach(ai, A; Args)
	{
		static if(isGodotClass!A)
		{
			static assert(is(Unqual!A : MBArgs[ai]) || staticIndexOf!(
				MBArgs[ai], GodotClass!A.GodotClass) != -1, "method" ~
				" argument " ~ ai.text ~ " of type " ~ A.stringof ~
				" does not inherit parameter type " ~ MBArgs[ai].stringof);
			aarr[ai] = getGDNativeObject(args[ai]).ptr;
		}
		else static if( !needsConversion!(Args[ai], MBArgs[ai]) )
		{
			aarr[ai] = cast(const(void)*)(&args[ai]);
		}
		else // needs conversion
		{
			static assert(is(typeof(MBArgs[ai](args[ai]))), "method" ~
				" argument " ~ ai.text ~ " of type " ~ A.stringof ~
				" cannot be converted to parameter type " ~ MBArgs[ai].stringof);
			
			import std.conv : emplace;
			emplace(&temp[ai], args[ai]);
			aarr[ai] = cast(const(void)*)(&temp[ai]);
		}
	}
	static if(!is(Return : void)) Return r = godotDefaultInit!Return;
	
	static if(is(Return : void)) alias rptr = Alias!null;
	else void* rptr = cast(void*)&r;
	
	static if(Args.length == 0) alias aptr = Alias!null;
	else const(void)** aptr = aarr.ptr;
	
	godot_method_bind_ptrcall(method.mb, cast(godot_object)self, aptr, rptr);
	static if(!is(Return : void)) return r;
}

/++
Variant call, for virtual and vararg methods.

Forwards to `callv`, but does compile-time type check of args other than varargs.
+/
Return callv(MB, Return, Args...)(MB method, godot_object self, Args args)
	if( is(MB : GodotMethod!(Return, MBArgs), MBArgs...) )
{
	alias MBArgs = TemplateArgsOf!(MB)[1..$];
	
	import godot.object;
	GodotObject o = void;
	o._godot_object = self;
	assert(o._godot_object.ptr !is null);
	
	Array a = Array.empty_array;
	static if(Args.length != 0) a.resize(cast(int)Args.length);
	foreach(ai, A; Args)
	{
		static if(is(MBArgs[$-1] : GodotVarArgs) && ai >= MBArgs.length-1)
		{
			// do nothing
		}
		else
		{
			static assert(ai < MBArgs.length, "Too many arguments");
			static assert(is(A : MBArgs[ai]) || isImplicitlyConvertible!(A, MBArgs[ai]),
				"method" ~ " argument " ~ ai.text ~ " of type " ~ A.stringof ~
				" cannot be converted to parameter type " ~ MBArgs[ai].stringof);
		}
		a[ai] = args[ai];
	}
	
	Variant r = o.callv(method.name, a);
	return r.as!Return;
}

package(godot)
mixin template baseCasts()
{
	inout(To) as(To)() inout if(isGodotBaseClass!To)
	{
		static if(extends!(typeof(this), To)) return inout(To)(_godot_object);
		else static if(extends!(To, typeof(this)))
		{
			if(_godot_object.ptr is null) return inout(To).init;
			String c = String(To._GODOT_internal_name);
			if(is_class(c)) return inout(To)(_godot_object);
			return inout(To).init;
		}
		else static assert(0, To.stringof ~ " is not polymorphic to "
			~ typeof(this).stringof);
	}
	
	inout(To) as(To)() inout if(extendsGodotBaseClass!To)
	{
		static assert(extends!(To, typeof(this)), "D class " ~ To.stringof
			~ " does not extend " ~ typeof(this).stringof);
		if(_godot_object.ptr is null) return null;
		if(has_method(String(`_GDNATIVE_D_typeid`)))
		{
			inout(Object) o = cast(inout(Object))godot_nativescript_get_userdata(
				cast(godot_object)_godot_object);
			return cast(inout(To))o; // D dynamic cast to check polymorphism
		}
		return null;
	}
	
	template opCast(To) if(isGodotBaseClass!To)
	{
		alias opCast = as!To;
	}
	template opCast(To) if(extendsGodotBaseClass!To)
	{
		alias opCast = as!To;
	}
	// void* cast for passing this type to ptrcalls
	package(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }
	// strip const, because the C API sometimes expects a non-const godot_object
	godot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }
	// implicit conversion to bool like D class references
	bool opCast(T : bool)() const { return _godot_object.ptr !is null; }
}



