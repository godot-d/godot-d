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
import godot.physicsmaterial;
import godot.collisionobject;
import godot.spatial;
import godot.node;
/**
Physics Body whose position is determined through physics simulation in 3D space.

This is the node that implements full 3D physics. This means that you do not control a RigidBody directly. Instead you can apply forces to it (gravity, impulses, etc.), and the physics simulation will calculate the resulting movement, collision, bouncing, rotating, etc.
A RigidBody has 4 behavior $(D mode)s: Rigid, Static, Character, and Kinematic.
$(B Note:) Don't change a RigidBody's position every frame or very often. Sporadic changes work fine, but physics runs at a different granularity (fixed hz) than usual rendering (process callback) and maybe even in a separate thread, so changing this from a process loop will yield strange behavior. If you need to directly affect the body's state, use $(D _integrateForces), which allows you to directly access the physics state.
If you need to override the default physics behavior, you can write a custom force integration. See $(D customIntegrator).
*/
@GodotBaseClass struct RigidBody
{
	enum string _GODOT_internal_name = "RigidBody";
public:
@nogc nothrow:
	union { godot_object _godot_object; PhysicsBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_integrate_forces") GodotMethod!(void, PhysicsDirectBodyState) _integrateForces;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("get_mode") GodotMethod!(RigidBody.Mode) getMode;
		@GodotName("set_mass") GodotMethod!(void, double) setMass;
		@GodotName("get_mass") GodotMethod!(double) getMass;
		@GodotName("set_weight") GodotMethod!(void, double) setWeight;
		@GodotName("get_weight") GodotMethod!(double) getWeight;
		@GodotName("set_friction") GodotMethod!(void, double) setFriction;
		@GodotName("get_friction") GodotMethod!(double) getFriction;
		@GodotName("set_bounce") GodotMethod!(void, double) setBounce;
		@GodotName("get_bounce") GodotMethod!(double) getBounce;
		@GodotName("set_physics_material_override") GodotMethod!(void, PhysicsMaterial) setPhysicsMaterialOverride;
		@GodotName("get_physics_material_override") GodotMethod!(PhysicsMaterial) getPhysicsMaterialOverride;
		@GodotName("_reload_physics_characteristics") GodotMethod!(void) _reloadPhysicsCharacteristics;
		@GodotName("set_linear_velocity") GodotMethod!(void, Vector3) setLinearVelocity;
		@GodotName("get_linear_velocity") GodotMethod!(Vector3) getLinearVelocity;
		@GodotName("set_angular_velocity") GodotMethod!(void, Vector3) setAngularVelocity;
		@GodotName("get_angular_velocity") GodotMethod!(Vector3) getAngularVelocity;
		@GodotName("set_gravity_scale") GodotMethod!(void, double) setGravityScale;
		@GodotName("get_gravity_scale") GodotMethod!(double) getGravityScale;
		@GodotName("set_linear_damp") GodotMethod!(void, double) setLinearDamp;
		@GodotName("get_linear_damp") GodotMethod!(double) getLinearDamp;
		@GodotName("set_angular_damp") GodotMethod!(void, double) setAngularDamp;
		@GodotName("get_angular_damp") GodotMethod!(double) getAngularDamp;
		@GodotName("set_max_contacts_reported") GodotMethod!(void, long) setMaxContactsReported;
		@GodotName("get_max_contacts_reported") GodotMethod!(long) getMaxContactsReported;
		@GodotName("set_use_custom_integrator") GodotMethod!(void, bool) setUseCustomIntegrator;
		@GodotName("is_using_custom_integrator") GodotMethod!(bool) isUsingCustomIntegrator;
		@GodotName("set_contact_monitor") GodotMethod!(void, bool) setContactMonitor;
		@GodotName("is_contact_monitor_enabled") GodotMethod!(bool) isContactMonitorEnabled;
		@GodotName("set_use_continuous_collision_detection") GodotMethod!(void, bool) setUseContinuousCollisionDetection;
		@GodotName("is_using_continuous_collision_detection") GodotMethod!(bool) isUsingContinuousCollisionDetection;
		@GodotName("set_axis_velocity") GodotMethod!(void, Vector3) setAxisVelocity;
		@GodotName("add_central_force") GodotMethod!(void, Vector3) addCentralForce;
		@GodotName("add_force") GodotMethod!(void, Vector3, Vector3) addForce;
		@GodotName("add_torque") GodotMethod!(void, Vector3) addTorque;
		@GodotName("apply_central_impulse") GodotMethod!(void, Vector3) applyCentralImpulse;
		@GodotName("apply_impulse") GodotMethod!(void, Vector3, Vector3) applyImpulse;
		@GodotName("apply_torque_impulse") GodotMethod!(void, Vector3) applyTorqueImpulse;
		@GodotName("set_sleeping") GodotMethod!(void, bool) setSleeping;
		@GodotName("is_sleeping") GodotMethod!(bool) isSleeping;
		@GodotName("set_can_sleep") GodotMethod!(void, bool) setCanSleep;
		@GodotName("is_able_to_sleep") GodotMethod!(bool) isAbleToSleep;
		@GodotName("_direct_state_changed") GodotMethod!(void, GodotObject) _directStateChanged;
		@GodotName("_body_enter_tree") GodotMethod!(void, long) _bodyEnterTree;
		@GodotName("_body_exit_tree") GodotMethod!(void, long) _bodyExitTree;
		@GodotName("set_axis_lock") GodotMethod!(void, long, bool) setAxisLock;
		@GodotName("get_axis_lock") GodotMethod!(bool, long) getAxisLock;
		@GodotName("get_colliding_bodies") GodotMethod!(Array) getCollidingBodies;
	}
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
	Called during physics processing, allowing you to read and safely modify the simulation state for the object. By default it works in addition to the usual physics behavior, but $(D setUseCustomIntegrator) allows you to disable the default behavior and do fully custom force integration for a body.
	*/
	void _integrateForces(PhysicsDirectBodyState state)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(state);
		String _GODOT_method_name = String("_integrate_forces");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	RigidBody.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RigidBody.Mode)(_classBinding.getMode, _godot_object);
	}
	/**
	
	*/
	void setMass(in double mass)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMass, _godot_object, mass);
	}
	/**
	
	*/
	double getMass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMass, _godot_object);
	}
	/**
	
	*/
	void setWeight(in double weight)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWeight, _godot_object, weight);
	}
	/**
	
	*/
	double getWeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getWeight, _godot_object);
	}
	/**
	
	*/
	void setFriction(in double friction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFriction, _godot_object, friction);
	}
	/**
	
	*/
	double getFriction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFriction, _godot_object);
	}
	/**
	
	*/
	void setBounce(in double bounce)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBounce, _godot_object, bounce);
	}
	/**
	
	*/
	double getBounce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBounce, _godot_object);
	}
	/**
	
	*/
	void setPhysicsMaterialOverride(PhysicsMaterial physics_material_override)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPhysicsMaterialOverride, _godot_object, physics_material_override);
	}
	/**
	
	*/
	Ref!PhysicsMaterial getPhysicsMaterialOverride() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsMaterial)(_classBinding.getPhysicsMaterialOverride, _godot_object);
	}
	/**
	
	*/
	void _reloadPhysicsCharacteristics()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_reload_physics_characteristics");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setLinearVelocity(in Vector3 linear_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLinearVelocity, _godot_object, linear_velocity);
	}
	/**
	
	*/
	Vector3 getLinearVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getLinearVelocity, _godot_object);
	}
	/**
	
	*/
	void setAngularVelocity(in Vector3 angular_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAngularVelocity, _godot_object, angular_velocity);
	}
	/**
	
	*/
	Vector3 getAngularVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getAngularVelocity, _godot_object);
	}
	/**
	
	*/
	void setGravityScale(in double gravity_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGravityScale, _godot_object, gravity_scale);
	}
	/**
	
	*/
	double getGravityScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGravityScale, _godot_object);
	}
	/**
	
	*/
	void setLinearDamp(in double linear_damp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLinearDamp, _godot_object, linear_damp);
	}
	/**
	
	*/
	double getLinearDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLinearDamp, _godot_object);
	}
	/**
	
	*/
	void setAngularDamp(in double angular_damp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAngularDamp, _godot_object, angular_damp);
	}
	/**
	
	*/
	double getAngularDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAngularDamp, _godot_object);
	}
	/**
	
	*/
	void setMaxContactsReported(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxContactsReported, _godot_object, amount);
	}
	/**
	
	*/
	long getMaxContactsReported() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMaxContactsReported, _godot_object);
	}
	/**
	
	*/
	void setUseCustomIntegrator(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseCustomIntegrator, _godot_object, enable);
	}
	/**
	
	*/
	bool isUsingCustomIntegrator()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingCustomIntegrator, _godot_object);
	}
	/**
	
	*/
	void setContactMonitor(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setContactMonitor, _godot_object, enabled);
	}
	/**
	
	*/
	bool isContactMonitorEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isContactMonitorEnabled, _godot_object);
	}
	/**
	
	*/
	void setUseContinuousCollisionDetection(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseContinuousCollisionDetection, _godot_object, enable);
	}
	/**
	
	*/
	bool isUsingContinuousCollisionDetection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingContinuousCollisionDetection, _godot_object);
	}
	/**
	Sets an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	*/
	void setAxisVelocity(in Vector3 axis_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAxisVelocity, _godot_object, axis_velocity);
	}
	/**
	Adds a constant directional force without affecting rotation.
	This is equivalent to `add_force(force, Vector3(0,0,0))`.
	*/
	void addCentralForce(in Vector3 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCentralForce, _godot_object, force);
	}
	/**
	Adds a constant force (i.e. acceleration).
	*/
	void addForce(in Vector3 force, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addForce, _godot_object, force, position);
	}
	/**
	Adds a constant rotational force (i.e. a motor) without affecting position.
	*/
	void addTorque(in Vector3 torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addTorque, _godot_object, torque);
	}
	/**
	Applies a directional impulse without affecting rotation.
	This is equivalent to `apply_impulse(Vector3(0,0,0), impulse)`.
	*/
	void applyCentralImpulse(in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.applyCentralImpulse, _godot_object, impulse);
	}
	/**
	Applies a positioned impulse which will be affected by the body mass and shape. This is the equivalent of hitting a billiard ball with a cue: a force that is applied once, and only once. Both the impulse and the position are in global coordinates, and the position is relative to the object's origin.
	*/
	void applyImpulse(in Vector3 position, in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.applyImpulse, _godot_object, position, impulse);
	}
	/**
	Applies a torque impulse which will be affected by the body mass and shape. This will rotate the body around the passed in vector.
	*/
	void applyTorqueImpulse(in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.applyTorqueImpulse, _godot_object, impulse);
	}
	/**
	
	*/
	void setSleeping(in bool sleeping)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSleeping, _godot_object, sleeping);
	}
	/**
	
	*/
	bool isSleeping() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSleeping, _godot_object);
	}
	/**
	
	*/
	void setCanSleep(in bool able_to_sleep)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCanSleep, _godot_object, able_to_sleep);
	}
	/**
	
	*/
	bool isAbleToSleep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAbleToSleep, _godot_object);
	}
	/**
	
	*/
	void _directStateChanged(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_direct_state_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _bodyEnterTree(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_body_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _bodyExitTree(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_body_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setAxisLock(in long axis, in bool lock)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAxisLock, _godot_object, axis, lock);
	}
	/**
	
	*/
	bool getAxisLock(in long axis) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getAxisLock, _godot_object, axis);
	}
	/**
	Return a list of the bodies colliding with this one. By default, number of max contacts reported is at 0 , see $(D setMaxContactsReported) to increase it.  Note that the result of this test is not immediate after moving objects. For performance, list of collisions is updated once per frame and before the physics step. Consider using signals instead.
	*/
	Array getCollidingBodies() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getCollidingBodies, _godot_object);
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
	The body's weight based on its mass and the global 3D gravity. Global values are set in "Project &gt; Project Settings &gt; Physics &gt; 3d".
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
	The body's friction, from 0 (frictionless) to 1 (max friction).
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
	If `true` the RigidBody will emit signals when it collides with another RigidBody.
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
	If `true` the body is sleeping and will not calculate forces until woken up by a collision or the `apply_impulse` method.
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
	Lock the body's movement in the x-axis.
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
	Lock the body's movement in the x-axis.
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
	Lock the body's movement in the x-axis.
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
	Lock the body's rotation in the x-axis.
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
	Lock the body's rotation in the y-axis.
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
	Lock the body's rotation in the z-axis.
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
	The body's linear velocity. Can be used sporadically, but $(B DON'T SET THIS IN EVERY FRAME), because physics may run in another thread and runs at a different granularity. Use $(D _integrateForces) as your process loop for precise control of the body state.
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
	The body's linear damp. Default value: -1, cannot be less than -1. If this value is different from -1, any linear damp derived from the world or areas will be overridden.
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
