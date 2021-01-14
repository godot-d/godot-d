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
import godot.d.traits;
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
$(B Note:) By default, this event is only emitted once per frame rendered at most. If you need more precise input reporting, call $(D Input.setUseAccumulatedInput) with `false` to make events emitted as often as possible. If you use InputEventMouseMotion to draw lines, consider implementing $(D url=https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm)Bresenham's line algorithm$(D /url) as well to avoid visible gaps in lines if the user is moving the mouse quickly.
*/
@GodotBaseClass struct InputEventMouseMotion
{
	package(godot) enum string _GODOT_internal_name = "InputEventMouseMotion";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ InputEventMouse _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in InputEventMouseMotion other) const
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
	/// Construct a new instance of InputEventMouseMotion.
	/// Note: use `memnew!InputEventMouseMotion` instead.
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
		return ptrcall!(double)(GDNativeClassBinding.getPressure, _godot_object);
	}
	/**
	
	*/
	Vector2 getRelative() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getRelative, _godot_object);
	}
	/**
	
	*/
	Vector2 getSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSpeed, _godot_object);
	}
	/**
	
	*/
	Vector2 getTilt() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getTilt, _godot_object);
	}
	/**
	
	*/
	void setPressure(in double pressure)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPressure, _godot_object, pressure);
	}
	/**
	
	*/
	void setRelative(in Vector2 relative)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRelative, _godot_object, relative);
	}
	/**
	
	*/
	void setSpeed(in Vector2 speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpeed, _godot_object, speed);
	}
	/**
	
	*/
	void setTilt(in Vector2 tilt)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTilt, _godot_object, tilt);
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
	$(B Note:) Since $(D InputEventMouseMotion) is only emitted when the mouse moves, the last event won't have a relative position of `Vector2(0, 0)` when the user stops moving the mouse.
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
