/**
The most important data type in Godot.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.core.variant;

import godot.c;
import godot.core;
import godot.object;
import godot.d.meta;
import godot.d.reference;
import godot.script;
import godot.d.type;

import std.meta, std.traits;
import std.conv : text;
import std.range;

// for tests
import godot.node;
import godot.resource;

// ABI type should probably have its own `version`...
version(X86_64)
{
	version(DigitalMars)
	{
		version(linux) version = GodotSystemV;
		version(OSX) version = GodotSystemV;
		version(Posix) version = GodotSystemV;
	}
}

/// User-defined Variant conversions.
/// For structs and classes, constructors and member functions can also be used.
unittest
{
	struct A {}
	static assert(!Variant.compatible!A);

	struct B {}
	B to(T : B)(Variant v) { return B(); }
	int to(T : Variant)(B b) { return 1; }
	static assert(Variant.compatible!B);

	struct C
	{
		this(Variant v) {}
		Variant to(T : Variant)() { return Variant(1); }
	}
	static assert(Variant.compatible!C);

	B b;
	C c;

	Variant vb = b;
	Variant vc = c;

	b = vb.as!B;
	c = vc.as!C;
}

/**
Godot's tagged union type.

Primitives, Godot core types, and `GodotObject`-derived classes can be stored in
a Variant. Other user-defined D types can be made compatible with Variant by
defining `to!CustomType(Variant)` and `to!Variant(CustomType)` functions.

Properties and method arguments/returns are passed between Godot and D through
Variant, so these must use Variant-compatible types.
*/
struct Variant
{
	package(godot) godot_variant _godot_variant;
	
	/// 
	enum Type
	{
		nil,
		
		// atomic types
		bool_,
		int_,
		real_,
		string,
		
		// math types
		
		vector2,// 5
		rect2,
		vector3,
		transform2d,
		plane,
		quat,// 10
		aabb,
		basis,
		transform,
		
		// misc types
		color,
		node_path,// 15
		rid,
		object,
		dictionary,
		array,
		
		// arrays
		pool_byte_array,// 20
		pool_int_array,
		pool_real_array,
		pool_string_array,
		pool_vector2_array,
		pool_vector3_array,// 25
		pool_color_array,
	}
	
	/// GDNative type that gets passed to the C functions
	alias InternalType = AliasSeq!
	(
		typeof(null),
		
		godot_bool,
		long,
		double,
		godot_string,
		
		godot_vector2,
		godot_rect2,
		godot_vector3,
		godot_transform2d,
		godot_plane,
		godot_quat,
		godot_aabb,
		godot_basis,
		godot_transform,
		
		godot_color,
		godot_node_path,
		godot_rid,
		godot_object,
		godot_dictionary,
		godot_array,
		
		godot_pool_byte_array,
		godot_pool_int_array,
		godot_pool_real_array,
		godot_pool_string_array,
		godot_pool_vector2_array,
		godot_pool_vector3_array,
		godot_pool_color_array,
	);
	
	/// D type that this Variant implementation uses
	alias DType = AliasSeq!
	(
		typeof(null),
		
		bool,
		long,
		double,
		String,
		
		Vector2,// 5
		Rect2,
		Vector3,
		Transform2D,
		Plane,
		Quat,// 10
		AABB,
		Basis,
		Transform,
		
		// misc types
		Color,
		NodePath,// 15
		RID,
		GodotObject,
		Dictionary,
		Array,
		
		// arrays
		PoolByteArray,// 20
		PoolIntArray,
		PoolRealArray,
		PoolStringArray,
		PoolVector2Array,
		PoolVector3Array,// 25
		PoolColorArray,
	);
	
	/// 
	enum Operator
	{
		//comparation
		equal,
		notEqual,
		less,
		lessEqual,
		greater,
		greaterEqual,

		//mathematic
		add,
		substract,
		multiply,
		divide,
		negate,
		positive,
		modulus,
		stringConcat,

		//bitwise
		shiftLeft,
		shiftRight,
		bitAnd,
		bitOr,
		bitXor,
		bitNegate,

		//logic
		and,
		or,
		xor,
		not,

		//containment
		in_
	}
	
	private enum bool implicit(Src, Dest) = is(Src : Dest) || isImplicitlyConvertible!(Src, Dest);

	private static GodotObject objectToGodot(T)(T o)
	{
		return o.getGodotObject;
	}

