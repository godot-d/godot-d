/**
Input event type for screen drag events. Only available on mobile devices.

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
import godot.resource;
/**
Input event type for screen drag events. Only available on mobile devices.

Contains screen drag information. See $(D Node._input).
*/
@GodotBaseClass struct InputEventScreenDrag
{
	enum string _GODOT_internal_name = "InputEventScreenDrag";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_index") GodotMethod!(long) getIndex;
		@GodotName("get_position") GodotMethod!(Vector2) getPosition;
		@GodotName("get_relative") GodotMethod!(Vector2) getRelative;
		@GodotName("get_speed") GodotMethod!(Vector2) getSpeed;
		@GodotName("set_index") GodotMethod!(void, long) setIndex;
		@GodotName("set_position") GodotMethod!(void, Vector2) setPosition;
		@GodotName("set_relative") GodotMethod!(void, Vector2) setRelative;
		@GodotName("set_speed") GodotMethod!(void, Vector2) setSpeed;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	long getIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getIndex, _godot_object);
	}
	/**
	
	*/
	Vector2 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getPosition, _godot_object);
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
	void setIndex(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIndex, _godot_object, index);
	}
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPosition, _godot_object, position);
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
	The drag event index in the case of a multi-drag event.
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
	The drag position.
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
	The drag position relative to its start position.
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
	The drag speed.
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
