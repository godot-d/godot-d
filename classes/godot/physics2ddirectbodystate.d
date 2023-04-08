/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2ddirectbodystate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.physics2ddirectspacestate;
/**

*/
@GodotBaseClass struct Physics2DDirectBodyState
{
	package(godot) enum string _GODOT_internal_name = "Physics2DDirectBodyState";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_central_force") GodotMethod!(void, Vector2) addCentralForce;
		@GodotName("add_force") GodotMethod!(void, Vector2, Vector2) addForce;
		@GodotName("add_torque") GodotMethod!(void, double) addTorque;
		@GodotName("apply_central_impulse") GodotMethod!(void, Vector2) applyCentralImpulse;
		@GodotName("apply_impulse") GodotMethod!(void, Vector2, Vector2) applyImpulse;
		@GodotName("apply_torque_impulse") GodotMethod!(void, double) applyTorqueImpulse;
		@GodotName("get_angular_velocity") GodotMethod!(double) getAngularVelocity;
		@GodotName("get_contact_collider") GodotMethod!(RID, long) getContactCollider;
		@GodotName("get_contact_collider_id") GodotMethod!(long, long) getContactColliderId;
		@GodotName("get_contact_collider_object") GodotMethod!(GodotObject, long) getContactColliderObject;
		@GodotName("get_contact_collider_position") GodotMethod!(Vector2, long) getContactColliderPosition;
		@GodotName("get_contact_collider_shape") GodotMethod!(long, long) getContactColliderShape;
		@GodotName("get_contact_collider_shape_metadata") GodotMethod!(Variant, long) getContactColliderShapeMetadata;
		@GodotName("get_contact_collider_velocity_at_position") GodotMethod!(Vector2, long) getContactColliderVelocityAtPosition;
		@GodotName("get_contact_count") GodotMethod!(long) getContactCount;
		@GodotName("get_contact_local_normal") GodotMethod!(Vector2, long) getContactLocalNormal;
		@GodotName("get_contact_local_position") GodotMethod!(Vector2, long) getContactLocalPosition;
		@GodotName("get_contact_local_shape") GodotMethod!(long, long) getContactLocalShape;
		@GodotName("get_inverse_inertia") GodotMethod!(double) getInverseInertia;
		@GodotName("get_inverse_mass") GodotMethod!(double) getInverseMass;
		@GodotName("get_linear_velocity") GodotMethod!(Vector2) getLinearVelocity;
		@GodotName("get_space_state") GodotMethod!(Physics2DDirectSpaceState) getSpaceState;
		@GodotName("get_step") GodotMethod!(double) getStep;
		@GodotName("get_total_angular_damp") GodotMethod!(double) getTotalAngularDamp;
		@GodotName("get_total_gravity") GodotMethod!(Vector2) getTotalGravity;
		@GodotName("get_total_linear_damp") GodotMethod!(double) getTotalLinearDamp;
		@GodotName("get_transform") GodotMethod!(Transform2D) getTransform;
		@GodotName("get_velocity_at_local_position") GodotMethod!(Vector2, Vector2) getVelocityAtLocalPosition;
		@GodotName("integrate_forces") GodotMethod!(void) integrateForces;
		@GodotName("is_sleeping") GodotMethod!(bool) isSleeping;
		@GodotName("set_angular_velocity") GodotMethod!(void, double) setAngularVelocity;
		@GodotName("set_linear_velocity") GodotMethod!(void, Vector2) setLinearVelocity;
		@GodotName("set_sleep_state") GodotMethod!(void, bool) setSleepState;
		@GodotName("set_transform") GodotMethod!(void, Transform2D) setTransform;
	}
	/// 
	pragma(inline, true) bool opEquals(in Physics2DDirectBodyState other) const
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
	/// Construct a new instance of Physics2DDirectBodyState.
	/// Note: use `memnew!Physics2DDirectBodyState` instead.
	static Physics2DDirectBodyState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DDirectBodyState");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DDirectBodyState)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void addCentralForce(in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCentralForce, _godot_object, force);
	}
	/**
	
	*/
	void addForce(in Vector2 offset, in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addForce, _godot_object, offset, force);
	}
	/**
	
	*/
	void addTorque(in double torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTorque, _godot_object, torque);
	}
	/**
	
	*/
	void applyCentralImpulse(in Vector2 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyCentralImpulse, _godot_object, impulse);
	}
	/**
	
	*/
	void applyImpulse(in Vector2 offset, in Vector2 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyImpulse, _godot_object, offset, impulse);
	}
	/**
	
	*/
	void applyTorqueImpulse(in double impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyTorqueImpulse, _godot_object, impulse);
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
	Vector2 getContactColliderPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getContactColliderPosition, _godot_object, contact_idx);
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
	Variant getContactColliderShapeMetadata(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getContactColliderShapeMetadata, _godot_object, contact_idx);
	}
	/**
	
	*/
	Vector2 getContactColliderVelocityAtPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getContactColliderVelocityAtPosition, _godot_object, contact_idx);
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
	Vector2 getContactLocalNormal(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getContactLocalNormal, _godot_object, contact_idx);
	}
	/**
	
	*/
	Vector2 getContactLocalPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getContactLocalPosition, _godot_object, contact_idx);
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
	double getInverseInertia() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getInverseInertia, _godot_object);
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
	Vector2 getLinearVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getLinearVelocity, _godot_object);
	}
	/**
	
	*/
	Physics2DDirectSpaceState getSpaceState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DDirectSpaceState)(GDNativeClassBinding.getSpaceState, _godot_object);
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
	Vector2 getTotalGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getTotalGravity, _godot_object);
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
	Transform2D getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getTransform, _godot_object);
	}
	/**
	
	*/
	Vector2 getVelocityAtLocalPosition(in Vector2 local_position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getVelocityAtLocalPosition, _godot_object, local_position);
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
	void setAngularVelocity(in double velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAngularVelocity, _godot_object, velocity);
	}
	/**
	
	*/
	void setLinearVelocity(in Vector2 velocity)
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
	void setTransform(in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransform, _godot_object, transform);
	}
	/**
	
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
	
	*/
	@property double inverseInertia()
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
	@property Vector2 totalGravity()
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
	@property Transform2D transform()
	{
		return getTransform();
	}
	/// ditto
	@property void transform(Transform2D v)
	{
		setTransform(v);
	}
}
