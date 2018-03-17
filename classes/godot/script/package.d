/**
A class stored as a resource.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.script;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
/**
A class stored as a resource.

The script exends the functionality of all objects that instance it.
The 'new' method of a script subclass creates a new instance. $(D GodotObject.setScript) extends an existing object, if that object's class matches one of the script's base classes.
*/
@GodotBaseClass struct Script
{
	static immutable string _GODOT_internal_name = "Script";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Script other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Script opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Script _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Script");
		if(constructor is null) return typeof(this).init;
		return cast(Script)(constructor());
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_instance") = _GODOT_can_instance;
	/**
	Returns true if the script can be instanced.
	*/
	bool canInstance() const
	{
		_GODOT_can_instance.bind("Script", "can_instance");
		return ptrcall!(bool)(_GODOT_can_instance, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_instance_has;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_has") = _GODOT_instance_has;
	/**
	Returns true if 'base_object' is an instance of this script.
	*/
	bool instanceHas(GodotObject base_object) const
	{
		_GODOT_instance_has.bind("Script", "instance_has");
		return ptrcall!(bool)(_GODOT_instance_has, _godot_object, base_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_source_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_source_code") = _GODOT_has_source_code;
	/**
	Returns true if the script contains non-empty source code.
	*/
	bool hasSourceCode() const
	{
		_GODOT_has_source_code.bind("Script", "has_source_code");
		return ptrcall!(bool)(_GODOT_has_source_code, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_source_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_source_code") = _GODOT_get_source_code;
	/**
	
	*/
	String getSourceCode() const
	{
		_GODOT_get_source_code.bind("Script", "get_source_code");
		return ptrcall!(String)(_GODOT_get_source_code, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_source_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_source_code") = _GODOT_set_source_code;
	/**
	
	*/
	void setSourceCode(StringArg0)(in StringArg0 source)
	{
		_GODOT_set_source_code.bind("Script", "set_source_code");
		ptrcall!(void)(_GODOT_set_source_code, _godot_object, source);
	}
	package(godot) static GodotMethod!(GodotError, bool) _GODOT_reload;
	package(godot) alias _GODOT_methodBindInfo(string name : "reload") = _GODOT_reload;
	/**
	Reloads the script's class implementation. Returns an error code.
	*/
	GodotError reload(in bool keep_state = false)
	{
		_GODOT_reload.bind("Script", "reload");
		return ptrcall!(GodotError)(_GODOT_reload, _godot_object, keep_state);
	}
	package(godot) static GodotMethod!(Script) _GODOT_get_base_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_script") = _GODOT_get_base_script;
	/**
	
	*/
	Ref!Script getBaseScript() const
	{
		_GODOT_get_base_script.bind("Script", "get_base_script");
		return ptrcall!(Script)(_GODOT_get_base_script, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_instance_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_instance_base_type") = _GODOT_get_instance_base_type;
	/**
	
	*/
	String getInstanceBaseType() const
	{
		_GODOT_get_instance_base_type.bind("Script", "get_instance_base_type");
		return ptrcall!(String)(_GODOT_get_instance_base_type, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_script_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_script_signal") = _GODOT_has_script_signal;
	/**
	Returns true if the script, or a base class, defines a signal with the given name.
	*/
	bool hasScriptSignal(StringArg0)(in StringArg0 signal_name) const
	{
		_GODOT_has_script_signal.bind("Script", "has_script_signal");
		return ptrcall!(bool)(_GODOT_has_script_signal, _godot_object, signal_name);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_tool;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_tool") = _GODOT_is_tool;
	/**
	Returns true if the script is a tool script. A tool script can run in the editor.
	*/
	bool isTool() const
	{
		_GODOT_is_tool.bind("Script", "is_tool");
		return ptrcall!(bool)(_GODOT_is_tool, _godot_object);
	}
	/**
	The script source code, or an empty string if source code is not available. When set, does not reload the class implementation automatically.
	*/
	@property String sourceCode()
	{
		return getSourceCode();
	}
	/// ditto
	@property void sourceCode(String v)
	{
		setSourceCode(v);
	}
}
