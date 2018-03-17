/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptoperator;
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
/**
$(B Input Ports:)
- Data (variant): `A`
- Data (variant): `B`
$(B Output Ports:)
- Data (variant): `result`
*/
@GodotBaseClass struct VisualScriptOperator
{
	static immutable string _GODOT_internal_name = "VisualScriptOperator";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptOperator other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptOperator opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptOperator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptOperator");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptOperator)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_operator;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_operator") = _GODOT_set_operator;
	/**
	
	*/
	void setOperator(in long op)
	{
		_GODOT_set_operator.bind("VisualScriptOperator", "set_operator");
		ptrcall!(void)(_GODOT_set_operator, _godot_object, op);
	}
	package(godot) static GodotMethod!(Variant.Operator) _GODOT_get_operator;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_operator") = _GODOT_get_operator;
	/**
	
	*/
	Variant.Operator getOperator() const
	{
		_GODOT_get_operator.bind("VisualScriptOperator", "get_operator");
		return ptrcall!(Variant.Operator)(_GODOT_get_operator, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_typed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_typed") = _GODOT_set_typed;
	/**
	
	*/
	void setTyped(in long type)
	{
		_GODOT_set_typed.bind("VisualScriptOperator", "set_typed");
		ptrcall!(void)(_GODOT_set_typed, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_typed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_typed") = _GODOT_get_typed;
	/**
	
	*/
	Variant.Type getTyped() const
	{
		_GODOT_get_typed.bind("VisualScriptOperator", "get_typed");
		return ptrcall!(Variant.Type)(_GODOT_get_typed, _godot_object);
	}
	/**
	
	*/
	@property Variant.Operator operator()
	{
		return getOperator();
	}
	/// ditto
	@property void operator(long v)
	{
		setOperator(v);
	}
	/**
	
	*/
	@property Variant.Type type()
	{
		return getTyped();
	}
	/// ditto
	@property void type(long v)
	{
		setTyped(v);
	}
}
