/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.listener;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
/**

*/
@GodotBaseClass struct Listener
{
	static immutable string _GODOT_internal_name = "Listener";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Listener other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Listener opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Listener _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Listener");
		if(constructor is null) return typeof(this).init;
		return cast(Listener)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void) _GODOT_make_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_current") = _GODOT_make_current;
	/**
	
	*/
	void makeCurrent()
	{
		_GODOT_make_current.bind("Listener", "make_current");
		ptrcall!(void)(_GODOT_make_current, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_current") = _GODOT_clear_current;
	/**
	
	*/
	void clearCurrent()
	{
		_GODOT_clear_current.bind("Listener", "clear_current");
		ptrcall!(void)(_GODOT_clear_current, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_current") = _GODOT_is_current;
	/**
	
	*/
	bool isCurrent() const
	{
		_GODOT_is_current.bind("Listener", "is_current");
		return ptrcall!(bool)(_GODOT_is_current, _godot_object);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_listener_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_listener_transform") = _GODOT_get_listener_transform;
	/**
	
	*/
	Transform getListenerTransform() const
	{
		_GODOT_get_listener_transform.bind("Listener", "get_listener_transform");
		return ptrcall!(Transform)(_GODOT_get_listener_transform, _godot_object);
	}
}
