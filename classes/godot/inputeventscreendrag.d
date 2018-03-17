/**
Input event type for screen drag events.
(only available on mobile devices)

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventscreendrag;
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
Input event type for screen drag events.
(only available on mobile devices)

Contains screen drag information. See $(D Node._input).
*/
@GodotBaseClass struct InputEventScreenDrag
{
	static immutable string _GODOT_internal_name = "InputEventScreenDrag";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputEventScreenDrag other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventScreenDrag opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventScreenDrag _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventScreenDrag");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventScreenDrag)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_index") = _GODOT_set_index;
	/**
	
	*/
	void setIndex(in long index)
	{
		_GODOT_set_index.bind("InputEventScreenDrag", "set_index");
		ptrcall!(void)(_GODOT_set_index, _godot_object, index);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_index") = _GODOT_get_index;
	/**
	
	*/
	long getIndex() const
	{
		_GODOT_get_index.bind("InputEventScreenDrag", "get_index");
		return ptrcall!(long)(_GODOT_get_index, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_position") = _GODOT_set_position;
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		_GODOT_set_position.bind("InputEventScreenDrag", "set_position");
		ptrcall!(void)(_GODOT_set_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	/**
	
	*/
	Vector2 getPosition() const
	{
		_GODOT_get_position.bind("InputEventScreenDrag", "get_position");
		return ptrcall!(Vector2)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_relative") = _GODOT_set_relative;
	/**
	
	*/
	void setRelative(in Vector2 relative)
	{
		_GODOT_set_relative.bind("InputEventScreenDrag", "set_relative");
		ptrcall!(void)(_GODOT_set_relative, _godot_object, relative);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_relative") = _GODOT_get_relative;
	/**
	
	*/
	Vector2 getRelative() const
	{
		_GODOT_get_relative.bind("InputEventScreenDrag", "get_relative");
		return ptrcall!(Vector2)(_GODOT_get_relative, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed") = _GODOT_set_speed;
	/**
	
	*/
	void setSpeed(in Vector2 speed)
	{
		_GODOT_set_speed.bind("InputEventScreenDrag", "set_speed");
		ptrcall!(void)(_GODOT_set_speed, _godot_object, speed);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed") = _GODOT_get_speed;
	/**
	
	*/
	Vector2 getSpeed() const
	{
		_GODOT_get_speed.bind("InputEventScreenDrag", "get_speed");
		return ptrcall!(Vector2)(_GODOT_get_speed, _godot_object);
	}
	/**
	Drag event index in the case of a multi-drag event.
	*/
	@property long index()
	{
		return getIndex();
	}
	/// ditto
	@property void index(long v)
	{
		setIndex(v);
	}
	/**
	Drag position.
	*/
	@property Vector2 position()
	{
		return getPosition();
	}
	/// ditto
	@property void position(Vector2 v)
	{
		setPosition(v);
	}
	/**
	Drag position relative to its start position.
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
	Drag speed.
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
