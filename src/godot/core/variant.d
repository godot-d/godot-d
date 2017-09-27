module godot.core.variant;

import godot.c;
import godot.core;
import godot.object;
import godot.d.meta;

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

struct Variant
{
	package(godot) godot_variant _godot_variant;
	
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
		godot_rect3,
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
		Rect3,
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
	
	private enum bool implicit(Src, Dest) = is(Src : Dest) || isImplicitlyConvertible!(Src, Dest);

	private static GodotObject objectToGodot(T)(in T o)
	{
		return o.getGodotObject;
	}
	private static T objectFromGodot(T)(in GodotObject o)
	{
		static if(is(T == const)) alias co = o;
		else GodotObject co = cast(GodotObject)o._godot_object; // annoying hack to deal with const
		
		return co.as!T;
	}
	
	/// function to convert T to an equivalent Godot type
	template conversionToGodot(T)
	{
		static if(isGodotClass!T) alias conversionToGodot = objectToGodot!T;
		else static if(isIntegral!T) alias conversionToGodot = (T t) => cast(long)t;
		else static if(isFloatingPoint!T) alias conversionToGodot = (T t) => cast(double)t;
		else static if(implicit!(T, const(char)[]) || implicit!(T, const(char)*))
			alias conversionToGodot = (T t) => String(t);
		else static if((isForwardRange!T || isStaticArray!T) && compatibleToGodot!(ElementType!T))
			alias conversionToGodot = (in T t)
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
		static if(isGodotClass!T) alias conversionFromGodot = objectFromGodot!T;
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
					foreach(ei, e; arr) ret[ei] = e.as!(ElementType!T);
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
	enum bool compatible(T) = compatibleToGodot!T && compatibleFromGodot!T;
	
	
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
		private enum string name = (name_[$-1]=='_')?(name_[0..$-1]):name_;
		
		mixin("alias FunctionAs = godot_variant_as_"~name~";");
	}
	private template FunctionNew(Type type)
	{
		private enum string name_ = text(type);
		private enum string name = (name_[$-1]=='_')?(name_[0..$-1]):name_;
		
		mixin("alias FunctionNew = godot_variant_new_"~name~";");
	}
	
	@disable this();
	
	@nogc nothrow /// TODO: move to top once Objects are nogc
	this(this)
	{
		godot_variant other = _godot_variant; // source Variant still owns this
		godot_variant_new_copy(&_godot_variant, &other);
	}
	
	static Variant nil()
	{
		Variant v = void;
		godot_variant_new_nil(&v._godot_variant);
		return v;
	}
	
	@nogc nothrow /// TODO: move to top once Objects are nogc
	{
	this(in ref Variant other)
	{
		godot_variant_new_copy(&_godot_variant, &other._godot_variant);
	}
	
	this(T : typeof(null))(in T nil)
	{
		godot_variant_new_nil(&_godot_variant);
	}
	
	this(T)(in auto ref T input) if(!is(T : Variant) && !is(T : typeof(null)))
	{
		static assert(compatibleToGodot!T, T.stringof~" isn't compatible with Variant.");
		enum VarType = variantTypeOf!T;
		
		alias Fn = FunctionNew!VarType;
		alias PassType = Parameters!Fn[1]; // second param is the value
		
		alias IT = InternalType[VarType];
		
		// handle explicit conversions
		static if(directlyCompatible!T) alias inputConv = input;
		else auto inputConv = conversionToGodot!T(input);
		
		static if(is(IT == Unqual!PassType)) Fn(&_godot_variant, cast(IT)inputConv); // value
		else Fn(&_godot_variant, cast(IT*)&inputConv); // pointer
	}
	
	~this()
	{
		godot_variant_destroy(&_godot_variant);
	}
	}/// TODO: move to top once Objects are nogc
	
	Type type() const
	{
		return cast(Type)godot_variant_get_type(&_godot_variant);
	}
	
	inout(T) as(T : Variant)() inout { return this; }
	
	T as(T)() const if(!is(T == Variant) && !is(T==typeof(null)) && compatibleFromGodot!T)
	{
		static if(directlyCompatible!T) enum VarType = variantTypeOf!T;
		else enum VarType = EnumMembers!Type[staticIndexOf!(conversionFromGodotType!T, DType)];
		
		alias Fa = FunctionAs!VarType;
		
		static if(VarType == Type.vector3)
		{
			version(GodotSystemV) /// HACK workaround for DMD issue #5570
			{
				godot_vector3 ret = void;
				auto _func = &godot_variant_as_vector3; // LDC won't link the symbol if it's only inside asm statement
				void* _this = cast(void*)&this; // LDC doesn't allow using `this` directly in asm
				
				asm @nogc nothrow
				{
					mov RDI, _this;
					call _func;
					
					mov ret[0], RAX;
					mov ret[8], EDX;
				}
			}
			else InternalType[VarType] ret = Fa(&_godot_variant);
		}
		else InternalType[VarType] ret = Fa(&_godot_variant);
		
		// ret should NOT be destroyed by RAII here.
		DType[VarType]* ptr = cast(DType[VarType]*)&ret;
		
		static if(isGodotBaseClass!T) return ptr.as!T;
		else static if(extendsGodotBaseClass!T) return ptr.as!(typeof(T.owner)).as!T;
		else static if(directlyCompatible!T) return *ptr;
		else
		{
			return conversionFromGodot!T(*ptr);
		}
	}
	
	pragma(inline, true)
	void opAssign(T)(in auto ref T input) if(!is(T : Variant) && !is(T : typeof(null)))
	{
		import std.conv : emplace;
		
		godot_variant_destroy(&_godot_variant);
		emplace!(Variant)(&this, input);
	}
	
	pragma(inline, true)
	void opAssign(T : typeof(null))(in T nil)
	{
		godot_variant_destroy(&_godot_variant);
		godot_variant_new_nil(&_godot_variant);
	}
	
	pragma(inline, true)
	void opAssign(T : Variant)(in T other)
	{
		godot_variant_destroy(&_godot_variant);
		godot_variant_new_copy(&_godot_variant, &other._godot_variant);
	}
	
	bool opEquals(in ref Variant other) const
	{
		return cast(bool)godot_variant_operator_equal(&_godot_variant, &other._godot_variant);
	}
	
	int opCmp(in ref Variant other) const
	{
		if(godot_variant_operator_equal(&_godot_variant, &other._godot_variant))
			return 0;
		return godot_variant_operator_less(&_godot_variant, &other._godot_variant)?
			-1 : 1;
	}
	
	bool booleanize() const
	{
		return cast(bool)godot_variant_booleanize(&_godot_variant);
	}
	
	auto toString() const
	{
		import std.string;
		String str = as!String;
		return str.c_string.fromStringz;
	}
}

