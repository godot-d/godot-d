/**
A vector function to be used within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodevectorfunc;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**
A vector function to be used within the visual shader graph.

A visual shader node able to perform different functions using vectors.
*/
@GodotBaseClass struct VisualShaderNodeVectorFunc
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeVectorFunc";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_function") GodotMethod!(VisualShaderNodeVectorFunc.Function) getFunction;
		@GodotName("set_function") GodotMethod!(void, long) setFunction;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeVectorFunc other) const
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
	/// Construct a new instance of VisualShaderNodeVectorFunc.
	/// Note: use `memnew!VisualShaderNodeVectorFunc` instead.
	static VisualShaderNodeVectorFunc _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeVectorFunc");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeVectorFunc)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Function : int
	{
		/**
		Normalizes the vector so that it has a length of `1` but points in the same direction.
		*/
		funcNormalize = 0,
		/**
		Clamps the value between `0.0` and `1.0`.
		*/
		funcSaturate = 1,
		/**
		Returns the opposite value of the parameter.
		*/
		funcNegate = 2,
		/**
		Returns `1/vector`.
		*/
		funcReciprocal = 3,
		/**
		Converts RGB vector to HSV equivalent.
		*/
		funcRgb2hsv = 4,
		/**
		Converts HSV vector to RGB equivalent.
		*/
		funcHsv2rgb = 5,
		/**
		Returns the absolute value of the parameter.
		*/
		funcAbs = 6,
		/**
		Returns the arc-cosine of the parameter.
		*/
		funcAcos = 7,
		/**
		Returns the inverse hyperbolic cosine of the parameter.
		*/
		funcAcosh = 8,
		/**
		Returns the arc-sine of the parameter.
		*/
		funcAsin = 9,
		/**
		Returns the inverse hyperbolic sine of the parameter.
		*/
		funcAsinh = 10,
		/**
		Returns the arc-tangent of the parameter.
		*/
		funcAtan = 11,
		/**
		Returns the inverse hyperbolic tangent of the parameter.
		*/
		funcAtanh = 12,
		/**
		Finds the nearest integer that is greater than or equal to the parameter.
		*/
		funcCeil = 13,
		/**
		Returns the cosine of the parameter.
		*/
		funcCos = 14,
		/**
		Returns the hyperbolic cosine of the parameter.
		*/
		funcCosh = 15,
		/**
		Converts a quantity in radians to degrees.
		*/
		funcDegrees = 16,
		/**
		Base-e Exponential.
		*/
		funcExp = 17,
		/**
		Base-2 Exponential.
		*/
		funcExp2 = 18,
		/**
		Finds the nearest integer less than or equal to the parameter.
		*/
		funcFloor = 19,
		/**
		Computes the fractional part of the argument.
		*/
		funcFrac = 20,
		/**
		Returns the inverse of the square root of the parameter.
		*/
		funcInverseSqrt = 21,
		/**
		Natural logarithm.
		*/
		funcLog = 22,
		/**
		Base-2 logarithm.
		*/
		funcLog2 = 23,
		/**
		Converts a quantity in degrees to radians.
		*/
		funcRadians = 24,
		/**
		Finds the nearest integer to the parameter.
		*/
		funcRound = 25,
		/**
		Finds the nearest even integer to the parameter.
		*/
		funcRoundeven = 26,
		/**
		Extracts the sign of the parameter, i.e. returns `-1` if the parameter is negative, `1` if it's positive and `0` otherwise.
		*/
		funcSign = 27,
		/**
		Returns the sine of the parameter.
		*/
		funcSin = 28,
		/**
		Returns the hyperbolic sine of the parameter.
		*/
		funcSinh = 29,
		/**
		Returns the square root of the parameter.
		*/
		funcSqrt = 30,
		/**
		Returns the tangent of the parameter.
		*/
		funcTan = 31,
		/**
		Returns the hyperbolic tangent of the parameter.
		*/
		funcTanh = 32,
		/**
		Returns a value equal to the nearest integer to the parameter whose absolute value is not larger than the absolute value of the parameter.
		*/
		funcTrunc = 33,
		/**
		Returns `1.0 - vector`.
		*/
		funcOneminus = 34,
	}
	/// 
	enum Constants : int
	{
		funcNormalize = 0,
		funcSaturate = 1,
		funcNegate = 2,
		funcReciprocal = 3,
		funcRgb2hsv = 4,
		funcHsv2rgb = 5,
		funcAbs = 6,
		funcAcos = 7,
		funcAcosh = 8,
		funcAsin = 9,
		funcAsinh = 10,
		funcAtan = 11,
		funcAtanh = 12,
		funcCeil = 13,
		funcCos = 14,
		funcCosh = 15,
		funcDegrees = 16,
		funcExp = 17,
		funcExp2 = 18,
		funcFloor = 19,
		funcFrac = 20,
		funcInverseSqrt = 21,
		funcLog = 22,
		funcLog2 = 23,
		funcRadians = 24,
		funcRound = 25,
		funcRoundeven = 26,
		funcSign = 27,
		funcSin = 28,
		funcSinh = 29,
		funcSqrt = 30,
		funcTan = 31,
		funcTanh = 32,
		funcTrunc = 33,
		funcOneminus = 34,
	}
	/**
	
	*/
	VisualShaderNodeVectorFunc.Function getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeVectorFunc.Function)(GDNativeClassBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	void setFunction(in long func)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFunction, _godot_object, func);
	}
	/**
	The function to be performed. See $(D _function) for options.
	*/
	@property VisualShaderNodeVectorFunc.Function _function()
	{
		return getFunction();
	}
	/// ditto
	@property void _function(long v)
	{
		setFunction(v);
	}
}
