/++
Templates for wrapping D classes, properties, methods, and signals to be passed
to Godot's C interface.
+/
module godot.d.wrap;

import std.range;
import std.meta, std.traits;
import std.experimental.allocator, std.experimental.allocator.mallocator;
import core.stdc.stdlib : malloc, free;

import godot.d.udas;
import godot.d.meta, godot.d.script;

import godot.core, godot.c;

package(godot) template godotMethods(T)
{
	alias mfs(alias mName) = MemberFunctionsTuple!(T, mName);
	alias allMfs = staticMap!(mfs, __traits(derivedMembers, T));
	enum bool isMethod(alias mf) = hasUDA!(mf, Method);
	
	alias godotMethods = Filter!(isMethod, allMfs);
	
	alias godotNames = staticMap!(godotName, godotMethods);
	static assert(godotNames.length == NoDuplicates!godotNames.length, T.stringof~
		" methods can't have overloads. Rename one with @Method(\"new_name\").");
	/// TODO: better error message listing which are duplicated
}

package(godot) template godotPropertyGetters(T)
{
	alias mfs(alias mName) = MemberFunctionsTuple!(T, mName);
	alias allMfs = staticMap!(mfs, __traits(derivedMembers, T));
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

package(godot) template godotPropertySetters(T)
{
	alias mfs(alias mName) = MemberFunctionsTuple!(T, mName);
	alias allMfs = staticMap!(mfs, __traits(derivedMembers, T));
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

package(godot) template godotPropertyNames(T)
{
	alias godotPropertyNames = NoDuplicates!(staticMap!(godotName, godotPropertyGetters!T,
		godotPropertySetters!T));
}

package(godot) template godotPropertyVariableNames(T)
{
	alias fieldNames = FieldNameTuple!T;
	alias field(string name) = Alias!(__traits(getMember, T, name));
	template isVariable(string name)
	{
		static if(__traits(getProtection, __traits(getMember, T, name))=="public")
			enum bool isVariable = hasUDA!(field!name, Property);
		else enum bool isVariable = false;
	}
	
	alias godotPropertyVariableNames = Filter!(isVariable, fieldNames);
}

/// get the common Variant type for a set of function or variable aliases
package(godot) template extractPropertyVariantType(seq...)
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

package(godot) template extractPropertyUDA(seq...)
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

/++
Variadic template for method wrappers.

Params:
	T = the class that owns the method
	R = the return type (can be void)
	A = the argument types (can be empty)
+/
package(godot) struct MethodWrapper(T, R, A...)
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

/++
Template for public variables exported as properties.

Simple `offsetof` from the variable would be simpler, but unfortunately that
property doesn't work as well with classes as with structs (needs an instance,
not the class itself).

Params:
	P = the variable's type
+/
package(godot) struct VariableWrapper(T, string var)
{
	alias P = typeof(mixin("T."~var));
	
	extern(C) // for calling convention
	static godot_variant callPropertyGet(godot_object o, void* methodData,
		void* userData)
	{
		T obj = cast(T)userData;
		
		godot_variant vd;
		godot_variant_new_nil(&vd);
		Variant* v = cast(Variant*)&vd; // just a pointer; no destructor will be called
		
		*v = mixin("obj."~var);
		
		return vd;
	}
	
	extern(C) // for calling convention
	static void callPropertySet(godot_object o, void* methodData,
		void* userData, godot_variant* arg)
	{
		T obj = cast(T)userData;
		
		Variant* v = cast(Variant*)arg;
		
		auto vt = v.as!P;
		mixin("obj."~var) = vt;
	}
}

extern(C) package(godot) void emptySetter(godot_object self, void* methodData,
	void* userData, godot_variant value)
{
	assert(0, "Can't call empty property setter");
	//return;
}

extern(C) package(godot) godot_variant emptyGetter(godot_object self, void* methodData,
	void* userData)
{
	assert(0, "Can't call empty property getter");
	/+godot_variant v;
	godot_variant_new_nil(&v);
	return v;+/
}

