/**
Direct access object to a space in the $(D Physics2DServer).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2ddirectspacestate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.physics2dshapequeryparameters;
/**
Direct access object to a space in the $(D Physics2DServer).

It's used mainly to do queries against objects and areas residing in a given space.
*/
@GodotBaseClass struct Physics2DDirectSpaceState
{
	static immutable string _GODOT_internal_name = "Physics2DDirectSpaceState";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Physics2DDirectSpaceState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DDirectSpaceState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DDirectSpaceState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DDirectSpaceState");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DDirectSpaceState)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(Array, Vector2, long, Array, long) _GODOT_intersect_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "intersect_point") = _GODOT_intersect_point;
	/**
	Checks whether a point is inside any shape. The shapes the point is inside of are returned in an array containing dictionaries with the following fields:
	`collider`: The colliding object.
	`collider_id`: The colliding object's ID.
	`metadata`: The intersecting shape's metadata. This metadata is different from $(D GodotObject.getMeta), and is set with $(D Physics2DServer.shapeSetData).
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	Additionally, the method can take an array of objects or $(D RID)s that are to be excluded from collisions, or a bitmask representing the physics layers to check in.
	*/
	Array intersectPoint(in Vector2 point, in long max_results = 32, in Array exclude = Array.empty_array, in long collision_layer = 2147483647)
	{
		_GODOT_intersect_point.bind("Physics2DDirectSpaceState", "intersect_point");
		return ptrcall!(Array)(_GODOT_intersect_point, _godot_object, point, max_results, exclude, collision_layer);
	}
	package(godot) static GodotMethod!(Dictionary, Vector2, Vector2, Array, long) _GODOT_intersect_ray;
	package(godot) alias _GODOT_methodBindInfo(string name : "intersect_ray") = _GODOT_intersect_ray;
	/**
	Intersects a ray in a given space. The returned object is a dictionary with the following fields:
	`collider`: The colliding object.
	`collider_id`: The colliding object's ID.
	`metadata`: The intersecting shape's metadata. This metadata is different from $(D GodotObject.getMeta), and is set with $(D Physics2DServer.shapeSetData).
	`normal`: The object's surface normal at the intersection point.
	`position`: The intersection point.
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	If the ray did not intersect anything, then an empty dictionary (`dir.empty()==true`) is returned instead.
	Additionally, the method can take an array of objects or $(D RID)s that are to be excluded from collisions, or a bitmask representing the physics layers to check in.
	*/
	Dictionary intersectRay(in Vector2 from, in Vector2 to, in Array exclude = Array.empty_array, in long collision_layer = 2147483647)
	{
		_GODOT_intersect_ray.bind("Physics2DDirectSpaceState", "intersect_ray");
		return ptrcall!(Dictionary)(_GODOT_intersect_ray, _godot_object, from, to, exclude, collision_layer);
	}
	package(godot) static GodotMethod!(Array, Physics2DShapeQueryParameters, long) _GODOT_intersect_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "intersect_shape") = _GODOT_intersect_shape;
	/**
	Checks the intersections of a shape, given through a $(D Physics2DShapeQueryParameters) object, against the space. Note that this method does not take into account the `motion` property of the object. The intersected shapes are returned in an array containing dictionaries with the following fields:
	`collider`: The colliding object.
	`collider_id`: The colliding object's ID.
	`metadata`: The intersecting shape's metadata. This metadata is different from $(D GodotObject.getMeta), and is set with $(D Physics2DServer.shapeSetData).
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	The number of intersections can be limited with the second parameter, to reduce the processing time.
	*/
	Array intersectShape(Physics2DShapeQueryParameters shape, in long max_results = 32)
	{
		_GODOT_intersect_shape.bind("Physics2DDirectSpaceState", "intersect_shape");
		return ptrcall!(Array)(_GODOT_intersect_shape, _godot_object, shape, max_results);
	}
	package(godot) static GodotMethod!(Array, Physics2DShapeQueryParameters) _GODOT_cast_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "cast_motion") = _GODOT_cast_motion;
	/**
	Checks how far the shape can travel toward a point. Note that both the shape and the motion are supplied through a $(D Physics2DShapeQueryParameters) object. The method will return an array with two floats between 0 and 1, both representing a fraction of `motion`. The first is how far the shape can move without triggering a collision, and the second is the point at which a collision will occur. If no collision is detected, the returned array will be $(D 1, 1).
	If the shape can not move, the array will be empty (`dir.empty()==true`).
	*/
	Array castMotion(Physics2DShapeQueryParameters shape)
	{
		_GODOT_cast_motion.bind("Physics2DDirectSpaceState", "cast_motion");
		return ptrcall!(Array)(_GODOT_cast_motion, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Array, Physics2DShapeQueryParameters, long) _GODOT_collide_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide_shape") = _GODOT_collide_shape;
	/**
	Checks the intersections of a shape, given through a $(D Physics2DShapeQueryParameters) object, against the space. The resulting array contains a list of points where the shape intersects another. Like with $(D intersectShape), the number of returned results can be limited to save processing time.
	*/
	Array collideShape(Physics2DShapeQueryParameters shape, in long max_results = 32)
	{
		_GODOT_collide_shape.bind("Physics2DDirectSpaceState", "collide_shape");
		return ptrcall!(Array)(_GODOT_collide_shape, _godot_object, shape, max_results);
	}
	package(godot) static GodotMethod!(Dictionary, Physics2DShapeQueryParameters) _GODOT_get_rest_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rest_info") = _GODOT_get_rest_info;
	/**
	Checks the intersections of a shape, given through a $(D Physics2DShapeQueryParameters) object, against the space. If it collides with more than one shape, the nearest one is selected. Note that this method does not take into account the `motion` property of the object. The returned object is a dictionary containing the following fields:
	`collider_id`: The colliding object's ID.
	`linear_velocity`: The colliding object's velocity $(D Vector2). If the object is an $(D Area2D), the result is `(0, 0)`.
	`metadata`: The intersecting shape's metadata. This metadata is different from $(D GodotObject.getMeta), and is set with $(D Physics2DServer.shapeSetData).
	`normal`: The object's surface normal at the intersection point.
	`point`: The intersection point.
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	If the shape did not intersect anything, then an empty dictionary (`dir.empty()==true`) is returned instead.
	*/
	Dictionary getRestInfo(Physics2DShapeQueryParameters shape)
	{
		_GODOT_get_rest_info.bind("Physics2DDirectSpaceState", "get_rest_info");
		return ptrcall!(Dictionary)(_GODOT_get_rest_info, _godot_object, shape);
	}
}
