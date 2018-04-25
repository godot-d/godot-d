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
/**
Input event type for mouse button events.

Contains mouse click information. See $(D Node._input).
*/
@GodotBaseClass struct InputEventMouseButton
{
	static immutable string _GODOT_internal_name = "InputEventMouseButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEventMouse _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, double) _GODOT_set_factor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_factor") = _GODOT_set_factor;
	/**
	
	*/
	void setFactor(in double factor)
	{
		_GODOT_set_factor.bind("InputEventMouseButton", "set_factor");
		ptrcall!(void)(_GODOT_set_factor, _godot_object, factor);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_factor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_factor") = _GODOT_get_factor;
	/**
	
	*/
	double getFactor()
	{
		_GODOT_get_factor.bind("InputEventMouseButton", "get_factor");
		return ptrcall!(double)(_GODOT_get_factor, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_button_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button_index") = _GODOT_set_button_index;
	/**
	
	*/
	void setButtonIndex(in long button_index)
	{
		_GODOT_set_button_index.bind("InputEventMouseButton", "set_button_index");
		ptrcall!(void)(_GODOT_set_button_index, _godot_object, button_index);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_button_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_index") = _GODOT_get_button_index;
	/**
	
	*/
	long getButtonIndex() const
	{
		_GODOT_get_button_index.bind("InputEventMouseButton", "get_button_index");
		return ptrcall!(long)(_GODOT_get_button_index, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed") = _GODOT_set_pressed;
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		_GODOT_set_pressed.bind("InputEventMouseButton", "set_pressed");
		ptrcall!(void)(_GODOT_set_pressed, _godot_object, pressed);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_doubleclick;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_doubleclick") = _GODOT_set_doubleclick;
	/**
	
	*/
	void setDoubleclick(in bool doubleclick)
	{
		_GODOT_set_doubleclick.bind("InputEventMouseButton", "set_doubleclick");
		ptrcall!(void)(_GODOT_set_doubleclick, _godot_object, doubleclick);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_doubleclick;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_doubleclick") = _GODOT_is_doubleclick;
	/**
	
	*/
	bool isDoubleclick() const
	{
		_GODOT_is_doubleclick.bind("InputEventMouseButton", "is_doubleclick");
		return ptrcall!(bool)(_GODOT_is_doubleclick, _godot_object);
	}
	/**
	TO TALK in PR, reduz said : i think it's used for apple touch but i don't remember what it does
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
	Mouse button identifier, one of the BUTTON_* or BUTTON_WHEEL_* constants in $(D @GlobalScope).
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
	If `true` the mouse button's state is pressed. If `false` the mouse button's state is released.
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
	If `true` the mouse button's state is a double-click. If `false` the mouse button's state is released.
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
