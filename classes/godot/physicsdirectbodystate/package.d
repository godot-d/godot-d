/**
Direct access object to a physics body in the $(D PhysicsServer).

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
Direct access object to a physics body in the $(D PhysicsServer).

Provides direct access to a physics body in the $(D PhysicsServer), allowing safe changes to physics properties. This object is passed via the direct state callback of rigid/character bodies, and is intended for changing the direct state of that body. See $(D RigidBody._integrateForces).
*/
@GodotBaseClass struct PhysicsDirectBodyState
{
	package(godot) enum string _GODOT_internal_name = "PhysicsDirectBodyState";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_central_force") GodotMethod!(void, Vector3) addCentralForce;
		@GodotName("add_force") GodotMethod!(void, Vector3, Vector3) addForce;
		@GodotName("add_torque") GodotMethod!(void, Vector3) addTorque;
		@GodotName("apply_central_impulse") GodotMethod!(void, Vector3) applyCentralImpulse;
		@GodotName("apply_impulse") GodotMethod!(void, Vector3, Vector3) applyImpulse;
		@GodotName("apply_torque_impulse") GodotMethod!(void, Vector3) applyTorqueImpulse;
		@GodotName("get_angular_velocity") GodotMethod!(Vector3) getAngularVelocity;
		@GodotName("get_center_of_mass") GodotMethod!(Vector3) getCenterOfMass;
		@GodotName("get_contact_collider") GodotMethod!(RID, long) getContactCollider;
		@GodotName("get_contact_collider_id") GodotMethod!(long, long) getContactColliderId;
		@GodotName("get_contact_collider_object") GodotMethod!(GodotObject, long) getContactColliderObject;
		@GodotName("get_contact_collider_position") GodotMethod!(Vector3, long) getContactColliderPosition;
		@GodotName("get_contact_collider_shape") GodotMethod!(long, long) getContactColliderShape;
		@GodotName("get_contact_collider_velocity_at_position") GodotMethod!(Vector3, long) getContactColliderVelocityAtPosition;
		@GodotName("get_contact_count") GodotMethod!(long) getContactCount;
		@GodotName("get_contact_impulse") GodotMethod!(double, long) getContactImpulse;
		@GodotName("get_contact_local_normal") GodotMethod!(Vector3, long) getContactLocalNormal;
		@GodotName("get_contact_local_position") GodotMethod!(Vector3, long) getContactLocalPosition;
		@GodotName("get_contact_local_shape") GodotMethod!(long, long) getContactLocalShape;
		@GodotName("get_inverse_inertia") GodotMethod!(Vector3) getInverseInertia;
		@GodotName("get_inverse_mass") GodotMethod!(double) getInverseMass;
		@GodotName("get_linear_velocity") GodotMethod!(Vector3) getLinearVelocity;
		@GodotName("get_principal_inertia_axes") GodotMethod!(Basis) getPrincipalInertiaAxes;
		@GodotName("get_space_state") GodotMethod!(PhysicsDirectSpaceState) getSpaceState;
		@GodotName("get_step") GodotMethod!(double) getStep;
		@GodotName("get_total_angular_damp") GodotMethod!(double) getTotalAngularDamp;
		@GodotName("get_total_gravity") GodotMethod!(Vector3) getTotalGravity;
		@GodotName("get_total_linear_damp") GodotMethod!(double) getTotalLinearDamp;
		@GodotName("get_transform") GodotMethod!(Transform) getTransform;
		@GodotName("integrate_forces") GodotMethod!(void) integrateForces;
		@GodotName("is_sleeping") GodotMethod!(bool) isSleeping;
		@GodotName("set_angular_velocity") GodotMethod!(void, Vector3) setAngularVelocity;
		@GodotName("set_linear_velocity") GodotMethod!(void, Vector3) setLinearVelocity;
		@GodotName("set_sleep_state") GodotMethod!(void, bool) setSleepState;
		@GodotName("set_transform") GodotMethod!(void, Transform) setTransform;
	}
	/// 
	pragma(inline, true) bool opEquals(in PhysicsDirectBodyState other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) PhysicsDirectBodyState opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of PhysicsDirectBodyState.
	/// Note: use `memnew!PhysicsDirectBodyState` instead.
	static PhysicsDirectBodyState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsDirectBodyState");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsDirectBodyState)(constructor());
	}
	@disable new(size_t s);
	/**
	Adds a constant directional force without affecting rotation.
	This is equivalent to `add_force(force, Vector3(0,0,0))`.
	*/
	void addCentralForce(in Vector3 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCentralForce, _godot_object, force);
	}
	/**
	Adds a positioned force to the body. Both the force and the offset from the body origin are in global coordinates.
	*/
	void addForce(in Vector3 force, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addForce, _godot_object, force, position);
	}
	/**
	Adds a constant rotational force without affecting position.
	*/
	void addTorque(in Vector3 torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTorque, _godot_object, torque);
	}
	/**
	Applies a single directional impulse without affecting rotation.
	This is equivalent to `apply_impulse(Vector3(0, 0, 0), impulse)`.
	*/
	void applyCentralImpulse(in Vector3 j)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyCentralImpulse, _godot_object, j);
	}
	/**
	Applies a positioned impulse to the body. An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason it should only be used when simulating one-time impacts. The position uses the rotation of the global coordinate system, but is centered at the object's origin.
	*/
	void applyImpulse(in Vector3 position, in Vector3 j)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyImpulse, _godot_object, position, j);
	}
	/**
	Apply a torque impulse (which will be affected by the body mass and shape). This will rotate the body around the vector `j` passed as parameter.
	*/
	void applyTorqueImpulse(in Vector3 j)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyTorqueImpulse, _godot_object, j);
	}
	/**
	
	*/
	Vector3 getAngularVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getAngularVelocity, _godot_object);
	}
	/**
	
	*/
	Vector3 getCenterOfMass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getCenterOfMass, _godot_object);
	}
	/**
	Returns the collider's $(D RID).
	*/
	RID getContactCollider(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getContactCollider, _godot_object, contact_idx);
	}
	/**
	Returns the collider's object id.
	*/
	long getContactColliderId(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getContactColliderId, _godot_object, contact_idx);
	}
	/**
	Returns the collider object.
	*/
	GodotObject getContactColliderObject(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.getContactColliderObject, _godot_object, contact_idx);
	}
	/**
	Returns the contact position in the collider.
	*/
	Vector3 getContactColliderPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getContactColliderPosition, _godot_object, contact_idx);
	}
	/**
	Returns the collider's shape index.
	*/
	long getContactColliderShape(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getContactColliderShape, _godot_object, contact_idx);
	}
	/**
	Returns the linear velocity vector at the collider's contact point.
	*/
	Vector3 getContactColliderVelocityAtPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getContactColliderVelocityAtPosition, _godot_object, contact_idx);
	}
	/**
	Returns the number of contacts this body has with other bodies.
	$(B Note:) By default, this returns 0 unless bodies are configured to monitor contacts. See $(D RigidBody.contactMonitor).
	*/
	long getContactCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getContactCount, _godot_object);
	}
	/**
	Impulse created by the contact. Only implemented for Bullet physics.
	*/
	double getContactImpulse(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getContactImpulse, _godot_object, contact_idx);
	}
	/**
	Returns the local normal at the contact point.
	*/
	Vector3 getContactLocalNormal(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getContactLocalNormal, _godot_object, contact_idx);
	}
	/**
	Returns the local position of the contact point.
	*/
	Vector3 getContactLocalPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getContactLocalPosition, _godot_object, contact_idx);
	}
	/**
	Returns the local shape index of the collision.
	*/
	long getContactLocalShape(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getContactLocalShape, _godot_object, contact_idx);
	}
	/**
	
	*/
	Vector3 getInverseInertia() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getInverseInertia, _godot_object);
	}
	/**
	
	*/
	double getInverseMass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getInverseMass, _godot_object);
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
	Basis getPrincipalInertiaAxes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Basis)(GDNativeClassBinding.getPrincipalInertiaAxes, _godot_object);
	}
	/**
	Returns the current state of the space, useful for queries.
	*/
	PhysicsDirectSpaceState getSpaceState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsDirectSpaceState)(GDNativeClassBinding.getSpaceState, _godot_object);
	}
	/**
	
	*/
	double getStep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getStep, _godot_object);
	}
	/**
	
	*/
	double getTotalAngularDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTotalAngularDamp, _godot_object);
	}
	/**
	
	*/
	Vector3 getTotalGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getTotalGravity, _godot_object);
	}
	/**
	
	*/
	double getTotalLinearDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTotalLinearDamp, _godot_object);
	}
	/**
	
	*/
	Transform getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getTransform, _godot_object);
	}
	/**
	Calls the built-in force integration code.
	*/
	void integrateForces()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.integrateForces, _godot_object);
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
	void setAngularVelocity(in Vector3 velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAngularVelocity, _godot_object, velocity);
	}
	/**
	
	*/
	void setLinearVelocity(in Vector3 velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLinearVelocity, _godot_object, velocity);
	}
	/**
	
	*/
	void setSleepState(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSleepState, _godot_object, enabled);
	}
	/**
	
	*/
	void setTransform(in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransform, _godot_object, transform);
	}
	/**
	The body's rotational velocity.
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
	
	*/
	@property Vector3 centerOfMass()
	{
		return getCenterOfMass();
	}
	/**
	The inverse of the inertia of the body.
	*/
	@property Vector3 inverseInertia()
	{
		return getInverseInertia();
	}
	/**
	The inverse of the mass of the body.
	*/
	@property double inverseMass()
	{
		return getInverseMass();
	}
	/**
	The body's linear velocity.
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
	
	*/
	@property Basis principalInertiaAxes()
	{
		return getPrincipalInertiaAxes();
	}
	/**
	If `true`, this body is currently sleeping (not active).
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
	The timestep (delta) used for the simulation.
	*/
	@property double step()
	{
		return getStep();
	}
	/**
	The rate at which the body stops rotating, if there are not any other forces moving it.
	*/
	@property double totalAngularDamp()
	{
		return getTotalAngularDamp();
	}
	/**
	The total gravity vector being currently applied to this body.
	*/
	@property Vector3 totalGravity()
	{
		return getTotalGravity();
	}
	/**
	The rate at which the body stops moving, if there are not any other forces moving it.
	*/
	@property double totalLinearDamp()
	{
		return getTotalLinearDamp();
	}
	/**
	The body's transformation matrix.
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
