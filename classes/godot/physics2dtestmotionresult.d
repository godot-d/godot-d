/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2dtestmotionresult;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**

*/
@GodotBaseClass struct Physics2DTestMotionResult
{
	package(godot) enum string _GODOT_internal_name = "Physics2DTestMotionResult";
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
		@GodotName("get_collider_velocity") GodotMethod!(Vector2) getColliderVelocity;
		@GodotName("get_collision_normal") GodotMethod!(Vector2) getCollisionNormal;
		@GodotName("get_collision_point") GodotMethod!(Vector2) getCollisionPoint;
		@GodotName("get_motion") GodotMethod!(Vector2) getMotion;
		@GodotName("get_motion_remainder") GodotMethod!(Vector2) getMotionRemainder;
	}
	/// 
	pragma(inline, true) bool opEquals(in Physics2DTestMotionResult other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) Physics2DTestMotionResult opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of Physics2DTestMotionResult.
	/// Note: use `memnew!Physics2DTestMotionResult` instead.
	static Physics2DTestMotionResult _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DTestMotionResult");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DTestMotionResult)(constructor());
	}
	@disable new(size_t s);
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
	Vector2 getColliderVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getColliderVelocity, _godot_object);
	}
	/**
	
	*/
	Vector2 getCollisionNormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCollisionNormal, _godot_object);
	}
	/**
	
	*/
	Vector2 getCollisionPoint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCollisionPoint, _godot_object);
	}
	/**
	
	*/
	Vector2 getMotion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMotion, _godot_object);
	}
	/**
	
	*/
	Vector2 getMotionRemainder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMotionRemainder, _godot_object);
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
	@property Vector2 colliderVelocity()
	{
		return getColliderVelocity();
	}
	/**
	
	*/
	@property Vector2 collisionNormal()
	{
		return getCollisionNormal();
	}
	/**
	
	*/
	@property Vector2 collisionPoint()
	{
		return getCollisionPoint();
	}
	/**
	
	*/
	@property Vector2 motion()
	{
		return getMotion();
	}
	/**
	
	*/
	@property Vector2 motionRemainder()
	{
		return getMotionRemainder();
	}
}
