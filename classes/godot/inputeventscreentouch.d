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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputevent;
import godot.resource;
/**
Input event type for screen touch events.
(only available on mobile devices)

Stores multi-touch press/release information. Supports touch press, touch release and $(D index) for multi-touch count and order.
*/
@GodotBaseClass struct InputEventScreenTouch
{
	package(godot) enum string _GODOT_internal_name = "InputEventScreenTouch";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_index") GodotMethod!(long) getIndex;
		@GodotName("get_position") GodotMethod!(Vector2) getPosition;
		@GodotName("set_index") GodotMethod!(void, long) setIndex;
		@GodotName("set_position") GodotMethod!(void, Vector2) setPosition;
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputEventScreenTouch other) const
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
	/// Construct a new instance of InputEventScreenTouch.
	/// Note: use `memnew!InputEventScreenTouch` instead.
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
	long getIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getIndex, _godot_object);
	}
	/**
	
	*/
	Vector2 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	void setIndex(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIndex, _godot_object, index);
	}
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPosition, _godot_object, position);
	}
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPressed, _godot_object, pressed);
	}
	/**
	The touch index in the case of a multi-touch event. One index = one finger.
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
	The touch position.
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
