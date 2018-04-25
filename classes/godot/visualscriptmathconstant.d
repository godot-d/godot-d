/**
Commonly used mathematical constants.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptmathconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**
Commonly used mathematical constants.

Provides common math constants, such as Pi, on an output Data port.
$(B Input Ports:)
none
$(B Output Ports:)
- Data (variant): `get`
*/
@GodotBaseClass struct VisualScriptMathConstant
{
	static immutable string _GODOT_internal_name = "VisualScriptMathConstant";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptMathConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptMathConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptMathConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptMathConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptMathConstant)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum MathConstant : int
	{
		/**
		Unity: `1`
		*/
		mathConstantOne = 0,
		/**
		Pi: `3.141593`
		*/
		mathConstantPi = 1,
		/**
		Pi divided by two: `1.570796`
		*/
		mathConstantHalfPi = 2,
		/**
		Tau: `6.283185`
		*/
		mathConstantTau = 3,
		/**
		Mathematical constant `e`, the natural log base: `2.718282`
		*/
		mathConstantE = 4,
		/**
		Square root of two: `1.414214`
		*/
		mathConstantSqrt2 = 5,
		/**
		Infinity: `inf`
		*/
		mathConstantInf = 6,
		/**
		Not a number: `nan`
		*/
		mathConstantNan = 7,
		/**
		
		*/
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
	package(godot) static GodotMethod!(void, long) _GODOT_set_math_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_math_constant") = _GODOT_set_math_constant;
	/**
	
	*/
	void setMathConstant(in long which)
	{
		_GODOT_set_math_constant.bind("VisualScriptMathConstant", "set_math_constant");
		ptrcall!(void)(_GODOT_set_math_constant, _godot_object, which);
	}
	package(godot) static GodotMethod!(VisualScriptMathConstant.MathConstant) _GODOT_get_math_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_math_constant") = _GODOT_get_math_constant;
	/**
	
	*/
	VisualScriptMathConstant.MathConstant getMathConstant()
	{
		_GODOT_get_math_constant.bind("VisualScriptMathConstant", "get_math_constant");
		return ptrcall!(VisualScriptMathConstant.MathConstant)(_GODOT_get_math_constant, _godot_object);
	}
	/**
	The math constant.
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
