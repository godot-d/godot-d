/**
Calculates a scalar derivative within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodescalarderivativefunc;
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
Calculates a scalar derivative within the visual shader graph.

This node is only available in `Fragment` and `Light` visual shaders.
*/
@GodotBaseClass struct VisualShaderNodeScalarDerivativeFunc
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeScalarDerivativeFunc";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_function") GodotMethod!(VisualShaderNodeScalarDerivativeFunc.Function) getFunction;
		@GodotName("set_function") GodotMethod!(void, long) setFunction;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeScalarDerivativeFunc other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualShaderNodeScalarDerivativeFunc opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualShaderNodeScalarDerivativeFunc.
	/// Note: use `memnew!VisualShaderNodeScalarDerivativeFunc` instead.
	static VisualShaderNodeScalarDerivativeFunc _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeScalarDerivativeFunc");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeScalarDerivativeFunc)(constructor());
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
	VisualShaderNodeScalarDerivativeFunc.Function getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeScalarDerivativeFunc.Function)(GDNativeClassBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	void setFunction(in long func)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFunction, _godot_object, func);
	}
	/**
	The derivative type. See $(D _function) for options.
	*/
	@property VisualShaderNodeScalarDerivativeFunc.Function _function()
	{
		return getFunction();
	}
	/// ditto
	@property void _function(long v)
	{
		setFunction(v);
	}
}
