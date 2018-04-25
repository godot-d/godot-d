/**
Static body for 3D Physics.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.staticbody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.physicsbody;
/**
Static body for 3D Physics.

A static body is a simple body that is not intended to move. They don't consume any CPU resources in contrast to a $(D RigidBody3D) so they are great for scenario collision.
A static body can also be animated by using simulated motion mode. This is useful for implementing functionalities such as moving platforms. When this mode is active the body can be animated and automatically computes linear and angular velocity to apply in that frame and to influence other bodies.
Alternatively, a constant linear or angular velocity can be set for the static body, so even if it doesn't move, it affects other bodies as if it was moving (this is useful for simulating conveyor belts or conveyor wheels).
*/
@GodotBaseClass struct StaticBody
{
	static immutable string _GODOT_internal_name = "StaticBody";
public:
@nogc nothrow:
	union { godot_object _godot_object; PhysicsBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in StaticBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StaticBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StaticBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StaticBody");
		if(constructor is null) return typeof(this).init;
		return cast(StaticBody)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_constant_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_linear_velocity") = _GODOT_set_constant_linear_velocity;
	/**
	
	*/
	void setConstantLinearVelocity(in Vector3 vel)
	{
		_GODOT_set_constant_linear_velocity.bind("StaticBody", "set_constant_linear_velocity");
		ptrcall!(void)(_GODOT_set_constant_linear_velocity, _godot_object, vel);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_constant_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_angular_velocity") = _GODOT_set_constant_angular_velocity;
	/**
	
	*/
	void setConstantAngularVelocity(in Vector3 vel)
	{
		_GODOT_set_constant_angular_velocity.bind("StaticBody", "set_constant_angular_velocity");
		ptrcall!(void)(_GODOT_set_constant_angular_velocity, _godot_object, vel);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_constant_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_linear_velocity") = _GODOT_get_constant_linear_velocity;
	/**
	
	*/
	Vector3 getConstantLinearVelocity() const
	{
		_GODOT_get_constant_linear_velocity.bind("StaticBody", "get_constant_linear_velocity");
		return ptrcall!(Vector3)(_GODOT_get_constant_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_constant_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_angular_velocity") = _GODOT_get_constant_angular_velocity;
	/**
	
	*/
	Vector3 getConstantAngularVelocity() const
	{
		_GODOT_get_constant_angular_velocity.bind("StaticBody", "get_constant_angular_velocity");
		return ptrcall!(Vector3)(_GODOT_get_constant_angular_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_friction") = _GODOT_set_friction;
	/**
	
	*/
	void setFriction(in double friction)
	{
		_GODOT_set_friction.bind("StaticBody", "set_friction");
		ptrcall!(void)(_GODOT_set_friction, _godot_object, friction);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_friction") = _GODOT_get_friction;
	/**
	
	*/
	double getFriction() const
	{
		_GODOT_get_friction.bind("StaticBody", "get_friction");
		return ptrcall!(double)(_GODOT_get_friction, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bounce") = _GODOT_set_bounce;
	/**
	
	*/
	void setBounce(in double bounce)
	{
		_GODOT_set_bounce.bind("StaticBody", "set_bounce");
		ptrcall!(void)(_GODOT_set_bounce, _godot_object, bounce);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bounce") = _GODOT_get_bounce;
	/**
	
	*/
	double getBounce() const
	{
		_GODOT_get_bounce.bind("StaticBody", "get_bounce");
		return ptrcall!(double)(_GODOT_get_bounce, _godot_object);
	}
	/**
	The body friction, from 0 (frictionless) to 1 (full friction).
	*/
	@property double friction()
	{
		return getFriction();
	}
	/// ditto
	@property void friction(double v)
	{
		setFriction(v);
	}
	/**
	The body bounciness.
	*/
	@property double bounce()
	{
		return getBounce();
	}
	/// ditto
	@property void bounce(double v)
	{
		setBounce(v);
	}
	/**
	The constant linear velocity for the body. This does not move the body, but affects other bodies that touch it, as if it was in a state of movement.
	*/
	@property Vector3 constantLinearVelocity()
	{
		return getConstantLinearVelocity();
	}
	/// ditto
	@property void constantLinearVelocity(Vector3 v)
	{
		setConstantLinearVelocity(v);
	}
	/**
	The constant angular velocity for the body. This does not rotate the body, but affects other bodies that touch it, as if it was in a state of rotation.
	*/
	@property Vector3 constantAngularVelocity()
	{
		return getConstantAngularVelocity();
	}
	/// ditto
	@property void constantAngularVelocity(Vector3 v)
	{
		setConstantAngularVelocity(v);
	}
}
