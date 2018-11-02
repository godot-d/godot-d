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
import godot.inputevent;
import godot.resource;
import godot.reference;
/**
Input event type for mouse motion events.

Contains mouse motion information. Supports relative, absolute positions and speed. See $(D Node._input).
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
		@GodotName("set_relative") GodotMethod!(void, Vector2) setRelative;
		@GodotName("get_relative") GodotMethod!(Vector2) getRelative;
		@GodotName("set_speed") GodotMethod!(void, Vector2) setSpeed;
		@GodotName("get_speed") GodotMethod!(Vector2) getSpeed;
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
	void setRelative(in Vector2 relative)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRelative, _godot_object, relative);
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
	void setSpeed(in Vector2 speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpeed, _godot_object, speed);
	}
	/**
	
	*/
	Vector2 getSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getSpeed, _godot_object);
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
