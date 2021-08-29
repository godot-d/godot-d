/**
A Visual Script node used to call built-in functions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptbuiltinfunc;
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
A Visual Script node used to call built-in functions.

A built-in function used inside a $(D VisualScript). It is usually a math function or an utility function.
See also $(D @GDScript), for the same functions in the GDScript language.
*/
@GodotBaseClass struct VisualScriptBuiltinFunc
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptBuiltinFunc";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_func") GodotMethod!(VisualScriptBuiltinFunc.BuiltinFunc) getFunc;
		@GodotName("set_func") GodotMethod!(void, long) setFunc;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptBuiltinFunc other) const
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
	/// Construct a new instance of VisualScriptBuiltinFunc.
	/// Note: use `memnew!VisualScriptBuiltinFunc` instead.
	static VisualScriptBuiltinFunc _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptBuiltinFunc");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptBuiltinFunc)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum BuiltinFunc : int
	{
		/**
		Return the sine of the input.
		*/
		mathSin = 0,
		/**
		Return the cosine of the input.
		*/
		mathCos = 1,
		/**
		Return the tangent of the input.
		*/
		mathTan = 2,
		/**
		Return the hyperbolic sine of the input.
		*/
		mathSinh = 3,
		/**
		Return the hyperbolic cosine of the input.
		*/
		mathCosh = 4,
		/**
		Return the hyperbolic tangent of the input.
		*/
		mathTanh = 5,
		/**
		Return the arc sine of the input.
		*/
		mathAsin = 6,
		/**
		Return the arc cosine of the input.
		*/
		mathAcos = 7,
		/**
		Return the arc tangent of the input.
		*/
		mathAtan = 8,
		/**
		Return the arc tangent of the input, using the signs of both parameters to determine the exact angle.
		*/
		mathAtan2 = 9,
		/**
		Return the square root of the input.
		*/
		mathSqrt = 10,
		/**
		Return the remainder of one input divided by the other, using floating-point numbers.
		*/
		mathFmod = 11,
		/**
		Return the positive remainder of one input divided by the other, using floating-point numbers.
		*/
		mathFposmod = 12,
		/**
		Return the input rounded down.
		*/
		mathFloor = 13,
		/**
		Return the input rounded up.
		*/
		mathCeil = 14,
		/**
		Return the input rounded to the nearest integer.
		*/
		mathRound = 15,
		/**
		Return the absolute value of the input.
		*/
		mathAbs = 16,
		/**
		Return the sign of the input, turning it into 1, -1, or 0. Useful to determine if the input is positive or negative.
		*/
		mathSign = 17,
		/**
		Return the input raised to a given power.
		*/
		mathPow = 18,
		/**
		Return the natural logarithm of the input. Note that this is not the typical base-10 logarithm function calculators use.
		*/
		mathLog = 19,
		/**
		Return the mathematical constant $(B e) raised to the specified power of the input. $(B e) has an approximate value of 2.71828.
		*/
		mathExp = 20,
		/**
		Return whether the input is NaN (Not a Number) or not. NaN is usually produced by dividing 0 by 0, though other ways exist.
		*/
		mathIsnan = 21,
		/**
		Return whether the input is an infinite floating-point number or not. Infinity is usually produced by dividing a number by 0, though other ways exist.
		*/
		mathIsinf = 22,
		/**
		Easing function, based on exponent. 0 is constant, 1 is linear, 0 to 1 is ease-in, 1+ is ease out. Negative values are in-out/out in.
		*/
		mathEase = 23,
		/**
		Return the number of digit places after the decimal that the first non-zero digit occurs.
		*/
		mathDecimals = 24,
		/**
		Return the input snapped to a given step.
		*/
		mathStepify = 25,
		/**
		Return a number linearly interpolated between the first two inputs, based on the third input. Uses the formula `a + (a - b) * t`.
		*/
		mathLerp = 26,
		/**
		
		*/
		mathInverseLerp = 27,
		/**
		
		*/
		mathRangeLerp = 28,
		/**
		Moves the number toward a value, based on the third input.
		*/
		mathMoveToward = 29,
		/**
		Return the result of `value` decreased by `step` * `amount`.
		*/
		mathDectime = 30,
		/**
		Randomize the seed (or the internal state) of the random number generator. Current implementation reseeds using a number based on time.
		*/
		mathRandomize = 31,
		/**
		Return a random 32 bits integer value. To obtain a random value between 0 to N (where N is smaller than 2^32 - 1), you can use it with the remainder function.
		*/
		mathRand = 32,
		/**
		Return a random floating-point value between 0 and 1. To obtain a random value between 0 to N, you can use it with multiplication.
		*/
		mathRandf = 33,
		/**
		Return a random floating-point value between the two inputs.
		*/
		mathRandom = 34,
		/**
		Set the seed for the random number generator.
		*/
		mathSeed = 35,
		/**
		Return a random value from the given seed, along with the new seed.
		*/
		mathRandseed = 36,
		/**
		Convert the input from degrees to radians.
		*/
		mathDeg2rad = 37,
		/**
		Convert the input from radians to degrees.
		*/
		mathRad2deg = 38,
		/**
		Convert the input from linear volume to decibel volume.
		*/
		mathLinear2db = 39,
		/**
		Convert the input from decibel volume to linear volume.
		*/
		mathDb2linear = 40,
		/**
		Converts a 2D point expressed in the polar coordinate system (a distance from the origin `r` and an angle `th`) to the cartesian coordinate system (X and Y axis).
		*/
		mathPolar2cartesian = 41,
		/**
		Converts a 2D point expressed in the cartesian coordinate system (X and Y axis) to the polar coordinate system (a distance from the origin and an angle).
		*/
		mathCartesian2polar = 42,
		/**
		
		*/
		mathWrap = 43,
		/**
		
		*/
		mathWrapf = 44,
		/**
		Return the greater of the two numbers, also known as their maximum.
		*/
		logicMax = 45,
		/**
		Return the lesser of the two numbers, also known as their minimum.
		*/
		logicMin = 46,
		/**
		Return the input clamped inside the given range, ensuring the result is never outside it. Equivalent to `min(max(input, range_low), range_high)`.
		*/
		logicClamp = 47,
		/**
		Return the nearest power of 2 to the input.
		*/
		logicNearestPo2 = 48,
		/**
		Create a $(D WeakRef) from the input.
		*/
		objWeakref = 49,
		/**
		Create a $(D FuncRef) from the input.
		*/
		funcFuncref = 50,
		/**
		Convert between types.
		*/
		typeConvert = 51,
		/**
		Return the type of the input as an integer. Check $(D Variant.type) for the integers that might be returned.
		*/
		typeOf = 52,
		/**
		Checks if a type is registered in the $(D ClassDB).
		*/
		typeExists = 53,
		/**
		Return a character with the given ascii value.
		*/
		textChar = 54,
		/**
		Convert the input to a string.
		*/
		textStr = 55,
		/**
		Print the given string to the output window.
		*/
		textPrint = 56,
		/**
		Print the given string to the standard error output.
		*/
		textPrinterr = 57,
		/**
		Print the given string to the standard output, without adding a newline.
		*/
		textPrintraw = 58,
		/**
		Serialize a $(D Variant) to a string.
		*/
		varToStr = 59,
		/**
		Deserialize a $(D Variant) from a string serialized using $(D constant VAR_TO_STR).
		*/
		strToVar = 60,
		/**
		Serialize a $(D Variant) to a $(D PoolByteArray).
		*/
		varToBytes = 61,
		/**
		Deserialize a $(D Variant) from a $(D PoolByteArray) serialized using $(D constant VAR_TO_BYTES).
		*/
		bytesToVar = 62,
		/**
		Return the $(D Color) with the given name and alpha ranging from 0 to 1.
		$(B Note:) Names are defined in `color_names.inc`.
		*/
		colorn = 63,
		/**
		Return a number smoothly interpolated between the first two inputs, based on the third input. Similar to $(D constant MATH_LERP), but interpolates faster at the beginning and slower at the end. Using Hermite interpolation formula:
		
		
		var t = clamp((weight - from) / (to - from), 0.0, 1.0)
		return t * t * (3.0 - 2.0 * t)
		
		
		*/
		mathSmoothstep = 64,
		/**
		
		*/
		mathPosmod = 65,
		/**
		
		*/
		mathLerpAngle = 66,
		/**
		
		*/
		textOrd = 67,
		/**
		Represents the size of the $(D builtinfunc) enum.
		*/
		funcMax = 68,
	}
	/// 
	enum Constants : int
	{
		mathSin = 0,
		mathCos = 1,
		mathTan = 2,
		mathSinh = 3,
		mathCosh = 4,
		mathTanh = 5,
		mathAsin = 6,
		mathAcos = 7,
		mathAtan = 8,
		mathAtan2 = 9,
		mathSqrt = 10,
		mathFmod = 11,
		mathFposmod = 12,
		mathFloor = 13,
		mathCeil = 14,
		mathRound = 15,
		mathAbs = 16,
		mathSign = 17,
		mathPow = 18,
		mathLog = 19,
		mathExp = 20,
		mathIsnan = 21,
		mathIsinf = 22,
		mathEase = 23,
		mathDecimals = 24,
		mathStepify = 25,
		mathLerp = 26,
		mathInverseLerp = 27,
		mathRangeLerp = 28,
		mathMoveToward = 29,
		mathDectime = 30,
		mathRandomize = 31,
		mathRand = 32,
		mathRandf = 33,
		mathRandom = 34,
		mathSeed = 35,
		mathRandseed = 36,
		mathDeg2rad = 37,
		mathRad2deg = 38,
		mathLinear2db = 39,
		mathDb2linear = 40,
		mathPolar2cartesian = 41,
		mathCartesian2polar = 42,
		mathWrap = 43,
		mathWrapf = 44,
		logicMax = 45,
		logicMin = 46,
		logicClamp = 47,
		logicNearestPo2 = 48,
		objWeakref = 49,
		funcFuncref = 50,
		typeConvert = 51,
		typeOf = 52,
		typeExists = 53,
		textChar = 54,
		textStr = 55,
		textPrint = 56,
		textPrinterr = 57,
		textPrintraw = 58,
		varToStr = 59,
		strToVar = 60,
		varToBytes = 61,
		bytesToVar = 62,
		colorn = 63,
		mathSmoothstep = 64,
		mathPosmod = 65,
		mathLerpAngle = 66,
		textOrd = 67,
		funcMax = 68,
	}
	/**
	
	*/
	VisualScriptBuiltinFunc.BuiltinFunc getFunc()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptBuiltinFunc.BuiltinFunc)(GDNativeClassBinding.getFunc, _godot_object);
	}
	/**
	
	*/
	void setFunc(in long which)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFunc, _godot_object, which);
	}
	/**
	The function to be executed.
	*/
	@property VisualScriptBuiltinFunc.BuiltinFunc _function()
	{
		return getFunc();
	}
	/// ditto
	@property void _function(long v)
	{
		setFunc(v);
	}
}
