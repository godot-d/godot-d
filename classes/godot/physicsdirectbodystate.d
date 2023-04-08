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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.physicsdirectspacestate;
/**

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
		@GodotName("get_velocity_at_local_position") GodotMethod!(Vector3, Vector3) getVelocityAtLocalPosition;
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
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
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
	
	*/
	void addCentralForce(in Vector3 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCentralForce, _godot_object, force);
	}
	/**
	
	*/
	void addForce(in Vector3 force, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addForce, _godot_object, force, position);
	}
	/**
	
	*/
	void addTorque(in Vector3 torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTorque, _godot_object, torque);
	}
	/**
	
	*/
	void applyCentralImpulse(in Vector3 j)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyCentralImpulse, _godot_object, j);
	}
	/**
	
	*/
	void applyImpulse(in Vector3 position, in Vector3 j)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyImpulse, _godot_object, position, j);
	}
	/**
	
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
	
	*/
	RID getContactCollider(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getContactCollider, _godot_object, contact_idx);
	}
	/**
	
	*/
	long getContactColliderId(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getContactColliderId, _godot_object, contact_idx);
	}
	/**
	
	*/
	GodotObject getContactColliderObject(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.getContactColliderObject, _godot_object, contact_idx);
	}
	/**
	
	*/
	Vector3 getContactColliderPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getContactColliderPosition, _godot_object, contact_idx);
	}
	/**
	
	*/
	long getContactColliderShape(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getContactColliderShape, _godot_object, contact_idx);
	}
	/**
	
	*/
	Vector3 getContactColliderVelocityAtPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getContactColliderVelocityAtPosition, _godot_object, contact_idx);
	}
	/**
	
	*/
	long getContactCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getContactCount, _godot_object);
	}
	/**
	
	*/
	double getContactImpulse(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getContactImpulse, _godot_object, contact_idx);
	}
	/**
	
	*/
	Vector3 getContactLocalNormal(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getContactLocalNormal, _godot_object, contact_idx);
	}
	/**
	
	*/
	Vector3 getContactLocalPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getContactLocalPosition, _godot_object, contact_idx);
	}
	/**
	
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
	
	*/
	Vector3 getVelocityAtLocalPosition(in Vector3 local_position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getVelocityAtLocalPosition, _godot_object, local_position);
	}
	/**
	
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
	
	*/
	@property Vector3 inverseInertia()
	{
		return getInverseInertia();
	}
	/**
	
	*/
	@property double inverseMass()
	{
		return getInverseMass();
	}
	/**
	
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
	
	*/
	@property double step()
	{
		return getStep();
	}
	/**
	
	*/
	@property double totalAngularDamp()
	{
		return getTotalAngularDamp();
	}
	/**
	
	*/
	@property Vector3 totalGravity()
	{
		return getTotalGravity();
	}
	/**
	
	*/
	@property double totalLinearDamp()
	{
		return getTotalLinearDamp();
	}
	/**
	
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
