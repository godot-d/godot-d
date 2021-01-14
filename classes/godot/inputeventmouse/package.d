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
import godot.d.traits;
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
	package(godot) enum string _GODOT_internal_name = "InputEventMouse";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ InputEventWithModifiers _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_button_mask") GodotMethod!(long) getButtonMask;
		@GodotName("get_global_position") GodotMethod!(Vector2) getGlobalPosition;
		@GodotName("get_position") GodotMethod!(Vector2) getPosition;
		@GodotName("set_button_mask") GodotMethod!(void, long) setButtonMask;
		@GodotName("set_global_position") GodotMethod!(void, Vector2) setGlobalPosition;
		@GodotName("set_position") GodotMethod!(void, Vector2) setPosition;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputEventMouse other) const
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
	/// Construct a new instance of InputEventMouse.
	/// Note: use `memnew!InputEventMouse` instead.
	static InputEventMouse _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventMouse");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventMouse)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getButtonMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getButtonMask, _godot_object);
	}
	/**
	
	*/
	Vector2 getGlobalPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getGlobalPosition, _godot_object);
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
	void setButtonMask(in long button_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setButtonMask, _godot_object, button_mask);
	}
	/**
	
	*/
	void setGlobalPosition(in Vector2 global_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalPosition, _godot_object, global_position);
	}
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPosition, _godot_object, position);
	}
	/**
	The mouse button mask identifier, one of or a bitwise combination of the $(D buttonlist) button masks.
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
	The global mouse position relative to the current $(D Viewport) when used in $(D Control._guiInput), otherwise is at 0,0.
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
	/**
	The local mouse position relative to the $(D Viewport). If used in $(D Control._guiInput), the position is relative to the current $(D Control) which is under the mouse.
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
}
