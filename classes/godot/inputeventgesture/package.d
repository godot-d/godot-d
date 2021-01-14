/**
Base class for touch control gestures.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventgesture;
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
Base class for touch control gestures.
*/
@GodotBaseClass struct InputEventGesture
{
	package(godot) enum string _GODOT_internal_name = "InputEventGesture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ InputEventWithModifiers _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_position") GodotMethod!(Vector2) getPosition;
		@GodotName("set_position") GodotMethod!(void, Vector2) setPosition;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputEventGesture other) const
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
	/// Construct a new instance of InputEventGesture.
	/// Note: use `memnew!InputEventGesture` instead.
	static InputEventGesture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventGesture");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventGesture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Vector2 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPosition, _godot_object, position);
	}
	/**
	The local gesture position relative to the $(D Viewport). If used in $(D Control._guiInput), the position is relative to the current $(D Control) that received this gesture.
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
