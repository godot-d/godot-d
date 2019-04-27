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
import godot.inputevent;
import godot.resource;
import godot.reference;
/**
Input event type for keyboard events.

Stores key presses on the keyboard. Supports key presses, key releases and $(D echo) events.
*/
@GodotBaseClass struct InputEventKey
{
	enum string _GODOT_internal_name = "InputEventKey";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEventWithModifiers _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
		@GodotName("set_scancode") GodotMethod!(void, long) setScancode;
		@GodotName("get_scancode") GodotMethod!(long) getScancode;
		@GodotName("set_unicode") GodotMethod!(void, long) setUnicode;
		@GodotName("get_unicode") GodotMethod!(long) getUnicode;
		@GodotName("set_echo") GodotMethod!(void, bool) setEcho;
		@GodotName("get_scancode_with_modifiers") GodotMethod!(long) getScancodeWithModifiers;
	}
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
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPressed, _godot_object, pressed);
	}
	/**
	
	*/
	void setScancode(in long scancode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScancode, _godot_object, scancode);
	}
	/**
	
	*/
	long getScancode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getScancode, _godot_object);
	}
	/**
	
	*/
	void setUnicode(in long unicode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUnicode, _godot_object, unicode);
	}
	/**
	
	*/
	long getUnicode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getUnicode, _godot_object);
	}
	/**
	
	*/
	void setEcho(in bool echo)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEcho, _godot_object, echo);
	}
	/**
	Returns the scancode combined with modifier keys such as `Shift` or `Alt`. See also $(D InputEventWithModifiers).
	*/
	long getScancodeWithModifiers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getScancodeWithModifiers, _godot_object);
	}
	/**
	If `true`, the key's state is pressed. If `false`, the key's state is released.
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
	Key scancode, one of the $(D keylist) constants.
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
	If `true`, the key was already pressed before this event. It means the user is holding the key down.
	*/
	@property bool echo()
	{
		return isEcho();
	}
	/// ditto
	@property void echo(bool v)
	{
		setEcho(v);
	}
}
