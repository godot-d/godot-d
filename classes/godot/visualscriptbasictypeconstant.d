/**
A Visual Script node representing a constant from the base types.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptbasictypeconstant;
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
A Visual Script node representing a constant from the base types.

A Visual Script node representing a constant from base types, such as $(D Vector3.AXIS_X).
*/
@GodotBaseClass struct VisualScriptBasicTypeConstant
{
	static immutable string _GODOT_internal_name = "VisualScriptBasicTypeConstant";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptBasicTypeConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptBasicTypeConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptBasicTypeConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptBasicTypeConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptBasicTypeConstant)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_basic_type") = _GODOT_set_basic_type;
	/**
	
	*/
	void setBasicType(in long name)
	{
		_GODOT_set_basic_type.bind("VisualScriptBasicTypeConstant", "set_basic_type");
		ptrcall!(void)(_GODOT_set_basic_type, _godot_object, name);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_basic_type") = _GODOT_get_basic_type;
	/**
	
	*/
	Variant.Type getBasicType() const
	{
		_GODOT_get_basic_type.bind("VisualScriptBasicTypeConstant", "get_basic_type");
		return ptrcall!(Variant.Type)(_GODOT_get_basic_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_basic_type_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_basic_type_constant") = _GODOT_set_basic_type_constant;
	/**
	
	*/
	void setBasicTypeConstant(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_basic_type_constant.bind("VisualScriptBasicTypeConstant", "set_basic_type_constant");
		ptrcall!(void)(_GODOT_set_basic_type_constant, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_basic_type_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_basic_type_constant") = _GODOT_get_basic_type_constant;
	/**
	
	*/
	String getBasicTypeConstant() const
	{
		_GODOT_get_basic_type_constant.bind("VisualScriptBasicTypeConstant", "get_basic_type_constant");
		return ptrcall!(String)(_GODOT_get_basic_type_constant, _godot_object);
	}
	/**
	The type to get the constant from.
	*/
	@property Variant.Type basicType()
	{
		return getBasicType();
	}
	/// ditto
	@property void basicType(long v)
	{
		setBasicType(v);
	}
	/**
	The name of the constant to return.
	*/
	@property String constant()
	{
		return getBasicTypeConstant();
	}
	/// ditto
	@property void constant(String v)
	{
		setBasicTypeConstant(v);
	}
}
