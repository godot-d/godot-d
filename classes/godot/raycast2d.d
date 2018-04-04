/**
Query the closest object intersecting a ray.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.raycast2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
/**
Query the closest object intersecting a ray.

A RayCast represents a line from its origin to its destination position, `cast_to`. It is used to query the 2D space in order to find the closest object along the path of the ray.
RayCast2D can ignore some objects by adding them to the exception list via `add_exception`, by setting proper filtering with collision layers, or by filtering object types with type masks.
Only enabled raycasts will be able to query the space and report collisions.
RayCast2D calculates intersection every physics frame (see $(D Node)), and the result is cached so it can be used later until the next frame. If multiple queries are required between physics frames (or during the same frame) use $(D forceRaycastUpdate) after adjusting the raycast.
*/
@GodotBaseClass struct RayCast2D
{
	static immutable string _GODOT_internal_name = "RayCast2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in RayCast2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RayCast2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RayCast2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RayCast2D");
		if(constructor is null) return typeof(this).init;
		return cast(RayCast2D)(constructor());
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enabled") = _GODOT_set_enabled;
	/**
	
	*/
	void setEnabled(in bool enabled)
	{
		_GODOT_set_enabled.bind("RayCast2D", "set_enabled");
		ptrcall!(void)(_GODOT_set_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_enabled") = _GODOT_is_enabled;
	/**
	
	*/
	bool isEnabled() const
	{
		_GODOT_is_enabled.bind("RayCast2D", "is_enabled");
		return ptrcall!(bool)(_GODOT_is_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_cast_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cast_to") = _GODOT_set_cast_to;
	/**
	
	*/
	void setCastTo(in Vector2 local_point)
	{
		_GODOT_set_cast_to.bind("RayCast2D", "set_cast_to");
		ptrcall!(void)(_GODOT_set_cast_to, _godot_object, local_point);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_cast_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cast_to") = _GODOT_get_cast_to;
	/**
	
	*/
	Vector2 getCastTo() const
	{
		_GODOT_get_cast_to.bind("RayCast2D", "get_cast_to");
		return ptrcall!(Vector2)(_GODOT_get_cast_to, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_colliding;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_colliding") = _GODOT_is_colliding;
	/**
	Return whether the closest object the ray is pointing to is colliding with the vector (considering the vector length).
	*/
	bool isColliding() const
	{
		_GODOT_is_colliding.bind("RayCast2D", "is_colliding");
		return ptrcall!(bool)(_GODOT_is_colliding, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_force_raycast_update;
	package(godot) alias _GODOT_methodBindInfo(string name : "force_raycast_update") = _GODOT_force_raycast_update;
	/**
	Updates the collision information for the ray.  Use this method to update the collision information immediately instead of waiting for the next `_physics_process` call, for example if the ray or its parent has changed state. Note: `enabled == true` is not required for this to work.
	*/
	void forceRaycastUpdate()
	{
		_GODOT_force_raycast_update.bind("RayCast2D", "force_raycast_update");
		ptrcall!(void)(_GODOT_force_raycast_update, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject) _GODOT_get_collider;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider") = _GODOT_get_collider;
	/**
	Returns the closest object the ray is pointing to. Note that this does not consider the length of the ray, so you must also use $(D isColliding) to check if the object returned is actually colliding with the ray.
	Example:
	
	
	if RayCast2D.is_colliding():
		var collider = RayCast2D.get_collider()
	
	
	*/
	GodotObject getCollider() const
	{
		_GODOT_get_collider.bind("RayCast2D", "get_collider");
		return ptrcall!(GodotObject)(_GODOT_get_collider, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collider_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_shape") = _GODOT_get_collider_shape;
	/**
	Returns the collision shape of the closest object the ray is pointing to.  Note that this does not consider the length of the ray, so you must also use $(D isColliding) to check if the object returned is actually colliding with the ray.
	Example:
	
	
	if RayCast2D.is_colliding():
		var shape = RayCast2D.get_collider_shape()
	
	
	*/
	long getColliderShape() const
	{
		_GODOT_get_collider_shape.bind("RayCast2D", "get_collider_shape");
		return ptrcall!(long)(_GODOT_get_collider_shape, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_collision_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_point") = _GODOT_get_collision_point;
	/**
	Returns the collision point at which the ray intersects the closest object. Note: this point is in the $(B global) coordinate system.
	*/
	Vector2 getCollisionPoint() const
	{
		_GODOT_get_collision_point.bind("RayCast2D", "get_collision_point");
		return ptrcall!(Vector2)(_GODOT_get_collision_point, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_collision_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_normal") = _GODOT_get_collision_normal;
	/**
	Returns the normal of the intersecting object's shape at the collision point.
	*/
	Vector2 getCollisionNormal() const
	{
		_GODOT_get_collision_normal.bind("RayCast2D", "get_collision_normal");
		return ptrcall!(Vector2)(_GODOT_get_collision_normal, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_add_exception_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_exception_rid") = _GODOT_add_exception_rid;
	/**
	Adds a collision exception so the ray does not report collisions with the specified $(D RID).
	*/
	void addExceptionRid(in RID rid)
	{
		_GODOT_add_exception_rid.bind("RayCast2D", "add_exception_rid");
		ptrcall!(void)(_GODOT_add_exception_rid, _godot_object, rid);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_exception") = _GODOT_add_exception;
	/**
	Adds a collision exception so the ray does not report collisions with the specified node.
	*/
	void addException(GodotObject node)
	{
		_GODOT_add_exception.bind("RayCast2D", "add_exception");
		ptrcall!(void)(_GODOT_add_exception, _godot_object, node);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_remove_exception_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_exception_rid") = _GODOT_remove_exception_rid;
	/**
	Removes a collision exception so the ray does report collisions with the specified $(D RID).
	*/
	void removeExceptionRid(in RID rid)
	{
		_GODOT_remove_exception_rid.bind("RayCast2D", "remove_exception_rid");
		ptrcall!(void)(_GODOT_remove_exception_rid, _godot_object, rid);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_exception") = _GODOT_remove_exception;
	/**
	Removes a collision exception so the ray does report collisions with the specified node.
	*/
	void removeException(GodotObject node)
	{
		_GODOT_remove_exception.bind("RayCast2D", "remove_exception");
		ptrcall!(void)(_GODOT_remove_exception, _godot_object, node);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_exceptions;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_exceptions") = _GODOT_clear_exceptions;
	/**
	Removes all collision exceptions for this ray.
	*/
	void clearExceptions()
	{
		_GODOT_clear_exceptions.bind("RayCast2D", "clear_exceptions");
		ptrcall!(void)(_GODOT_clear_exceptions, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask") = _GODOT_set_collision_mask;
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		_GODOT_set_collision_mask.bind("RayCast2D", "set_collision_mask");
		ptrcall!(void)(_GODOT_set_collision_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask") = _GODOT_get_collision_mask;
	/**
	
	*/
	long getCollisionMask() const
	{
		_GODOT_get_collision_mask.bind("RayCast2D", "get_collision_mask");
		return ptrcall!(long)(_GODOT_get_collision_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask_bit") = _GODOT_set_collision_mask_bit;
	/**
	Set/clear individual bits on the collision mask. This makes selecting the areas scanned easier.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		_GODOT_set_collision_mask_bit.bind("RayCast2D", "set_collision_mask_bit");
		ptrcall!(void)(_GODOT_set_collision_mask_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask_bit") = _GODOT_get_collision_mask_bit;
	/**
	Return an individual bit on the collision mask.
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		_GODOT_get_collision_mask_bit.bind("RayCast2D", "get_collision_mask_bit");
		return ptrcall!(bool)(_GODOT_get_collision_mask_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_exclude_parent_body;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclude_parent_body") = _GODOT_set_exclude_parent_body;
	/**
	
	*/
	void setExcludeParentBody(in bool mask)
	{
		_GODOT_set_exclude_parent_body.bind("RayCast2D", "set_exclude_parent_body");
		ptrcall!(void)(_GODOT_set_exclude_parent_body, _godot_object, mask);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_exclude_parent_body;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exclude_parent_body") = _GODOT_get_exclude_parent_body;
	/**
	
	*/
	bool getExcludeParentBody() const
	{
		_GODOT_get_exclude_parent_body.bind("RayCast2D", "get_exclude_parent_body");
		return ptrcall!(bool)(_GODOT_get_exclude_parent_body, _godot_object);
	}
	/**
	If `true`, collisions will be reported. Default value: `false`.
	*/
	@property bool enabled()
	{
		return isEnabled();
	}
	/// ditto
	@property void enabled(bool v)
	{
		setEnabled(v);
	}
	/**
	If `true`, the parent node will be excluded from collision detection. Default value: `true`.
	*/
	@property bool excludeParent()
	{
		return getExcludeParentBody();
	}
	/// ditto
	@property void excludeParent(bool v)
	{
		setExcludeParentBody(v);
	}
	/**
	The ray's destination point, relative to the RayCast's `position`.
	*/
	@property Vector2 castTo()
	{
		return getCastTo();
	}
	/// ditto
	@property void castTo(Vector2 v)
	{
		setCastTo(v);
	}
	/**
	The ray's collision mask. Only objects in at least one collision layer enabled in the mask will be detected.
	*/
	@property long collisionMask()
	{
		return getCollisionMask();
	}
	/// ditto
	@property void collisionMask(long v)
	{
		setCollisionMask(v);
	}
}
