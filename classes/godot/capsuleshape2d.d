/**
Capsule shape for 2D collisions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.capsuleshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape2d;
/**
Capsule shape for 2D collisions.


*/
@GodotBaseClass struct CapsuleShape2D
{
	static immutable string _GODOT_internal_name = "CapsuleShape2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CapsuleShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CapsuleShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CapsuleShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CapsuleShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(CapsuleShape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radius") = _GODOT_set_radius;
	/**
	
	*/
	void setRadius(in double radius)
	{
		_GODOT_set_radius.bind("CapsuleShape2D", "set_radius");
		ptrcall!(void)(_GODOT_set_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radius") = _GODOT_get_radius;
	/**
	
	*/
	double getRadius() const
	{
		_GODOT_get_radius.bind("CapsuleShape2D", "get_radius");
		return ptrcall!(double)(_GODOT_get_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_height") = _GODOT_set_height;
	/**
	
	*/
	void setHeight(in double height)
	{
		_GODOT_set_height.bind("CapsuleShape2D", "set_height");
		ptrcall!(void)(_GODOT_set_height, _godot_object, height);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	/**
	
	*/
	double getHeight() const
	{
		_GODOT_get_height.bind("CapsuleShape2D", "get_height");
		return ptrcall!(double)(_GODOT_get_height, _godot_object);
	}
	/**
	The capsules's radius.
	*/
	@property double radius()
	{
		return getRadius();
	}
	/// ditto
	@property void radius(double v)
	{
		setRadius(v);
	}
	/**
	The capsule's height.
	*/
	@property double height()
	{
		return getHeight();
	}
	/// ditto
	@property void height(double v)
	{
		setHeight(v);
	}
}
