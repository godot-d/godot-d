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
	enum string _GODOT_internal_name = "PhysicsDirectSpaceState";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("intersect_ray") GodotMethod!(Dictionary, Vector3, Vector3, Array, long, bool, bool) intersectRay;
		@GodotName("intersect_shape") GodotMethod!(Array, PhysicsShapeQueryParameters, long) intersectShape;
		@GodotName("cast_motion") GodotMethod!(Array, PhysicsShapeQueryParameters, Vector3) castMotion;
		@GodotName("collide_shape") GodotMethod!(Array, PhysicsShapeQueryParameters, long) collideShape;
		@GodotName("get_rest_info") GodotMethod!(Dictionary, PhysicsShapeQueryParameters) getRestInfo;
	}
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
	@disable new(size_t s);
	/**
	Intersects a ray in a given space. The returned object is a dictionary with the following fields:
	`collider`: The colliding object.
	`collider_id`: The colliding object's ID.
	`normal`: The object's surface normal at the intersection point.
	`position`: The intersection point.
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	If the ray did not intersect anything, then an empty dictionary is returned instead.
	Additionally, the method can take an `exclude` array of objects or $(D RID)s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with $(D PhysicsBody)s or $(D Area)s, respectively.
	*/
	Dictionary intersectRay(in Vector3 from, in Vector3 to, in Array exclude = Array.empty_array, in long collision_mask = 2147483647, in bool collide_with_bodies = true, in bool collide_with_areas = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.intersectRay, _godot_object, from, to, exclude, collision_mask, collide_with_bodies, collide_with_areas);
	}
	/**
	Checks the intersections of a shape, given through a $(D PhysicsShapeQueryParameters) object, against the space. The intersected shapes are returned in an array containing dictionaries with the following fields:
	`collider`: The colliding object.
	`collider_id`: The colliding object's ID.
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	The number of intersections can be limited with the `max_results` parameter, to reduce the processing time.
	*/
	Array intersectShape(PhysicsShapeQueryParameters shape, in long max_results = 32)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.intersectShape, _godot_object, shape, max_results);
	}
	/**
	Checks whether the shape can travel to a point. The method will return an array with two floats between 0 and 1, both representing a fraction of `motion`. The first is how far the shape can move without triggering a collision, and the second is the point at which a collision will occur. If no collision is detected, the returned array will be $(D 1, 1).
	If the shape can not move, the returned array will be $(D 0, 0).
	*/
	Array castMotion(PhysicsShapeQueryParameters shape, in Vector3 motion)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.castMotion, _godot_object, shape, motion);
	}
	/**
	Checks the intersections of a shape, given through a $(D PhysicsShapeQueryParameters) object, against the space. The resulting array contains a list of points where the shape intersects another. Like with $(D intersectShape), the number of returned results can be limited to save processing time.
	*/
	Array collideShape(PhysicsShapeQueryParameters shape, in long max_results = 32)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.collideShape, _godot_object, shape, max_results);
	}
	/**
	Checks the intersections of a shape, given through a $(D PhysicsShapeQueryParameters) object, against the space. If it collides with more than one shape, the nearest one is selected. The returned object is a dictionary containing the following fields:
	`collider_id`: The colliding object's ID.
	`linear_velocity`: The colliding object's velocity $(D Vector3). If the object is an $(D Area), the result is `(0, 0, 0)`.
	`normal`: The object's surface normal at the intersection point.
	`point`: The intersection point.
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	If the shape did not intersect anything, then an empty dictionary is returned instead.
	*/
	Dictionary getRestInfo(PhysicsShapeQueryParameters shape)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getRestInfo, _godot_object, shape);
	}
}
