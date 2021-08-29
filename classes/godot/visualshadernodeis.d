/**
A boolean comparison operator to be used within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodeis;
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
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**
A boolean comparison operator to be used within the visual shader graph.

Returns the boolean result of the comparison between `INF` or `NaN` and a scalar parameter.
*/
@GodotBaseClass struct VisualShaderNodeIs
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeIs";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_function") GodotMethod!(VisualShaderNodeIs.Function) getFunction;
		@GodotName("set_function") GodotMethod!(void, long) setFunction;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeIs other) const
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
	/// Construct a new instance of VisualShaderNodeIs.
	/// Note: use `memnew!VisualShaderNodeIs` instead.
	static VisualShaderNodeIs _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeIs");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeIs)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Function : int
	{
		/**
		Comparison with `INF` (Infinity).
		*/
		funcIsInf = 0,
		/**
		Comparison with `NaN` (Not a Number; denotes invalid numeric results, e.g. division by zero).
		*/
		funcIsNan = 1,
	}
	/// 
	enum Constants : int
	{
		funcIsInf = 0,
		funcIsNan = 1,
	}
	/**
	
	*/
	VisualShaderNodeIs.Function getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeIs.Function)(GDNativeClassBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	void setFunction(in long func)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFunction, _godot_object, func);
	}
	/**
	The comparison function. See $(D _function) for options.
	*/
	@property VisualShaderNodeIs.Function _function()
	{
		return getFunction();
	}
	/// ditto
	@property void _function(long v)
	{
		setFunction(v);
	}
}
