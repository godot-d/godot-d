/**
Input event type for mouse button events.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventmousebutton;
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
Input event type for mouse button events.

Contains mouse click information. See $(D Node._input).
*/
@GodotBaseClass struct InputEventMouseButton
{
	enum string _GODOT_internal_name = "InputEventMouseButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEventMouse _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_factor") GodotMethod!(void, double) setFactor;
		@GodotName("get_factor") GodotMethod!(double) getFactor;
		@GodotName("set_button_index") GodotMethod!(void, long) setButtonIndex;
		@GodotName("get_button_index") GodotMethod!(long) getButtonIndex;
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
		@GodotName("set_doubleclick") GodotMethod!(void, bool) setDoubleclick;
		@GodotName("is_doubleclick") GodotMethod!(bool) isDoubleclick;
	}
	bool opEquals(in InputEventMouseButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventMouseButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventMouseButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventMouseButton");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventMouseButton)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setFactor(in double factor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFactor, _godot_object, factor);
	}
	/**
	
	*/
	double getFactor()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFactor, _godot_object);
	}
	/**
	
	*/
	void setButtonIndex(in long button_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setButtonIndex, _godot_object, button_index);
	}
	/**
	
	*/
	long getButtonIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getButtonIndex, _godot_object);
	}
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPressed, _godot_object, pressed);
	}
	/**
	
	*/
	void setDoubleclick(in bool doubleclick)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDoubleclick, _godot_object, doubleclick);
	}
	/**
	
	*/
	bool isDoubleclick() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDoubleclick, _godot_object);
	}
	/**
	Magnitude. Amount (or delta) of the event. Used for scroll events, indicates scroll amount (vertically or horizontally). Only supported on some platforms, sensitivity varies by platform. May be 0 if not supported.
	*/
	@property double factor()
	{
		return getFactor();
	}
	/// ditto
	@property void factor(double v)
	{
		setFactor(v);
	}
	/**
	Mouse button identifier, one of the $(D buttonlist) button or button wheel constants.
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
	If `true`, the mouse button's state is pressed. If `false`, the mouse button's state is released.
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
	/**
	If `true`, the mouse button's state is a double-click.
	*/
	@property bool doubleclick()
	{
		return isDoubleclick();
	}
	/// ditto
	@property void doubleclick(bool v)
	{
		setDoubleclick(v);
	}
}
