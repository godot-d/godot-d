/**
Static body for 2D Physics.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.staticbody2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.physicsbody2d;
/**
Static body for 2D Physics.

A StaticBody2D is a body that is not intended to move. It is ideal for implementing objects in the environment, such as walls or platforms.
Additionally, a constant linear or angular velocity can be set for the static body, which will affect colliding bodies as if it were moving (for example, a conveyor belt).
*/
@GodotBaseClass struct StaticBody2D
{
	static immutable string _GODOT_internal_name = "StaticBody2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; PhysicsBody2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in StaticBody2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StaticBody2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StaticBody2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StaticBody2D");
		if(constructor is null) return typeof(this).init;
		return cast(StaticBody2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_constant_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_linear_velocity") = _GODOT_set_constant_linear_velocity;
	/**
	
	*/
	void setConstantLinearVelocity(in Vector2 vel)
	{
		_GODOT_set_constant_linear_velocity.bind("StaticBody2D", "set_constant_linear_velocity");
		ptrcall!(void)(_GODOT_set_constant_linear_velocity, _godot_object, vel);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_constant_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant_angular_velocity") = _GODOT_set_constant_angular_velocity;
	/**
	
	*/
	void setConstantAngularVelocity(in double vel)
	{
		_GODOT_set_constant_angular_velocity.bind("StaticBody2D", "set_constant_angular_velocity");
		ptrcall!(void)(_GODOT_set_constant_angular_velocity, _godot_object, vel);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_constant_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_linear_velocity") = _GODOT_get_constant_linear_velocity;
	/**
	
	*/
	Vector2 getConstantLinearVelocity() const
	{
		_GODOT_get_constant_linear_velocity.bind("StaticBody2D", "get_constant_linear_velocity");
		return ptrcall!(Vector2)(_GODOT_get_constant_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_constant_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_angular_velocity") = _GODOT_get_constant_angular_velocity;
	/**
	
	*/
	double getConstantAngularVelocity() const
	{
		_GODOT_get_constant_angular_velocity.bind("StaticBody2D", "get_constant_angular_velocity");
		return ptrcall!(double)(_GODOT_get_constant_angular_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_friction") = _GODOT_set_friction;
	/**
	
	*/
	void setFriction(in double friction)
	{
		_GODOT_set_friction.bind("StaticBody2D", "set_friction");
		ptrcall!(void)(_GODOT_set_friction, _godot_object, friction);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_friction") = _GODOT_get_friction;
	/**
	
	*/
	double getFriction() const
	{
		_GODOT_get_friction.bind("StaticBody2D", "get_friction");
		return ptrcall!(double)(_GODOT_get_friction, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bounce") = _GODOT_set_bounce;
	/**
	
	*/
	void setBounce(in double bounce)
	{
		_GODOT_set_bounce.bind("StaticBody2D", "set_bounce");
		ptrcall!(void)(_GODOT_set_bounce, _godot_object, bounce);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bounce") = _GODOT_get_bounce;
	/**
	
	*/
	double getBounce() const
	{
		_GODOT_get_bounce.bind("StaticBody2D", "get_bounce");
		return ptrcall!(double)(_GODOT_get_bounce, _godot_object);
	}
	/**
	Constant linear velocity for the body. This does not move the body, but affects colliding bodies, as if it were moving.
	*/
	@property Vector2 constantLinearVelocity()
	{
		return getConstantLinearVelocity();
	}
	/// ditto
	@property void constantLinearVelocity(Vector2 v)
	{
		setConstantLinearVelocity(v);
	}
	/**
	Constant angular velocity for the body. This does not rotate the body, but affects colliding bodies, as if it were rotating.
	*/
	@property double constantAngularVelocity()
	{
		return getConstantAngularVelocity();
	}
	/// ditto
	@property void constantAngularVelocity(double v)
	{
		setConstantAngularVelocity(v);
	}
	/**
	The body's friction. Values range from `0` (no friction) to `1` (full friction).
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
	The body's bounciness. Values range from `0` (no bounce) to `1` (full bounciness).
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
}
