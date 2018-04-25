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
/**
Input event type for mouse motion events.

Contains mouse motion information. Supports relative, absolute positions and speed. See $(D Node._input).
*/
@GodotBaseClass struct InputEventMouseMotion
{
	static immutable string _GODOT_internal_name = "InputEventMouseMotion";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEventMouse _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_relative") = _GODOT_set_relative;
	/**
	
	*/
	void setRelative(in Vector2 relative)
	{
		_GODOT_set_relative.bind("InputEventMouseMotion", "set_relative");
		ptrcall!(void)(_GODOT_set_relative, _godot_object, relative);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_relative") = _GODOT_get_relative;
	/**
	
	*/
	Vector2 getRelative() const
	{
		_GODOT_get_relative.bind("InputEventMouseMotion", "get_relative");
		return ptrcall!(Vector2)(_GODOT_get_relative, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed") = _GODOT_set_speed;
	/**
	
	*/
	void setSpeed(in Vector2 speed)
	{
		_GODOT_set_speed.bind("InputEventMouseMotion", "set_speed");
		ptrcall!(void)(_GODOT_set_speed, _godot_object, speed);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed") = _GODOT_get_speed;
	/**
	
	*/
	Vector2 getSpeed() const
	{
		_GODOT_get_speed.bind("InputEventMouseMotion", "get_speed");
		return ptrcall!(Vector2)(_GODOT_get_speed, _godot_object);
	}
	/**
	Mouse position relative to the previous position (position at the last frame).
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
	Mouse speed.
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
}
