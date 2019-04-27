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
import godot.node;

private template staticCount(alias thing, seq...)
{
	template staticCountNum(size_t soFar, seq...)
	{
		enum size_t nextPos = staticIndexOf!(thing, seq);
		static if(nextPos == -1) enum size_t staticCountNum = soFar;
		else enum size_t staticCountNum = staticCountNum!(soFar+1, seq[nextPos+1..$]);
	}
	enum size_t staticCount = staticCountNum!(0, seq);
}

private string overloadError(methods...)()
{
	alias godotNames = staticMap!(godotName, methods);
	foreach(m; methods)
	{
		static if(staticCount!(godotName!m, godotNames) > 1)
		{
			static assert(0, `Godot does not support overloading methods (`
				~ fullyQualifiedName!m ~ `, wrapped as "` ~ godotName!m ~
				`"); rename one with @Rename("new_name") or use Variant args`);
		}
	}
}

package(godot) template godotMethods(T)
{
	alias mfs(alias mName) = MemberFunctionsTuple!(T, mName);
	alias allMfs = staticMap!(mfs, __traits(derivedMembers, T));
	enum bool isMethod(alias mf) = hasUDA!(mf, Method);
	
	alias godotMethods = Filter!(isMethod, allMfs);
	
	alias godotNames = staticMap!(godotName, godotMethods);
	static assert(godotNames.length == NoDuplicates!godotNames.length,
		overloadError!godotMethods());
}

package(godot) template godotSignals(T)
{
	enum isSignalExpr(string n) = q{ isCallable!(mixin("T."~n))
		&& ( hasUDA!(mixin("T."~n), Signal) || is(ReturnType!(mixin("T."~n)) == Signal) ) };
	template isSignal(string n)
	{
		static if( __traits(compiles, mixin(isSignalExpr!n)) )
		{
			enum bool isSignal = mixin(isSignalExpr!n);
		}
		else enum bool isSignal = false;
	}
	alias godotSignals = Filter!(isSignal, __traits(derivedMembers, T));
}

package(godot) template onReadyFieldNames(T)
{
	import godot.node;
	static if(!is(GodotClass!T : Node)) alias onReadyFieldNames = AliasSeq!();
	else
	{
		alias fieldNames = FieldNameTuple!T;
		template isORField(string n)
		{
			static if(staticIndexOf!(n, fieldNames) != -1 && staticIndexOf!(__traits
				(getProtection, __traits(getMember, T, n)), "public", "export") != -1)
			{
				enum bool isORField = hasUDA!(__traits(getMember, T, n), OnReady);
			}
			else enum bool isORField = false;
		}
		alias onReadyFieldNames = Filter!(isORField, __traits(derivedMembers, T));
	}
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
	static assert(godotNames.length == NoDuplicates!godotNames.length,
		overloadError!godotPropertyGetters());
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
	static assert(godotNames.length == NoDuplicates!godotNames.length,
		overloadError!godotPropertySetters());
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
		else static if(isFunction!a) alias Type = NonRef!(ReturnType!a);
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
	mf = the member function being wrapped, as an alias
+/
package(godot) struct MethodWrapper(T, alias mf)
{
	alias R = ReturnType!mf; // the return type (can be void)
	alias A = Parameters!mf; // the argument types (can be empty)
	
	enum string name = __traits(identifier, mf);
	
	/++
	C function passed to Godot that calls the wrapped method
	+/
	extern(C) // for calling convention
	static godot_variant callMethod(godot_object o, void* methodData,
		void* userData, int numArgs, godot_variant** args)
	{
		// TODO: check types for Variant compatibility, give a better error here
		// TODO: check numArgs, accounting for D arg defaults
		
		godot_variant vd;
		_godot_api.godot_variant_new_nil(&vd);
		Variant* v = cast(Variant*)&vd; // just a pointer; no destructor will be called
		
		T obj = cast(T)userData;
		
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
			mixin("obj." ~ name ~ "(argCall);");
		}
		else
		{
			mixin("*v = obj." ~ name ~ "(argCall);");
		}
		
		return vd;
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
		_godot_api.godot_variant_new_nil(&vd);
		Variant* v = cast(Variant*)&vd; // just a pointer; no destructor will be called
		
		T obj = cast(T)userData;
		
		mixin("*v = obj." ~ name ~ "();");
		
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
		
		T obj = cast(T)userData;
		
		auto vt = v.as!(A[0]);
		mixin("obj." ~ name ~ "(vt);");
	}
}

