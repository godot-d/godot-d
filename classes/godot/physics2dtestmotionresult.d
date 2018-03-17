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
	static immutable string _GODOT_internal_name = "Physics2DTestMotionResult";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Physics2DTestMotionResult other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DTestMotionResult opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DTestMotionResult _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DTestMotionResult");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DTestMotionResult)(constructor());
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_motion") = _GODOT_get_motion;
	/**
	
	*/
	Vector2 getMotion() const
	{
		_GODOT_get_motion.bind("Physics2DTestMotionResult", "get_motion");
		return ptrcall!(Vector2)(_GODOT_get_motion, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_motion_remainder;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_motion_remainder") = _GODOT_get_motion_remainder;
	/**
	
	*/
	Vector2 getMotionRemainder() const
	{
		_GODOT_get_motion_remainder.bind("Physics2DTestMotionResult", "get_motion_remainder");
		return ptrcall!(Vector2)(_GODOT_get_motion_remainder, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_collision_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_point") = _GODOT_get_collision_point;
	/**
	
	*/
	Vector2 getCollisionPoint() const
	{
		_GODOT_get_collision_point.bind("Physics2DTestMotionResult", "get_collision_point");
		return ptrcall!(Vector2)(_GODOT_get_collision_point, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_collision_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_normal") = _GODOT_get_collision_normal;
	/**
	
	*/
	Vector2 getCollisionNormal() const
	{
		_GODOT_get_collision_normal.bind("Physics2DTestMotionResult", "get_collision_normal");
		return ptrcall!(Vector2)(_GODOT_get_collision_normal, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_collider_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_velocity") = _GODOT_get_collider_velocity;
	/**
	
	*/
	Vector2 getColliderVelocity() const
	{
		_GODOT_get_collider_velocity.bind("Physics2DTestMotionResult", "get_collider_velocity");
		return ptrcall!(Vector2)(_GODOT_get_collider_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collider_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_id") = _GODOT_get_collider_id;
	/**
	
	*/
	long getColliderId() const
	{
		_GODOT_get_collider_id.bind("Physics2DTestMotionResult", "get_collider_id");
		return ptrcall!(long)(_GODOT_get_collider_id, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_collider_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_rid") = _GODOT_get_collider_rid;
	/**
	
	*/
	RID getColliderRid() const
	{
		_GODOT_get_collider_rid.bind("Physics2DTestMotionResult", "get_collider_rid");
		return ptrcall!(RID)(_GODOT_get_collider_rid, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject) _GODOT_get_collider;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider") = _GODOT_get_collider;
	/**
	
	*/
	GodotObject getCollider() const
	{
		_GODOT_get_collider.bind("Physics2DTestMotionResult", "get_collider");
		return ptrcall!(GodotObject)(_GODOT_get_collider, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collider_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_shape") = _GODOT_get_collider_shape;
	/**
	
	*/
	long getColliderShape() const
	{
		_GODOT_get_collider_shape.bind("Physics2DTestMotionResult", "get_collider_shape");
		return ptrcall!(long)(_GODOT_get_collider_shape, _godot_object);
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
	/**
	
	*/
	@property Vector2 collisionPoint()
	{
		return getCollisionPoint();
	}
	/**
	
	*/
	@property Vector2 collisionNormal()
	{
		return getCollisionNormal();
	}
	/**
	
	*/
	@property Vector2 colliderVelocity()
	{
		return getColliderVelocity();
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
	@property GodotObject collider()
	{
		return getCollider();
	}
	/**
	
	*/
	@property long colliderShape()
	{
		return getColliderShape();
	}
}
