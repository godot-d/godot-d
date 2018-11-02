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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
import godot.resource;
import godot.reference;
/**
A Visual Script node used to call built-in functions.

A built-in function used inside a $(D VisualScript). It is usually a math function or an utility function.
See also $(D @GDScript), for the same functions in the GDScript language.
*/
@GodotBaseClass struct VisualScriptBuiltinFunc
{
	enum string _GODOT_internal_name = "VisualScriptBuiltinFunc";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_func") GodotMethod!(void, long) setFunc;
		@GodotName("get_func") GodotMethod!(VisualScriptBuiltinFunc.BuiltinFunc) getFunc;
	}
	bool opEquals(in VisualScriptBuiltinFunc other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptBuiltinFunc opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Return the result of 'value' decreased by 'step' * 'amount'.
		*/
		mathDectime = 29,
		/**
		Randomize the seed (or the internal state) of the random number generator. Current implementation reseeds using a number based on time.
		*/
		mathRandomize = 30,
		/**
		Return a random 32 bits integer value. To obtain a random value between 0 to N (where N is smaller than 2^32 - 1), you can use it with the remainder function.
		*/
		mathRand = 31,
		/**
		Return a random floating-point value between 0 and 1. To obtain a random value between 0 to N, you can use it with multiplication.
		*/
		mathRandf = 32,
		/**
		Return a random floating-point value between the two inputs.
		*/
		mathRandom = 33,
		/**
		Set the seed for the random number generator.
		*/
		mathSeed = 34,
		/**
		Return a random value from the given seed, along with the new seed.
		*/
		mathRandseed = 35,
		/**
		Convert the input from degrees to radians.
		*/
		mathDeg2rad = 36,
		/**
		Convert the input from radians to degrees.
		*/
		mathRad2deg = 37,
		/**
		Convert the input from linear volume to decibel volume.
		*/
		mathLinear2db = 38,
		/**
		Convert the input from decibel volume to linear volume.
		*/
		mathDb2linear = 39,
		/**
		Converts a 2D point expressed in the polar coordinate system (a distance from the origin `r` and an angle `th`) to the cartesian coordinate system (x and y axis).
		*/
		mathPolar2cartesian = 40,
		/**
		Converts a 2D point expressed in the cartesian coordinate system (x and y axis) to the polar coordinate system (a distance from the origin and an angle).
		*/
		mathCartesian2polar = 41,
		/**
		
		*/
		mathWrap = 42,
		/**
		
		*/
		mathWrapf = 43,
		/**
		Return the greater of the two numbers, also known as their maximum.
		*/
		logicMax = 44,
		/**
		Return the lesser of the two numbers, also known as their minimum.
		*/
		logicMin = 45,
		/**
		Return the input clamped inside the given range, ensuring the result is never outside it. Equivalent to `min(max(input, range_low), range_high)`
		*/
		logicClamp = 46,
		/**
		Return the nearest power of 2 to the input.
		*/
		logicNearestPo2 = 47,
		/**
		Create a $(D WeakRef) from the input.
		*/
		objWeakref = 48,
		/**
		Create a $(D FuncRef) from the input.
		*/
		funcFuncref = 49,
		/**
		Convert between types.
		*/
		typeConvert = 50,
		/**
		Return the type of the input as an integer. Check $(D Variant.type) for the integers that might be returned.
		*/
		typeOf = 51,
		/**
		Checks if a type is registered in the $(D ClassDB).
		*/
		typeExists = 52,
		/**
		Return a character with the given ascii value.
		*/
		textChar = 53,
		/**
		Convert the input to a string.
		*/
		textStr = 54,
		/**
		Print the given string to the output window.
		*/
		textPrint = 55,
		/**
		Print the given string to the standard error output.
		*/
		textPrinterr = 56,
		/**
		Print the given string to the standard output, without adding a newline.
		*/
		textPrintraw = 57,
		/**
		Serialize a $(D Variant) to a string.
		*/
		varToStr = 58,
		/**
		Deserialize a $(D Variant) from a string serialized using $(D VAR_TO_STR).
		*/
		strToVar = 59,
		/**
		Serialize a $(D Variant) to a $(D PoolByteArray).
		*/
		varToBytes = 60,
		/**
		Deserialize a $(D Variant) from a $(D PoolByteArray) serialized using $(D VAR_TO_BYTES).
		*/
		bytesToVar = 61,
		/**
		Return the $(D Color) with the given name and alpha ranging from 0 to 1. Note: names are defined in color_names.inc.
		*/
		colorn = 62,
		/**
		The maximum value the $(D _function) property can have.
		*/
		funcMax = 63,
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
		mathDectime = 29,
		mathRandomize = 30,
		mathRand = 31,
		mathRandf = 32,
		mathRandom = 33,
		mathSeed = 34,
		mathRandseed = 35,
		mathDeg2rad = 36,
		mathRad2deg = 37,
		mathLinear2db = 38,
		mathDb2linear = 39,
		mathPolar2cartesian = 40,
		mathCartesian2polar = 41,
		mathWrap = 42,
		mathWrapf = 43,
		logicMax = 44,
		logicMin = 45,
		logicClamp = 46,
		logicNearestPo2 = 47,
		objWeakref = 48,
		funcFuncref = 49,
		typeConvert = 50,
		typeOf = 51,
		typeExists = 52,
		textChar = 53,
		textStr = 54,
		textPrint = 55,
		textPrinterr = 56,
		textPrintraw = 57,
		varToStr = 58,
		strToVar = 59,
		varToBytes = 60,
		bytesToVar = 61,
		colorn = 62,
		funcMax = 63,
	}
	/**
	
	*/
	void setFunc(in long which)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFunc, _godot_object, which);
	}
	/**
	
	*/
	VisualScriptBuiltinFunc.BuiltinFunc getFunc()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptBuiltinFunc.BuiltinFunc)(_classBinding.getFunc, _godot_object);
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
