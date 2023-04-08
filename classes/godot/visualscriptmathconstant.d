/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptmathconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**

*/
@GodotBaseClass struct VisualScriptMathConstant
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptMathConstant";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_math_constant") GodotMethod!(VisualScriptMathConstant.MathConstant) getMathConstant;
		@GodotName("set_math_constant") GodotMethod!(void, long) setMathConstant;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptMathConstant other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualScriptMathConstant.
	/// Note: use `memnew!VisualScriptMathConstant` instead.
	static VisualScriptMathConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptMathConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptMathConstant)(constructor());
	}
	/// 
	enum MathConstant : int
	{
		/** */
		mathConstantOne = 0,
		/** */
		mathConstantPi = 1,
		/** */
		mathConstantHalfPi = 2,
		/** */
		mathConstantTau = 3,
		/** */
		mathConstantE = 4,
		/** */
		mathConstantSqrt2 = 5,
		/** */
		mathConstantInf = 6,
		/** */
		mathConstantNan = 7,
		/** */
		mathConstantMax = 8,
	}
	/// 
	enum Constants : int
	{
		mathConstantOne = 0,
		mathConstantPi = 1,
		mathConstantHalfPi = 2,
		mathConstantTau = 3,
		mathConstantE = 4,
		mathConstantSqrt2 = 5,
		mathConstantInf = 6,
		mathConstantNan = 7,
		mathConstantMax = 8,
	}
	/**
	
	*/
	VisualScriptMathConstant.MathConstant getMathConstant()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptMathConstant.MathConstant)(GDNativeClassBinding.getMathConstant, _godot_object);
	}
	/**
	
	*/
	void setMathConstant(in long which)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMathConstant, _godot_object, which);
	}
	/**
	
	*/
	@property VisualScriptMathConstant.MathConstant constant()
	{
		return getMathConstant();
	}
	/// ditto
	@property void constant(long v)
	{
		setMathConstant(v);
	}
}
