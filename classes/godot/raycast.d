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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.spatial;
/**
Query the closest object intersecting a ray.

A RayCast represents a line from its origin to its destination position, `cast_to`. It is used to query the 3D space in order to find the closest object along the path of the ray.
RayCast can ignore some objects by adding them to the exception list via `add_exception` or by setting proper filtering with collision layers and masks.
RayCast can be configured to report collisions with $(D Area)s ($(D collideWithAreas)) and/or $(D PhysicsBody)s ($(D collideWithBodies)).
Only enabled raycasts will be able to query the space and report collisions.
RayCast calculates intersection every physics frame (see $(D Node)), and the result is cached so it can be used later until the next frame. If multiple queries are required between physics frames (or during the same frame), use $(D forceRaycastUpdate) after adjusting the raycast.
*/
@GodotBaseClass struct RayCast
{
	package(godot) enum string _GODOT_internal_name = "RayCast";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_exception") GodotMethod!(void, GodotObject) addException;
		@GodotName("add_exception_rid") GodotMethod!(void, RID) addExceptionRid;
		@GodotName("clear_exceptions") GodotMethod!(void) clearExceptions;
		@GodotName("force_raycast_update") GodotMethod!(void) forceRaycastUpdate;
		@GodotName("get_cast_to") GodotMethod!(Vector3) getCastTo;
		@GodotName("get_collider") GodotMethod!(GodotObject) getCollider;
		@GodotName("get_collider_shape") GodotMethod!(long) getColliderShape;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("get_collision_normal") GodotMethod!(Vector3) getCollisionNormal;
		@GodotName("get_collision_point") GodotMethod!(Vector3) getCollisionPoint;
		@GodotName("get_exclude_parent_body") GodotMethod!(bool) getExcludeParentBody;
		@GodotName("is_collide_with_areas_enabled") GodotMethod!(bool) isCollideWithAreasEnabled;
		@GodotName("is_collide_with_bodies_enabled") GodotMethod!(bool) isCollideWithBodiesEnabled;
		@GodotName("is_colliding") GodotMethod!(bool) isColliding;
		@GodotName("is_enabled") GodotMethod!(bool) isEnabled;
		@GodotName("remove_exception") GodotMethod!(void, GodotObject) removeException;
		@GodotName("remove_exception_rid") GodotMethod!(void, RID) removeExceptionRid;
		@GodotName("set_cast_to") GodotMethod!(void, Vector3) setCastTo;
		@GodotName("set_collide_with_areas") GodotMethod!(void, bool) setCollideWithAreas;
		@GodotName("set_collide_with_bodies") GodotMethod!(void, bool) setCollideWithBodies;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("set_enabled") GodotMethod!(void, bool) setEnabled;
		@GodotName("set_exclude_parent_body") GodotMethod!(void, bool) setExcludeParentBody;
	}
	/// 
	pragma(inline, true) bool opEquals(in RayCast other) const
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
	/// Construct a new instance of RayCast.
	/// Note: use `memnew!RayCast` instead.
	static RayCast _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RayCast");
		if(constructor is null) return typeof(this).init;
		return cast(RayCast)(constructor());
	}
	@disable new(size_t s);
	/**
	Adds a collision exception so the ray does not report collisions with the specified node.
	*/
	void addException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addException, _godot_object, node);
	}
	/**
	Adds a collision exception so the ray does not report collisions with the specified $(D RID).
	*/
	void addExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addExceptionRid, _godot_object, rid);
	}
	/**
	Removes all collision exceptions for this ray.
	*/
	void clearExceptions()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearExceptions, _godot_object);
	}
	/**
	Updates the collision information for the ray.
	Use this method to update the collision information immediately instead of waiting for the next `_physics_process` call, for example if the ray or its parent has changed state.
	$(B Note:) `enabled` is not required for this to work.
	*/
	void forceRaycastUpdate()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceRaycastUpdate, _godot_object);
	}
	/**
	
	*/
	Vector3 getCastTo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getCastTo, _godot_object);
	}
	/**
	Returns the first object that the ray intersects, or `null` if no object is intersecting the ray (i.e. $(D isColliding) returns `false`).
	*/
	GodotObject getCollider() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.getCollider, _godot_object);
	}
	/**
	Returns the shape ID of the first object that the ray intersects, or `0` if no object is intersecting the ray (i.e. $(D isColliding) returns `false`).
	*/
	long getColliderShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getColliderShape, _godot_object);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionMask, _godot_object);
	}
	/**
	Returns `true` if the bit index passed is turned on.
	$(B Note:) Bit indices range from 0-19.
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	Returns the normal of the intersecting object's shape at the collision point.
	*/
	Vector3 getCollisionNormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getCollisionNormal, _godot_object);
	}
	/**
	Returns the collision point at which the ray intersects the closest object.
	$(B Note:) This point is in the $(B global) coordinate system.
	*/
	Vector3 getCollisionPoint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getCollisionPoint, _godot_object);
	}
	/**
	
	*/
	bool getExcludeParentBody() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getExcludeParentBody, _godot_object);
	}
	/**
	
	*/
	bool isCollideWithAreasEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCollideWithAreasEnabled, _godot_object);
	}
	/**
	
	*/
	bool isCollideWithBodiesEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCollideWithBodiesEnabled, _godot_object);
	}
	/**
	Returns whether any object is intersecting with the ray's vector (considering the vector length).
	*/
	bool isColliding() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isColliding, _godot_object);
	}
	/**
	
	*/
	bool isEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEnabled, _godot_object);
	}
	/**
	Removes a collision exception so the ray does report collisions with the specified node.
	*/
	void removeException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeException, _godot_object, node);
	}
	/**
	Removes a collision exception so the ray does report collisions with the specified $(D RID).
	*/
	void removeExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeExceptionRid, _godot_object, rid);
	}
	/**
	
	*/
	void setCastTo(in Vector3 local_point)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCastTo, _godot_object, local_point);
	}
	/**
	
	*/
	void setCollideWithAreas(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollideWithAreas, _godot_object, enable);
	}
	/**
	
	*/
	void setCollideWithBodies(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollideWithBodies, _godot_object, enable);
	}
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	Sets the bit index passed to the `value` passed.
	$(B Note:) Bit indexes range from 0-19.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setExcludeParentBody(in bool mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExcludeParentBody, _godot_object, mask);
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
	If `true`, collision with $(D Area)s will be reported.
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
	If `true`, collision with $(D PhysicsBody)s will be reported.
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
	/**
	The ray's collision mask. Only objects in at least one collision layer enabled in the mask will be detected. See $(D url=https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks)Collision layers and masks$(D /url) in the documentation for more information.
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
	If `true`, collisions will be reported.
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
	If `true`, collisions will be ignored for this RayCast's immediate parent.
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
}