	// Conversions for non-core types provided by Variant.
	// Lower priority than user-defined `to` functions, to allow overriding
	// default blanket implementations.
	private alias internalAs(T) = (Variant v) => v.as!T;
	private enum bool hasInternalAs(T) = __traits(compiles, internalAs!T);
	private alias internalFrom(T) = (T t) => Variant.from(t);
	private enum bool hasInternalFrom(T) = __traits(compiles, internalFrom!T);

	///
	T as(T)() const if(isStaticArray!T && compatibleFromGodot!(ElementType!T))
	{
		return as!Array.as!T;
	}

	/// 
	T as(T)() const if((isGodotClass!T && !is(T == GodotObject)) || is(T : Ref!U, U))
	{
		GodotObject o = cast()(as!GodotObject);
		return o.as!T;
	}

	///
	static Array from(T)(T t) if((isForwardRange!T || isStaticArray!T) && compatibleToGodot!(ElementType!T))
	{
		return Array.from(t);
	}

	///
	GodotType as(T : GodotType)() const
	{
		if(type == Type.object)
		{
			Ref!Script s = as!Script;
			if(s) return GodotType(s);
			else return GodotType.init;
		}
		else if(type == Type.string) return GodotType(BuiltInClass(as!String));
		else if(type == Type.int_) return GodotType(cast(Variant.Type)(as!int));
		else return GodotType.init;
	}

	///
	static Variant from(T : GodotType)(T t)
	{
		import sumtype : match;
		Variant ret;
		t.match!(
			(Variant.Type t) { ret = cast(int)t; },
			(BuiltInClass c) { ret = c.name; },
			(Ref!Script s) { ret = s; }
		);
		return ret;
	}

	static assert(hasInternalAs!Node, internalAs!Node);
	static assert(hasInternalAs!(Ref!Resource), internalAs!(Ref!Resource));
	static assert(!hasInternalAs!Object); // `directlyCompatible` types not handled by internalAs
	static assert(hasInternalAs!(int[4]), internalAs!(int[4]));
	static assert(hasInternalFrom!(int[4]), internalFrom!(int[4]));
	static assert(!hasInternalAs!(int[]));
	static assert(hasInternalFrom!(int[]), internalFrom!(int[]));
	static assert(hasInternalAs!GodotType, internalAs!GodotType);
	static assert(hasInternalFrom!GodotType, internalFrom!GodotType);
	static assert(compatible!GodotType);

	private template getToVariantFunction(T)
	{
		mixin("import " ~ moduleName!T ~ ";");
		alias getToVariantFunction = (T t){ Variant v = t.to!Variant; return v; };
	}
	enum bool hasToVariantFunction(T) = __traits(compiles, getToVariantFunction!T);

	private template getVariantConstructor(T)
	{
		alias getVariantConstructor = (Variant v) => T(v);
	}
	enum bool hasVariantConstructor(T) = __traits(compiles, getVariantConstructor!T);

	template getFromVariantFunction(T)
	{
		mixin("import " ~ moduleName!T ~ ";");
		alias getFromVariantFunction = (Variant v){ T ret = v.to!T; return ret; };
	}
	enum bool hasFromVariantFunction(T) = __traits(compiles, getFromVariantFunction!T);
	
	/// function to convert T to an equivalent Godot type
	template conversionToGodot(T)
	{
		static if(isGodotClass!T) alias conversionToGodot = objectToGodot!T;
		else static if(is(T : GodotStringLiteral!s, string s)) alias conversionToGodot = (T t) => t.str();
		else static if(is(T : Ref!U, U)) alias conversionToGodot = objectToGodot!U;
		else static if(isIntegral!T) alias conversionToGodot = (T t) => cast(long)t;
		else static if(isFloatingPoint!T) alias conversionToGodot = (T t) => cast(double)t;
		else static if(implicit!(T, const(char)[]) || implicit!(T, const(char)*))
			alias conversionToGodot = (T t) => String(t);
		else static if(hasToVariantFunction!T)
		{
			alias conversionToGodot = getToVariantFunction!T;
		}
		else static if(hasInternalFrom!T) alias conversionToGodot = internalFrom!T;
		else alias conversionToGodot = void; // none
	}
	enum bool convertsToGodot(T) = isCallable!(conversionToGodot!T);
	alias conversionToGodotType(T) = Unqual!(ReturnType!(conversionToGodot!T));
	
