/**
Collision data for KinematicBody collisions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.kinematiccollision;
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
Collision data for KinematicBody collisions.

Contains collision data for KinematicBody collisions. When a $(D KinematicBody) is moved using $(D KinematicBody.moveAndCollide), it stops if it detects a collision with another body. If a collision is detected, a KinematicCollision object is returned.
This object contains information about the collision, including the colliding object, the remaining motion, and the collision position. This information can be used to calculate a collision response.
*/
@GodotBaseClass struct KinematicCollision
{
	static immutable string _GODOT_internal_name = "KinematicCollision";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in KinematicCollision other) const { return _godot_object.ptr is other._godot_object.ptr; }
	KinematicCollision opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static KinematicCollision _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("KinematicCollision");
		if(constructor is null) return typeof(this).init;
		return cast(KinematicCollision)(constructor());
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	/**
	
	*/
	Vector3 getPosition() const
	{
		_GODOT_get_position.bind("KinematicCollision", "get_position");
		return ptrcall!(Vector3)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal") = _GODOT_get_normal;
	/**
	
	*/
	Vector3 getNormal() const
	{
		_GODOT_get_normal.bind("KinematicCollision", "get_normal");
		return ptrcall!(Vector3)(_GODOT_get_normal, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_travel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_travel") = _GODOT_get_travel;
	/**
	
	*/
	Vector3 getTravel() const
	{
		_GODOT_get_travel.bind("KinematicCollision", "get_travel");
		return ptrcall!(Vector3)(_GODOT_get_travel, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_remainder;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_remainder") = _GODOT_get_remainder;
	/**
	
	*/
	Vector3 getRemainder() const
	{
		_GODOT_get_remainder.bind("KinematicCollision", "get_remainder");
		return ptrcall!(Vector3)(_GODOT_get_remainder, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject) _GODOT_get_local_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_local_shape") = _GODOT_get_local_shape;
	/**
	
	*/
	GodotObject getLocalShape() const
	{
		_GODOT_get_local_shape.bind("KinematicCollision", "get_local_shape");
		return ptrcall!(GodotObject)(_GODOT_get_local_shape, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject) _GODOT_get_collider;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider") = _GODOT_get_collider;
	/**
	
	*/
	GodotObject getCollider() const
	{
		_GODOT_get_collider.bind("KinematicCollision", "get_collider");
		return ptrcall!(GodotObject)(_GODOT_get_collider, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collider_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_id") = _GODOT_get_collider_id;
	/**
	
	*/
	long getColliderId() const
	{
		_GODOT_get_collider_id.bind("KinematicCollision", "get_collider_id");
		return ptrcall!(long)(_GODOT_get_collider_id, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject) _GODOT_get_collider_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_shape") = _GODOT_get_collider_shape;
	/**
	
	*/
	GodotObject getColliderShape() const
	{
		_GODOT_get_collider_shape.bind("KinematicCollision", "get_collider_shape");
		return ptrcall!(GodotObject)(_GODOT_get_collider_shape, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collider_shape_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_shape_index") = _GODOT_get_collider_shape_index;
	/**
	
	*/
	long getColliderShapeIndex() const
	{
		_GODOT_get_collider_shape_index.bind("KinematicCollision", "get_collider_shape_index");
		return ptrcall!(long)(_GODOT_get_collider_shape_index, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_collider_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_velocity") = _GODOT_get_collider_velocity;
	/**
	
	*/
	Vector3 getColliderVelocity() const
	{
		_GODOT_get_collider_velocity.bind("KinematicCollision", "get_collider_velocity");
		return ptrcall!(Vector3)(_GODOT_get_collider_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_collider_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collider_metadata") = _GODOT_get_collider_metadata;
	/**
	
	*/
	Variant getColliderMetadata() const
	{
		_GODOT_get_collider_metadata.bind("KinematicCollision", "get_collider_metadata");
		return ptrcall!(Variant)(_GODOT_get_collider_metadata, _godot_object);
	}
	/**
	The point of collision.
	*/
	@property Vector3 position()
	{
		return getPosition();
	}
	/**
	The colliding body's shape's normal at the point of collision.
	*/
	@property Vector3 normal()
	{
		return getNormal();
	}
	/**
	The distance the moving object traveled before collision.
	*/
	@property Vector3 travel()
	{
		return getTravel();
	}
	/**
	The moving object's remaining movement vector.
	*/
	@property Vector3 remainder()
	{
		return getRemainder();
	}
	/**
	The moving object's colliding shape.
	*/
	@property GodotObject localShape()
	{
		return getLocalShape();
	}
	/**
	The colliding body.
	*/
	@property GodotObject collider()
	{
		return getCollider();
	}
	/**
	The colliding body's unique $(D RID).
	*/
	@property long colliderId()
	{
		return getColliderId();
	}
	/**
	The colliding body's shape.
	*/
	@property GodotObject colliderShape()
	{
		return getColliderShape();
	}
	/**
	The colliding shape's index. See $(D CollisionObject).
	*/
	@property long colliderShapeIndex()
	{
		return getColliderShapeIndex();
	}
	/**
	The colliding object's velocity.
	*/
	@property Vector3 colliderVelocity()
	{
		return getColliderVelocity();
	}
	/**
	The colliding body's metadata. See $(D GodotObject).
	*/
	@property Variant colliderMetadata()
	{
		return getColliderMetadata();
	}
}
