/**
A body that is controlled by the 2D physics engine.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.rigidbody2d;
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
import godot.physics2ddirectbodystate;
import godot.physics2dtestmotionresult;
/**
A body that is controlled by the 2D physics engine.

This node implements simulated 2D physics. You do not control a RigidBody2D directly. Instead you apply forces to it (gravity, impulses, etc.) and the physics simulation calculates the resulting movement based on its mass, friction, and other physical properties.
A RigidBody2D has 4 behavior $(D mode)s: Rigid, Static, Character, and Kinematic.
$(B Note:) You should not change a RigidBody2D's `position` or `linear_velocity` every frame or even very often. If you need to directly affect the body's state, use $(D _integrateForces), which allows you to directly access the physics state.
If you need to override the default physics behavior, you can write a custom force integration. See $(D customIntegrator).
*/
@GodotBaseClass struct RigidBody2D
{
	static immutable string _GODOT_internal_name = "RigidBody2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; PhysicsBody2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in RigidBody2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RigidBody2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RigidBody2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RigidBody2D");
		if(constructor is null) return typeof(this).init;
		return cast(RigidBody2D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Mode : int
	{
		/**
		Rigid mode. The body behaves as a physical object. It collides with other bodies and responds to forces applied to it. This is the default mode.
		*/
		modeRigid = 0,
		/**
		Static mode. The body behaves like a $(D StaticBody2D) and does not move.
		*/
		modeStatic = 1,
		/**
		Character mode. Similar to `MODE_RIGID`, but the body can not rotate.
		*/
		modeCharacter = 2,
		/**
		Kinematic mode. The body behaves like a $(D KinematicBody2D), and must be moved by code.
		*/
		modeKinematic = 3,
	}
	/// 
	enum CCDMode : int
	{
		/**
		Continuous collision detection disabled. This is the fastest way to detect body collisions, but can miss small, fast-moving objects.
		*/
		ccdModeDisabled = 0,
		/**
		Continuous collision detection enabled using raycasting. This is faster than shapecasting but less precise.
		*/
		ccdModeCastRay = 1,
		/**
		Continuous collision detection enabled using shapecasting. This is the slowest CCD method and the most precise.
		*/
		ccdModeCastShape = 2,
	}
	/// 
	enum Constants : int
	{
		modeRigid = 0,
		ccdModeDisabled = 0,
		modeStatic = 1,
		ccdModeCastRay = 1,
		ccdModeCastShape = 2,
		modeCharacter = 2,
		modeKinematic = 3,
	}
	package(godot) static GodotMethod!(void, Physics2DDirectBodyState) _GODOT__integrate_forces;
	package(godot) alias _GODOT_methodBindInfo(string name : "_integrate_forces") = _GODOT__integrate_forces;
	/**
	Allows you to read and safely modify the simulation state for the object. Use this instead of $(D Node._physics_process) if you need to directly change the body's `position` or other physics properties. By default it works in addition to the usual physics behavior, but $(D customIntegrator) allows you to disable the default behavior and write custom force integration for a body.
	*/
	void _integrateForces(Physics2DDirectBodyState state)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(state);
		String _GODOT_method_name = String("_integrate_forces");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode") = _GODOT_set_mode;
	/**
	
	*/
	void setMode(in long mode)
	{
		_GODOT_set_mode.bind("RigidBody2D", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(RigidBody2D.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	/**
	
	*/
	RigidBody2D.Mode getMode() const
	{
		_GODOT_get_mode.bind("RigidBody2D", "get_mode");
		return ptrcall!(RigidBody2D.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mass") = _GODOT_set_mass;
	/**
	
	*/
	void setMass(in double mass)
	{
		_GODOT_set_mass.bind("RigidBody2D", "set_mass");
		ptrcall!(void)(_GODOT_set_mass, _godot_object, mass);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mass") = _GODOT_get_mass;
	/**
	
	*/
	double getMass() const
	{
		_GODOT_get_mass.bind("RigidBody2D", "get_mass");
		return ptrcall!(double)(_GODOT_get_mass, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_inertia;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_inertia") = _GODOT_get_inertia;
	/**
	
	*/
	double getInertia() const
	{
		_GODOT_get_inertia.bind("RigidBody2D", "get_inertia");
		return ptrcall!(double)(_GODOT_get_inertia, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_inertia;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_inertia") = _GODOT_set_inertia;
	/**
	
	*/
	void setInertia(in double inertia)
	{
		_GODOT_set_inertia.bind("RigidBody2D", "set_inertia");
		ptrcall!(void)(_GODOT_set_inertia, _godot_object, inertia);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_weight;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_weight") = _GODOT_set_weight;
	/**
	
	*/
	void setWeight(in double weight)
	{
		_GODOT_set_weight.bind("RigidBody2D", "set_weight");
		ptrcall!(void)(_GODOT_set_weight, _godot_object, weight);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_weight;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_weight") = _GODOT_get_weight;
	/**
	
	*/
	double getWeight() const
	{
		_GODOT_get_weight.bind("RigidBody2D", "get_weight");
		return ptrcall!(double)(_GODOT_get_weight, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_friction") = _GODOT_set_friction;
	/**
	
	*/
	void setFriction(in double friction)
	{
		_GODOT_set_friction.bind("RigidBody2D", "set_friction");
		ptrcall!(void)(_GODOT_set_friction, _godot_object, friction);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_friction") = _GODOT_get_friction;
	/**
	
	*/
	double getFriction() const
	{
		_GODOT_get_friction.bind("RigidBody2D", "get_friction");
		return ptrcall!(double)(_GODOT_get_friction, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bounce") = _GODOT_set_bounce;
	/**
	
	*/
	void setBounce(in double bounce)
	{
		_GODOT_set_bounce.bind("RigidBody2D", "set_bounce");
		ptrcall!(void)(_GODOT_set_bounce, _godot_object, bounce);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bounce") = _GODOT_get_bounce;
	/**
	
	*/
	double getBounce() const
	{
		_GODOT_get_bounce.bind("RigidBody2D", "get_bounce");
		return ptrcall!(double)(_GODOT_get_bounce, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_gravity_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity_scale") = _GODOT_set_gravity_scale;
	/**
	
	*/
	void setGravityScale(in double gravity_scale)
	{
		_GODOT_set_gravity_scale.bind("RigidBody2D", "set_gravity_scale");
		ptrcall!(void)(_GODOT_set_gravity_scale, _godot_object, gravity_scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_gravity_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity_scale") = _GODOT_get_gravity_scale;
	/**
	
	*/
	double getGravityScale() const
	{
		_GODOT_get_gravity_scale.bind("RigidBody2D", "get_gravity_scale");
		return ptrcall!(double)(_GODOT_get_gravity_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_linear_damp") = _GODOT_set_linear_damp;
	/**
	
	*/
	void setLinearDamp(in double linear_damp)
	{
		_GODOT_set_linear_damp.bind("RigidBody2D", "set_linear_damp");
		ptrcall!(void)(_GODOT_set_linear_damp, _godot_object, linear_damp);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_damp") = _GODOT_get_linear_damp;
	/**
	
	*/
	double getLinearDamp() const
	{
		_GODOT_get_linear_damp.bind("RigidBody2D", "get_linear_damp");
		return ptrcall!(double)(_GODOT_get_linear_damp, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_angular_damp") = _GODOT_set_angular_damp;
	/**
	
	*/
	void setAngularDamp(in double angular_damp)
	{
		_GODOT_set_angular_damp.bind("RigidBody2D", "set_angular_damp");
		ptrcall!(void)(_GODOT_set_angular_damp, _godot_object, angular_damp);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angular_damp") = _GODOT_get_angular_damp;
	/**
	
	*/
	double getAngularDamp() const
	{
		_GODOT_get_angular_damp.bind("RigidBody2D", "get_angular_damp");
		return ptrcall!(double)(_GODOT_get_angular_damp, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_linear_velocity") = _GODOT_set_linear_velocity;
	/**
	
	*/
	void setLinearVelocity(in Vector2 linear_velocity)
	{
		_GODOT_set_linear_velocity.bind("RigidBody2D", "set_linear_velocity");
		ptrcall!(void)(_GODOT_set_linear_velocity, _godot_object, linear_velocity);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_velocity") = _GODOT_get_linear_velocity;
	/**
	
	*/
	Vector2 getLinearVelocity() const
	{
		_GODOT_get_linear_velocity.bind("RigidBody2D", "get_linear_velocity");
		return ptrcall!(Vector2)(_GODOT_get_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_angular_velocity") = _GODOT_set_angular_velocity;
	/**
	
	*/
	void setAngularVelocity(in double angular_velocity)
	{
		_GODOT_set_angular_velocity.bind("RigidBody2D", "set_angular_velocity");
		ptrcall!(void)(_GODOT_set_angular_velocity, _godot_object, angular_velocity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angular_velocity") = _GODOT_get_angular_velocity;
	/**
	
	*/
	double getAngularVelocity() const
	{
		_GODOT_get_angular_velocity.bind("RigidBody2D", "get_angular_velocity");
		return ptrcall!(double)(_GODOT_get_angular_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_contacts_reported") = _GODOT_set_max_contacts_reported;
	/**
	
	*/
	void setMaxContactsReported(in long amount)
	{
		_GODOT_set_max_contacts_reported.bind("RigidBody2D", "set_max_contacts_reported");
		ptrcall!(void)(_GODOT_set_max_contacts_reported, _godot_object, amount);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_contacts_reported") = _GODOT_get_max_contacts_reported;
	/**
	
	*/
	long getMaxContactsReported() const
	{
		_GODOT_get_max_contacts_reported.bind("RigidBody2D", "get_max_contacts_reported");
		return ptrcall!(long)(_GODOT_get_max_contacts_reported, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_custom_integrator;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_custom_integrator") = _GODOT_set_use_custom_integrator;
	/**
	
	*/
	void setUseCustomIntegrator(in bool enable)
	{
		_GODOT_set_use_custom_integrator.bind("RigidBody2D", "set_use_custom_integrator");
		ptrcall!(void)(_GODOT_set_use_custom_integrator, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_custom_integrator;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_custom_integrator") = _GODOT_is_using_custom_integrator;
	/**
	
	*/
	bool isUsingCustomIntegrator()
	{
		_GODOT_is_using_custom_integrator.bind("RigidBody2D", "is_using_custom_integrator");
		return ptrcall!(bool)(_GODOT_is_using_custom_integrator, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_contact_monitor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_contact_monitor") = _GODOT_set_contact_monitor;
	/**
	
	*/
	void setContactMonitor(in bool enabled)
	{
		_GODOT_set_contact_monitor.bind("RigidBody2D", "set_contact_monitor");
		ptrcall!(void)(_GODOT_set_contact_monitor, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_contact_monitor_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_contact_monitor_enabled") = _GODOT_is_contact_monitor_enabled;
	/**
	
	*/
	bool isContactMonitorEnabled() const
	{
		_GODOT_is_contact_monitor_enabled.bind("RigidBody2D", "is_contact_monitor_enabled");
		return ptrcall!(bool)(_GODOT_is_contact_monitor_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_continuous_collision_detection_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_continuous_collision_detection_mode") = _GODOT_set_continuous_collision_detection_mode;
	/**
	
	*/
	void setContinuousCollisionDetectionMode(in long mode)
	{
		_GODOT_set_continuous_collision_detection_mode.bind("RigidBody2D", "set_continuous_collision_detection_mode");
		ptrcall!(void)(_GODOT_set_continuous_collision_detection_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(RigidBody2D.CCDMode) _GODOT_get_continuous_collision_detection_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_continuous_collision_detection_mode") = _GODOT_get_continuous_collision_detection_mode;
	/**
	
	*/
	RigidBody2D.CCDMode getContinuousCollisionDetectionMode() const
	{
		_GODOT_get_continuous_collision_detection_mode.bind("RigidBody2D", "get_continuous_collision_detection_mode");
		return ptrcall!(RigidBody2D.CCDMode)(_GODOT_get_continuous_collision_detection_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_axis_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis_velocity") = _GODOT_set_axis_velocity;
	/**
	Sets the body's velocity on the given axis. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	*/
	void setAxisVelocity(in Vector2 axis_velocity)
	{
		_GODOT_set_axis_velocity.bind("RigidBody2D", "set_axis_velocity");
		ptrcall!(void)(_GODOT_set_axis_velocity, _godot_object, axis_velocity);
	}
	package(godot) static GodotMethod!(void, Vector2, Vector2) _GODOT_apply_impulse;
	package(godot) alias _GODOT_methodBindInfo(string name : "apply_impulse") = _GODOT_apply_impulse;
	/**
	Applies a positioned impulse to the body (which will be affected by the body mass and shape). This is the equivalent of hitting a billiard ball with a cue: a force that is applied instantaneously. Both the impulse and the offset from the body origin are in global coordinates.
	*/
	void applyImpulse(in Vector2 offset, in Vector2 impulse)
	{
		_GODOT_apply_impulse.bind("RigidBody2D", "apply_impulse");
		ptrcall!(void)(_GODOT_apply_impulse, _godot_object, offset, impulse);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_applied_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_applied_force") = _GODOT_set_applied_force;
	/**
	
	*/
	void setAppliedForce(in Vector2 force)
	{
		_GODOT_set_applied_force.bind("RigidBody2D", "set_applied_force");
		ptrcall!(void)(_GODOT_set_applied_force, _godot_object, force);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_applied_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_applied_force") = _GODOT_get_applied_force;
	/**
	
	*/
	Vector2 getAppliedForce() const
	{
		_GODOT_get_applied_force.bind("RigidBody2D", "get_applied_force");
		return ptrcall!(Vector2)(_GODOT_get_applied_force, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_applied_torque;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_applied_torque") = _GODOT_set_applied_torque;
	/**
	
	*/
	void setAppliedTorque(in double torque)
	{
		_GODOT_set_applied_torque.bind("RigidBody2D", "set_applied_torque");
		ptrcall!(void)(_GODOT_set_applied_torque, _godot_object, torque);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_applied_torque;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_applied_torque") = _GODOT_get_applied_torque;
	/**
	
	*/
	double getAppliedTorque() const
	{
		_GODOT_get_applied_torque.bind("RigidBody2D", "get_applied_torque");
		return ptrcall!(double)(_GODOT_get_applied_torque, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2, Vector2) _GODOT_add_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_force") = _GODOT_add_force;
	/**
	Adds a positioned force to the body. Both the force and the offset from the body origin are in global coordinates.
	*/
	void addForce(in Vector2 offset, in Vector2 force)
	{
		_GODOT_add_force.bind("RigidBody2D", "add_force");
		ptrcall!(void)(_GODOT_add_force, _godot_object, offset, force);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_sleeping;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sleeping") = _GODOT_set_sleeping;
	/**
	
	*/
	void setSleeping(in bool sleeping)
	{
		_GODOT_set_sleeping.bind("RigidBody2D", "set_sleeping");
		ptrcall!(void)(_GODOT_set_sleeping, _godot_object, sleeping);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_sleeping;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_sleeping") = _GODOT_is_sleeping;
	/**
	
	*/
	bool isSleeping() const
	{
		_GODOT_is_sleeping.bind("RigidBody2D", "is_sleeping");
		return ptrcall!(bool)(_GODOT_is_sleeping, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_can_sleep;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_can_sleep") = _GODOT_set_can_sleep;
	/**
	
	*/
	void setCanSleep(in bool able_to_sleep)
	{
		_GODOT_set_can_sleep.bind("RigidBody2D", "set_can_sleep");
		ptrcall!(void)(_GODOT_set_can_sleep, _godot_object, able_to_sleep);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_able_to_sleep;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_able_to_sleep") = _GODOT_is_able_to_sleep;
	/**
	
	*/
	bool isAbleToSleep() const
	{
		_GODOT_is_able_to_sleep.bind("RigidBody2D", "is_able_to_sleep");
		return ptrcall!(bool)(_GODOT_is_able_to_sleep, _godot_object);
	}
	package(godot) static GodotMethod!(bool, Vector2, double, Physics2DTestMotionResult) _GODOT_test_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "test_motion") = _GODOT_test_motion;
	/**
	Returns `true` if a collision would result from moving in the given vector. `margin` increases the size of the shapes involved in the collision detection, and `result` is an object of type $(D Physics2DTestMotionResult), which contains additional information about the collision (should there be one).
	*/
	bool testMotion(in Vector2 motion, in double margin = 0.08, Physics2DTestMotionResult result = Physics2DTestMotionResult.init)
	{
		_GODOT_test_motion.bind("RigidBody2D", "test_motion");
		return ptrcall!(bool)(_GODOT_test_motion, _godot_object, motion, margin, result);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__direct_state_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_direct_state_changed") = _GODOT__direct_state_changed;
	/**
	
	*/
	void _directStateChanged(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_direct_state_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__body_enter_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_body_enter_tree") = _GODOT__body_enter_tree;
	/**
	
	*/
	void _bodyEnterTree(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_body_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__body_exit_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_body_exit_tree") = _GODOT__body_exit_tree;
	/**
	
	*/
	void _bodyExitTree(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_body_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_colliding_bodies;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_colliding_bodies") = _GODOT_get_colliding_bodies;
	/**
	Returns a list of the bodies colliding with this one. Use $(D contactsReported) to set the maximum number reported. You must also set $(D contactMonitor) to `true`. Note that the result of this test is not immediate after moving objects. For performance, list of collisions is updated once per frame and before the physics step. Consider using signals instead.
	*/
	Array getCollidingBodies() const
	{
		_GODOT_get_colliding_bodies.bind("RigidBody2D", "get_colliding_bodies");
		return ptrcall!(Array)(_GODOT_get_colliding_bodies, _godot_object);
	}
	/**
	The body's mode. See `MODE_*` constants. Default value: `MODE_RIGID`.
	*/
	@property RigidBody2D.Mode mode()
	{
		return getMode();
	}
	/// ditto
	@property void mode(long v)
	{
		setMode(v);
	}
	/**
	The body's mass. Default value: `1`.
	*/
	@property double mass()
	{
		return getMass();
	}
	/// ditto
	@property void mass(double v)
	{
		setMass(v);
	}
	/**
	The body's moment of inertia. This is like mass, but for rotation: it determines how much torque it takes to rotate the body. The moment of inertia is usually computed automatically from the mass and the shapes, but this function allows you to set a custom value. Set 0 (or negative) inertia to return to automatically computing it.
	*/
	@property double inertia()
	{
		return getInertia();
	}
	/// ditto
	@property void inertia(double v)
	{
		setInertia(v);
	}
	/**
	The body's weight based on its mass and the "Default Gravity" value in "Project &gt; Project Settings &gt; Physics &gt; 2d".
	*/
	@property double weight()
	{
		return getWeight();
	}
	/// ditto
	@property void weight(double v)
	{
		setWeight(v);
	}
	/**
	The body's friction. Values range from `0` (frictionless) to `1` (maximum friction). Default value: `1`.
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
	The body's bounciness. Default value: `0`.
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
	Multiplies the gravity applied to the body. The body's gravity is calculated from the "Default Gravity" value in "Project &gt; Project Settings &gt; Physics &gt; 2d" and/or any additional gravity vector applied by $(D Area2D)s. Default value: `1`.
	*/
	@property double gravityScale()
	{
		return getGravityScale();
	}
	/// ditto
	@property void gravityScale(double v)
	{
		setGravityScale(v);
	}
	/**
	If `true` internal force integration is disabled for this body. Aside from collision response, the body will only move as determined by the $(D _integrateForces) function.
	*/
	@property bool customIntegrator()
	{
		return isUsingCustomIntegrator();
	}
	/// ditto
	@property void customIntegrator(bool v)
	{
		setUseCustomIntegrator(v);
	}
	/**
	Continuous collision detection mode. Default value: `CCD_MODE_DISABLED`.
	Continuous collision detection tries to predict where a moving body will collide instead of moving it and correcting its movement after collision. Continuous collision detection is slower, but more precise and misses fewer collisions with small, fast-moving objects. Raycasting and shapecasting methods are available. See `CCD_MODE_` constants for details.
	*/
	@property RigidBody2D.CCDMode continuousCd()
	{
		return getContinuousCollisionDetectionMode();
	}
	/// ditto
	@property void continuousCd(long v)
	{
		setContinuousCollisionDetectionMode(v);
	}
	/**
	The maximum number of contacts to report. Default value: `0`.
	*/
	@property long contactsReported()
	{
		return getMaxContactsReported();
	}
	/// ditto
	@property void contactsReported(long v)
	{
		setMaxContactsReported(v);
	}
	/**
	If `true` the body will emit signals when it collides with another RigidBody2D. See also $(D contactsReported). Default value: `false`.
	*/
	@property bool contactMonitor()
	{
		return isContactMonitorEnabled();
	}
	/// ditto
	@property void contactMonitor(bool v)
	{
		setContactMonitor(v);
	}
	/**
	If `true` the body is sleeping and will not calculate forces until woken up by a collision or by using $(D applyImpulse) or $(D addForce).
	*/
	@property bool sleeping()
	{
		return isSleeping();
	}
	/// ditto
	@property void sleeping(bool v)
	{
		setSleeping(v);
	}
	/**
	If `true` the body will not calculate forces and will act as a static body if there is no movement. The body will wake up when other forces are applied via collisions or by using $(D applyImpulse) or $(D addForce). Default value: `true`.
	*/
	@property bool canSleep()
	{
		return isAbleToSleep();
	}
	/// ditto
	@property void canSleep(bool v)
	{
		setCanSleep(v);
	}
	/**
	The body's linear velocity.
	*/
	@property Vector2 linearVelocity()
	{
		return getLinearVelocity();
	}
	/// ditto
	@property void linearVelocity(Vector2 v)
	{
		setLinearVelocity(v);
	}
	/**
	Damps the body's $(D linearVelocity). If `-1` the body will use the "Default Linear Damp" in "Project &gt; Project Settings &gt; Physics &gt; 2d". Default value: `-1`.
	*/
	@property double linearDamp()
	{
		return getLinearDamp();
	}
	/// ditto
	@property void linearDamp(double v)
	{
		setLinearDamp(v);
	}
	/**
	The body's rotational velocity.
	*/
	@property double angularVelocity()
	{
		return getAngularVelocity();
	}
	/// ditto
	@property void angularVelocity(double v)
	{
		setAngularVelocity(v);
	}
	/**
	Damps the body's $(D angularVelocity). If `-1` the body will use the "Default Angular Damp" in "Project &gt; Project Settings &gt; Physics &gt; 2d". Default value: `-1`.
	*/
	@property double angularDamp()
	{
		return getAngularDamp();
	}
	/// ditto
	@property void angularDamp(double v)
	{
		setAngularDamp(v);
	}
	/**
	The body's total applied force.
	*/
	@property Vector2 appliedForce()
	{
		return getAppliedForce();
	}
	/// ditto
	@property void appliedForce(Vector2 v)
	{
		setAppliedForce(v);
	}
	/**
	The body's total applied torque.
	*/
	@property double appliedTorque()
	{
		return getAppliedTorque();
	}
	/// ditto
	@property void appliedTorque(double v)
	{
		setAppliedTorque(v);
	}
}
