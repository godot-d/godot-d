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

import std.meta, std.traits;
import std.conv : text;
import std.range;

// ABI type should probably have its own `version`...
version(X86_64)
{
	version(linux) version = GodotSystemV;
	version(OSX) version = GodotSystemV;
	version(Posix) version = GodotSystemV;
}

/**
A Variant takes up only 20 bytes and can store almost any engine datatype inside of it. Variants are rarely used to hold information for long periods of time, instead they are used mainly for communication, editing, serialization and moving data around.
*/
struct Variant
{
	@nogc nothrow:
	
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
		rect3,
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
	private static R objectFromGodot(R)(in GodotObject o)
	{
		static if(is(R == const)) alias co = o;
		else GodotObject co = cast(GodotObject)o._godot_object; // annoying hack to deal with const
		
		return co.as!R;
	}
	
	/// function to convert T to an equivalent Godot type
	template conversionToGodot(T)
	{
		static if(isGodotClass!T) alias conversionToGodot = objectToGodot!T;
		else static if(is(T : Ref!U, U)) alias conversionToGodot = objectToGodot!U;
		else static if(isIntegral!T) alias conversionToGodot = (T t) => cast(long)t;
		else static if(isFloatingPoint!T) alias conversionToGodot = (T t) => cast(double)t;
		else static if(implicit!(T, const(char)[]) || implicit!(T, const(char)*))
			alias conversionToGodot = (T t) => String(t);
		else static if((isForwardRange!T || isStaticArray!T) && compatibleToGodot!(ElementType!T))
			alias conversionToGodot = (T t)
			{
				import std.algorithm.iteration;
				Array ret = Array.empty_array;
				static if(hasLength!T)
				{
					ret.resize(cast(int)t.length);
					foreach(ei, e; t) ret[cast(int)ei] = e;
				}
				else t.each!(e => ret ~= e);
				return ret;
			};
		else alias conversionToGodot = void; // none
	}
	enum bool convertsToGodot(T) = isCallable!(conversionToGodot!T);
	alias conversionToGodotType(T) = Unqual!(ReturnType!(conversionToGodot!T));
	
	/// function to convert a Godot-compatible type to T
	template conversionFromGodot(T)
	{
		static if(isGodotClass!T || is(T : Ref!U, U)) alias conversionFromGodot = objectFromGodot!T;
		else static if(isIntegral!T) alias conversionFromGodot = (long v) => cast(T)v;
		else static if(isFloatingPoint!T) alias conversionFromGodot = (double v) => cast(T)v;
		/*
		TODO: overhaul this badly-designed conversion system. These should be
		moved out of Variant, into conversion functions on the core types themselves.
		*/
		else static if(isStaticArray!T && compatibleFromGodot!(ElementType!T))
			alias conversionFromGodot = (in Array arr)
			{
				if(arr.length == T.length)
				{
					T ret;
					foreach(i; 0..T.length) ret[i] = (arr[i]).as!(ElementType!T);
					return ret;
				}
				else assert(0, "Array length doesn't match static array "~T.stringof);
			};
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
			enum Type variantTypeOf = EnumMembers!Type[staticIndexOf!(
				conversionToGodotType!T, DType)];
		}
		else enum Type variantTypeOf = Type.nil; // so the template always returns a Type
	}
	
	unittest
	{
		static assert(allSatisfy!(compatible, DType));
		static assert(!compatible!Object); // D Object
		
		static assert(directlyCompatible!GodotObject);
		static assert(directlyCompatible!(const(GodotObject)));
		import godot.camera;
		static assert(!directlyCompatible!Camera);
		static assert(compatibleFromGodot!Camera);
		static assert(compatibleToGodot!Camera);
		static assert(compatibleFromGodot!(const(Camera)));
		static assert(compatibleToGodot!(const(Camera)));
	}
	
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
	
	this(R)(auto ref R input) if(!is(R : Variant) && !is(R : typeof(null)))
	{
		static assert(compatibleToGodot!R, R.stringof~" isn't compatible with Variant.");
		enum VarType = variantTypeOf!R;
		
		mixin("auto Fn = _godot_api.godot_variant_new_"~FunctionNew!VarType~";");
		alias PassType = Parameters!Fn[1]; // second param is the value
		
		alias IT = InternalType[VarType];
		
		// handle explicit conversions
		static if(directlyCompatible!R) alias inputConv = input;
		else auto inputConv = conversionToGodot!R(input);
		
		static if(is(IT == Unqual!PassType)) Fn(&_godot_variant, cast(IT)inputConv); // value
		else Fn(&_godot_variant, cast(IT*)&inputConv); // pointer
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
	
	R as(R)() const if(!is(R == Variant) && !is(R==typeof(null)) && compatibleFromGodot!R)
	{
		static if(directlyCompatible!R) enum VarType = variantTypeOf!R;
		else enum VarType = EnumMembers!Type[staticIndexOf!(conversionFromGodotType!R, DType)];
		
		mixin("auto Fa = _godot_api.godot_variant_as_"~FunctionAs!VarType~";");
		
		static if(VarType == Type.vector3)
		{
			version(GodotSystemV) /// HACK workaround for DMD issue #5570
			{
				godot_vector3 ret = void;
				version(LDC)
				{
					import ldc.llvmasm;
					__asm(
						q{
							callq $1;
							
							movq %rax, $2;
							movl %edx, $3;
						},
						"{rdi}, r, r, r",
						&this,
						cast(void*)_godot_api.godot_variant_as_vector3,
						&ret,
						(cast(void*)&ret)+8
					);
				}
				else
				{
					void* _func = cast(void*)_godot_api.godot_variant_as_vector3;
					void* _this = cast(void*)&this;
					
					asm @nogc nothrow
					{
						mov RDI, _this;
						call _func;
						
						mov ret[0], RAX;
						mov ret[8], EDX;
					}
				}
			}
			else InternalType[VarType] ret = Fa(&_godot_variant);
		}
		else InternalType[VarType] ret = Fa(&_godot_variant);
		
		// ret should NOT be destroyed by RAII here.
		DType[VarType]* ptr = cast(DType[VarType]*)&ret;
		
		static if(directlyCompatible!R) return *ptr;
		else
		{
			return conversionFromGodot!R(*ptr);
		}
	}
	
	pragma(inline, true)
	void opAssign(T)(in auto ref T input) if(!is(T : Variant) && !is(T : typeof(null)))
	{
		import std.conv : emplace;
		
		_godot_api.godot_variant_destroy(&_godot_variant);
		emplace!(Variant)(&this, input);
	}
	
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
}

