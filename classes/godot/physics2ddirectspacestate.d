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
	enum string _GODOT_internal_name = "Physics2DDirectSpaceState";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("intersect_point") GodotMethod!(Array, Vector2, long, Array, long, bool, bool) intersectPoint;
		@GodotName("intersect_point_on_canvas") GodotMethod!(Array, Vector2, long, long, Array, long, bool, bool) intersectPointOnCanvas;
		@GodotName("intersect_ray") GodotMethod!(Dictionary, Vector2, Vector2, Array, long, bool, bool) intersectRay;
		@GodotName("intersect_shape") GodotMethod!(Array, Physics2DShapeQueryParameters, long) intersectShape;
		@GodotName("cast_motion") GodotMethod!(Array, Physics2DShapeQueryParameters) castMotion;
		@GodotName("collide_shape") GodotMethod!(Array, Physics2DShapeQueryParameters, long) collideShape;
		@GodotName("get_rest_info") GodotMethod!(Dictionary, Physics2DShapeQueryParameters) getRestInfo;
	}
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
	/**
	Checks whether a point is inside any shape. The shapes the point is inside of are returned in an array containing dictionaries with the following fields:
	`collider`: The colliding object.
	`collider_id`: The colliding object's ID.
	`metadata`: The intersecting shape's metadata. This metadata is different from $(D GodotObject.getMeta), and is set with $(D Physics2DServer.shapeSetData).
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	Additionally, the method can take an `exclude` array of objects or $(D RID)s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with $(D PhysicsBody)s or $(D Area)s, respectively.
	*/
	Array intersectPoint(in Vector2 point, in long max_results = 32, in Array exclude = Array.empty_array, in long collision_layer = 2147483647, in bool collide_with_bodies = true, in bool collide_with_areas = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.intersectPoint, _godot_object, point, max_results, exclude, collision_layer, collide_with_bodies, collide_with_areas);
	}
	/**
	
	*/
	Array intersectPointOnCanvas(in Vector2 point, in long canvas_instance_id, in long max_results = 32, in Array exclude = Array.empty_array, in long collision_layer = 2147483647, in bool collide_with_bodies = true, in bool collide_with_areas = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.intersectPointOnCanvas, _godot_object, point, canvas_instance_id, max_results, exclude, collision_layer, collide_with_bodies, collide_with_areas);
	}
	/**
	Intersects a ray in a given space. The returned object is a dictionary with the following fields:
	`collider`: The colliding object.
	`collider_id`: The colliding object's ID.
	`metadata`: The intersecting shape's metadata. This metadata is different from $(D GodotObject.getMeta), and is set with $(D Physics2DServer.shapeSetData).
	`normal`: The object's surface normal at the intersection point.
	`position`: The intersection point.
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	If the ray did not intersect anything, then an empty dictionary is returned instead.
	Additionally, the method can take an `exclude` array of objects or $(D RID)s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with $(D PhysicsBody)s or $(D Area)s, respectively.
	*/
	Dictionary intersectRay(in Vector2 from, in Vector2 to, in Array exclude = Array.empty_array, in long collision_layer = 2147483647, in bool collide_with_bodies = true, in bool collide_with_areas = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.intersectRay, _godot_object, from, to, exclude, collision_layer, collide_with_bodies, collide_with_areas);
	}
	/**
	Checks the intersections of a shape, given through a $(D Physics2DShapeQueryParameters) object, against the space. Note that this method does not take into account the `motion` property of the object. The intersected shapes are returned in an array containing dictionaries with the following fields:
	`collider`: The colliding object.
	`collider_id`: The colliding object's ID.
	`metadata`: The intersecting shape's metadata. This metadata is different from $(D GodotObject.getMeta), and is set with $(D Physics2DServer.shapeSetData).
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	The number of intersections can be limited with the `max_results` parameter, to reduce the processing time.
	*/
	Array intersectShape(Physics2DShapeQueryParameters shape, in long max_results = 32)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.intersectShape, _godot_object, shape, max_results);
	}
	/**
	Checks how far the shape can travel toward a point. Note that both the shape and the motion are supplied through a $(D Physics2DShapeQueryParameters) object. The method will return an array with two floats between 0 and 1, both representing a fraction of `motion`. The first is how far the shape can move without triggering a collision, and the second is the point at which a collision will occur. If no collision is detected, the returned array will be `$(D 1, 1)`.
	If the shape can not move, the array will be empty.
	*/
	Array castMotion(Physics2DShapeQueryParameters shape)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.castMotion, _godot_object, shape);
	}
	/**
	Checks the intersections of a shape, given through a $(D Physics2DShapeQueryParameters) object, against the space. The resulting array contains a list of points where the shape intersects another. Like with $(D intersectShape), the number of returned results can be limited to save processing time.
	*/
	Array collideShape(Physics2DShapeQueryParameters shape, in long max_results = 32)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.collideShape, _godot_object, shape, max_results);
	}
	/**
	Checks the intersections of a shape, given through a $(D Physics2DShapeQueryParameters) object, against the space. If it collides with more than one shape, the nearest one is selected. Note that this method does not take into account the `motion` property of the object. The returned object is a dictionary containing the following fields:
	`collider_id`: The colliding object's ID.
	`linear_velocity`: The colliding object's velocity $(D Vector2). If the object is an $(D Area2D), the result is `(0, 0)`.
	`metadata`: The intersecting shape's metadata. This metadata is different from $(D GodotObject.getMeta), and is set with $(D Physics2DServer.shapeSetData).
	`normal`: The object's surface normal at the intersection point.
	`point`: The intersection point.
	`rid`: The intersecting object's $(D RID).
	`shape`: The shape index of the colliding shape.
	If the shape did not intersect anything, then an empty dictionary is returned instead.
	*/
	Dictionary getRestInfo(Physics2DShapeQueryParameters shape)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getRestInfo, _godot_object, shape);
	}
}
