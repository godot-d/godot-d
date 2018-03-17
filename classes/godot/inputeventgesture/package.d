/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventgesture;
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

*/
@GodotBaseClass struct InputEventGesture
{
	static immutable string _GODOT_internal_name = "InputEventGesture";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEventWithModifiers _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputEventGesture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventGesture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventGesture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventGesture");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventGesture)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_position") = _GODOT_set_position;
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		_GODOT_set_position.bind("InputEventGesture", "set_position");
		ptrcall!(void)(_GODOT_set_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	/**
	
	*/
	Vector2 getPosition() const
	{
		_GODOT_get_position.bind("InputEventGesture", "get_position");
		return ptrcall!(Vector2)(_GODOT_get_position, _godot_object);
	}
	/**
	
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
