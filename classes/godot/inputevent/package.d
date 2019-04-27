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
import godot.reference;
/**
Generic input event

Base class of all sort of input event. See $(D Node._input).
*/
@GodotBaseClass struct InputEvent
{
	enum string _GODOT_internal_name = "InputEvent";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_device") GodotMethod!(void, long) setDevice;
		@GodotName("get_device") GodotMethod!(long) getDevice;
		@GodotName("is_action") GodotMethod!(bool, String) isAction;
		@GodotName("is_action_pressed") GodotMethod!(bool, String) isActionPressed;
		@GodotName("is_action_released") GodotMethod!(bool, String) isActionReleased;
		@GodotName("get_action_strength") GodotMethod!(double, String) getActionStrength;
		@GodotName("is_pressed") GodotMethod!(bool) isPressed;
		@GodotName("is_echo") GodotMethod!(bool) isEcho;
		@GodotName("as_text") GodotMethod!(String) asText;
		@GodotName("shortcut_match") GodotMethod!(bool, InputEvent) shortcutMatch;
		@GodotName("is_action_type") GodotMethod!(bool) isActionType;
		@GodotName("accumulate") GodotMethod!(bool, InputEvent) accumulate;
		@GodotName("xformed_by") GodotMethod!(InputEvent, Transform2D, Vector2) xformedBy;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void setDevice(in long device)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDevice, _godot_object, device);
	}
	/**
	
	*/
	long getDevice() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDevice, _godot_object);
	}
	/**
	Returns `true` if this input event matches a pre-defined action of any type.
	*/
	bool isAction(in String action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAction, _godot_object, action);
	}
	/**
	Returns `true` if the given action is being pressed (and is not an echo event for KEY events). Not relevant for the event types `MOUSE_MOTION`, `SCREEN_DRAG` or `NONE`.
	*/
	bool isActionPressed(in String action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isActionPressed, _godot_object, action);
	}
	/**
	Returns `true` if the given action is released (i.e. not pressed). Not relevant for the event types `MOUSE_MOTION`, `SCREEN_DRAG` or `NONE`.
	*/
	bool isActionReleased(in String action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isActionReleased, _godot_object, action);
	}
	/**
	
	*/
	double getActionStrength(in String action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getActionStrength, _godot_object, action);
	}
	/**
	Returns `true` if this input event is pressed. Not relevant for the event types `MOUSE_MOTION`, `SCREEN_DRAG` or `NONE`.
	*/
	bool isPressed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPressed, _godot_object);
	}
	/**
	Returns `true` if this input event is an echo event (only for events of type KEY).
	*/
	bool isEcho() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEcho, _godot_object);
	}
	/**
	Returns a $(D String) representation of the event.
	*/
	String asText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.asText, _godot_object);
	}
	/**
	
	*/
	bool shortcutMatch(InputEvent event) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.shortcutMatch, _godot_object, event);
	}
	/**
	Returns `true` if this input event's type is one of the $(D InputEvent) constants.
	*/
	bool isActionType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isActionType, _godot_object);
	}
	/**
	
	*/
	bool accumulate(InputEvent with_event)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.accumulate, _godot_object, with_event);
	}
	/**
	
	*/
	Ref!InputEvent xformedBy(in Transform2D xform, in Vector2 local_ofs = Vector2(0, 0)) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(InputEvent)(_classBinding.xformedBy, _godot_object, xform, local_ofs);
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
