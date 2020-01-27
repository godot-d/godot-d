/**
Input event type for mouse motion events.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventmousemotion;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputeventmouse;
import godot.inputeventwithmodifiers;
/**
Input event type for mouse motion events.

Contains mouse and pen motion information. Supports relative, absolute positions and speed. See $(D Node._input).
*/
@GodotBaseClass struct InputEventMouseMotion
{
	enum string _GODOT_internal_name = "InputEventMouseMotion";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEventMouse _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_pressure") GodotMethod!(double) getPressure;
		@GodotName("get_relative") GodotMethod!(Vector2) getRelative;
		@GodotName("get_speed") GodotMethod!(Vector2) getSpeed;
		@GodotName("get_tilt") GodotMethod!(Vector2) getTilt;
		@GodotName("set_pressure") GodotMethod!(void, double) setPressure;
		@GodotName("set_relative") GodotMethod!(void, Vector2) setRelative;
		@GodotName("set_speed") GodotMethod!(void, Vector2) setSpeed;
		@GodotName("set_tilt") GodotMethod!(void, Vector2) setTilt;
	}
	bool opEquals(in InputEventMouseMotion other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventMouseMotion opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventMouseMotion _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventMouseMotion");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventMouseMotion)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getPressure() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPressure, _godot_object);
	}
	/**
	
	*/
	Vector2 getRelative() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getRelative, _godot_object);
	}
	/**
	
	*/
	Vector2 getSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getSpeed, _godot_object);
	}
	/**
	
	*/
	Vector2 getTilt() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getTilt, _godot_object);
	}
	/**
	
	*/
	void setPressure(in double pressure)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPressure, _godot_object, pressure);
	}
	/**
	
	*/
	void setRelative(in Vector2 relative)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRelative, _godot_object, relative);
	}
	/**
	
	*/
	void setSpeed(in Vector2 speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpeed, _godot_object, speed);
	}
	/**
	
	*/
	void setTilt(in Vector2 tilt)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTilt, _godot_object, tilt);
	}
	/**
	Represents the pressure the user puts on the pen. Ranges from `0.0` to `1.0`.
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
	The mouse position relative to the previous position (position at the last frame).
	*/
	@property Vector2 relative()
	{
		return getRelative();
	}
	/// ditto
	@property void relative(Vector2 v)
	{
		setRelative(v);
	}
	/**
	The mouse speed in pixels per second.
	*/
	@property Vector2 speed()
	{
		return getSpeed();
	}
	/// ditto
	@property void speed(Vector2 v)
	{
		setSpeed(v);
	}
	/**
	Represents the angles of tilt of the pen. Positive X-coordinate value indicates a tilt to the right. Positive Y-coordinate value indicates a tilt toward the user. Ranges from `-1.0` to `1.0` for both axes.
	*/
	@property Vector2 tilt()
	{
		return getTilt();
	}
	/// ditto
	@property void tilt(Vector2 v)
	{
		setTilt(v);
	}
}