	/// function to convert a Godot-compatible type to T
	template conversionFromGodot(T)
	{
		static if(isIntegral!T) alias conversionFromGodot = (long v) => cast(T)v;
		else static if(isFloatingPoint!T) alias conversionFromGodot = (double v) => cast(T)v;
		else static if(hasVariantConstructor!T)
		{
			alias conversionFromGodot = getVariantConstructor!T;
		}
		else static if(hasFromVariantFunction!T)
		{
			alias conversionFromGodot = getFromVariantFunction!T;
		}
		else alias conversionFromGodot = void;
	}
	enum bool convertsFromGodot(T) = isCallable!(conversionFromGodot!T);
	alias conversionFromGodotType(T) = Unqual!(Parameters!(conversionFromGodot!T)[0]);
	
	enum bool directlyCompatible(T) = staticIndexOf!(Unqual!T, DType) != -1;
	template compatibleToGodot(T)
	{
		static if(directlyCompatible!T) enum bool compatibleToGodot = true;
		else enum bool compatibleToGodot = convertsToGodot!T;
	}
	template compatibleFromGodot(T)
	{
		static if(directlyCompatible!T) enum bool compatibleFromGodot = true;
		else static if(hasInternalAs!T) enum bool compatibleFromGodot = true;
		else enum bool compatibleFromGodot = convertsFromGodot!T;
	}
	enum bool compatible(R) = compatibleToGodot!(R) && compatibleFromGodot!(R);
	
	
	/// All target Variant.Types that T could implicitly convert to, as indices
	private template implicitTargetIndices(T)
	{
		private enum bool _implicit(size_t di) = implicit!(T, DType[di]);
		alias implicitTargetIndices = Filter!(_implicit, aliasSeqOf!(iota(DType.length)));
	}
	
	/++
	Get the Variant.Type of a compatible D type. Incompatible types return nil.
	+/
	public template variantTypeOf(T)
	{
		import std.traits, godot;
		
		static if(directlyCompatible!T)
		{
			enum Type variantTypeOf = EnumMembers!Type[staticIndexOf!(Unqual!T, DType)];
		}
		else static if(convertsToGodot!T)
		{
			static if(is(conversionToGodotType!T : Variant)) enum Type variantTypeOf = Type.nil;
			else enum Type variantTypeOf = EnumMembers!Type[staticIndexOf!(
				conversionToGodotType!T, DType)];
		}
		else enum Type variantTypeOf = Type.nil; // so the template always returns a Type
	}
	
	/// 
	R as(R)() const if(!is(R == Variant) && !is(R==typeof(null)) && (convertsFromGodot!R || directlyCompatible!R))
	{
		static if(directlyCompatible!R) enum VarType = variantTypeOf!R;
		else static if(is(conversionFromGodotType!R : Variant)) enum VarType = Type.nil;
		else enum VarType = EnumMembers!Type[staticIndexOf!(conversionFromGodotType!R, DType)];
		
		// HACK workaround for DMD issue #5570
		version(GodotSystemV) enum sV = true;
		else enum sV = false;
		static if(VarType == Type.vector3 && sV)
		{
			godot_vector3 ret = void;
			void* _func = cast(void*)_godot_api.godot_variant_as_vector3;
			void* _this = cast(void*)&this;
			
			asm @nogc nothrow
			{
				mov RDI, _this;
				call _func;
				
				mov ret[0], RAX;
				mov ret[8], EDX;
			}
			return *cast(Vector3*)&ret;
		}
		else static if(VarType == Type.nil)
		{
			return conversionFromGodot!R(this);
		}
		else
		{
			DType[VarType] ret = void;
			*cast(InternalType[VarType]*)&ret = mixin("_godot_api.godot_variant_as_"~FunctionAs!VarType~"(&_godot_variant)");

			static if(directlyCompatible!R) return ret;
			else
			{
				return conversionFromGodot!R(ret);
			}
		}
	}
	
	this(R)(auto ref R input) if(!is(R : Variant) && !is(R : typeof(null)))
	{
		static assert(compatibleToGodot!R, R.stringof~" isn't compatible with Variant.");
		enum VarType = variantTypeOf!R;

		static if(VarType == Type.nil)
		{
			this = conversionToGodot!R(input);
		}
		else
		{
			mixin("auto Fn = _godot_api.godot_variant_new_"~FunctionNew!VarType~";");
			alias PassType = Parameters!Fn[1]; // second param is the value

			alias IT = InternalType[VarType];

			// handle explicit conversions
			static if(directlyCompatible!R) alias inputConv = input;
			else auto inputConv = conversionToGodot!R(input);

			static if(is(IT == Unqual!PassType)) Fn(&_godot_variant, cast(IT)inputConv); // value
			else Fn(&_godot_variant, cast(IT*)&inputConv); // pointer
		}
	}
	
