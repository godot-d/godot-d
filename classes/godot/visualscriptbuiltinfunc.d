/**


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
	/// 
	enum BuiltinFunc : int
	{
		/** */
		mathSin = 0,
		/** */
		mathCos = 1,
		/** */
		mathTan = 2,
		/** */
		mathSinh = 3,
		/** */
		mathCosh = 4,
		/** */
		mathTanh = 5,
		/** */
		mathAsin = 6,
		/** */
		mathAcos = 7,
		/** */
		mathAtan = 8,
		/** */
		mathAtan2 = 9,
		/** */
		mathSqrt = 10,
		/** */
		mathFmod = 11,
		/** */
		mathFposmod = 12,
		/** */
		mathFloor = 13,
		/** */
		mathCeil = 14,
		/** */
		mathRound = 15,
		/** */
		mathAbs = 16,
		/** */
		mathSign = 17,
		/** */
		mathPow = 18,
		/** */
		mathLog = 19,
		/** */
		mathExp = 20,
		/** */
		mathIsnan = 21,
		/** */
		mathIsinf = 22,
		/** */
		mathEase = 23,
		/** */
		mathDecimals = 24,
		/** */
		mathStepify = 25,
		/** */
		mathLerp = 26,
		/** */
		mathInverseLerp = 27,
		/** */
		mathRangeLerp = 28,
		/** */
		mathMoveToward = 29,
		/** */
		mathDectime = 30,
		/** */
		mathRandomize = 31,
		/** */
		mathRand = 32,
		/** */
		mathRandf = 33,
		/** */
		mathRandom = 34,
		/** */
		mathSeed = 35,
		/** */
		mathRandseed = 36,
		/** */
		mathDeg2rad = 37,
		/** */
		mathRad2deg = 38,
		/** */
		mathLinear2db = 39,
		/** */
		mathDb2linear = 40,
		/** */
		mathPolar2cartesian = 41,
		/** */
		mathCartesian2polar = 42,
		/** */
		mathWrap = 43,
		/** */
		mathWrapf = 44,
		/** */
		logicMax = 45,
		/** */
		logicMin = 46,
		/** */
		logicClamp = 47,
		/** */
		logicNearestPo2 = 48,
		/** */
		objWeakref = 49,
		/** */
		funcFuncref = 50,
		/** */
		typeConvert = 51,
		/** */
		typeOf = 52,
		/** */
		typeExists = 53,
		/** */
		textChar = 54,
		/** */
		textStr = 55,
		/** */
		textPrint = 56,
		/** */
		textPrinterr = 57,
		/** */
		textPrintraw = 58,
		/** */
		varToStr = 59,
		/** */
		strToVar = 60,
		/** */
		varToBytes = 61,
		/** */
		bytesToVar = 62,
		/** */
		colorn = 63,
		/** */
		mathSmoothstep = 64,
		/** */
		mathPosmod = 65,
		/** */
		mathLerpAngle = 66,
		/** */
		textOrd = 67,
		/** */
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
