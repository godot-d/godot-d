/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicsdirectbodystate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.physicsdirectspacestate;
/**

*/
@GodotBaseClass struct PhysicsDirectBodyState
{
	enum string _GODOT_internal_name = "PhysicsDirectBodyState";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_total_gravity") GodotMethod!(Vector3) getTotalGravity;
		@GodotName("get_total_linear_damp") GodotMethod!(double) getTotalLinearDamp;
		@GodotName("get_total_angular_damp") GodotMethod!(double) getTotalAngularDamp;
		@GodotName("get_center_of_mass") GodotMethod!(Vector3) getCenterOfMass;
		@GodotName("get_principal_inertia_axes") GodotMethod!(Basis) getPrincipalInertiaAxes;
		@GodotName("get_inverse_mass") GodotMethod!(double) getInverseMass;
		@GodotName("get_inverse_inertia") GodotMethod!(Vector3) getInverseInertia;
		@GodotName("set_linear_velocity") GodotMethod!(void, Vector3) setLinearVelocity;
		@GodotName("get_linear_velocity") GodotMethod!(Vector3) getLinearVelocity;
		@GodotName("set_angular_velocity") GodotMethod!(void, Vector3) setAngularVelocity;
		@GodotName("get_angular_velocity") GodotMethod!(Vector3) getAngularVelocity;
		@GodotName("set_transform") GodotMethod!(void, Transform) setTransform;
		@GodotName("get_transform") GodotMethod!(Transform) getTransform;
		@GodotName("add_central_force") GodotMethod!(void, Vector3) addCentralForce;
		@GodotName("add_force") GodotMethod!(void, Vector3, Vector3) addForce;
		@GodotName("add_torque") GodotMethod!(void, Vector3) addTorque;
		@GodotName("apply_central_impulse") GodotMethod!(void, Vector3) applyCentralImpulse;
		@GodotName("apply_impulse") GodotMethod!(void, Vector3, Vector3) applyImpulse;
		@GodotName("apply_torque_impulse") GodotMethod!(void, Vector3) applyTorqueImpulse;
		@GodotName("set_sleep_state") GodotMethod!(void, bool) setSleepState;
		@GodotName("is_sleeping") GodotMethod!(bool) isSleeping;
		@GodotName("get_contact_count") GodotMethod!(long) getContactCount;
		@GodotName("get_contact_local_position") GodotMethod!(Vector3, long) getContactLocalPosition;
		@GodotName("get_contact_local_normal") GodotMethod!(Vector3, long) getContactLocalNormal;
		@GodotName("get_contact_impulse") GodotMethod!(double, long) getContactImpulse;
		@GodotName("get_contact_local_shape") GodotMethod!(long, long) getContactLocalShape;
		@GodotName("get_contact_collider") GodotMethod!(RID, long) getContactCollider;
		@GodotName("get_contact_collider_position") GodotMethod!(Vector3, long) getContactColliderPosition;
		@GodotName("get_contact_collider_id") GodotMethod!(long, long) getContactColliderId;
		@GodotName("get_contact_collider_object") GodotMethod!(GodotObject, long) getContactColliderObject;
		@GodotName("get_contact_collider_shape") GodotMethod!(long, long) getContactColliderShape;
		@GodotName("get_contact_collider_velocity_at_position") GodotMethod!(Vector3, long) getContactColliderVelocityAtPosition;
		@GodotName("get_step") GodotMethod!(double) getStep;
		@GodotName("integrate_forces") GodotMethod!(void) integrateForces;
		@GodotName("get_space_state") GodotMethod!(PhysicsDirectSpaceState) getSpaceState;
	}
	bool opEquals(in PhysicsDirectBodyState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsDirectBodyState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PhysicsDirectBodyState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsDirectBodyState");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsDirectBodyState)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Vector3 getTotalGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getTotalGravity, _godot_object);
	}
	/**
	
	*/
	double getTotalLinearDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTotalLinearDamp, _godot_object);
	}
	/**
	
	*/
	double getTotalAngularDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTotalAngularDamp, _godot_object);
	}
	/**
	
	*/
	Vector3 getCenterOfMass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getCenterOfMass, _godot_object);
	}
	/**
	
	*/
	Basis getPrincipalInertiaAxes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Basis)(_classBinding.getPrincipalInertiaAxes, _godot_object);
	}
	/**
	
	*/
	double getInverseMass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getInverseMass, _godot_object);
	}
	/**
	
	*/
	Vector3 getInverseInertia() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getInverseInertia, _godot_object);
	}
	/**
	
	*/
	void setLinearVelocity(in Vector3 velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLinearVelocity, _godot_object, velocity);
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
	void setAngularVelocity(in Vector3 velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAngularVelocity, _godot_object, velocity);
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
	void setTransform(in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTransform, _godot_object, transform);
	}
	/**
	
	*/
	Transform getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getTransform, _godot_object);
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
	Applies a single directional impulse without affecting rotation.
	This is equivalent to ``apply_impulse(Vector3(0,0,0), impulse)``.
	*/
	void applyCentralImpulse(in Vector3 j)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.applyCentralImpulse, _godot_object, j);
	}
	/**
	Apply a positioned impulse (which will be affected by the body mass and shape). This is the equivalent of hitting a billiard ball with a cue: a force that is applied once, and only once. Both the impulse and the position are in global coordinates, and the position is relative to the object's origin.
	*/
	void applyImpulse(in Vector3 position, in Vector3 j)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.applyImpulse, _godot_object, position, j);
	}
	/**
	Apply a torque impulse (which will be affected by the body mass and shape). This will rotate the body around the passed in vector.
	*/
	void applyTorqueImpulse(in Vector3 j)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.applyTorqueImpulse, _godot_object, j);
	}
	/**
	
	*/
	void setSleepState(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSleepState, _godot_object, enabled);
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
	long getContactCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getContactCount, _godot_object);
	}
	/**
	
	*/
	Vector3 getContactLocalPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getContactLocalPosition, _godot_object, contact_idx);
	}
	/**
	
	*/
	Vector3 getContactLocalNormal(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getContactLocalNormal, _godot_object, contact_idx);
	}
	/**
	Impulse created by the contact. Only implemented for Bullet physics.
	*/
	double getContactImpulse(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getContactImpulse, _godot_object, contact_idx);
	}
	/**
	
	*/
	long getContactLocalShape(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getContactLocalShape, _godot_object, contact_idx);
	}
	/**
	
	*/
	RID getContactCollider(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getContactCollider, _godot_object, contact_idx);
	}
	/**
	
	*/
	Vector3 getContactColliderPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getContactColliderPosition, _godot_object, contact_idx);
	}
	/**
	
	*/
	long getContactColliderId(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getContactColliderId, _godot_object, contact_idx);
	}
	/**
	
	*/
	GodotObject getContactColliderObject(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(_classBinding.getContactColliderObject, _godot_object, contact_idx);
	}
	/**
	
	*/
	long getContactColliderShape(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getContactColliderShape, _godot_object, contact_idx);
	}
	/**
	
	*/
	Vector3 getContactColliderVelocityAtPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getContactColliderVelocityAtPosition, _godot_object, contact_idx);
	}
	/**
	
	*/
	double getStep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getStep, _godot_object);
	}
	/**
	
	*/
	void integrateForces()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.integrateForces, _godot_object);
	}
	/**
	
	*/
	PhysicsDirectSpaceState getSpaceState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsDirectSpaceState)(_classBinding.getSpaceState, _godot_object);
	}
	/**
	The timestep (delta) used for the simulation.
	*/
	@property double step()
	{
		return getStep();
	}
	/**
	The inverse of the mass of the body.
	*/
	@property double inverseMass()
	{
		return getInverseMass();
	}
	/**
	The rate at which the body stops rotating, if there are not any other forces moving it.
	*/
	@property double totalAngularDamp()
	{
		return getTotalAngularDamp();
	}
	/**
	The rate at which the body stops moving, if there are not any other forces moving it.
	*/
	@property double totalLinearDamp()
	{
		return getTotalLinearDamp();
	}
	/**
	The inverse of the inertia of the body.
	*/
	@property Vector3 inverseInertia()
	{
		return getInverseInertia();
	}
	/**
	The total gravity vector being currently applied to this body.
	*/
	@property Vector3 totalGravity()
	{
		return getTotalGravity();
	}
	/**
	
	*/
	@property Vector3 centerOfMass()
	{
		return getCenterOfMass();
	}
	/**
	
	*/
	@property Basis principalInertiaAxes()
	{
		return getPrincipalInertiaAxes();
	}
	/**
	The angular velocity of the body.
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
	The linear velocity of the body.
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
	`true` if this body is currently sleeping (not active).
	*/
	@property bool sleeping()
	{
		return isSleeping();
	}
	/// ditto
	@property void sleeping(bool v)
	{
		setSleepState(v);
	}
	/**
	The transformation matrix of the body.
	*/
	@property Transform transform()
	{
		return getTransform();
	}
	/// ditto
	@property void transform(Transform v)
	{
		setTransform(v);
	}
}
