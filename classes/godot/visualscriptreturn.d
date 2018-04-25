/**
Exits a function and returns an optional value.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptreturn;
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
Exits a function and returns an optional value.

Ends the execution of a function and returns control to the calling function. Optionally, it can return a $(D Variant) value.
$(B Input Ports:)
- Sequence
- Data (variant): `result` (optional)
$(B Output Ports:)
none
*/
@GodotBaseClass struct VisualScriptReturn
{
	static immutable string _GODOT_internal_name = "VisualScriptReturn";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptReturn other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptReturn opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptReturn _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptReturn");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptReturn)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, long) _GODOT_set_return_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_return_type") = _GODOT_set_return_type;
	/**
	
	*/
	void setReturnType(in long type)
	{
		_GODOT_set_return_type.bind("VisualScriptReturn", "set_return_type");
		ptrcall!(void)(_GODOT_set_return_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_return_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_return_type") = _GODOT_get_return_type;
	/**
	
	*/
	Variant.Type getReturnType() const
	{
		_GODOT_get_return_type.bind("VisualScriptReturn", "get_return_type");
		return ptrcall!(Variant.Type)(_GODOT_get_return_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enable_return_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enable_return_value") = _GODOT_set_enable_return_value;
	/**
	
	*/
	void setEnableReturnValue(in bool enable)
	{
		_GODOT_set_enable_return_value.bind("VisualScriptReturn", "set_enable_return_value");
		ptrcall!(void)(_GODOT_set_enable_return_value, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_return_value_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_return_value_enabled") = _GODOT_is_return_value_enabled;
	/**
	
	*/
	bool isReturnValueEnabled() const
	{
		_GODOT_is_return_value_enabled.bind("VisualScriptReturn", "is_return_value_enabled");
		return ptrcall!(bool)(_GODOT_is_return_value_enabled, _godot_object);
	}
	/**
	If `true` the `return` input port is available.
	*/
	@property bool returnEnabled()
	{
		return isReturnValueEnabled();
	}
	/// ditto
	@property void returnEnabled(bool v)
	{
		setEnableReturnValue(v);
	}
	/**
	The return value's data type.
	*/
	@property Variant.Type returnType()
	{
		return getReturnType();
	}
	/// ditto
	@property void returnType(long v)
	{
		setReturnType(v);
	}
}
