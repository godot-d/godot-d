/**
Sphere shape for 3D collisions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.sphereshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape;
/**
Sphere shape for 3D collisions.

Sphere shape for 3D collisions, which can be set into a $(D PhysicsBody) or $(D Area). This shape is useful for modeling sphere-like 3D objects.
*/
@GodotBaseClass struct SphereShape
{
	static immutable string _GODOT_internal_name = "SphereShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in SphereShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SphereShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SphereShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SphereShape");
		if(constructor is null) return typeof(this).init;
		return cast(SphereShape)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radius") = _GODOT_set_radius;
	/**
	
	*/
	void setRadius(in double radius)
	{
		_GODOT_set_radius.bind("SphereShape", "set_radius");
		ptrcall!(void)(_GODOT_set_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radius") = _GODOT_get_radius;
	/**
	
	*/
	double getRadius() const
	{
		_GODOT_get_radius.bind("SphereShape", "get_radius");
		return ptrcall!(double)(_GODOT_get_radius, _godot_object);
	}
	/**
	The sphere's radius. The shape's diameter is double the radius.
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
}
