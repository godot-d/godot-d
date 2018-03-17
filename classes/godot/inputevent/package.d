/**
Generic input event

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputevent;
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
Generic input event

Base class of all sort of input event. See $(D Node._input).
*/
@GodotBaseClass struct InputEvent
{
	static immutable string _GODOT_internal_name = "InputEvent";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputEvent other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEvent opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEvent _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEvent");
		if(constructor is null) return typeof(this).init;
		return cast(InputEvent)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_device;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_device") = _GODOT_set_device;
	/**
	
	*/
	void setDevice(in long device)
	{
		_GODOT_set_device.bind("InputEvent", "set_device");
		ptrcall!(void)(_GODOT_set_device, _godot_object, device);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_device;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_device") = _GODOT_get_device;
	/**
	
	*/
	long getDevice() const
	{
		_GODOT_get_device.bind("InputEvent", "get_device");
		return ptrcall!(long)(_GODOT_get_device, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_pressed") = _GODOT_is_pressed;
	/**
	Returns `true` if this input event is pressed. Not relevant for the event types `MOUSE_MOTION`, `SCREEN_DRAG` or `NONE`.
	*/
	bool isPressed() const
	{
		_GODOT_is_pressed.bind("InputEvent", "is_pressed");
		return ptrcall!(bool)(_GODOT_is_pressed, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action") = _GODOT_is_action;
	/**
	Returns `true` if this input event matches a pre-defined action of any type.
	*/
	bool isAction(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action.bind("InputEvent", "is_action");
		return ptrcall!(bool)(_GODOT_is_action, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_pressed") = _GODOT_is_action_pressed;
	/**
	Returns `true` if the given action is being pressed (and is not an echo event for KEY events). Not relevant for the event types `MOUSE_MOTION`, `SCREEN_DRAG` or `NONE`.
	*/
	bool isActionPressed(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action_pressed.bind("InputEvent", "is_action_pressed");
		return ptrcall!(bool)(_GODOT_is_action_pressed, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action_released;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_released") = _GODOT_is_action_released;
	/**
	Returns `true` if the given action is released (i.e. not pressed). Not relevant for the event types `MOUSE_MOTION`, `SCREEN_DRAG` or `NONE`.
	*/
	bool isActionReleased(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action_released.bind("InputEvent", "is_action_released");
		return ptrcall!(bool)(_GODOT_is_action_released, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_echo;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_echo") = _GODOT_is_echo;
	/**
	Returns `true` if this input event is an echo event (only for events of type KEY).
	*/
	bool isEcho() const
	{
		_GODOT_is_echo.bind("InputEvent", "is_echo");
		return ptrcall!(bool)(_GODOT_is_echo, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_as_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "as_text") = _GODOT_as_text;
	/**
	Returns a $(D String) representation of the event.
	*/
	String asText() const
	{
		_GODOT_as_text.bind("InputEvent", "as_text");
		return ptrcall!(String)(_GODOT_as_text, _godot_object);
	}
	package(godot) static GodotMethod!(bool, InputEvent) _GODOT_action_match;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_match") = _GODOT_action_match;
	/**
	Returns `true` if this event matches `event`.
	*/
	bool actionMatch(InputEvent event) const
	{
		_GODOT_action_match.bind("InputEvent", "action_match");
		return ptrcall!(bool)(_GODOT_action_match, _godot_object, event);
	}
	package(godot) static GodotMethod!(bool, InputEvent) _GODOT_shortcut_match;
	package(godot) alias _GODOT_methodBindInfo(string name : "shortcut_match") = _GODOT_shortcut_match;
	/**
	
	*/
	bool shortcutMatch(InputEvent event) const
	{
		_GODOT_shortcut_match.bind("InputEvent", "shortcut_match");
		return ptrcall!(bool)(_GODOT_shortcut_match, _godot_object, event);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_action_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_type") = _GODOT_is_action_type;
	/**
	Returns `true` if this input event's type is one of the `InputEvent` constants.
	*/
	bool isActionType() const
	{
		_GODOT_is_action_type.bind("InputEvent", "is_action_type");
		return ptrcall!(bool)(_GODOT_is_action_type, _godot_object);
	}
	package(godot) static GodotMethod!(InputEvent, Transform2D, Vector2) _GODOT_xformed_by;
	package(godot) alias _GODOT_methodBindInfo(string name : "xformed_by") = _GODOT_xformed_by;
	/**
	
	*/
	Ref!InputEvent xformedBy(in Transform2D xform, in Vector2 local_ofs = Vector2(0, 0)) const
	{
		_GODOT_xformed_by.bind("InputEvent", "xformed_by");
		return ptrcall!(InputEvent)(_GODOT_xformed_by, _godot_object, xform, local_ofs);
	}
	/**
	The event's device ID.
	*/
	@property long device()
	{
		return getDevice();
	}
	/// ditto
	@property void device(long v)
	{
		setDevice(v);
	}
}
