/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodecompare;
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

*/
@GodotBaseClass struct VisualShaderNodeCompare
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeCompare";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_comparison_type") GodotMethod!(VisualShaderNodeCompare.ComparisonType) getComparisonType;
		@GodotName("get_condition") GodotMethod!(VisualShaderNodeCompare.Condition) getCondition;
		@GodotName("get_function") GodotMethod!(VisualShaderNodeCompare.Function) getFunction;
		@GodotName("set_comparison_type") GodotMethod!(void, long) setComparisonType;
		@GodotName("set_condition") GodotMethod!(void, long) setCondition;
		@GodotName("set_function") GodotMethod!(void, long) setFunction;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeCompare other) const
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
	/// Construct a new instance of VisualShaderNodeCompare.
	/// Note: use `memnew!VisualShaderNodeCompare` instead.
	static VisualShaderNodeCompare _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeCompare");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeCompare)(constructor());
	}
	/// 
	enum ComparisonType : int
	{
		/** */
		ctypeScalar = 0,
		/** */
		ctypeVector = 1,
		/** */
		ctypeBoolean = 2,
		/** */
		ctypeTransform = 3,
	}
	/// 
	enum Function : int
	{
		/** */
		funcEqual = 0,
		/** */
		funcNotEqual = 1,
		/** */
		funcGreaterThan = 2,
		/** */
		funcGreaterThanEqual = 3,
		/** */
		funcLessThan = 4,
		/** */
		funcLessThanEqual = 5,
	}
	/// 
	enum Condition : int
	{
		/** */
		condAll = 0,
		/** */
		condAny = 1,
	}
	/// 
	enum Constants : int
	{
		condAll = 0,
		ctypeScalar = 0,
		funcEqual = 0,
		ctypeVector = 1,
		funcNotEqual = 1,
		condAny = 1,
		funcGreaterThan = 2,
		ctypeBoolean = 2,
		ctypeTransform = 3,
		funcGreaterThanEqual = 3,
		funcLessThan = 4,
		funcLessThanEqual = 5,
	}
	/**
	
	*/
	VisualShaderNodeCompare.ComparisonType getComparisonType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeCompare.ComparisonType)(GDNativeClassBinding.getComparisonType, _godot_object);
	}
	/**
	
	*/
	VisualShaderNodeCompare.Condition getCondition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeCompare.Condition)(GDNativeClassBinding.getCondition, _godot_object);
	}
	/**
	
	*/
	VisualShaderNodeCompare.Function getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeCompare.Function)(GDNativeClassBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	void setComparisonType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setComparisonType, _godot_object, type);
	}
	/**
	
	*/
	void setCondition(in long condition)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCondition, _godot_object, condition);
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
	@property VisualShaderNodeCompare.Condition condition()
	{
		return getCondition();
	}
	/// ditto
	@property void condition(long v)
	{
		setCondition(v);
	}
	/**
	
	*/
	@property VisualShaderNodeCompare.Function _function()
	{
		return getFunction();
	}
	/// ditto
	@property void _function(long v)
	{
		setFunction(v);
	}
	/**
	
	*/
	@property VisualShaderNodeCompare.ComparisonType type()
	{
		return getComparisonType();
	}
	/// ditto
	@property void type(long v)
	{
		setComparisonType(v);
	}
}