package(godot) struct OnReadyWrapper(T) if(is(GodotClass!T : Node))
{
	extern(C) // for calling convention
	static godot_variant callOnReady(godot_object o, void* methodData,
		void* userData, int numArgs, godot_variant** args)
	{
		T t = cast(T)userData;
		
		foreach(n; onReadyFieldNames!T)
		{
			alias udas = getUDAs!(__traits(getMember, T, n), OnReady);
			static assert(udas.length == 1, "Multiple OnReady UDAs on "~T.stringof~"."~n);
			
			alias A = Alias!(TemplateArgsOf!(udas[0])[0]);
			alias F = typeof(mixin("T."~n));
			
			// First, determine where to obtain the value to assign, and put it in `result`.
			// `result` will be alias to void if nothing to assign.
			static if(isCallable!A)
			{
				// pass the class itself to the function
				static if(Parameters!A.length && isImplicitlyConvertible!(T, Parameters!A[0]))
					alias arg = t;
				else alias arg = AliasSeq!();
				static if(is(ReturnType!A == void))
				{
					alias result = void;
					A(arg);
				}
				else
				{
					auto result = A(arg); /// temp variable for return value
				}
			}
			else static if(is(A)) static assert(0, "OnReady arg can't be a type");
			else static if(isExpressions!A) // expression (string literal, etc)
			{
				alias result = A;
			}
			else // some other alias (a different variable identifier?)
			{
				static if(__traits(compiles, __traits(parent, A)))
					alias P = Alias!(__traits(parent, A));
				else alias P = void;
				static if(is(T : P))
				{
					// A is another variable inside this very same T
					auto result = __traits(getMember, t, __traits(identifier, A));
				}
				else alias result = A; // final fallback: pass it unmodified to assignment
			}
			
			// Second, assign `result` to the field depending on the types of it and `result`
			static if(!is(result == void))
			{
				import godot.resource;
				
				static if(isImplicitlyConvertible!(typeof(result), F))
				{
					// direct assignment
					mixin("t."~n) = result;
				}
				else static if(__traits(compiles, mixin("t."~n) = F(result)))
				{
					// explicit constructor (String(string), NodePath(string), etc)
					mixin("t."~n) = F(result);
				}
				else static if(isGodotClass!F && extends!(F, Node))
				{
					// special case: node path
					mixin("t."~n) = cast(F)t.owner.getNode(result);
				}
				else static if(isGodotClass!F && extends!(F, Resource))
				{
					// special case: resource load path
					import godot.resourceloader;
					mixin("t."~n) = cast(F)ResourceLoader.load(result);
				}
				else static assert(0, "Don't know how to assign "~typeof(result).stringof~" "~result.stringof~
					" to "~F.stringof~" "~fullyQualifiedName!(mixin("t."~n)));
			}
		}
		
		// Finally, call the actual _ready() if it exists.
		enum bool isReady(alias func) = "_ready" == godotName!func;
		alias readies = Filter!(isReady, godotMethods!T);
		static if(readies.length) mixin("t."~__traits(identifier, readies[0])~"();");
		
		godot_variant nil;
		_godot_api.godot_variant_new_nil(&nil);
		return nil;
	}
}

/++
Template for public variables exported as properties.

Params:
	T = the class that owns the variable
	var = the name of the member variable being wrapped
+/
package(godot) struct VariableWrapper(T, string var)
{
	import godot.reference, godot.d.reference;
	alias P = typeof(mixin("T."~var));
	static if(extends!(P, Reference)) static assert(is(P : Ref!U, U),
		"Reference type property "~T.stringof~"."~var~" must be ref-counted as Ref!("
		~P.stringof~")");
	
	extern(C) // for calling convention
	static godot_variant callPropertyGet(godot_object o, void* methodData,
		void* userData)
	{
		T obj = cast(T)userData;
		
		godot_variant vd;
		_godot_api.godot_variant_new_nil(&vd);
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
	void* userData, godot_variant* value)
{
	assert(0, "Can't call empty property setter");
	//return;
}

extern(C) package(godot) godot_variant emptyGetter(godot_object self, void* methodData,
	void* userData)
{
	assert(0, "Can't call empty property getter");
	/+godot_variant v;
	_godot_api.godot_variant_new_nil(&v);
	return v;+/
}

