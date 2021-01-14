/**
Calculates a vector derivative within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodevectorderivativefunc;
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
Calculates a vector derivative within the visual shader graph.

This node is only available in `Fragment` and `Light` visual shaders.
*/
@GodotBaseClass struct VisualShaderNodeVectorDerivativeFunc
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeVectorDerivativeFunc";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_function") GodotMethod!(VisualShaderNodeVectorDerivativeFunc.Function) getFunction;
		@GodotName("set_function") GodotMethod!(void, long) setFunction;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeVectorDerivativeFunc other) const
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
	/// Construct a new instance of VisualShaderNodeVectorDerivativeFunc.
	/// Note: use `memnew!VisualShaderNodeVectorDerivativeFunc` instead.
	static VisualShaderNodeVectorDerivativeFunc _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeVectorDerivativeFunc");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeVectorDerivativeFunc)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Function : int
	{
		/**
		Sum of absolute derivative in `x` and `y`.
		*/
		funcSum = 0,
		/**
		Derivative in `x` using local differencing.
		*/
		funcX = 1,
		/**
		Derivative in `y` using local differencing.
		*/
		funcY = 2,
	}
	/// 
	enum Constants : int
	{
		funcSum = 0,
		funcX = 1,
		funcY = 2,
	}
	/**
	
	*/
	VisualShaderNodeVectorDerivativeFunc.Function getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeVectorDerivativeFunc.Function)(GDNativeClassBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	void setFunction(in long func)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFunction, _godot_object, func);
	}
	/**
	A derivative type. See $(D _function) for options.
	*/
	@property VisualShaderNodeVectorDerivativeFunc.Function _function()
	{
		return getFunction();
	}
	/// ditto
	@property void _function(long v)
	{
		setFunction(v);
	}
}
