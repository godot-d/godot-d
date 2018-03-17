/**
Base input event type for mouse events.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventmouse;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.inputeventwithmodifiers;
/**
Base input event type for mouse events.

Stores general mouse events information.
*/
@GodotBaseClass struct InputEventMouse
{
	static immutable string _GODOT_internal_name = "InputEventMouse";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEventWithModifiers _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputEventMouse other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventMouse opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventMouse _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventMouse");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventMouse)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_button_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button_mask") = _GODOT_set_button_mask;
	/**
	
	*/
	void setButtonMask(in long button_mask)
	{
		_GODOT_set_button_mask.bind("InputEventMouse", "set_button_mask");
		ptrcall!(void)(_GODOT_set_button_mask, _godot_object, button_mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_button_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_mask") = _GODOT_get_button_mask;
	/**
	
	*/
	long getButtonMask() const
	{
		_GODOT_get_button_mask.bind("InputEventMouse", "get_button_mask");
		return ptrcall!(long)(_GODOT_get_button_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_position") = _GODOT_set_position;
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		_GODOT_set_position.bind("InputEventMouse", "set_position");
		ptrcall!(void)(_GODOT_set_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	/**
	
	*/
	Vector2 getPosition() const
	{
		_GODOT_get_position.bind("InputEventMouse", "get_position");
		return ptrcall!(Vector2)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_position") = _GODOT_set_global_position;
	/**
	
	*/
	void setGlobalPosition(in Vector2 global_position)
	{
		_GODOT_set_global_position.bind("InputEventMouse", "set_global_position");
		ptrcall!(void)(_GODOT_set_global_position, _godot_object, global_position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_position") = _GODOT_get_global_position;
	/**
	
	*/
	Vector2 getGlobalPosition() const
	{
		_GODOT_get_global_position.bind("InputEventMouse", "get_global_position");
		return ptrcall!(Vector2)(_GODOT_get_global_position, _godot_object);
	}
	/**
	Mouse button mask identifier, one of or a bitwise combination of the BUTTON_MASK_* constants in $(D @GlobalScope).
	*/
	@property long buttonMask()
	{
		return getButtonMask();
	}
	/// ditto
	@property void buttonMask(long v)
	{
		setButtonMask(v);
	}
	/**
	Mouse local position relative to the $(D Viewport). If used in $(D Control._guiInput) the position is relative to the current $(D Control) which is under the mouse.
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
	Mouse position relative to the current $(D Viewport) when used in $(D Control._guiInput), otherwise is at 0,0.
	*/
	@property Vector2 globalPosition()
	{
		return getGlobalPosition();
	}
	/// ditto
	@property void globalPosition(Vector2 v)
	{
		setGlobalPosition(v);
	}
}
