/**
Input event for gamepad buttons.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventjoypadbutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputevent;
/**
Input event for gamepad buttons.

Input event type for gamepad buttons. For joysticks see $(D InputEventJoypadMotion).
*/
@GodotBaseClass struct InputEventJoypadButton
{
	static immutable string _GODOT_internal_name = "InputEventJoypadButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputEventJoypadButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventJoypadButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventJoypadButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventJoypadButton");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventJoypadButton)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, long) _GODOT_set_button_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button_index") = _GODOT_set_button_index;
	/**
	
	*/
	void setButtonIndex(in long button_index)
	{
		_GODOT_set_button_index.bind("InputEventJoypadButton", "set_button_index");
		ptrcall!(void)(_GODOT_set_button_index, _godot_object, button_index);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_button_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_index") = _GODOT_get_button_index;
	/**
	
	*/
	long getButtonIndex() const
	{
		_GODOT_get_button_index.bind("InputEventJoypadButton", "get_button_index");
		return ptrcall!(long)(_GODOT_get_button_index, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_pressure;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressure") = _GODOT_set_pressure;
	/**
	
	*/
	void setPressure(in double pressure)
	{
		_GODOT_set_pressure.bind("InputEventJoypadButton", "set_pressure");
		ptrcall!(void)(_GODOT_set_pressure, _godot_object, pressure);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_pressure;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pressure") = _GODOT_get_pressure;
	/**
	
	*/
	double getPressure() const
	{
		_GODOT_get_pressure.bind("InputEventJoypadButton", "get_pressure");
		return ptrcall!(double)(_GODOT_get_pressure, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed") = _GODOT_set_pressed;
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		_GODOT_set_pressed.bind("InputEventJoypadButton", "set_pressed");
		ptrcall!(void)(_GODOT_set_pressed, _godot_object, pressed);
	}
	/**
	Button identifier. One of the `JOY_BUTTON_*` constants from $(D @GlobalScope).
	*/
	@property long buttonIndex()
	{
		return getButtonIndex();
	}
	/// ditto
	@property void buttonIndex(long v)
	{
		setButtonIndex(v);
	}
	/**
	Represents the pressure the user puts on the button with his finger, if the controller supports it. Ranges from `0` to `1`.
	*/
	@property double pressure()
	{
		return getPressure();
	}
	/// ditto
	@property void pressure(double v)
	{
		setPressure(v);
	}
	/**
	If `true` the button's state is pressed. If `false` the button's state is released.
	*/
	@property bool pressed()
	{
		return isPressed();
	}
	/// ditto
	@property void pressed(bool v)
	{
		setPressed(v);
	}
}
