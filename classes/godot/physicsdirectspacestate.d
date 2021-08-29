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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.physicsshapequeryparameters;
/**
Direct access object to a space in the $(D PhysicsServer).

It's used mainly to do queries against objects and areas residing in a given space.
*/
@GodotBaseClass struct PhysicsDirectSpaceState
{
	package(godot) enum string _GODOT_internal_name = "PhysicsDirectSpaceState";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("cast_motion") GodotMethod!(Array, PhysicsShapeQueryParameters, Vector3) castMotion;
		@GodotName("collide_shape") GodotMethod!(Array, PhysicsShapeQueryParameters, long) collideShape;
		@GodotName("get_rest_info") GodotMethod!(Dictionary, PhysicsShapeQueryParameters) getRestInfo;
		@GodotName("intersect_ray") GodotMethod!(Dictionary, Vector3, Vector3, Array, long, bool, bool) intersectRay;
		@GodotName("intersect_shape") GodotMethod!(Array, PhysicsShapeQueryParameters, long) intersectShape;
	}
	/// 
	pragma(inline, true) bool opEquals(in PhysicsDirectSpaceState other) const
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
	/// Construct a new instance of PhysicsDirectSpaceState.
	/// Note: use `memnew!PhysicsDirectSpaceState` instead.
	static PhysicsDirectSpaceState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsDirectSpaceState");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsDirectSpaceState)(constructor());
	}
	@disable new(size_t s);
	/**
	Checks how far a $(D Shape) can move without colliding. All the parameters for the query, including the shape, are supplied through a $(D PhysicsShapeQueryParameters) object.
	Returns an array with the safe and unsafe proportions (between 0 and 1) of the motion. The safe proportion is the maximum fraction of the motion that can be made without a collision. The unsafe proportion is the minimum fraction of the distance that must be moved for a collision. If no collision is detected a result of `$(D 1.0, 1.0)` will be returned.
	$(B Note:) Any $(D Shape)s that the shape is already colliding with e.g. inside of, will be ignored. Use $(D collideShape) to determine the $(D Shape)s that the shape is already colliding with.
	*/
	Array castMotion(PhysicsShapeQueryParameters shape, in Vector3 motion)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.castMotion, _godot_object, shape, motion);
	}
	/**
	Checks the intersections of a shape, given through a $(D PhysicsShapeQueryParameters) object, against the space. The resulting array contains a list of points where the shape intersects another. Like with $(D intersectShape), the number of returned results can be limited to save processing time.
	*/
	Array collideShape(PhysicsShapeQueryParameters shape, in long max_results = 32)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.collideShape, _godot_object, shape, max_results);
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
		return ptrcall!(Dictionary)(GDNativeClassBinding.getRestInfo, _godot_object, shape);
	}
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
	Dictionary intersectRay(in Vector3 from, in Vector3 to, in Array exclude = Array.make(), in long collision_mask = 2147483647, in bool collide_with_bodies = true, in bool collide_with_areas = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.intersectRay, _godot_object, from, to, exclude, collision_mask, collide_with_bodies, collide_with_areas);
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
		return ptrcall!(Array)(GDNativeClassBinding.intersectShape, _godot_object, shape, max_results);
	}
}
