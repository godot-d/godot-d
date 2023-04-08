/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicstestmotionresult;
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
import godot.reference;
/**

*/
@GodotBaseClass struct PhysicsTestMotionResult
{
	package(godot) enum string _GODOT_internal_name = "PhysicsTestMotionResult";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_collider") GodotMethod!(GodotObject) getCollider;
		@GodotName("get_collider_id") GodotMethod!(long) getColliderId;
		@GodotName("get_collider_rid") GodotMethod!(RID) getColliderRid;
		@GodotName("get_collider_shape") GodotMethod!(long) getColliderShape;
		@GodotName("get_collider_velocity") GodotMethod!(Vector3) getColliderVelocity;
		@GodotName("get_collision_depth") GodotMethod!(double) getCollisionDepth;
		@GodotName("get_collision_normal") GodotMethod!(Vector3) getCollisionNormal;
		@GodotName("get_collision_point") GodotMethod!(Vector3) getCollisionPoint;
		@GodotName("get_collision_safe_fraction") GodotMethod!(double) getCollisionSafeFraction;
		@GodotName("get_collision_unsafe_fraction") GodotMethod!(double) getCollisionUnsafeFraction;
		@GodotName("get_motion") GodotMethod!(Vector3) getMotion;
		@GodotName("get_motion_remainder") GodotMethod!(Vector3) getMotionRemainder;
	}
	/// 
	pragma(inline, true) bool opEquals(in PhysicsTestMotionResult other) const
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
	/// Construct a new instance of PhysicsTestMotionResult.
	/// Note: use `memnew!PhysicsTestMotionResult` instead.
	static PhysicsTestMotionResult _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsTestMotionResult");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsTestMotionResult)(constructor());
	}
	/**
	
	*/
	GodotObject getCollider() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.getCollider, _godot_object);
	}
	/**
	
	*/
	long getColliderId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getColliderId, _godot_object);
	}
	/**
	
	*/
	RID getColliderRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getColliderRid, _godot_object);
	}
	/**
	
	*/
	long getColliderShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getColliderShape, _godot_object);
	}
	/**
	
	*/
	Vector3 getColliderVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getColliderVelocity, _godot_object);
	}
	/**
	
	*/
	double getCollisionDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCollisionDepth, _godot_object);
	}
	/**
	
	*/
	Vector3 getCollisionNormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getCollisionNormal, _godot_object);
	}
	/**
	
	*/
	Vector3 getCollisionPoint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getCollisionPoint, _godot_object);
	}
	/**
	
	*/
	double getCollisionSafeFraction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCollisionSafeFraction, _godot_object);
	}
	/**
	
	*/
	double getCollisionUnsafeFraction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCollisionUnsafeFraction, _godot_object);
	}
	/**
	
	*/
	Vector3 getMotion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getMotion, _godot_object);
	}
	/**
	
	*/
	Vector3 getMotionRemainder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getMotionRemainder, _godot_object);
	}
	/**
	
	*/
	@property GodotObject collider()
	{
		return getCollider();
	}
	/**
	
	*/
	@property long colliderId()
	{
		return getColliderId();
	}
	/**
	
	*/
	@property RID colliderRid()
	{
		return getColliderRid();
	}
	/**
	
	*/
	@property long colliderShape()
	{
		return getColliderShape();
	}
	/**
	
	*/
	@property Vector3 colliderVelocity()
	{
		return getColliderVelocity();
	}
	/**
	
	*/
	@property double collisionDepth()
	{
		return getCollisionDepth();
	}
	/**
	
	*/
	@property Vector3 collisionNormal()
	{
		return getCollisionNormal();
	}
	/**
	
	*/
	@property Vector3 collisionPoint()
	{
		return getCollisionPoint();
	}
	/**
	
	*/
	@property double collisionSafeFraction()
	{
		return getCollisionSafeFraction();
	}
	/**
	
	*/
	@property double collisionUnsafeFraction()
	{
		return getCollisionUnsafeFraction();
	}
	/**
	
	*/
	@property Vector3 motion()
	{
		return getMotion();
	}
	/**
	
	*/
	@property Vector3 motionRemainder()
	{
		return getMotionRemainder();
	}
}
