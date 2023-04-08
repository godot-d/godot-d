/**


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
import godot.globalenums;
import godot.object;
import godot.resource;
/**

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
		@GodotName("get_action_strength") GodotMethod!(double, String, bool) getActionStrength;
		@GodotName("get_device") GodotMethod!(long) getDevice;
		@GodotName("is_action") GodotMethod!(bool, String, bool) isAction;
		@GodotName("is_action_pressed") GodotMethod!(bool, String, bool, bool) isActionPressed;
		@GodotName("is_action_released") GodotMethod!(bool, String, bool) isActionReleased;
		@GodotName("is_action_type") GodotMethod!(bool) isActionType;
		@GodotName("is_echo") GodotMethod!(bool) isEcho;
		@GodotName("is_pressed") GodotMethod!(bool) isPressed;
		@GodotName("set_device") GodotMethod!(void, long) setDevice;
		@GodotName("shortcut_match") GodotMethod!(bool, InputEvent, bool) shortcutMatch;
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
	
	*/
	bool accumulate(InputEvent with_event)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.accumulate, _godot_object, with_event);
	}
	/**
	
	*/
	String asText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.asText, _godot_object);
	}
	/**
	
	*/
	double getActionStrength(in String action, in bool exact_match = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getActionStrength, _godot_object, action, exact_match);
	}
	/**
	
	*/
	long getDevice() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDevice, _godot_object);
	}
	/**
	
	*/
	bool isAction(in String action, in bool exact_match = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAction, _godot_object, action, exact_match);
	}
	/**
	
	*/
	bool isActionPressed(in String action, in bool allow_echo = false, in bool exact_match = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActionPressed, _godot_object, action, allow_echo, exact_match);
	}
	/**
	
	*/
	bool isActionReleased(in String action, in bool exact_match = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActionReleased, _godot_object, action, exact_match);
	}
	/**
	
	*/
	bool isActionType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActionType, _godot_object);
	}
	/**
	
	*/
	bool isEcho() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEcho, _godot_object);
	}
	/**
	
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
	
	*/
	bool shortcutMatch(InputEvent event, in bool exact_match = true) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.shortcutMatch, _godot_object, event, exact_match);
	}
	/**
	
	*/
	Ref!InputEvent xformedBy(in Transform2D xform, in Vector2 local_ofs = Vector2(0, 0)) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(InputEvent)(GDNativeClassBinding.xformedBy, _godot_object, xform, local_ofs);
	}
	/**
	
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
