/**
Base class for keys events with modifiers.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventwithmodifiers;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.inputevent;
/**
Base class for keys events with modifiers.

Contains keys events information with modifiers support like `SHIFT` or `ALT`. See $(D Node._input).
*/
@GodotBaseClass struct InputEventWithModifiers
{
	static immutable string _GODOT_internal_name = "InputEventWithModifiers";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputEventWithModifiers other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventWithModifiers opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventWithModifiers _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventWithModifiers");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventWithModifiers)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, bool) _GODOT_set_alt;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_alt") = _GODOT_set_alt;
	/**
	
	*/
	void setAlt(in bool enable)
	{
		_GODOT_set_alt.bind("InputEventWithModifiers", "set_alt");
		ptrcall!(void)(_GODOT_set_alt, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_alt;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_alt") = _GODOT_get_alt;
	/**
	
	*/
	bool getAlt() const
	{
		_GODOT_get_alt.bind("InputEventWithModifiers", "get_alt");
		return ptrcall!(bool)(_GODOT_get_alt, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shift;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shift") = _GODOT_set_shift;
	/**
	
	*/
	void setShift(in bool enable)
	{
		_GODOT_set_shift.bind("InputEventWithModifiers", "set_shift");
		ptrcall!(void)(_GODOT_set_shift, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_shift;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shift") = _GODOT_get_shift;
	/**
	
	*/
	bool getShift() const
	{
		_GODOT_get_shift.bind("InputEventWithModifiers", "get_shift");
		return ptrcall!(bool)(_GODOT_get_shift, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_control") = _GODOT_set_control;
	/**
	
	*/
	void setControl(in bool enable)
	{
		_GODOT_set_control.bind("InputEventWithModifiers", "set_control");
		ptrcall!(void)(_GODOT_set_control, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_control") = _GODOT_get_control;
	/**
	
	*/
	bool getControl() const
	{
		_GODOT_get_control.bind("InputEventWithModifiers", "get_control");
		return ptrcall!(bool)(_GODOT_get_control, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_metakey;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_metakey") = _GODOT_set_metakey;
	/**
	
	*/
	void setMetakey(in bool enable)
	{
		_GODOT_set_metakey.bind("InputEventWithModifiers", "set_metakey");
		ptrcall!(void)(_GODOT_set_metakey, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_metakey;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_metakey") = _GODOT_get_metakey;
	/**
	
	*/
	bool getMetakey() const
	{
		_GODOT_get_metakey.bind("InputEventWithModifiers", "get_metakey");
		return ptrcall!(bool)(_GODOT_get_metakey, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_command;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_command") = _GODOT_set_command;
	/**
	
	*/
	void setCommand(in bool enable)
	{
		_GODOT_set_command.bind("InputEventWithModifiers", "set_command");
		ptrcall!(void)(_GODOT_set_command, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_command;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_command") = _GODOT_get_command;
	/**
	
	*/
	bool getCommand() const
	{
		_GODOT_get_command.bind("InputEventWithModifiers", "get_command");
		return ptrcall!(bool)(_GODOT_get_command, _godot_object);
	}
	/**
	State of the Alt modifier.
	*/
	@property bool alt()
	{
		return getAlt();
	}
	/// ditto
	@property void alt(bool v)
	{
		setAlt(v);
	}
	/**
	State of the Shift modifier.
	*/
	@property bool shift()
	{
		return getShift();
	}
	/// ditto
	@property void shift(bool v)
	{
		setShift(v);
	}
	/**
	State of the Ctrl modifier.
	*/
	@property bool control()
	{
		return getControl();
	}
	/// ditto
	@property void control(bool v)
	{
		setControl(v);
	}
	/**
	State of the Meta modifier.
	*/
	@property bool meta()
	{
		return getMetakey();
	}
	/// ditto
	@property void meta(bool v)
	{
		setMetakey(v);
	}
	/**
	State of the Command modifier.
	*/
	@property bool command()
	{
		return getCommand();
	}
	/// ditto
	@property void command(bool v)
	{
		setCommand(v);
	}
}
