/**
Physics Body whose position is determined through physics simulation in 3D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.rigidbody;
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
import godot.physicsdirectbodystate;
/**
Physics Body whose position is determined through physics simulation in 3D space.

This is the node that implements full 3D physics. This means that you do not control a RigidBody directly. Instead you can apply forces to it (gravity, impulses, etc.), and the physics simulation will calculate the resulting movement, collision, bouncing, rotating, etc.
A RigidBody has 4 behavior $(D mode)s: Rigid, Static, Character, and Kinematic.
$(B Note:) Don't change a RigidBody's position every frame or very often. Sporadic changes work fine, but physics runs at a different granularity (fixed hz) than usual rendering (process callback) and maybe even in a separate thread, so changing this from a process loop will yield strange behavior. If you need to directly affect the body's state, use $(D _integrateForces), which allows you to directly access the physics state.
If you need to override the default physics behavior, you can write a custom force integration. See $(D customIntegrator).
*/
@GodotBaseClass struct RigidBody
{
	static immutable string _GODOT_internal_name = "RigidBody";
public:
@nogc nothrow:
	union { godot_object _godot_object; PhysicsBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in RigidBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RigidBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RigidBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RigidBody");
		if(constructor is null) return typeof(this).init;
		return cast(RigidBody)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Mode : int
	{
		/**
		Rigid body. This is the "natural" state of a rigid body. It is affected by forces, and can move, rotate, and be affected by user code.
		*/
		modeRigid = 0,
		/**
		Static mode. The body behaves like a $(D StaticBody), and can only move by user code.
		*/
		modeStatic = 1,
		/**
		Character body. This behaves like a rigid body, but can not rotate.
		*/
		modeCharacter = 2,
		/**
		Kinematic body. The body behaves like a $(D KinematicBody), and can only move by user code.
		*/
		modeKinematic = 3,
	}
	/// 
	enum Constants : int
	{
		modeRigid = 0,
		modeStatic = 1,
		modeCharacter = 2,
		modeKinematic = 3,
	}
	package(godot) static GodotMethod!(void, PhysicsDirectBodyState) _GODOT__integrate_forces;
	package(godot) alias _GODOT_methodBindInfo(string name : "_integrate_forces") = _GODOT__integrate_forces;
	/**
	Called during physics processing, allowing you to read and safely modify the simulation state for the object. By default it works in addition to the usual physics behavior, but $(D setUseCustomIntegrator) allows you to disable the default behavior and do fully custom force integration for a body.
	*/
	void _integrateForces(PhysicsDirectBodyState state)
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
		_GODOT_set_mode.bind("RigidBody", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(RigidBody.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	/**
	
	*/
	RigidBody.Mode getMode() const
	{
		_GODOT_get_mode.bind("RigidBody", "get_mode");
		return ptrcall!(RigidBody.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mass") = _GODOT_set_mass;
	/**
	
	*/
	void setMass(in double mass)
	{
		_GODOT_set_mass.bind("RigidBody", "set_mass");
		ptrcall!(void)(_GODOT_set_mass, _godot_object, mass);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mass") = _GODOT_get_mass;
	/**
	
	*/
	double getMass() const
	{
		_GODOT_get_mass.bind("RigidBody", "get_mass");
		return ptrcall!(double)(_GODOT_get_mass, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_weight;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_weight") = _GODOT_set_weight;
	/**
	
	*/
	void setWeight(in double weight)
	{
		_GODOT_set_weight.bind("RigidBody", "set_weight");
		ptrcall!(void)(_GODOT_set_weight, _godot_object, weight);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_weight;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_weight") = _GODOT_get_weight;
	/**
	
	*/
	double getWeight() const
	{
		_GODOT_get_weight.bind("RigidBody", "get_weight");
		return ptrcall!(double)(_GODOT_get_weight, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_friction") = _GODOT_set_friction;
	/**
	
	*/
	void setFriction(in double friction)
	{
		_GODOT_set_friction.bind("RigidBody", "set_friction");
		ptrcall!(void)(_GODOT_set_friction, _godot_object, friction);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_friction") = _GODOT_get_friction;
	/**
	
	*/
	double getFriction() const
	{
		_GODOT_get_friction.bind("RigidBody", "get_friction");
		return ptrcall!(double)(_GODOT_get_friction, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bounce") = _GODOT_set_bounce;
	/**
	
	*/
	void setBounce(in double bounce)
	{
		_GODOT_set_bounce.bind("RigidBody", "set_bounce");
		ptrcall!(void)(_GODOT_set_bounce, _godot_object, bounce);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bounce") = _GODOT_get_bounce;
	/**
	
	*/
	double getBounce() const
	{
		_GODOT_get_bounce.bind("RigidBody", "get_bounce");
		return ptrcall!(double)(_GODOT_get_bounce, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_linear_velocity") = _GODOT_set_linear_velocity;
	/**
	
	*/
	void setLinearVelocity(in Vector3 linear_velocity)
	{
		_GODOT_set_linear_velocity.bind("RigidBody", "set_linear_velocity");
		ptrcall!(void)(_GODOT_set_linear_velocity, _godot_object, linear_velocity);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_velocity") = _GODOT_get_linear_velocity;
	/**
	
	*/
	Vector3 getLinearVelocity() const
	{
		_GODOT_get_linear_velocity.bind("RigidBody", "get_linear_velocity");
		return ptrcall!(Vector3)(_GODOT_get_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_angular_velocity") = _GODOT_set_angular_velocity;
	/**
	
	*/
	void setAngularVelocity(in Vector3 angular_velocity)
	{
		_GODOT_set_angular_velocity.bind("RigidBody", "set_angular_velocity");
		ptrcall!(void)(_GODOT_set_angular_velocity, _godot_object, angular_velocity);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angular_velocity") = _GODOT_get_angular_velocity;
	/**
	
	*/
	Vector3 getAngularVelocity() const
	{
		_GODOT_get_angular_velocity.bind("RigidBody", "get_angular_velocity");
		return ptrcall!(Vector3)(_GODOT_get_angular_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_gravity_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity_scale") = _GODOT_set_gravity_scale;
	/**
	
	*/
	void setGravityScale(in double gravity_scale)
	{
		_GODOT_set_gravity_scale.bind("RigidBody", "set_gravity_scale");
		ptrcall!(void)(_GODOT_set_gravity_scale, _godot_object, gravity_scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_gravity_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity_scale") = _GODOT_get_gravity_scale;
	/**
	
	*/
	double getGravityScale() const
	{
		_GODOT_get_gravity_scale.bind("RigidBody", "get_gravity_scale");
		return ptrcall!(double)(_GODOT_get_gravity_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_linear_damp") = _GODOT_set_linear_damp;
	/**
	
	*/
	void setLinearDamp(in double linear_damp)
	{
		_GODOT_set_linear_damp.bind("RigidBody", "set_linear_damp");
		ptrcall!(void)(_GODOT_set_linear_damp, _godot_object, linear_damp);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_damp") = _GODOT_get_linear_damp;
	/**
	
	*/
	double getLinearDamp() const
	{
		_GODOT_get_linear_damp.bind("RigidBody", "get_linear_damp");
		return ptrcall!(double)(_GODOT_get_linear_damp, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_angular_damp") = _GODOT_set_angular_damp;
	/**
	
	*/
	void setAngularDamp(in double angular_damp)
	{
		_GODOT_set_angular_damp.bind("RigidBody", "set_angular_damp");
		ptrcall!(void)(_GODOT_set_angular_damp, _godot_object, angular_damp);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angular_damp") = _GODOT_get_angular_damp;
	/**
	
	*/
	double getAngularDamp() const
	{
		_GODOT_get_angular_damp.bind("RigidBody", "get_angular_damp");
		return ptrcall!(double)(_GODOT_get_angular_damp, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_contacts_reported") = _GODOT_set_max_contacts_reported;
	/**
	
	*/
	void setMaxContactsReported(in long amount)
	{
		_GODOT_set_max_contacts_reported.bind("RigidBody", "set_max_contacts_reported");
		ptrcall!(void)(_GODOT_set_max_contacts_reported, _godot_object, amount);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_contacts_reported") = _GODOT_get_max_contacts_reported;
	/**
	
	*/
	long getMaxContactsReported() const
	{
		_GODOT_get_max_contacts_reported.bind("RigidBody", "get_max_contacts_reported");
		return ptrcall!(long)(_GODOT_get_max_contacts_reported, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_custom_integrator;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_custom_integrator") = _GODOT_set_use_custom_integrator;
	/**
	
	*/
	void setUseCustomIntegrator(in bool enable)
	{
		_GODOT_set_use_custom_integrator.bind("RigidBody", "set_use_custom_integrator");
		ptrcall!(void)(_GODOT_set_use_custom_integrator, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_custom_integrator;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_custom_integrator") = _GODOT_is_using_custom_integrator;
	/**
	
	*/
	bool isUsingCustomIntegrator()
	{
		_GODOT_is_using_custom_integrator.bind("RigidBody", "is_using_custom_integrator");
		return ptrcall!(bool)(_GODOT_is_using_custom_integrator, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_contact_monitor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_contact_monitor") = _GODOT_set_contact_monitor;
	/**
	
	*/
	void setContactMonitor(in bool enabled)
	{
		_GODOT_set_contact_monitor.bind("RigidBody", "set_contact_monitor");
		ptrcall!(void)(_GODOT_set_contact_monitor, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_contact_monitor_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_contact_monitor_enabled") = _GODOT_is_contact_monitor_enabled;
	/**
	
	*/
	bool isContactMonitorEnabled() const
	{
		_GODOT_is_contact_monitor_enabled.bind("RigidBody", "is_contact_monitor_enabled");
		return ptrcall!(bool)(_GODOT_is_contact_monitor_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_continuous_collision_detection;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_continuous_collision_detection") = _GODOT_set_use_continuous_collision_detection;
	/**
	
	*/
	void setUseContinuousCollisionDetection(in bool enable)
	{
		_GODOT_set_use_continuous_collision_detection.bind("RigidBody", "set_use_continuous_collision_detection");
		ptrcall!(void)(_GODOT_set_use_continuous_collision_detection, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_continuous_collision_detection;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_continuous_collision_detection") = _GODOT_is_using_continuous_collision_detection;
	/**
	
	*/
	bool isUsingContinuousCollisionDetection() const
	{
		_GODOT_is_using_continuous_collision_detection.bind("RigidBody", "is_using_continuous_collision_detection");
		return ptrcall!(bool)(_GODOT_is_using_continuous_collision_detection, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_axis_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis_velocity") = _GODOT_set_axis_velocity;
	/**
	Set an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	*/
	void setAxisVelocity(in Vector3 axis_velocity)
	{
		_GODOT_set_axis_velocity.bind("RigidBody", "set_axis_velocity");
		ptrcall!(void)(_GODOT_set_axis_velocity, _godot_object, axis_velocity);
	}
	package(godot) static GodotMethod!(void, Vector3, Vector3) _GODOT_apply_impulse;
	package(godot) alias _GODOT_methodBindInfo(string name : "apply_impulse") = _GODOT_apply_impulse;
	/**
	Apply a positioned impulse (which will be affected by the body mass and shape). This is the equivalent of hitting a billiard ball with a cue: a force that is applied once, and only once. Both the impulse and the position are in global coordinates, and the position is relative to the object's origin.
	*/
	void applyImpulse(in Vector3 position, in Vector3 impulse)
	{
		_GODOT_apply_impulse.bind("RigidBody", "apply_impulse");
		ptrcall!(void)(_GODOT_apply_impulse, _godot_object, position, impulse);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_sleeping;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sleeping") = _GODOT_set_sleeping;
	/**
	
	*/
	void setSleeping(in bool sleeping)
	{
		_GODOT_set_sleeping.bind("RigidBody", "set_sleeping");
		ptrcall!(void)(_GODOT_set_sleeping, _godot_object, sleeping);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_sleeping;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_sleeping") = _GODOT_is_sleeping;
	/**
	
	*/
	bool isSleeping() const
	{
		_GODOT_is_sleeping.bind("RigidBody", "is_sleeping");
		return ptrcall!(bool)(_GODOT_is_sleeping, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_can_sleep;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_can_sleep") = _GODOT_set_can_sleep;
	/**
	
	*/
	void setCanSleep(in bool able_to_sleep)
	{
		_GODOT_set_can_sleep.bind("RigidBody", "set_can_sleep");
		ptrcall!(void)(_GODOT_set_can_sleep, _godot_object, able_to_sleep);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_able_to_sleep;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_able_to_sleep") = _GODOT_is_able_to_sleep;
	/**
	
	*/
	bool isAbleToSleep() const
	{
		_GODOT_is_able_to_sleep.bind("RigidBody", "is_able_to_sleep");
		return ptrcall!(bool)(_GODOT_is_able_to_sleep, _godot_object);
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
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_axis_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis_lock") = _GODOT_set_axis_lock;
	/**
	
	*/
	void setAxisLock(in long axis, in bool lock)
	{
		_GODOT_set_axis_lock.bind("RigidBody", "set_axis_lock");
		ptrcall!(void)(_GODOT_set_axis_lock, _godot_object, axis, lock);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_axis_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_axis_lock") = _GODOT_get_axis_lock;
	/**
	
	*/
	bool getAxisLock(in long axis) const
	{
		_GODOT_get_axis_lock.bind("RigidBody", "get_axis_lock");
		return ptrcall!(bool)(_GODOT_get_axis_lock, _godot_object, axis);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_colliding_bodies;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_colliding_bodies") = _GODOT_get_colliding_bodies;
	/**
	Return a list of the bodies colliding with this one. By default, number of max contacts reported is at 0 , see $(D setMaxContactsReported) to increase it.  Note that the result of this test is not immediate after moving objects. For performance, list of collisions is updated once per frame and before the physics step. Consider using signals instead.
	*/
	Array getCollidingBodies() const
	{
		_GODOT_get_colliding_bodies.bind("RigidBody", "get_colliding_bodies");
		return ptrcall!(Array)(_GODOT_get_colliding_bodies, _godot_object);
	}
	/**
	The body mode from the MODE_* enum. Modes include: MODE_STATIC, MODE_KINEMATIC, MODE_RIGID, and MODE_CHARACTER.
	*/
	@property RigidBody.Mode mode()
	{
		return getMode();
	}
	/// ditto
	@property void mode(long v)
	{
		setMode(v);
	}
	/**
	RigidBody's mass.
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
	RigidBody's weight based on its mass and the global 3D gravity. Global values are set in "Project &gt; Project Settings &gt; Physics &gt; 3d".
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
	The body friction, from 0 (frictionless) to 1 (max friction).
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
	RigidBody's bounciness.
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
	This is multiplied by the global 3D gravity setting found in "Project &gt; Project Settings &gt; Physics &gt; 3d" to produce RigidBody's gravity. E.g. a value of 1 will be normal gravity, 2 will apply double gravity, and 0.5 will apply half gravity to this object.
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
	If `true` internal force integration will be disabled (like gravity or air friction) for this body. Other than collision response, the body will only move as determined by the $(D _integrateForces) function, if defined.
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
	If `true` continuous collision detection is used.
	Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided. Continuous collision detection is more precise, and misses less impacts by small, fast-moving objects. Not using continuous collision detection is faster to compute, but can miss small, fast-moving objects.
	*/
	@property bool continuousCd()
	{
		return isUsingContinuousCollisionDetection();
	}
	/// ditto
	@property void continuousCd(bool v)
	{
		setUseContinuousCollisionDetection(v);
	}
	/**
	The maximum contacts to report. Bodies can keep a log of the contacts with other bodies, this is enabled by setting the maximum amount of contacts reported to a number greater than 0.
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
	If true, the RigidBody will emit signals when it collides with another RigidBody.
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
	If `true` RigidBody is sleeping and will not calculate forces until woken up by a collision or the `apply_impulse` method.
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
	If `true` the RigidBody will not calculate forces and will act as a static body while there is no movement. It will wake up when forces are applied through other collisions or when the `apply_impulse` method is used.
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
	
	*/
	@property bool axisLockLinearX()
	{
		return getAxisLock(1);
	}
	/// ditto
	@property void axisLockLinearX(bool v)
	{
		setAxisLock(1, v);
	}
	/**
	
	*/
	@property bool axisLockLinearY()
	{
		return getAxisLock(2);
	}
	/// ditto
	@property void axisLockLinearY(bool v)
	{
		setAxisLock(2, v);
	}
	/**
	
	*/
	@property bool axisLockLinearZ()
	{
		return getAxisLock(4);
	}
	/// ditto
	@property void axisLockLinearZ(bool v)
	{
		setAxisLock(4, v);
	}
	/**
	
	*/
	@property bool axisLockAngularX()
	{
		return getAxisLock(8);
	}
	/// ditto
	@property void axisLockAngularX(bool v)
	{
		setAxisLock(8, v);
	}
	/**
	
	*/
	@property bool axisLockAngularY()
	{
		return getAxisLock(16);
	}
	/// ditto
	@property void axisLockAngularY(bool v)
	{
		setAxisLock(16, v);
	}
	/**
	
	*/
	@property bool axisLockAngularZ()
	{
		return getAxisLock(32);
	}
	/// ditto
	@property void axisLockAngularZ(bool v)
	{
		setAxisLock(32, v);
	}
	/**
	RigidBody's linear velocity. Can be used sporadically, but $(B DON'T SET THIS IN EVERY FRAME), because physics may run in another thread and runs at a different granularity. Use $(D _integrateForces) as your process loop for precise control of the body state.
	*/
	@property Vector3 linearVelocity()
	{
		return getLinearVelocity();
	}
	/// ditto
	@property void linearVelocity(Vector3 v)
	{
		setLinearVelocity(v);
	}
	/**
	RigidBody's linear damp. Default value: -1, cannot be less than -1. If this value is different from -1, any linear damp derived from the world or areas will be overridden.
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
	RigidBody's rotational velocity.
	*/
	@property Vector3 angularVelocity()
	{
		return getAngularVelocity();
	}
	/// ditto
	@property void angularVelocity(Vector3 v)
	{
		setAngularVelocity(v);
	}
	/**
	Damps RigidBody's rotational forces.
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
}
