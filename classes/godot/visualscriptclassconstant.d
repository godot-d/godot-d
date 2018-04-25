/**
Gets a constant from a given class.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptclassconstant;
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
Gets a constant from a given class.

This node returns a constant from a given class, such as $(D @GlobalScope.TYPE_INT). See the given class' documentation for available constants.
$(B Input Ports:)
none
$(B Output Ports:)
- Data (variant): `value`
*/
@GodotBaseClass struct VisualScriptClassConstant
{
	static immutable string _GODOT_internal_name = "VisualScriptClassConstant";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptClassConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptClassConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptClassConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptClassConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptClassConstant)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, String) _GODOT_set_class_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_class_constant") = _GODOT_set_class_constant;
	/**
	
	*/
	void setClassConstant(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_class_constant.bind("VisualScriptClassConstant", "set_class_constant");
		ptrcall!(void)(_GODOT_set_class_constant, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_class_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_class_constant") = _GODOT_get_class_constant;
	/**
	
	*/
	String getClassConstant()
	{
		_GODOT_get_class_constant.bind("VisualScriptClassConstant", "get_class_constant");
		return ptrcall!(String)(_GODOT_get_class_constant, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_type") = _GODOT_set_base_type;
	/**
	
	*/
	void setBaseType(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_base_type.bind("VisualScriptClassConstant", "set_base_type");
		ptrcall!(void)(_GODOT_set_base_type, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_type") = _GODOT_get_base_type;
	/**
	
	*/
	String getBaseType()
	{
		_GODOT_get_base_type.bind("VisualScriptClassConstant", "get_base_type");
		return ptrcall!(String)(_GODOT_get_base_type, _godot_object);
	}
	/**
	The constant's parent class.
	*/
	@property String baseType()
	{
		return getBaseType();
	}
	/// ditto
	@property void baseType(String v)
	{
		setBaseType(v);
	}
	/**
	The constant to return. See the given class for its available constants.
	*/
	@property String constant()
	{
		return getClassConstant();
	}
	/// ditto
	@property void constant(String v)
	{
		setClassConstant(v);
	}
}
