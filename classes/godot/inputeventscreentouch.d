/**
Input event type for screen touch events.
(only available on mobile devices)

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventscreentouch;
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
import godot.reference;
/**
Input event type for screen touch events.
(only available on mobile devices)

Stores multi-touch press/release information. Supports touch press, touch release and $(D index) for multi-touch count and order.
*/
@GodotBaseClass struct InputEventScreenTouch
{
	enum string _GODOT_internal_name = "InputEventScreenTouch";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_index") GodotMethod!(void, long) setIndex;
		@GodotName("get_index") GodotMethod!(long) getIndex;
		@GodotName("set_position") GodotMethod!(void, Vector2) setPosition;
		@GodotName("get_position") GodotMethod!(Vector2) getPosition;
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
	}
	bool opEquals(in InputEventScreenTouch other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventScreenTouch opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventScreenTouch _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventScreenTouch");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventScreenTouch)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setIndex(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIndex, _godot_object, index);
	}
	/**
	
	*/
	long getIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getIndex, _godot_object);
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
	Vector2 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPressed, _godot_object, pressed);
	}
	/**
	Touch index in the case of a multi-touch event. One index = one finger.
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
	Touch position.
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
	If `true`, the touch's state is pressed. If `false`, the touch's state is released.
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
