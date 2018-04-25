/**
Changes a local variable's value.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptlocalvarset;
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
Changes a local variable's value.

Changes a local variable's value to the given input. The new value is also provided on an output Data port.
$(B Input Ports:)
- Sequence
- Data (variant): `set`
$(B Output Ports:)
- Sequence
- Data (variant): `get`
*/
@GodotBaseClass struct VisualScriptLocalVarSet
{
	static immutable string _GODOT_internal_name = "VisualScriptLocalVarSet";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptLocalVarSet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptLocalVarSet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptLocalVarSet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptLocalVarSet");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptLocalVarSet)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, String) _GODOT_set_var_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_var_name") = _GODOT_set_var_name;
	/**
	
	*/
	void setVarName(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_var_name.bind("VisualScriptLocalVarSet", "set_var_name");
		ptrcall!(void)(_GODOT_set_var_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_var_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_var_name") = _GODOT_get_var_name;
	/**
	
	*/
	String getVarName() const
	{
		_GODOT_get_var_name.bind("VisualScriptLocalVarSet", "get_var_name");
		return ptrcall!(String)(_GODOT_get_var_name, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_var_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_var_type") = _GODOT_set_var_type;
	/**
	
	*/
	void setVarType(in long type)
	{
		_GODOT_set_var_type.bind("VisualScriptLocalVarSet", "set_var_type");
		ptrcall!(void)(_GODOT_set_var_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_var_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_var_type") = _GODOT_get_var_type;
	/**
	
	*/
	Variant.Type getVarType() const
	{
		_GODOT_get_var_type.bind("VisualScriptLocalVarSet", "get_var_type");
		return ptrcall!(Variant.Type)(_GODOT_get_var_type, _godot_object);
	}
	/**
	The local variable's name.
	*/
	@property String varName()
	{
		return getVarName();
	}
	/// ditto
	@property void varName(String v)
	{
		setVarName(v);
	}
	/**
	The local variable's type.
	*/
	@property Variant.Type type()
	{
		return getVarType();
	}
	/// ditto
	@property void type(long v)
	{
		setVarType(v);
	}
}
