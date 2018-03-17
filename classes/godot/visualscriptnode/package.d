/**
A node which is part of a $(D VisualScript).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptnode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
import godot.visualscript;
/**
A node which is part of a $(D VisualScript).

Not to be confused with $(D Node), which is a part of a $(D SceneTree).
*/
@GodotBaseClass struct VisualScriptNode
{
	static immutable string _GODOT_internal_name = "VisualScriptNode";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptNode");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptNode)(constructor());
	}
	package(godot) static GodotMethod!(VisualScript) _GODOT_get_visual_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visual_script") = _GODOT_get_visual_script;
	/**
	Returns the $(D VisualScript) instance the node is bound to.
	*/
	Ref!VisualScript getVisualScript() const
	{
		_GODOT_get_visual_script.bind("VisualScriptNode", "get_visual_script");
		return ptrcall!(VisualScript)(_GODOT_get_visual_script, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, Variant) _GODOT_set_default_input_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_input_value") = _GODOT_set_default_input_value;
	/**
	Change the default value of a given port.
	*/
	void setDefaultInputValue(VariantArg1)(in long port_idx, in VariantArg1 value)
	{
		_GODOT_set_default_input_value.bind("VisualScriptNode", "set_default_input_value");
		ptrcall!(void)(_GODOT_set_default_input_value, _godot_object, port_idx, value);
	}
	package(godot) static GodotMethod!(Variant, long) _GODOT_get_default_input_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_input_value") = _GODOT_get_default_input_value;
	/**
	Returns the default value of a given port. The default value is used when nothing is connected to the port.
	*/
	Variant getDefaultInputValue(in long port_idx) const
	{
		_GODOT_get_default_input_value.bind("VisualScriptNode", "get_default_input_value");
		return ptrcall!(Variant)(_GODOT_get_default_input_value, _godot_object, port_idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_ports_changed_notify;
	package(godot) alias _GODOT_methodBindInfo(string name : "ports_changed_notify") = _GODOT_ports_changed_notify;
	/**
	Notify that the node's ports have changed. Usually used in conjunction with $(D VisualScriptCustomNode) .
	*/
	void portsChangedNotify()
	{
		_GODOT_ports_changed_notify.bind("VisualScriptNode", "ports_changed_notify");
		ptrcall!(void)(_GODOT_ports_changed_notify, _godot_object);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_default_input_values;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_default_input_values") = _GODOT__set_default_input_values;
	/**
	
	*/
	void _setDefaultInputValues(in Array values)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(values);
		String _GODOT_method_name = String("_set_default_input_values");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_default_input_values;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_default_input_values") = _GODOT__get_default_input_values;
	/**
	
	*/
	Array _getDefaultInputValues() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_default_input_values");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	@property Array _defaultInputValues()
	{
		return _getDefaultInputValues();
	}
	/// ditto
	@property void _defaultInputValues(Array v)
	{
		_setDefaultInputValues(v);
	}
}
