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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.physicsbody2d;
import godot.collisionobject2d;
import godot.node2d;
import godot.canvasitem;
import godot.node;
import godot.physics2ddirectbodystate;
import godot.physicsmaterial;
import godot.physics2dtestmotionresult;
/**
A body that is controlled by the 2D physics engine.

This node implements simulated 2D physics. You do not control a RigidBody2D directly. Instead you apply forces to it (gravity, impulses, etc.) and the physics simulation calculates the resulting movement based on its mass, friction, and other physical properties.
A RigidBody2D has 4 behavior $(D mode)s: Rigid, Static, Character, and Kinematic.
$(B Note:) You should not change a RigidBody2D's `position` or `linear_velocity` every frame or even very often. If you need to directly affect the body's state, use $(D _integrateForces), which allows you to directly access the physics state.
Please also keep in mind that physics bodies manage their own transform which overwrites the ones you set. So any direct or indirect transformation (including scaling of the node or its parent) will be visible in the editor only, and immediately reset at runtime.
If you need to override the default physics behavior or add a transformation at runtime, you can write a custom force integration. See $(D customIntegrator).
The center of mass is always located at the node's origin without taking into account the $(D CollisionShape2D) centroid offsets.
*/
@GodotBaseClass struct RigidBody2D
{
	package(godot) enum string _GODOT_internal_name = "RigidBody2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PhysicsBody2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_body_enter_tree") GodotMethod!(void, long) _bodyEnterTree;
		@GodotName("_body_exit_tree") GodotMethod!(void, long) _bodyExitTree;
		@GodotName("_direct_state_changed") GodotMethod!(void, GodotObject) _directStateChanged;
		@GodotName("_integrate_forces") GodotMethod!(void, Physics2DDirectBodyState) _integrateForces;
		@GodotName("_reload_physics_characteristics") GodotMethod!(void) _reloadPhysicsCharacteristics;
		@GodotName("add_central_force") GodotMethod!(void, Vector2) addCentralForce;
		@GodotName("add_force") GodotMethod!(void, Vector2, Vector2) addForce;
		@GodotName("add_torque") GodotMethod!(void, double) addTorque;
		@GodotName("apply_central_impulse") GodotMethod!(void, Vector2) applyCentralImpulse;
		@GodotName("apply_impulse") GodotMethod!(void, Vector2, Vector2) applyImpulse;
		@GodotName("apply_torque_impulse") GodotMethod!(void, double) applyTorqueImpulse;
		@GodotName("get_angular_damp") GodotMethod!(double) getAngularDamp;
		@GodotName("get_angular_velocity") GodotMethod!(double) getAngularVelocity;
		@GodotName("get_applied_force") GodotMethod!(Vector2) getAppliedForce;
		@GodotName("get_applied_torque") GodotMethod!(double) getAppliedTorque;
		@GodotName("get_bounce") GodotMethod!(double) getBounce;
		@GodotName("get_colliding_bodies") GodotMethod!(Array) getCollidingBodies;
		@GodotName("get_continuous_collision_detection_mode") GodotMethod!(RigidBody2D.CCDMode) getContinuousCollisionDetectionMode;
		@GodotName("get_friction") GodotMethod!(double) getFriction;
		@GodotName("get_gravity_scale") GodotMethod!(double) getGravityScale;
		@GodotName("get_inertia") GodotMethod!(double) getInertia;
		@GodotName("get_linear_damp") GodotMethod!(double) getLinearDamp;
		@GodotName("get_linear_velocity") GodotMethod!(Vector2) getLinearVelocity;
		@GodotName("get_mass") GodotMethod!(double) getMass;
		@GodotName("get_max_contacts_reported") GodotMethod!(long) getMaxContactsReported;
		@GodotName("get_mode") GodotMethod!(RigidBody2D.Mode) getMode;
		@GodotName("get_physics_material_override") GodotMethod!(PhysicsMaterial) getPhysicsMaterialOverride;
		@GodotName("get_weight") GodotMethod!(double) getWeight;
		@GodotName("is_able_to_sleep") GodotMethod!(bool) isAbleToSleep;
		@GodotName("is_contact_monitor_enabled") GodotMethod!(bool) isContactMonitorEnabled;
		@GodotName("is_sleeping") GodotMethod!(bool) isSleeping;
		@GodotName("is_using_custom_integrator") GodotMethod!(bool) isUsingCustomIntegrator;
		@GodotName("set_angular_damp") GodotMethod!(void, double) setAngularDamp;
		@GodotName("set_angular_velocity") GodotMethod!(void, double) setAngularVelocity;
		@GodotName("set_applied_force") GodotMethod!(void, Vector2) setAppliedForce;
		@GodotName("set_applied_torque") GodotMethod!(void, double) setAppliedTorque;
		@GodotName("set_axis_velocity") GodotMethod!(void, Vector2) setAxisVelocity;
		@GodotName("set_bounce") GodotMethod!(void, double) setBounce;
		@GodotName("set_can_sleep") GodotMethod!(void, bool) setCanSleep;
		@GodotName("set_contact_monitor") GodotMethod!(void, bool) setContactMonitor;
		@GodotName("set_continuous_collision_detection_mode") GodotMethod!(void, long) setContinuousCollisionDetectionMode;
		@GodotName("set_friction") GodotMethod!(void, double) setFriction;
		@GodotName("set_gravity_scale") GodotMethod!(void, double) setGravityScale;
		@GodotName("set_inertia") GodotMethod!(void, double) setInertia;
		@GodotName("set_linear_damp") GodotMethod!(void, double) setLinearDamp;
		@GodotName("set_linear_velocity") GodotMethod!(void, Vector2) setLinearVelocity;
		@GodotName("set_mass") GodotMethod!(void, double) setMass;
		@GodotName("set_max_contacts_reported") GodotMethod!(void, long) setMaxContactsReported;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("set_physics_material_override") GodotMethod!(void, PhysicsMaterial) setPhysicsMaterialOverride;
		@GodotName("set_sleeping") GodotMethod!(void, bool) setSleeping;
		@GodotName("set_use_custom_integrator") GodotMethod!(void, bool) setUseCustomIntegrator;
		@GodotName("set_weight") GodotMethod!(void, double) setWeight;
		@GodotName("test_motion") GodotMethod!(bool, Vector2, bool, double, Physics2DTestMotionResult) testMotion;
	}
	/// 
	pragma(inline, true) bool opEquals(in RigidBody2D other) const
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
	/// Construct a new instance of RigidBody2D.
	/// Note: use `memnew!RigidBody2D` instead.
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
		Character mode. Similar to $(D constant MODE_RIGID), but the body can not rotate.
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
		ccdModeDisabled = 0,
		modeRigid = 0,
		modeStatic = 1,
		ccdModeCastRay = 1,
		ccdModeCastShape = 2,
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
	Allows you to read and safely modify the simulation state for the object. Use this instead of $(D Node._physicsProcess) if you need to directly change the body's `position` or other physics properties. By default, it works in addition to the usual physics behavior, but $(D customIntegrator) allows you to disable the default behavior and write custom force integration for a body.
	*/
	void _integrateForces(Physics2DDirectBodyState state)
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
	Adds a constant directional force without affecting rotation.
	*/
	void addCentralForce(in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCentralForce, _godot_object, force);
	}
	/**
	Adds a positioned force to the body. Both the force and the offset from the body origin are in global coordinates.
	*/
	void addForce(in Vector2 offset, in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addForce, _godot_object, offset, force);
	}
	/**
	Adds a constant rotational force.
	*/
	void addTorque(in double torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTorque, _godot_object, torque);
	}
	/**
	Applies a directional impulse without affecting rotation.
	*/
	void applyCentralImpulse(in Vector2 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyCentralImpulse, _godot_object, impulse);
	}
	/**
	Applies a positioned impulse to the body. An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason it should only be used when simulating one-time impacts (use the "_force" functions otherwise). The position uses the rotation of the global coordinate system, but is centered at the object's origin.
	*/
	void applyImpulse(in Vector2 offset, in Vector2 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyImpulse, _godot_object, offset, impulse);
	}
	/**
	Applies a rotational impulse to the body.
	*/
	void applyTorqueImpulse(in double torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyTorqueImpulse, _godot_object, torque);
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
	double getAngularVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAngularVelocity, _godot_object);
	}
	/**
	
	*/
	Vector2 getAppliedForce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getAppliedForce, _godot_object);
	}
	/**
	
	*/
	double getAppliedTorque() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAppliedTorque, _godot_object);
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
	RigidBody2D.CCDMode getContinuousCollisionDetectionMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RigidBody2D.CCDMode)(GDNativeClassBinding.getContinuousCollisionDetectionMode, _godot_object);
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
	double getInertia() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getInertia, _godot_object);
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
	Vector2 getLinearVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getLinearVelocity, _godot_object);
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
	RigidBody2D.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RigidBody2D.Mode)(GDNativeClassBinding.getMode, _godot_object);
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
	void setAngularVelocity(in double angular_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAngularVelocity, _godot_object, angular_velocity);
	}
	/**
	
	*/
	void setAppliedForce(in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAppliedForce, _godot_object, force);
	}
	/**
	
	*/
	void setAppliedTorque(in double torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAppliedTorque, _godot_object, torque);
	}
	/**
	Sets the body's velocity on the given axis. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	*/
	void setAxisVelocity(in Vector2 axis_velocity)
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
	void setContinuousCollisionDetectionMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setContinuousCollisionDetectionMode, _godot_object, mode);
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
	void setInertia(in double inertia)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInertia, _godot_object, inertia);
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
	void setLinearVelocity(in Vector2 linear_velocity)
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
	Returns `true` if a collision would result from moving in the given vector. `margin` increases the size of the shapes involved in the collision detection, and `result` is an object of type $(D Physics2DTestMotionResult), which contains additional information about the collision (should there be one).
	*/
	bool testMotion(in Vector2 motion, in bool infinite_inertia = true, in double margin = 0.08, Physics2DTestMotionResult result = Physics2DTestMotionResult.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.testMotion, _godot_object, motion, infinite_inertia, margin, result);
	}
	/**
	Damps the body's $(D angularVelocity). If `-1`, the body will use the $(B Default Angular Damp) defined in $(B Project &gt; Project Settings &gt; Physics &gt; 2d).
	See $(D ProjectSettings.physics/2d/defaultAngularDamp) for more details about damping.
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
	$(B Note:) A RigidBody2D will never enter sleep mode automatically if its $(D mode) is $(D constant MODE_CHARACTER). It can still be put to sleep manually by setting its $(D sleeping) property to `true`.
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
	If `true`, the body will emit signals when it collides with another RigidBody2D. See also $(D contactsReported).
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
	$(B Note:) The number of contacts is different from the number of collisions. Collisions between parallel edges will result in two contacts (one at each end).
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
	Continuous collision detection mode.
	Continuous collision detection tries to predict where a moving body will collide instead of moving it and correcting its movement after collision. Continuous collision detection is slower, but more precise and misses fewer collisions with small, fast-moving objects. Raycasting and shapecasting methods are available. See $(D ccdmode) for details.
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
	If `true`, internal force integration is disabled for this body. Aside from collision response, the body will only move as determined by the $(D _integrateForces) function.
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
	The body's friction. Values range from `0` (frictionless) to `1` (maximum friction).
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
	Multiplies the gravity applied to the body. The body's gravity is calculated from the $(B Default Gravity) value in $(B Project &gt; Project Settings &gt; Physics &gt; 2d) and/or any additional gravity vector applied by $(D Area2D)s.
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
	The body's moment of inertia. This is like mass, but for rotation: it determines how much torque it takes to rotate the body. The moment of inertia is usually computed automatically from the mass and the shapes, but this function allows you to set a custom value. Set 0 inertia to return to automatically computing it.
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
	Damps the body's $(D linearVelocity). If `-1`, the body will use the $(B Default Linear Damp) in $(B Project &gt; Project Settings &gt; Physics &gt; 2d).
	See $(D ProjectSettings.physics/2d/defaultLinearDamp) for more details about damping.
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
	The body's mode. See $(D mode) for possible values.
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
	The body's weight based on its mass and the $(B Default Gravity) value in $(B Project &gt; Project Settings &gt; Physics &gt; 2d).
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
