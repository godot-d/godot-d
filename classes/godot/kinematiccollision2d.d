/**
Collision data for $(D KinematicBody2D) collisions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.kinematiccollision2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
Collision data for $(D KinematicBody2D) collisions.

Contains collision data for $(D KinematicBody2D) collisions. When a $(D KinematicBody2D) is moved using $(D KinematicBody2D.moveAndCollide), it stops if it detects a collision with another body. If a collision is detected, a KinematicCollision2D object is returned.
This object contains information about the collision, including the colliding object, the remaining motion, and the collision position. This information can be used to calculate a collision response.
*/
@GodotBaseClass struct KinematicCollision2D
{
	package(godot) enum string _GODOT_internal_name = "KinematicCollision2D";
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
		@GodotName("get_collider_metadata") GodotMethod!(Variant) getColliderMetadata;
		@GodotName("get_collider_shape") GodotMethod!(GodotObject) getColliderShape;
		@GodotName("get_collider_shape_index") GodotMethod!(long) getColliderShapeIndex;
		@GodotName("get_collider_velocity") GodotMethod!(Vector2) getColliderVelocity;
		@GodotName("get_local_shape") GodotMethod!(GodotObject) getLocalShape;
		@GodotName("get_normal") GodotMethod!(Vector2) getNormal;
		@GodotName("get_position") GodotMethod!(Vector2) getPosition;
		@GodotName("get_remainder") GodotMethod!(Vector2) getRemainder;
		@GodotName("get_travel") GodotMethod!(Vector2) getTravel;
	}
	/// 
	pragma(inline, true) bool opEquals(in KinematicCollision2D other) const
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
	/// Construct a new instance of KinematicCollision2D.
	/// Note: use `memnew!KinematicCollision2D` instead.
	static KinematicCollision2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("KinematicCollision2D");
		if(constructor is null) return typeof(this).init;
		return cast(KinematicCollision2D)(constructor());
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
	Variant getColliderMetadata() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getColliderMetadata, _godot_object);
	}
	/**
	
	*/
	GodotObject getColliderShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.getColliderShape, _godot_object);
	}
	/**
	
	*/
	long getColliderShapeIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getColliderShapeIndex, _godot_object);
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
	GodotObject getLocalShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.getLocalShape, _godot_object);
	}
	/**
	
	*/
	Vector2 getNormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getNormal, _godot_object);
	}
	/**
	
	*/
	Vector2 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	Vector2 getRemainder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getRemainder, _godot_object);
	}
	/**
	
	*/
	Vector2 getTravel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getTravel, _godot_object);
	}
	/**
	The colliding body.
	*/
	@property GodotObject collider()
	{
		return getCollider();
	}
	/**
	The colliding body's unique instance ID. See $(D GodotObject.getInstanceId).
	*/
	@property long colliderId()
	{
		return getColliderId();
	}
	/**
	The colliding body's metadata. See $(D GodotObject).
	*/
	@property Variant colliderMetadata()
	{
		return getColliderMetadata();
	}
	/**
	The colliding body's shape.
	*/
	@property GodotObject colliderShape()
	{
		return getColliderShape();
	}
	/**
	The colliding shape's index. See $(D CollisionObject2D).
	*/
	@property long colliderShapeIndex()
	{
		return getColliderShapeIndex();
	}
	/**
	The colliding object's velocity.
	*/
	@property Vector2 colliderVelocity()
	{
		return getColliderVelocity();
	}
	/**
	The moving object's colliding shape.
	*/
	@property GodotObject localShape()
	{
		return getLocalShape();
	}
	/**
	The colliding body's shape's normal at the point of collision.
	*/
	@property Vector2 normal()
	{
		return getNormal();
	}
	/**
	The point of collision, in global coordinates.
	*/
	@property Vector2 position()
	{
		return getPosition();
	}
	/**
	The moving object's remaining movement vector.
	*/
	@property Vector2 remainder()
	{
		return getRemainder();
	}
	/**
	The distance the moving object traveled before collision.
	*/
	@property Vector2 travel()
	{
		return getTravel();
	}
}
