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
	static immutable string _GODOT_internal_name = "PhysicsDirectBodyState";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(Vector3) _GODOT_get_total_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_gravity") = _GODOT_get_total_gravity;
	/**
	
	*/
	Vector3 getTotalGravity() const
	{
		_GODOT_get_total_gravity.bind("PhysicsDirectBodyState", "get_total_gravity");
		return ptrcall!(Vector3)(_GODOT_get_total_gravity, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_total_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_linear_damp") = _GODOT_get_total_linear_damp;
	/**
	
	*/
	double getTotalLinearDamp() const
	{
		_GODOT_get_total_linear_damp.bind("PhysicsDirectBodyState", "get_total_linear_damp");
		return ptrcall!(double)(_GODOT_get_total_linear_damp, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_total_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_angular_damp") = _GODOT_get_total_angular_damp;
	/**
	
	*/
	double getTotalAngularDamp() const
	{
		_GODOT_get_total_angular_damp.bind("PhysicsDirectBodyState", "get_total_angular_damp");
		return ptrcall!(double)(_GODOT_get_total_angular_damp, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_center_of_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_center_of_mass") = _GODOT_get_center_of_mass;
	/**
	
	*/
	Vector3 getCenterOfMass() const
	{
		_GODOT_get_center_of_mass.bind("PhysicsDirectBodyState", "get_center_of_mass");
		return ptrcall!(Vector3)(_GODOT_get_center_of_mass, _godot_object);
	}
	package(godot) static GodotMethod!(Basis) _GODOT_get_principal_inertia_axes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_principal_inertia_axes") = _GODOT_get_principal_inertia_axes;
	/**
	
	*/
	Basis getPrincipalInertiaAxes() const
	{
		_GODOT_get_principal_inertia_axes.bind("PhysicsDirectBodyState", "get_principal_inertia_axes");
		return ptrcall!(Basis)(_GODOT_get_principal_inertia_axes, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_inverse_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_inverse_mass") = _GODOT_get_inverse_mass;
	/**
	
	*/
	double getInverseMass() const
	{
		_GODOT_get_inverse_mass.bind("PhysicsDirectBodyState", "get_inverse_mass");
		return ptrcall!(double)(_GODOT_get_inverse_mass, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_inverse_inertia;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_inverse_inertia") = _GODOT_get_inverse_inertia;
	/**
	
	*/
	Vector3 getInverseInertia() const
	{
		_GODOT_get_inverse_inertia.bind("PhysicsDirectBodyState", "get_inverse_inertia");
		return ptrcall!(Vector3)(_GODOT_get_inverse_inertia, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_linear_velocity") = _GODOT_set_linear_velocity;
	/**
	
	*/
	void setLinearVelocity(in Vector3 velocity)
	{
		_GODOT_set_linear_velocity.bind("PhysicsDirectBodyState", "set_linear_velocity");
		ptrcall!(void)(_GODOT_set_linear_velocity, _godot_object, velocity);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_velocity") = _GODOT_get_linear_velocity;
	/**
	
	*/
	Vector3 getLinearVelocity() const
	{
		_GODOT_get_linear_velocity.bind("PhysicsDirectBodyState", "get_linear_velocity");
		return ptrcall!(Vector3)(_GODOT_get_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_angular_velocity") = _GODOT_set_angular_velocity;
	/**
	
	*/
	void setAngularVelocity(in Vector3 velocity)
	{
		_GODOT_set_angular_velocity.bind("PhysicsDirectBodyState", "set_angular_velocity");
		ptrcall!(void)(_GODOT_set_angular_velocity, _godot_object, velocity);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angular_velocity") = _GODOT_get_angular_velocity;
	/**
	
	*/
	Vector3 getAngularVelocity() const
	{
		_GODOT_get_angular_velocity.bind("PhysicsDirectBodyState", "get_angular_velocity");
		return ptrcall!(Vector3)(_GODOT_get_angular_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	/**
	
	*/
	void setTransform(in Transform transform)
	{
		_GODOT_set_transform.bind("PhysicsDirectBodyState", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, transform);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	/**
	
	*/
	Transform getTransform() const
	{
		_GODOT_get_transform.bind("PhysicsDirectBodyState", "get_transform");
		return ptrcall!(Transform)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_add_central_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_central_force") = _GODOT_add_central_force;
	/**
	
	*/
	void addCentralForce(in Vector3 force)
	{
		_GODOT_add_central_force.bind("PhysicsDirectBodyState", "add_central_force");
		ptrcall!(void)(_GODOT_add_central_force, _godot_object, force);
	}
	package(godot) static GodotMethod!(void, Vector3, Vector3) _GODOT_add_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_force") = _GODOT_add_force;
	/**
	
	*/
	void addForce(in Vector3 force, in Vector3 position)
	{
		_GODOT_add_force.bind("PhysicsDirectBodyState", "add_force");
		ptrcall!(void)(_GODOT_add_force, _godot_object, force, position);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_add_torque;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_torque") = _GODOT_add_torque;
	/**
	
	*/
	void addTorque(in Vector3 torque)
	{
		_GODOT_add_torque.bind("PhysicsDirectBodyState", "add_torque");
		ptrcall!(void)(_GODOT_add_torque, _godot_object, torque);
	}
	package(godot) static GodotMethod!(void, Vector3, Vector3) _GODOT_apply_impulse;
	package(godot) alias _GODOT_methodBindInfo(string name : "apply_impulse") = _GODOT_apply_impulse;
	/**
	
	*/
	void applyImpulse(in Vector3 position, in Vector3 j)
	{
		_GODOT_apply_impulse.bind("PhysicsDirectBodyState", "apply_impulse");
		ptrcall!(void)(_GODOT_apply_impulse, _godot_object, position, j);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_apply_torque_impulse;
	package(godot) alias _GODOT_methodBindInfo(string name : "apply_torque_impulse") = _GODOT_apply_torque_impulse;
	/**
	
	*/
	void applyTorqueImpulse(in Vector3 j)
	{
		_GODOT_apply_torque_impulse.bind("PhysicsDirectBodyState", "apply_torque_impulse");
		ptrcall!(void)(_GODOT_apply_torque_impulse, _godot_object, j);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_sleep_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sleep_state") = _GODOT_set_sleep_state;
	/**
	
	*/
	void setSleepState(in bool enabled)
	{
		_GODOT_set_sleep_state.bind("PhysicsDirectBodyState", "set_sleep_state");
		ptrcall!(void)(_GODOT_set_sleep_state, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_sleeping;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_sleeping") = _GODOT_is_sleeping;
	/**
	
	*/
	bool isSleeping() const
	{
		_GODOT_is_sleeping.bind("PhysicsDirectBodyState", "is_sleeping");
		return ptrcall!(bool)(_GODOT_is_sleeping, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_contact_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_count") = _GODOT_get_contact_count;
	/**
	
	*/
	long getContactCount() const
	{
		_GODOT_get_contact_count.bind("PhysicsDirectBodyState", "get_contact_count");
		return ptrcall!(long)(_GODOT_get_contact_count, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3, long) _GODOT_get_contact_local_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_local_position") = _GODOT_get_contact_local_position;
	/**
	
	*/
	Vector3 getContactLocalPosition(in long contact_idx) const
	{
		_GODOT_get_contact_local_position.bind("PhysicsDirectBodyState", "get_contact_local_position");
		return ptrcall!(Vector3)(_GODOT_get_contact_local_position, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(Vector3, long) _GODOT_get_contact_local_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_local_normal") = _GODOT_get_contact_local_normal;
	/**
	
	*/
	Vector3 getContactLocalNormal(in long contact_idx) const
	{
		_GODOT_get_contact_local_normal.bind("PhysicsDirectBodyState", "get_contact_local_normal");
		return ptrcall!(Vector3)(_GODOT_get_contact_local_normal, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_contact_local_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_local_shape") = _GODOT_get_contact_local_shape;
	/**
	
	*/
	long getContactLocalShape(in long contact_idx) const
	{
		_GODOT_get_contact_local_shape.bind("PhysicsDirectBodyState", "get_contact_local_shape");
		return ptrcall!(long)(_GODOT_get_contact_local_shape, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(RID, long) _GODOT_get_contact_collider;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider") = _GODOT_get_contact_collider;
	/**
	
	*/
	RID getContactCollider(in long contact_idx) const
	{
		_GODOT_get_contact_collider.bind("PhysicsDirectBodyState", "get_contact_collider");
		return ptrcall!(RID)(_GODOT_get_contact_collider, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(Vector3, long) _GODOT_get_contact_collider_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_position") = _GODOT_get_contact_collider_position;
	/**
	
	*/
	Vector3 getContactColliderPosition(in long contact_idx) const
	{
		_GODOT_get_contact_collider_position.bind("PhysicsDirectBodyState", "get_contact_collider_position");
		return ptrcall!(Vector3)(_GODOT_get_contact_collider_position, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_contact_collider_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_id") = _GODOT_get_contact_collider_id;
	/**
	
	*/
	long getContactColliderId(in long contact_idx) const
	{
		_GODOT_get_contact_collider_id.bind("PhysicsDirectBodyState", "get_contact_collider_id");
		return ptrcall!(long)(_GODOT_get_contact_collider_id, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(GodotObject, long) _GODOT_get_contact_collider_object;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_object") = _GODOT_get_contact_collider_object;
	/**
	
	*/
	GodotObject getContactColliderObject(in long contact_idx) const
	{
		_GODOT_get_contact_collider_object.bind("PhysicsDirectBodyState", "get_contact_collider_object");
		return ptrcall!(GodotObject)(_GODOT_get_contact_collider_object, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_contact_collider_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_shape") = _GODOT_get_contact_collider_shape;
	/**
	
	*/
	long getContactColliderShape(in long contact_idx) const
	{
		_GODOT_get_contact_collider_shape.bind("PhysicsDirectBodyState", "get_contact_collider_shape");
		return ptrcall!(long)(_GODOT_get_contact_collider_shape, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(Vector3, long) _GODOT_get_contact_collider_velocity_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_velocity_at_position") = _GODOT_get_contact_collider_velocity_at_position;
	/**
	
	*/
	Vector3 getContactColliderVelocityAtPosition(in long contact_idx) const
	{
		_GODOT_get_contact_collider_velocity_at_position.bind("PhysicsDirectBodyState", "get_contact_collider_velocity_at_position");
		return ptrcall!(Vector3)(_GODOT_get_contact_collider_velocity_at_position, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_step") = _GODOT_get_step;
	/**
	
	*/
	double getStep() const
	{
		_GODOT_get_step.bind("PhysicsDirectBodyState", "get_step");
		return ptrcall!(double)(_GODOT_get_step, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_integrate_forces;
	package(godot) alias _GODOT_methodBindInfo(string name : "integrate_forces") = _GODOT_integrate_forces;
	/**
	
	*/
	void integrateForces()
	{
		_GODOT_integrate_forces.bind("PhysicsDirectBodyState", "integrate_forces");
		ptrcall!(void)(_GODOT_integrate_forces, _godot_object);
	}
	package(godot) static GodotMethod!(PhysicsDirectSpaceState) _GODOT_get_space_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_space_state") = _GODOT_get_space_state;
	/**
	
	*/
	PhysicsDirectSpaceState getSpaceState()
	{
		_GODOT_get_space_state.bind("PhysicsDirectBodyState", "get_space_state");
		return ptrcall!(PhysicsDirectSpaceState)(_GODOT_get_space_state, _godot_object);
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
