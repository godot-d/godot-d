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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.physicsbody;
import godot.collisionobject;
import godot.spatial;
import godot.physicsdirectbodystate;
import godot.physicsmaterial;
/**
Physics Body whose position is determined through physics simulation in 3D space.

This is the node that implements full 3D physics. This means that you do not control a RigidBody directly. Instead, you can apply forces to it (gravity, impulses, etc.), and the physics simulation will calculate the resulting movement, collision, bouncing, rotating, etc.
A RigidBody has 4 behavior $(D mode)s: Rigid, Static, Character, and Kinematic.
$(B Note:) Don't change a RigidBody's position every frame or very often. Sporadic changes work fine, but physics runs at a different granularity (fixed Hz) than usual rendering (process callback) and maybe even in a separate thread, so changing this from a process loop may result in strange behavior. If you need to directly affect the body's state, use $(D _integrateForces), which allows you to directly access the physics state.
If you need to override the default physics behavior, you can write a custom force integration function. See $(D customIntegrator).
With Bullet physics (the default), the center of mass is the RigidBody3D center. With GodotPhysics, the center of mass is the average of the $(D CollisionShape) centers.
*/
@GodotBaseClass struct RigidBody
{
	package(godot) enum string _GODOT_internal_name = "RigidBody";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PhysicsBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_body_enter_tree") GodotMethod!(void, long) _bodyEnterTree;
		@GodotName("_body_exit_tree") GodotMethod!(void, long) _bodyExitTree;
		@GodotName("_direct_state_changed") GodotMethod!(void, GodotObject) _directStateChanged;
		@GodotName("_integrate_forces") GodotMethod!(void, PhysicsDirectBodyState) _integrateForces;
		@GodotName("_reload_physics_characteristics") GodotMethod!(void) _reloadPhysicsCharacteristics;
		@GodotName("add_central_force") GodotMethod!(void, Vector3) addCentralForce;
		@GodotName("add_force") GodotMethod!(void, Vector3, Vector3) addForce;
		@GodotName("add_torque") GodotMethod!(void, Vector3) addTorque;
		@GodotName("apply_central_impulse") GodotMethod!(void, Vector3) applyCentralImpulse;
		@GodotName("apply_impulse") GodotMethod!(void, Vector3, Vector3) applyImpulse;
		@GodotName("apply_torque_impulse") GodotMethod!(void, Vector3) applyTorqueImpulse;
		@GodotName("get_angular_damp") GodotMethod!(double) getAngularDamp;
		@GodotName("get_angular_velocity") GodotMethod!(Vector3) getAngularVelocity;
		@GodotName("get_axis_lock") GodotMethod!(bool, long) getAxisLock;
		@GodotName("get_bounce") GodotMethod!(double) getBounce;
		@GodotName("get_colliding_bodies") GodotMethod!(Array) getCollidingBodies;
		@GodotName("get_friction") GodotMethod!(double) getFriction;
		@GodotName("get_gravity_scale") GodotMethod!(double) getGravityScale;
		@GodotName("get_linear_damp") GodotMethod!(double) getLinearDamp;
		@GodotName("get_linear_velocity") GodotMethod!(Vector3) getLinearVelocity;
		@GodotName("get_mass") GodotMethod!(double) getMass;
		@GodotName("get_max_contacts_reported") GodotMethod!(long) getMaxContactsReported;
		@GodotName("get_mode") GodotMethod!(RigidBody.Mode) getMode;
		@GodotName("get_physics_material_override") GodotMethod!(PhysicsMaterial) getPhysicsMaterialOverride;
		@GodotName("get_weight") GodotMethod!(double) getWeight;
		@GodotName("is_able_to_sleep") GodotMethod!(bool) isAbleToSleep;
		@GodotName("is_contact_monitor_enabled") GodotMethod!(bool) isContactMonitorEnabled;
		@GodotName("is_sleeping") GodotMethod!(bool) isSleeping;
		@GodotName("is_using_continuous_collision_detection") GodotMethod!(bool) isUsingContinuousCollisionDetection;
		@GodotName("is_using_custom_integrator") GodotMethod!(bool) isUsingCustomIntegrator;
		@GodotName("set_angular_damp") GodotMethod!(void, double) setAngularDamp;
		@GodotName("set_angular_velocity") GodotMethod!(void, Vector3) setAngularVelocity;
		@GodotName("set_axis_lock") GodotMethod!(void, long, bool) setAxisLock;
		@GodotName("set_axis_velocity") GodotMethod!(void, Vector3) setAxisVelocity;
		@GodotName("set_bounce") GodotMethod!(void, double) setBounce;
		@GodotName("set_can_sleep") GodotMethod!(void, bool) setCanSleep;
		@GodotName("set_contact_monitor") GodotMethod!(void, bool) setContactMonitor;
		@GodotName("set_friction") GodotMethod!(void, double) setFriction;
		@GodotName("set_gravity_scale") GodotMethod!(void, double) setGravityScale;
		@GodotName("set_linear_damp") GodotMethod!(void, double) setLinearDamp;
		@GodotName("set_linear_velocity") GodotMethod!(void, Vector3) setLinearVelocity;
		@GodotName("set_mass") GodotMethod!(void, double) setMass;
		@GodotName("set_max_contacts_reported") GodotMethod!(void, long) setMaxContactsReported;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("set_physics_material_override") GodotMethod!(void, PhysicsMaterial) setPhysicsMaterialOverride;
		@GodotName("set_sleeping") GodotMethod!(void, bool) setSleeping;
		@GodotName("set_use_continuous_collision_detection") GodotMethod!(void, bool) setUseContinuousCollisionDetection;
		@GodotName("set_use_custom_integrator") GodotMethod!(void, bool) setUseCustomIntegrator;
		@GodotName("set_weight") GodotMethod!(void, double) setWeight;
	}
	/// 
	pragma(inline, true) bool opEquals(in RigidBody other) const
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
	/// Construct a new instance of RigidBody.
	/// Note: use `memnew!RigidBody` instead.
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
		Rigid body mode. This is the "natural" state of a rigid body. It is affected by forces, and can move, rotate, and be affected by user code.
		*/
		modeRigid = 0,
		/**
		Static mode. The body behaves like a $(D StaticBody), and can only move by user code.
		*/
		modeStatic = 1,
		/**
		Character body mode. This behaves like a rigid body, but can not rotate.
		*/
		modeCharacter = 2,
		/**
		Kinematic body mode. The body behaves like a $(D KinematicBody), and can only move by user code.
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
	/**
	
	*/
	void _bodyEnterTree(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_body_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _bodyExitTree(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_body_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _directStateChanged(GodotObject arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_direct_state_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called during physics processing, allowing you to read and safely modify the simulation state for the object. By default, it works in addition to the usual physics behavior, but the $(D customIntegrator) property allows you to disable the default behavior and do fully custom force integration for a body.
	*/
	void _integrateForces(PhysicsDirectBodyState state)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(state);
		String _GODOT_method_name = String("_integrate_forces");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _reloadPhysicsCharacteristics()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_reload_physics_characteristics");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a constant directional force (i.e. acceleration) without affecting rotation.
	This is equivalent to `add_force(force, Vector3(0,0,0))`.
	*/
	void addCentralForce(in Vector3 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCentralForce, _godot_object, force);
	}
	/**
	Adds a constant directional force (i.e. acceleration).
	The position uses the rotation of the global coordinate system, but is centered at the object's origin.
	*/
	void addForce(in Vector3 force, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addForce, _godot_object, force, position);
	}
	/**
	Adds a constant rotational force (i.e. a motor) without affecting position.
	*/
	void addTorque(in Vector3 torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTorque, _godot_object, torque);
	}
	/**
	Applies a directional impulse without affecting rotation.
	This is equivalent to `apply_impulse(Vector3(0,0,0), impulse)`.
	*/
	void applyCentralImpulse(in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyCentralImpulse, _godot_object, impulse);
	}
	/**
	Applies a positioned impulse to the body. An impulse is time independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason it should only be used when simulating one-time impacts. The position uses the rotation of the global coordinate system, but is centered at the object's origin.
	*/
	void applyImpulse(in Vector3 position, in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyImpulse, _godot_object, position, impulse);
	}
	/**
	Applies a torque impulse which will be affected by the body mass and shape. This will rotate the body around the `impulse` vector passed.
	*/
	void applyTorqueImpulse(in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyTorqueImpulse, _godot_object, impulse);
	}
	/**
	
	*/
	double getAngularDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAngularDamp, _godot_object);
	}
	/**
	
	*/
	Vector3 getAngularVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getAngularVelocity, _godot_object);
	}
	/**
	Returns `true` if the specified linear or rotational axis is locked.
	*/
	bool getAxisLock(in long axis) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAxisLock, _godot_object, axis);
	}
	/**
	
	*/
	double getBounce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBounce, _godot_object);
	}
	/**
	Returns a list of the bodies colliding with this one. Requires $(D contactMonitor) to be set to `true` and $(D contactsReported) to be set high enough to detect all the collisions.
	$(B Note:) The result of this test is not immediate after moving objects. For performance, list of collisions is updated once per frame and before the physics step. Consider using signals instead.
	*/
	Array getCollidingBodies() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getCollidingBodies, _godot_object);
	}
	/**
	
	*/
	double getFriction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFriction, _godot_object);
	}
	/**
	
	*/
	double getGravityScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGravityScale, _godot_object);
	}
	/**
	
	*/
	double getLinearDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLinearDamp, _godot_object);
	}
	/**
	
	*/
	Vector3 getLinearVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getLinearVelocity, _godot_object);
	}
	/**
	
	*/
	double getMass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMass, _godot_object);
	}
	/**
	
	*/
	long getMaxContactsReported() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxContactsReported, _godot_object);
	}
	/**
	
	*/
	RigidBody.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RigidBody.Mode)(GDNativeClassBinding.getMode, _godot_object);
	}
	/**
	
	*/
	Ref!PhysicsMaterial getPhysicsMaterialOverride() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsMaterial)(GDNativeClassBinding.getPhysicsMaterialOverride, _godot_object);
	}
	/**
	
	*/
	double getWeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getWeight, _godot_object);
	}
	/**
	
	*/
	bool isAbleToSleep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAbleToSleep, _godot_object);
	}
	/**
	
	*/
	bool isContactMonitorEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isContactMonitorEnabled, _godot_object);
	}
	/**
	
	*/
	bool isSleeping() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSleeping, _godot_object);
	}
	/**
	
	*/
	bool isUsingContinuousCollisionDetection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingContinuousCollisionDetection, _godot_object);
	}
	/**
	
	*/
	bool isUsingCustomIntegrator()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingCustomIntegrator, _godot_object);
	}
	/**
	
	*/
	void setAngularDamp(in double angular_damp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAngularDamp, _godot_object, angular_damp);
	}
	/**
	
	*/
	void setAngularVelocity(in Vector3 angular_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAngularVelocity, _godot_object, angular_velocity);
	}
	/**
	Locks the specified linear or rotational axis.
	*/
	void setAxisLock(in long axis, in bool lock)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAxisLock, _godot_object, axis, lock);
	}
	/**
	Sets an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	*/
	void setAxisVelocity(in Vector3 axis_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAxisVelocity, _godot_object, axis_velocity);
	}
	/**
	
	*/
	void setBounce(in double bounce)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBounce, _godot_object, bounce);
	}
	/**
	
	*/
	void setCanSleep(in bool able_to_sleep)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCanSleep, _godot_object, able_to_sleep);
	}
	/**
	
	*/
	void setContactMonitor(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setContactMonitor, _godot_object, enabled);
	}
	/**
	
	*/
	void setFriction(in double friction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFriction, _godot_object, friction);
	}
	/**
	
	*/
	void setGravityScale(in double gravity_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGravityScale, _godot_object, gravity_scale);
	}
	/**
	
	*/
	void setLinearDamp(in double linear_damp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLinearDamp, _godot_object, linear_damp);
	}
	/**
	
	*/
	void setLinearVelocity(in Vector3 linear_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLinearVelocity, _godot_object, linear_velocity);
	}
	/**
	
	*/
	void setMass(in double mass)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMass, _godot_object, mass);
	}
	/**
	
	*/
	void setMaxContactsReported(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxContactsReported, _godot_object, amount);
	}
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	void setPhysicsMaterialOverride(PhysicsMaterial physics_material_override)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicsMaterialOverride, _godot_object, physics_material_override);
	}
	/**
	
	*/
	void setSleeping(in bool sleeping)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSleeping, _godot_object, sleeping);
	}
	/**
	
	*/
	void setUseContinuousCollisionDetection(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseContinuousCollisionDetection, _godot_object, enable);
	}
	/**
	
	*/
	void setUseCustomIntegrator(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseCustomIntegrator, _godot_object, enable);
	}
	/**
	
	*/
	void setWeight(in double weight)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWeight, _godot_object, weight);
	}
	/**
	Damps RigidBody's rotational forces.
	See $(D ProjectSettings.physics/3d/defaultAngularDamp) for more details about damping.
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
	Lock the body's rotation in the X axis.
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
	Lock the body's rotation in the Y axis.
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
	Lock the body's rotation in the Z axis.
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
	Lock the body's movement in the X axis.
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
	Lock the body's movement in the Y axis.
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
	Lock the body's movement in the Z axis.
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
	The body's bounciness. Values range from `0` (no bounce) to `1` (full bounciness).
	Deprecated, use $(D PhysicsMaterial.bounce) instead via $(D physicsMaterialOverride).
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
	If `true`, the body can enter sleep mode when there is no movement. See $(D sleeping).
	$(B Note:) A RigidBody3D will never enter sleep mode automatically if its $(D mode) is $(D constant MODE_CHARACTER). It can still be put to sleep manually by setting its $(D sleeping) property to `true`.
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
	If `true`, the RigidBody will emit signals when it collides with another RigidBody. See also $(D contactsReported).
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
	The maximum number of contacts that will be recorded. Requires $(D contactMonitor) to be set to `true`.
	$(B Note:) The number of contacts is different from the number of collisions. Collisions between parallel edges will result in two contacts (one at each end), and collisions between parallel faces will result in four contacts (one at each corner).
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
	If `true`, continuous collision detection is used.
	Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided. Continuous collision detection is more precise, and misses fewer impacts by small, fast-moving objects. Not using continuous collision detection is faster to compute, but can miss small, fast-moving objects.
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
	If `true`, internal force integration will be disabled (like gravity or air friction) for this body. Other than collision response, the body will only move as determined by the $(D _integrateForces) function, if defined.
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
	The body's friction, from 0 (frictionless) to 1 (max friction).
	Deprecated, use $(D PhysicsMaterial.friction) instead via $(D physicsMaterialOverride).
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
	This is multiplied by the global 3D gravity setting found in $(B Project &gt; Project Settings &gt; Physics &gt; 3d) to produce RigidBody's gravity. For example, a value of 1 will be normal gravity, 2 will apply double gravity, and 0.5 will apply half gravity to this object.
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
	The body's linear damp. Cannot be less than -1.0. If this value is different from -1.0, any linear damp derived from the world or areas will be overridden.
	See $(D ProjectSettings.physics/3d/defaultLinearDamp) for more details about damping.
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
	The body's linear velocity. Can be used sporadically, but $(B don't set this every frame), because physics may run in another thread and runs at a different granularity. Use $(D _integrateForces) as your process loop for precise control of the body state.
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
	The body's mass.
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
	The body mode. See $(D mode) for possible values.
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
	The physics material override for the body.
	If a material is assigned to this property, it will be used instead of any other physics material, such as an inherited one.
	*/
	@property PhysicsMaterial physicsMaterialOverride()
	{
		return getPhysicsMaterialOverride();
	}
	/// ditto
	@property void physicsMaterialOverride(PhysicsMaterial v)
	{
		setPhysicsMaterialOverride(v);
	}
	/**
	If `true`, the body will not move and will not calculate forces until woken up by another body through, for example, a collision, or by using the $(D applyImpulse) or $(D addForce) methods.
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
	The body's weight based on its mass and the global 3D gravity. Global values are set in $(B Project &gt; Project Settings &gt; Physics &gt; 3d).
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
}
