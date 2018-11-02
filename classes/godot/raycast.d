/**
Query the closest object intersecting a ray.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.raycast;
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
import godot.node;
/**
Query the closest object intersecting a ray.

A RayCast represents a line from its origin to its destination position, `cast_to`. It is used to query the 3D space in order to find the closest object along the path of the ray.
RayCast can ignore some objects by adding them to the exception list via `add_exception`, by setting proper filtering with collision layers, or by filtering object types with type masks.
RayCast can be configured to report collisions with $(D Area)s ($(D collideWithAreas)) and/or $(D PhysicsBody)s ($(D collideWithBodies)).
Only enabled raycasts will be able to query the space and report collisions.
RayCast calculates intersection every physics frame (see $(D Node)), and the result is cached so it can be used later until the next frame. If multiple queries are required between physics frames (or during the same frame) use $(D forceRaycastUpdate) after adjusting the raycast.
*/
@GodotBaseClass struct RayCast
{
	enum string _GODOT_internal_name = "RayCast";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_enabled") GodotMethod!(void, bool) setEnabled;
		@GodotName("is_enabled") GodotMethod!(bool) isEnabled;
		@GodotName("set_cast_to") GodotMethod!(void, Vector3) setCastTo;
		@GodotName("get_cast_to") GodotMethod!(Vector3) getCastTo;
		@GodotName("is_colliding") GodotMethod!(bool) isColliding;
		@GodotName("force_raycast_update") GodotMethod!(void) forceRaycastUpdate;
		@GodotName("get_collider") GodotMethod!(GodotObject) getCollider;
		@GodotName("get_collider_shape") GodotMethod!(long) getColliderShape;
		@GodotName("get_collision_point") GodotMethod!(Vector3) getCollisionPoint;
		@GodotName("get_collision_normal") GodotMethod!(Vector3) getCollisionNormal;
		@GodotName("add_exception_rid") GodotMethod!(void, RID) addExceptionRid;
		@GodotName("add_exception") GodotMethod!(void, GodotObject) addException;
		@GodotName("remove_exception_rid") GodotMethod!(void, RID) removeExceptionRid;
		@GodotName("remove_exception") GodotMethod!(void, GodotObject) removeException;
		@GodotName("clear_exceptions") GodotMethod!(void) clearExceptions;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("set_exclude_parent_body") GodotMethod!(void, bool) setExcludeParentBody;
		@GodotName("get_exclude_parent_body") GodotMethod!(bool) getExcludeParentBody;
		@GodotName("set_collide_with_areas") GodotMethod!(void, bool) setCollideWithAreas;
		@GodotName("is_collide_with_areas_enabled") GodotMethod!(bool) isCollideWithAreasEnabled;
		@GodotName("set_collide_with_bodies") GodotMethod!(void, bool) setCollideWithBodies;
		@GodotName("is_collide_with_bodies_enabled") GodotMethod!(bool) isCollideWithBodiesEnabled;
	}
	bool opEquals(in RayCast other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RayCast opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RayCast _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RayCast");
		if(constructor is null) return typeof(this).init;
		return cast(RayCast)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEnabled, _godot_object);
	}
	/**
	
	*/
	void setCastTo(in Vector3 local_point)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCastTo, _godot_object, local_point);
	}
	/**
	
	*/
	Vector3 getCastTo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getCastTo, _godot_object);
	}
	/**
	Return whether any object is intersecting with the ray's vector (considering the vector length).
	*/
	bool isColliding() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isColliding, _godot_object);
	}
	/**
	Updates the collision information for the ray.
	Use this method to update the collision information immediately instead of waiting for the next `_physics_process` call, for example if the ray or its parent has changed state. Note: `enabled == true` is not required for this to work.
	*/
	void forceRaycastUpdate()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.forceRaycastUpdate, _godot_object);
	}
	/**
	Return the first object that the ray intersects, or `null` if no object is intersecting the ray (i.e. $(D isColliding) returns `false`).
	*/
	GodotObject getCollider() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(_classBinding.getCollider, _godot_object);
	}
	/**
	Returns the shape ID of the first object that the ray intersects, or `0` if no object is intersecting the ray (i.e. $(D isColliding) returns `false`).
	*/
	long getColliderShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getColliderShape, _godot_object);
	}
	/**
	Returns the collision point at which the ray intersects the closest object. Note: this point is in the $(B global) coordinate system.
	*/
	Vector3 getCollisionPoint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getCollisionPoint, _godot_object);
	}
	/**
	Returns the normal of the intersecting object's shape at the collision point.
	*/
	Vector3 getCollisionNormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getCollisionNormal, _godot_object);
	}
	/**
	Adds a collision exception so the ray does not report collisions with the specified $(D RID).
	*/
	void addExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addExceptionRid, _godot_object, rid);
	}
	/**
	Adds a collision exception so the ray does not report collisions with the specified node.
	*/
	void addException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addException, _godot_object, node);
	}
	/**
	Removes a collision exception so the ray does report collisions with the specified $(D RID).
	*/
	void removeExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeExceptionRid, _godot_object, rid);
	}
	/**
	Removes a collision exception so the ray does report collisions with the specified node.
	*/
	void removeException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeException, _godot_object, node);
	}
	/**
	Removes all collision exceptions for this ray.
	*/
	void clearExceptions()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearExceptions, _godot_object);
	}
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionMask, _godot_object);
	}
	/**
	Sets the bit index passed to the `value` passed. Note that bit indexes range from 0-19.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	Returns `true` if the bit index passed is turned on. Note that bit indexes range from 0-19.
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	
	*/
	void setExcludeParentBody(in bool mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExcludeParentBody, _godot_object, mask);
	}
	/**
	
	*/
	bool getExcludeParentBody() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getExcludeParentBody, _godot_object);
	}
	/**
	
	*/
	void setCollideWithAreas(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollideWithAreas, _godot_object, enable);
	}
	/**
	
	*/
	bool isCollideWithAreasEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCollideWithAreasEnabled, _godot_object);
	}
	/**
	
	*/
	void setCollideWithBodies(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollideWithBodies, _godot_object, enable);
	}
	/**
	
	*/
	bool isCollideWithBodiesEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCollideWithBodiesEnabled, _godot_object);
	}
	/**
	If `true` collisions will be reported. Default value: `false`.
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
	If `true` collisions will be ignored for this RayCast's immediate parent. Default value: `true`.
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
	@property Vector3 castTo()
	{
		return getCastTo();
	}
	/// ditto
	@property void castTo(Vector3 v)
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
	/**
	If `true`, collision with $(D Area)s will be reported. Default value: `false`.
	*/
	@property bool collideWithAreas()
	{
		return isCollideWithAreasEnabled();
	}
	/// ditto
	@property void collideWithAreas(bool v)
	{
		setCollideWithAreas(v);
	}
	/**
	If `true`, collision with $(D PhysicsBody)s will be reported. Default value: `true`.
	*/
	@property bool collideWithBodies()
	{
		return isCollideWithBodiesEnabled();
	}
	/// ditto
	@property void collideWithBodies(bool v)
	{
		setCollideWithBodies(v);
	}
}
