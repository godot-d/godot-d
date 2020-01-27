/**
A comparison function for common types within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodecompare;
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
A comparison function for common types within the visual shader graph.

Compares `a` and `b` of $(D type) by $(D _function). Returns a boolean scalar. Translates to `if` instruction in shader code.
*/
@GodotBaseClass struct VisualShaderNodeCompare
{
	enum string _GODOT_internal_name = "VisualShaderNodeCompare";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_comparison_type") GodotMethod!(VisualShaderNodeCompare.ComparisonType) getComparisonType;
		@GodotName("get_condition") GodotMethod!(VisualShaderNodeCompare.Condition) getCondition;
		@GodotName("get_function") GodotMethod!(VisualShaderNodeCompare.Function) getFunction;
		@GodotName("set_comparison_type") GodotMethod!(void, long) setComparisonType;
		@GodotName("set_condition") GodotMethod!(void, long) setCondition;
		@GodotName("set_function") GodotMethod!(void, long) setFunction;
	}
	bool opEquals(in VisualShaderNodeCompare other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeCompare opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualShaderNodeCompare _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeCompare");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeCompare)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ComparisonType : int
	{
		/**
		A floating-point scalar.
		*/
		ctypeScalar = 0,
		/**
		A 3D vector type.
		*/
		ctypeVector = 1,
		/**
		A boolean type.
		*/
		ctypeBoolean = 2,
		/**
		A transform (`mat4`) type.
		*/
		ctypeTransform = 3,
	}
	/// 
	enum Function : int
	{
		/**
		Comparison for equality (`a == b`).
		*/
		funcEqual = 0,
		/**
		Comparison for inequality (`a != b`).
		*/
		funcNotEqual = 1,
		/**
		Comparison for greater than (`a &gt; b`). Cannot be used if $(D type) set to $(D constant CTYPE_BOOLEAN) or $(D constant CTYPE_TRANSFORM).
		*/
		funcGreaterThan = 2,
		/**
		Comparison for greater than or equal (`a &gt;= b`). Cannot be used if $(D type) set to $(D constant CTYPE_BOOLEAN) or $(D constant CTYPE_TRANSFORM).
		*/
		funcGreaterThanEqual = 3,
		/**
		Comparison for less than (`a &lt; b`). Cannot be used if $(D type) set to $(D constant CTYPE_BOOLEAN) or $(D constant CTYPE_TRANSFORM).
		*/
		funcLessThan = 4,
		/**
		Comparison for less than or equal (`a &lt; b`). Cannot be used if $(D type) set to $(D constant CTYPE_BOOLEAN) or $(D constant CTYPE_TRANSFORM).
		*/
		funcLessThanEqual = 5,
	}
	/// 
	enum Condition : int
	{
		/**
		The result will be true if all of component in vector satisfy the comparison condition.
		*/
		condAll = 0,
		/**
		The result will be true if any of component in vector satisfy the comparison condition.
		*/
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
		return ptrcall!(VisualShaderNodeCompare.ComparisonType)(_classBinding.getComparisonType, _godot_object);
	}
	/**
	
	*/
	VisualShaderNodeCompare.Condition getCondition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeCompare.Condition)(_classBinding.getCondition, _godot_object);
	}
	/**
	
	*/
	VisualShaderNodeCompare.Function getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeCompare.Function)(_classBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	void setComparisonType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setComparisonType, _godot_object, type);
	}
	/**
	
	*/
	void setCondition(in long condition)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCondition, _godot_object, condition);
	}
	/**
	
	*/
	void setFunction(in long func)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFunction, _godot_object, func);
	}
	/**
	Extra condition which is applied if $(D type) is set to $(D constant CTYPE_VECTOR).
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
	A comparison function. See $(D _function) for options.
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
	The type to be used in the comparison. See $(D comparisontype) for options.
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
