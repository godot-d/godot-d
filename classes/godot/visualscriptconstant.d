/**
Gets a contant's value.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptconstant;
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
Gets a contant's value.

This node returns a constant's value.
$(B Input Ports:)
none
$(B Output Ports:)
- Data (variant): `get`
*/
@GodotBaseClass struct VisualScriptConstant
{
	static immutable string _GODOT_internal_name = "VisualScriptConstant";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptConstant)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_constant_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_type") = _GODOT_set_constant_type;
	/**
	
	*/
	void setConstantType(in long type)
	{
		_GODOT_set_constant_type.bind("VisualScriptConstant", "set_constant_type");
		ptrcall!(void)(_GODOT_set_constant_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_constant_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_type") = _GODOT_get_constant_type;
	/**
	
	*/
	Variant.Type getConstantType() const
	{
		_GODOT_get_constant_type.bind("VisualScriptConstant", "get_constant_type");
		return ptrcall!(Variant.Type)(_GODOT_get_constant_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, Variant) _GODOT_set_constant_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_value") = _GODOT_set_constant_value;
	/**
	
	*/
	void setConstantValue(VariantArg0)(in VariantArg0 value)
	{
		_GODOT_set_constant_value.bind("VisualScriptConstant", "set_constant_value");
		ptrcall!(void)(_GODOT_set_constant_value, _godot_object, value);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_constant_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_value") = _GODOT_get_constant_value;
	/**
	
	*/
	Variant getConstantValue() const
	{
		_GODOT_get_constant_value.bind("VisualScriptConstant", "get_constant_value");
		return ptrcall!(Variant)(_GODOT_get_constant_value, _godot_object);
	}
	/**
	The constant's type.
	*/
	@property Variant.Type type()
	{
		return getConstantType();
	}
	/// ditto
	@property void type(long v)
	{
		setConstantType(v);
	}
	/**
	The constant's value.
	*/
	@property Variant value()
	{
		return getConstantValue();
	}
	/// ditto
	@property void value(Variant v)
	{
		setConstantValue(v);
	}
}
