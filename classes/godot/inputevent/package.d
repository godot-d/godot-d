/**
Generic input event.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputevent;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
/**
Generic input event.

Base class of all sort of input event. See $(D Node._input).
*/
@GodotBaseClass struct InputEvent
{
	package(godot) enum string _GODOT_internal_name = "InputEvent";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("accumulate") GodotMethod!(bool, InputEvent) accumulate;
		@GodotName("as_text") GodotMethod!(String) asText;
		@GodotName("get_action_strength") GodotMethod!(double, String) getActionStrength;
		@GodotName("get_device") GodotMethod!(long) getDevice;
		@GodotName("is_action") GodotMethod!(bool, String) isAction;
		@GodotName("is_action_pressed") GodotMethod!(bool, String, bool) isActionPressed;
		@GodotName("is_action_released") GodotMethod!(bool, String) isActionReleased;
		@GodotName("is_action_type") GodotMethod!(bool) isActionType;
		@GodotName("is_echo") GodotMethod!(bool) isEcho;
		@GodotName("is_pressed") GodotMethod!(bool) isPressed;
		@GodotName("set_device") GodotMethod!(void, long) setDevice;
		@GodotName("shortcut_match") GodotMethod!(bool, InputEvent) shortcutMatch;
		@GodotName("xformed_by") GodotMethod!(InputEvent, Transform2D, Vector2) xformedBy;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputEvent other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of InputEvent.
	/// Note: use `memnew!InputEvent` instead.
	static InputEvent _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEvent");
		if(constructor is null) return typeof(this).init;
		return cast(InputEvent)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns `true` if the given input event and this input event can be added together (only for events of type $(D InputEventMouseMotion)).
	The given input event's position, global position and speed will be copied. The resulting `relative` is a sum of both events. Both events' modifiers have to be identical.
	*/
	bool accumulate(InputEvent with_event)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.accumulate, _godot_object, with_event);
	}
	/**
	Returns a $(D String) representation of the event.
	*/
	String asText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.asText, _godot_object);
	}
	/**
	Returns a value between 0.0 and 1.0 depending on the given actions' state. Useful for getting the value of events of type $(D InputEventJoypadMotion).
	*/
	double getActionStrength(in String action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getActionStrength, _godot_object, action);
	}
	/**
	
	*/
	long getDevice() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDevice, _godot_object);
	}
	/**
	Returns `true` if this input event matches a pre-defined action of any type.
	*/
	bool isAction(in String action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAction, _godot_object, action);
	}
	/**
	Returns `true` if the given action is being pressed (and is not an echo event for $(D InputEventKey) events, unless `allow_echo` is `true`). Not relevant for events of type $(D InputEventMouseMotion) or $(D InputEventScreenDrag).
	*/
	bool isActionPressed(in String action, in bool allow_echo = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActionPressed, _godot_object, action, allow_echo);
	}
	/**
	Returns `true` if the given action is released (i.e. not pressed). Not relevant for events of type $(D InputEventMouseMotion) or $(D InputEventScreenDrag).
	*/
	bool isActionReleased(in String action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActionReleased, _godot_object, action);
	}
	/**
	Returns `true` if this input event's type is one that can be assigned to an input action.
	*/
	bool isActionType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActionType, _godot_object);
	}
	/**
	Returns `true` if this input event is an echo event (only for events of type $(D InputEventKey)).
	*/
	bool isEcho() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEcho, _godot_object);
	}
	/**
	Returns `true` if this input event is pressed. Not relevant for events of type $(D InputEventMouseMotion) or $(D InputEventScreenDrag).
	*/
	bool isPressed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPressed, _godot_object);
	}
	/**
	
	*/
	void setDevice(in long device)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDevice, _godot_object, device);
	}
	/**
	Returns `true` if the given input event is checking for the same key ($(D InputEventKey)), button ($(D InputEventJoypadButton)) or action ($(D InputEventAction)).
	*/
	bool shortcutMatch(InputEvent event) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.shortcutMatch, _godot_object, event);
	}
	/**
	Returns a copy of the given input event which has been offset by `local_ofs` and transformed by `xform`. Relevant for events of type $(D InputEventMouseButton), $(D InputEventMouseMotion), $(D InputEventScreenTouch), $(D InputEventScreenDrag), $(D InputEventMagnifyGesture) and $(D InputEventPanGesture).
	*/
	Ref!InputEvent xformedBy(in Transform2D xform, in Vector2 local_ofs = Vector2(0, 0)) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(InputEvent)(GDNativeClassBinding.xformedBy, _godot_object, xform, local_ofs);
	}
	/**
	The event's device ID.
	$(B Note:) This device ID will always be `-1` for emulated mouse input from a touchscreen. This can be used to distinguish emulated mouse input from physical mouse input.
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
