/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodescalarfunc;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
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

*/
@GodotBaseClass struct VisualShaderNodeScalarFunc
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeScalarFunc";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_function") GodotMethod!(VisualShaderNodeScalarFunc.Function) getFunction;
		@GodotName("set_function") GodotMethod!(void, long) setFunction;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeScalarFunc other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualShaderNodeScalarFunc opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualShaderNodeScalarFunc.
	/// Note: use `memnew!VisualShaderNodeScalarFunc` instead.
	static VisualShaderNodeScalarFunc _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeScalarFunc");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeScalarFunc)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Function : int
	{
		/**
		
		*/
		funcSin = 0,
		/**
		
		*/
		funcCos = 1,
		/**
		
		*/
		funcTan = 2,
		/**
		
		*/
		funcAsin = 3,
		/**
		
		*/
		funcAcos = 4,
		/**
		
		*/
		funcAtan = 5,
		/**
		
		*/
		funcSinh = 6,
		/**
		
		*/
		funcCosh = 7,
		/**
		
		*/
		funcTanh = 8,
		/**
		
		*/
		funcLog = 9,
		/**
		
		*/
		funcExp = 10,
		/**
		
		*/
		funcSqrt = 11,
		/**
		
		*/
		funcAbs = 12,
		/**
		
		*/
		funcSign = 13,
		/**
		
		*/
		funcFloor = 14,
		/**
		
		*/
		funcRound = 15,
		/**
		
		*/
		funcCeil = 16,
		/**
		
		*/
		funcFrac = 17,
		/**
		
		*/
		funcSaturate = 18,
		/**
		
		*/
		funcNegate = 19,
		/**
		
		*/
		funcAcosh = 20,
		/**
		
		*/
		funcAsinh = 21,
		/**
		
		*/
		funcAtanh = 22,
		/**
		
		*/
		funcDegrees = 23,
		/**
		
		*/
		funcExp2 = 24,
		/**
		
		*/
		funcInverseSqrt = 25,
		/**
		
		*/
		funcLog2 = 26,
		/**
		
		*/
		funcRadians = 27,
		/**
		
		*/
		funcReciprocal = 28,
		/**
		
		*/
		funcRoundeven = 29,
		/**
		
		*/
		funcTrunc = 30,
		/**
		
		*/
		funcOneminus = 31,
	}
	/// 
	enum Constants : int
	{
		funcSin = 0,
		funcCos = 1,
		funcTan = 2,
		funcAsin = 3,
		funcAcos = 4,
		funcAtan = 5,
		funcSinh = 6,
		funcCosh = 7,
		funcTanh = 8,
		funcLog = 9,
		funcExp = 10,
		funcSqrt = 11,
		funcAbs = 12,
		funcSign = 13,
		funcFloor = 14,
		funcRound = 15,
		funcCeil = 16,
		funcFrac = 17,
		funcSaturate = 18,
		funcNegate = 19,
		funcAcosh = 20,
		funcAsinh = 21,
		funcAtanh = 22,
		funcDegrees = 23,
		funcExp2 = 24,
		funcInverseSqrt = 25,
		funcLog2 = 26,
		funcRadians = 27,
		funcReciprocal = 28,
		funcRoundeven = 29,
		funcTrunc = 30,
		funcOneminus = 31,
	}
	/**
	
	*/
	VisualShaderNodeScalarFunc.Function getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeScalarFunc.Function)(GDNativeClassBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	void setFunction(in long func)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFunction, _godot_object, func);
	}
	/**
	
	*/
	@property VisualShaderNodeScalarFunc.Function _function()
	{
		return getFunction();
	}
	/// ditto
	@property void _function(long v)
	{
		setFunction(v);
	}
}
