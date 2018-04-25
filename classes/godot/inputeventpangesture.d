/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventpangesture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputeventgesture;
/**

*/
@GodotBaseClass struct InputEventPanGesture
{
	static immutable string _GODOT_internal_name = "InputEventPanGesture";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEventGesture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputEventPanGesture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventPanGesture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventPanGesture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventPanGesture");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventPanGesture)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_delta;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_delta") = _GODOT_set_delta;
	/**
	
	*/
	void setDelta(in Vector2 delta)
	{
		_GODOT_set_delta.bind("InputEventPanGesture", "set_delta");
		ptrcall!(void)(_GODOT_set_delta, _godot_object, delta);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_delta;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_delta") = _GODOT_get_delta;
	/**
	
	*/
	Vector2 getDelta() const
	{
		_GODOT_get_delta.bind("InputEventPanGesture", "get_delta");
		return ptrcall!(Vector2)(_GODOT_get_delta, _godot_object);
	}
	/**
	
	*/
	@property Vector2 delta()
	{
		return getDelta();
	}
	/// ditto
	@property void delta(Vector2 v)
	{
		setDelta(v);
	}
}
