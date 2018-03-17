/**
Direct access object to a space in the $(D PhysicsServer).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicsdirectspacestate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.physicsshapequeryparameters;
/**
Direct access object to a space in the $(D PhysicsServer).

It's used mainly to do queries against objects and areas residing in a given space.
*/
@GodotBaseClass struct PhysicsDirectSpaceState
{
	static immutable string _GODOT_internal_name = "PhysicsDirectSpaceState";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PhysicsDirectSpaceState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsDirectSpaceState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PhysicsDirectSpaceState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsDirectSpaceState");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsDirectSpaceState)(constructor());
	}
	package(godot) static GodotMethod!(Dictionary, Vector3, Vector3, Array, long) _GODOT_intersect_ray;
	package(godot) alias _GODOT_methodBindInfo(string name : "intersect_ray") = _GODOT_intersect_ray;
	/**
	Intersects a ray in a given space. The returned object is a dictionary with the following fields:
	`collider`: The colliding object.
	`collider_id`: The colliding object's ID.
	`normal`: The object's surface normal at the intersection point.
	`position`: The intersection point.
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	If the ray did not intersect anything, then an empty dictionary (`dir.empty()==true`) is returned instead.
	Additionally, the method can take an array of objects or $(D RID)s that are to be excluded from collisions, or a bitmask representing the physics layers to check in.
	*/
	Dictionary intersectRay(in Vector3 from, in Vector3 to, in Array exclude = Array.empty_array, in long collision_layer = 2147483647)
	{
		_GODOT_intersect_ray.bind("PhysicsDirectSpaceState", "intersect_ray");
		return ptrcall!(Dictionary)(_GODOT_intersect_ray, _godot_object, from, to, exclude, collision_layer);
	}
	package(godot) static GodotMethod!(Array, PhysicsShapeQueryParameters, long) _GODOT_intersect_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "intersect_shape") = _GODOT_intersect_shape;
	/**
	Checks the intersections of a shape, given through a $(D PhysicsShapeQueryParameters) object, against the space. The intersected shapes are returned in an array containing dictionaries with the following fields:
	`collider`: The colliding object.
	`collider_id`: The colliding object's ID.
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	The number of intersections can be limited with the second parameter, to reduce the processing time.
	*/
	Array intersectShape(PhysicsShapeQueryParameters shape, in long max_results = 32)
	{
		_GODOT_intersect_shape.bind("PhysicsDirectSpaceState", "intersect_shape");
		return ptrcall!(Array)(_GODOT_intersect_shape, _godot_object, shape, max_results);
	}
	package(godot) static GodotMethod!(Array, PhysicsShapeQueryParameters, Vector3) _GODOT_cast_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "cast_motion") = _GODOT_cast_motion;
	/**
	Checks whether the shape can travel to a point. The method will return an array with two floats between 0 and 1, both representing a fraction of `motion`. The first is how far the shape can move without triggering a collision, and the second is the point at which a collision will occur. If no collision is detected, the returned array will be $(D 1, 1).
	If the shape can not move, the array will be empty (`dir.empty()==true`).
	*/
	Array castMotion(PhysicsShapeQueryParameters shape, in Vector3 motion)
	{
		_GODOT_cast_motion.bind("PhysicsDirectSpaceState", "cast_motion");
		return ptrcall!(Array)(_GODOT_cast_motion, _godot_object, shape, motion);
	}
	package(godot) static GodotMethod!(Array, PhysicsShapeQueryParameters, long) _GODOT_collide_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide_shape") = _GODOT_collide_shape;
	/**
	Checks the intersections of a shape, given through a $(D PhysicsShapeQueryParameters) object, against the space. The resulting array contains a list of points where the shape intersects another. Like with $(D intersectShape), the number of returned results can be limited to save processing time.
	*/
	Array collideShape(PhysicsShapeQueryParameters shape, in long max_results = 32)
	{
		_GODOT_collide_shape.bind("PhysicsDirectSpaceState", "collide_shape");
		return ptrcall!(Array)(_GODOT_collide_shape, _godot_object, shape, max_results);
	}
	package(godot) static GodotMethod!(Dictionary, PhysicsShapeQueryParameters) _GODOT_get_rest_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rest_info") = _GODOT_get_rest_info;
	/**
	Checks the intersections of a shape, given through a $(D PhysicsShapeQueryParameters) object, against the space. If it collides with more than a shape, the nearest one is selected. The returned object is a dictionary containing the following fields:
	`collider_id`: The colliding object's ID.
	`linear_velocity`: The colliding object's velocity $(D Vector3). If the object is an $(D Area), the result is `(0, 0, 0)`.
	`normal`: The object's surface normal at the intersection point.
	`point`: The intersection point.
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	If the shape did not intersect anything, then an empty dictionary (`dir.empty()==true`) is returned instead.
	*/
	Dictionary getRestInfo(PhysicsShapeQueryParameters shape)
	{
		_GODOT_get_rest_info.bind("PhysicsDirectSpaceState", "get_rest_info");
		return ptrcall!(Dictionary)(_GODOT_get_rest_info, _godot_object, shape);
	}
}
