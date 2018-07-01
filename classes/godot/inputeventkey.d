/**
Input event type for keyboard events.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventkey;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputeventwithmodifiers;
/**
Input event type for keyboard events.

Stores key presses on the keyboard. Supports key presses, key releases and $(D echo) events.
*/
@GodotBaseClass struct InputEventKey
{
	static immutable string _GODOT_internal_name = "InputEventKey";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEventWithModifiers _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputEventKey other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventKey opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventKey _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventKey");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventKey)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed") = _GODOT_set_pressed;
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		_GODOT_set_pressed.bind("InputEventKey", "set_pressed");
		ptrcall!(void)(_GODOT_set_pressed, _godot_object, pressed);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_scancode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scancode") = _GODOT_set_scancode;
	/**
	
	*/
	void setScancode(in long scancode)
	{
		_GODOT_set_scancode.bind("InputEventKey", "set_scancode");
		ptrcall!(void)(_GODOT_set_scancode, _godot_object, scancode);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_scancode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scancode") = _GODOT_get_scancode;
	/**
	
	*/
	long getScancode() const
	{
		_GODOT_get_scancode.bind("InputEventKey", "get_scancode");
		return ptrcall!(long)(_GODOT_get_scancode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_unicode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_unicode") = _GODOT_set_unicode;
	/**
	
	*/
	void setUnicode(in long unicode)
	{
		_GODOT_set_unicode.bind("InputEventKey", "set_unicode");
		ptrcall!(void)(_GODOT_set_unicode, _godot_object, unicode);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_unicode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unicode") = _GODOT_get_unicode;
	/**
	
	*/
	long getUnicode() const
	{
		_GODOT_get_unicode.bind("InputEventKey", "get_unicode");
		return ptrcall!(long)(_GODOT_get_unicode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_echo;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_echo") = _GODOT_set_echo;
	/**
	
	*/
	void setEcho(in bool echo)
	{
		_GODOT_set_echo.bind("InputEventKey", "set_echo");
		ptrcall!(void)(_GODOT_set_echo, _godot_object, echo);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_scancode_with_modifiers;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scancode_with_modifiers") = _GODOT_get_scancode_with_modifiers;
	/**
	
	*/
	long getScancodeWithModifiers() const
	{
		_GODOT_get_scancode_with_modifiers.bind("InputEventKey", "get_scancode_with_modifiers");
		return ptrcall!(long)(_GODOT_get_scancode_with_modifiers, _godot_object);
	}
	/**
	If `true` the key's state is pressed. If `false` the key's state is released.
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
	Key scancode, one of the `KEY_*` constants in $(D @GlobalScope).
	*/
	@property long scancode()
	{
		return getScancode();
	}
	/// ditto
	@property void scancode(long v)
	{
		setScancode(v);
	}
	/**
	Key unicode identifier when relevant.
	*/
	@property long unicode()
	{
		return getUnicode();
	}
	/// ditto
	@property void unicode(long v)
	{
		setUnicode(v);
	}
	/**
	If `true` the key was already pressed before this event. It means the user is holding the key down.
	*/
	@property long echo()
	{
		return isEcho();
	}
	/// ditto
	@property void echo(bool v)
	{
		setEcho(v);
	}
}