	pragma(inline, true)
	void opAssign(T)(in auto ref T input) if(!is(T : Variant) && !is(T : typeof(null)))
	{
		import std.conv : emplace;
		
		_godot_api.godot_variant_destroy(&_godot_variant);
		emplace!(Variant)(&this, input);
	}
	
	static assert(allSatisfy!(compatible, DType));
	static assert(!compatible!Object); // D Object

	static assert(directlyCompatible!GodotObject);
	static assert(directlyCompatible!(const(GodotObject)));
	static assert(!directlyCompatible!Node);
	static assert(compatibleFromGodot!Node);
	static assert(compatibleToGodot!Node);
	static assert(compatibleFromGodot!(const(Node)));
	static assert(compatibleToGodot!(const(Node)));
	static assert(!directlyCompatible!(Ref!Resource));
	static assert(compatibleFromGodot!(Ref!Resource));
	static assert(compatibleToGodot!(Ref!Resource));
	static assert(compatibleFromGodot!(const(Ref!Resource)));
	static assert(compatibleToGodot!(const(Ref!Resource)));

	private template FunctionAs(Type type)
	{
		private enum string name_ = text(type);
		private enum string FunctionAs = (name_[$-1]=='_')?(name_[0..$-1]):name_;
	}
	private template FunctionNew(Type type)
	{
		private enum string name_ = text(type);
		private enum string FunctionNew = (name_[$-1]=='_')?(name_[0..$-1]):name_;
	}
	
	@nogc nothrow:
	this(this)
	{
		godot_variant other = _godot_variant; // source Variant still owns this
		_godot_api.godot_variant_new_copy(&_godot_variant, &other);
	}
	
	static Variant nil()
	{
		Variant v = void;
		_godot_api.godot_variant_new_nil(&v._godot_variant);
		return v;
	}
	
	this(in ref Variant other)
	{
		_godot_api.godot_variant_new_copy(&_godot_variant, &other._godot_variant);
	}
	
	this(T : typeof(null))(in T nil)
	{
		_godot_api.godot_variant_new_nil(&_godot_variant);
	}
	
	~this()
	{
		_godot_api.godot_variant_destroy(&_godot_variant);
	}
	
	Type type() const
	{
		return cast(Type)_godot_api.godot_variant_get_type(&_godot_variant);
	}
	
	inout(T) as(T : Variant)() inout { return this; }
	
	pragma(inline, true)
	void opAssign(T : typeof(null))(in T nil)
	{
		_godot_api.godot_variant_destroy(&_godot_variant);
		_godot_api.godot_variant_new_nil(&_godot_variant);
	}
	
	pragma(inline, true)
	void opAssign(T : Variant)(in T other)
	{
		_godot_api.godot_variant_destroy(&_godot_variant);
		_godot_api.godot_variant_new_copy(&_godot_variant, &other._godot_variant);
	}
	
	bool opEquals(in ref Variant other) const
	{
		return cast(bool)_godot_api.godot_variant_operator_equal(&_godot_variant, &other._godot_variant);
	}
	
	int opCmp(in ref Variant other) const
	{
		if(_godot_api.godot_variant_operator_equal(&_godot_variant, &other._godot_variant))
			return 0;
		return _godot_api.godot_variant_operator_less(&_godot_variant, &other._godot_variant)?
			-1 : 1;
	}
	
	bool booleanize() const
	{
		return cast(bool)_godot_api.godot_variant_booleanize(&_godot_variant);
	}
	
	auto toString() const
	{
		String str = as!String;
		return str.data;
	}

	/// Is this Variant of the specified `type` or of a subclass of `type`?
	bool isType(GodotType type) const
	{
		import sumtype : match;
		return type.match!(
			(Ref!Script script) {
				GodotObject o = this.as!GodotObject;
				if(o == null) return false;
				return script.instanceHas(o);
			},
			(BuiltInClass object) {
				GodotObject o = this.as!GodotObject;
				if(o == null) return false;
				return o.isClass(object.name);
			},
			(Type vt) => this.type == vt
		);
	}

	/++
	The exact GodotType of the value stored in this Variant.

	To check if a Variant is a specific GodotType, use `isType` instead to
	account for inheritance.
	+/
	GodotType exactType() const
	{
		if(GodotObject o = this.as!GodotObject)
		{
			if(Ref!Script s = o.getScript().as!Script) return GodotType(s);
			else return GodotType(BuiltInClass(o.getClass()));
		}
		else return GodotType(this.type);
	}
}

