/**
Input event type for gamepad joysticks and other motions. For buttons see `InputEventJoypadButton`.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventjoypadmotion;
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
Input event type for gamepad joysticks and other motions. For buttons see `InputEventJoypadButton`.

Stores information about joystick motions. One `InputEventJoypadMotion` represents one axis at a time.
*/
@GodotBaseClass struct InputEventJoypadMotion
{
	static immutable string _GODOT_internal_name = "InputEventJoypadMotion";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputEventJoypadMotion other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventJoypadMotion opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventJoypadMotion _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventJoypadMotion");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventJoypadMotion)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis") = _GODOT_set_axis;
	/**
	
	*/
	void setAxis(in long axis)
	{
		_GODOT_set_axis.bind("InputEventJoypadMotion", "set_axis");
		ptrcall!(void)(_GODOT_set_axis, _godot_object, axis);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_axis") = _GODOT_get_axis;
	/**
	
	*/
	long getAxis() const
	{
		_GODOT_get_axis.bind("InputEventJoypadMotion", "get_axis");
		return ptrcall!(long)(_GODOT_get_axis, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_axis_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis_value") = _GODOT_set_axis_value;
	/**
	
	*/
	void setAxisValue(in double axis_value)
	{
		_GODOT_set_axis_value.bind("InputEventJoypadMotion", "set_axis_value");
		ptrcall!(void)(_GODOT_set_axis_value, _godot_object, axis_value);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_axis_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_axis_value") = _GODOT_get_axis_value;
	/**
	
	*/
	double getAxisValue() const
	{
		_GODOT_get_axis_value.bind("InputEventJoypadMotion", "get_axis_value");
		return ptrcall!(double)(_GODOT_get_axis_value, _godot_object);
	}
	/**
	Axis identifier. Use one of the `JOY_AXIS_*` constants in $(D @global Scope).
	*/
	@property long axis()
	{
		return getAxis();
	}
	/// ditto
	@property void axis(long v)
	{
		setAxis(v);
	}
	/**
	Current position of the joystick on the given axis. The value ranges from `-1.0` to `1.0`. A value of `0` means the axis is in its resting position.
	*/
	@property double axisValue()
	{
		return getAxisValue();
	}
	/// ditto
	@property void axisValue(double v)
	{
		setAxisValue(v);
	}
}
