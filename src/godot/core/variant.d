module godot.core.variant;

import godot.c;
import godot.core;
import godot.object;
import godot : isGodotBaseClass, extendsGodotBaseClass;

import std.meta, std.traits;
import std.conv : text;
import std.range : iota;

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
	
	/++
	Template to determine if T is compatible with Variant
	+/
	public template compatible(T)
	{
		static if( !is(typeof(variantTypeOf!T) == void) ) enum bool compatible = true;
		else enum bool compatible = false;
	}
	
	/// All target Variant.Types that T could implicitly convert to, as indices
	private template implicitTargetIndices(T)
	{
		private enum bool _implicit(size_t di) = implicit!(T, DType[di]);
		alias implicitTargetIndices = Filter!(_implicit, aliasSeqOf!(iota(DType.length)));
	}
	
	/++
	Get the Variant.Type of a compatible D type. Incompatible types return an
	empty alias, so check that $(D compatible!T) is true first.
	+/
	public template variantTypeOf(T)
	{
		static if(isIntegral!T) enum Type variantTypeOf = Type.int_;
		else static if(isFloatingPoint!T) enum Type variantTypeOf = Type.real_;
		else static if(is(T : bool)) enum Type variantTypeOf = Type.bool_;
		//else static if(isSomeString!T) enum Type variantTypeOf = Type.string;
		else
		{
			alias match = implicitTargetIndices!T;
			static if(match.length == 1)
			{
				enum Type variantTypeOf = EnumMembers!Type[ match[0] ];
			}
			// else: nothing, void alias
		}
	}
	
	static assert(allSatisfy!(compatible, DType));
	static assert(!compatible!Object); // D Object
	
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
	
	this(in ref Variant other)
	{
		godot_variant_destroy(&_godot_variant);
		godot_variant_new_copy(&_godot_variant, &other._godot_variant);
	}
	
	this(T)(in auto ref T input) if(!is(T == Variant) && !is(T==typeof(null)))
	{
		static if(compatible!T) enum VarType = variantTypeOf!T;
		else
		{
			alias match = implicitTargetIndices!T;
			static if(match.length > 1) static assert(0, "Multiple Variant Types match "~T.stringof);
			else static assert(0, "Type "~T.stringof~" isn't supported by Variant");
		}
		
		alias Fn = FunctionNew!VarType;
		alias PassType = Parameters!Fn[1]; // second param is the value
		
		alias IT = InternalType[VarType];
		
		static if(isGodotBaseClass!T) Fn(&_godot_variant, cast(godot_object)(input));
		// only the godot_object can be stored in Variant:
		else static if(extendsGodotBaseClass!T) Fn(&_godot_variant, cast(godot_object)(input.self));
		else static if(is(IT == Unqual!PassType)) Fn(&_godot_variant, cast(IT)input); // value
		else Fn(&_godot_variant, cast(IT*)&input); // pointer
	}
	
	~this()
	{
		godot_variant_destroy(&_godot_variant);
	}
	
	Type type() const
	{
		return cast(Type)godot_variant_get_type(&_godot_variant);
	}
	
	inout(T) as(T : Variant)() inout { return this; }
	
	T as(T)() const if(!is(T == Variant) && !is(T==typeof(null)))
	{
		static if(compatible!T) enum VarType = variantTypeOf!T;
		else
		{
			alias match = implicitTargetIndices!T;
			static if(match.length > 1) static assert(0, "Multiple Variant Types match "~T.stringof);
			else static assert(0, "Type "~T.stringof~" isn't supported by Variant");
		}
		
		alias Fa = FunctionAs!VarType;
		
		alias IT = InternalType[VarType];
		
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
			else IT ret = Fa(&_godot_variant);
		}
		else IT ret = Fa(&_godot_variant);
		
		static if(isGodotBaseClass!T) return cast(T)ret;
		// explicit upcast does type-checking on the godot_object:
		else static if(extendsGodotBaseClass!T) return cast(T)(typeof(T.self)(ret));
		else
		{
			static if(isImplicitlyConvertible!(IT, T)) return ret;
			else return cast(T)ret;
		}
	}
	
	pragma(inline, true)
	void opAssign(T)(in auto ref T input)
	{
		import std.conv : emplace;
		emplace!(Variant)(&this, input);
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
	
	bool booleanize(bool* valid) const
	{
		godot_bool v;
		auto ret = godot_variant_booleanize(&_godot_variant, &v);
		*valid = cast(bool)v;
		return cast(bool)ret;
	}
}

