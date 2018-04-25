/**
Direct access object to a physics body in the $(D Physics2DServer).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2ddirectbodystate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.physics2ddirectspacestate;
/**
Direct access object to a physics body in the $(D Physics2DServer).

This object is passed via the direct state callback of rigid/character bodies, and is intended for changing the direct state of that body.
*/
@GodotBaseClass struct Physics2DDirectBodyState
{
	static immutable string _GODOT_internal_name = "Physics2DDirectBodyState";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Physics2DDirectBodyState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DDirectBodyState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DDirectBodyState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DDirectBodyState");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DDirectBodyState)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(Vector2) _GODOT_get_total_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_gravity") = _GODOT_get_total_gravity;
	/**
	
	*/
	Vector2 getTotalGravity() const
	{
		_GODOT_get_total_gravity.bind("Physics2DDirectBodyState", "get_total_gravity");
		return ptrcall!(Vector2)(_GODOT_get_total_gravity, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_total_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_linear_damp") = _GODOT_get_total_linear_damp;
	/**
	
	*/
	double getTotalLinearDamp() const
	{
		_GODOT_get_total_linear_damp.bind("Physics2DDirectBodyState", "get_total_linear_damp");
		return ptrcall!(double)(_GODOT_get_total_linear_damp, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_total_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_angular_damp") = _GODOT_get_total_angular_damp;
	/**
	
	*/
	double getTotalAngularDamp() const
	{
		_GODOT_get_total_angular_damp.bind("Physics2DDirectBodyState", "get_total_angular_damp");
		return ptrcall!(double)(_GODOT_get_total_angular_damp, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_inverse_mass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_inverse_mass") = _GODOT_get_inverse_mass;
	/**
	
	*/
	double getInverseMass() const
	{
		_GODOT_get_inverse_mass.bind("Physics2DDirectBodyState", "get_inverse_mass");
		return ptrcall!(double)(_GODOT_get_inverse_mass, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_inverse_inertia;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_inverse_inertia") = _GODOT_get_inverse_inertia;
	/**
	
	*/
	double getInverseInertia() const
	{
		_GODOT_get_inverse_inertia.bind("Physics2DDirectBodyState", "get_inverse_inertia");
		return ptrcall!(double)(_GODOT_get_inverse_inertia, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_linear_velocity") = _GODOT_set_linear_velocity;
	/**
	
	*/
	void setLinearVelocity(in Vector2 velocity)
	{
		_GODOT_set_linear_velocity.bind("Physics2DDirectBodyState", "set_linear_velocity");
		ptrcall!(void)(_GODOT_set_linear_velocity, _godot_object, velocity);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_velocity") = _GODOT_get_linear_velocity;
	/**
	
	*/
	Vector2 getLinearVelocity() const
	{
		_GODOT_get_linear_velocity.bind("Physics2DDirectBodyState", "get_linear_velocity");
		return ptrcall!(Vector2)(_GODOT_get_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_angular_velocity") = _GODOT_set_angular_velocity;
	/**
	
	*/
	void setAngularVelocity(in double velocity)
	{
		_GODOT_set_angular_velocity.bind("Physics2DDirectBodyState", "set_angular_velocity");
		ptrcall!(void)(_GODOT_set_angular_velocity, _godot_object, velocity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_angular_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angular_velocity") = _GODOT_get_angular_velocity;
	/**
	
	*/
	double getAngularVelocity() const
	{
		_GODOT_get_angular_velocity.bind("Physics2DDirectBodyState", "get_angular_velocity");
		return ptrcall!(double)(_GODOT_get_angular_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	/**
	
	*/
	void setTransform(in Transform2D transform)
	{
		_GODOT_set_transform.bind("Physics2DDirectBodyState", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, transform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	/**
	
	*/
	Transform2D getTransform() const
	{
		_GODOT_get_transform.bind("Physics2DDirectBodyState", "get_transform");
		return ptrcall!(Transform2D)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_sleep_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sleep_state") = _GODOT_set_sleep_state;
	/**
	
	*/
	void setSleepState(in bool enabled)
	{
		_GODOT_set_sleep_state.bind("Physics2DDirectBodyState", "set_sleep_state");
		ptrcall!(void)(_GODOT_set_sleep_state, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_sleeping;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_sleeping") = _GODOT_is_sleeping;
	/**
	
	*/
	bool isSleeping() const
	{
		_GODOT_is_sleeping.bind("Physics2DDirectBodyState", "is_sleeping");
		return ptrcall!(bool)(_GODOT_is_sleeping, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_contact_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_count") = _GODOT_get_contact_count;
	/**
	Return the amount of contacts this body has with other bodies. Note that by default this returns 0 unless bodies are configured to log contacts.
	*/
	long getContactCount() const
	{
		_GODOT_get_contact_count.bind("Physics2DDirectBodyState", "get_contact_count");
		return ptrcall!(long)(_GODOT_get_contact_count, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_contact_local_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_local_position") = _GODOT_get_contact_local_position;
	/**
	Return the local position (of this body) of the contact point.
	*/
	Vector2 getContactLocalPosition(in long contact_idx) const
	{
		_GODOT_get_contact_local_position.bind("Physics2DDirectBodyState", "get_contact_local_position");
		return ptrcall!(Vector2)(_GODOT_get_contact_local_position, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_contact_local_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_local_normal") = _GODOT_get_contact_local_normal;
	/**
	Return the local normal (of this body) of the contact point.
	*/
	Vector2 getContactLocalNormal(in long contact_idx) const
	{
		_GODOT_get_contact_local_normal.bind("Physics2DDirectBodyState", "get_contact_local_normal");
		return ptrcall!(Vector2)(_GODOT_get_contact_local_normal, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_contact_local_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_local_shape") = _GODOT_get_contact_local_shape;
	/**
	Return the local shape index of the collision.
	*/
	long getContactLocalShape(in long contact_idx) const
	{
		_GODOT_get_contact_local_shape.bind("Physics2DDirectBodyState", "get_contact_local_shape");
		return ptrcall!(long)(_GODOT_get_contact_local_shape, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(RID, long) _GODOT_get_contact_collider;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider") = _GODOT_get_contact_collider;
	/**
	Return the $(D RID) of the collider.
	*/
	RID getContactCollider(in long contact_idx) const
	{
		_GODOT_get_contact_collider.bind("Physics2DDirectBodyState", "get_contact_collider");
		return ptrcall!(RID)(_GODOT_get_contact_collider, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_contact_collider_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_position") = _GODOT_get_contact_collider_position;
	/**
	Return the contact position in the collider.
	*/
	Vector2 getContactColliderPosition(in long contact_idx) const
	{
		_GODOT_get_contact_collider_position.bind("Physics2DDirectBodyState", "get_contact_collider_position");
		return ptrcall!(Vector2)(_GODOT_get_contact_collider_position, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_contact_collider_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_id") = _GODOT_get_contact_collider_id;
	/**
	Return the object id of the collider.
	*/
	long getContactColliderId(in long contact_idx) const
	{
		_GODOT_get_contact_collider_id.bind("Physics2DDirectBodyState", "get_contact_collider_id");
		return ptrcall!(long)(_GODOT_get_contact_collider_id, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(GodotObject, long) _GODOT_get_contact_collider_object;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_object") = _GODOT_get_contact_collider_object;
	/**
	Return the collider object, this depends on how it was created (will return a scene node if such was used to create it).
	*/
	GodotObject getContactColliderObject(in long contact_idx) const
	{
		_GODOT_get_contact_collider_object.bind("Physics2DDirectBodyState", "get_contact_collider_object");
		return ptrcall!(GodotObject)(_GODOT_get_contact_collider_object, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_contact_collider_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_shape") = _GODOT_get_contact_collider_shape;
	/**
	Return the collider shape index.
	*/
	long getContactColliderShape(in long contact_idx) const
	{
		_GODOT_get_contact_collider_shape.bind("Physics2DDirectBodyState", "get_contact_collider_shape");
		return ptrcall!(long)(_GODOT_get_contact_collider_shape, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(Variant, long) _GODOT_get_contact_collider_shape_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_shape_metadata") = _GODOT_get_contact_collider_shape_metadata;
	/**
	Return the metadata of the collided shape. This metadata is different from $(D GodotObject.getMeta), and is set with $(D Physics2DServer.shapeSetData).
	*/
	Variant getContactColliderShapeMetadata(in long contact_idx) const
	{
		_GODOT_get_contact_collider_shape_metadata.bind("Physics2DDirectBodyState", "get_contact_collider_shape_metadata");
		return ptrcall!(Variant)(_GODOT_get_contact_collider_shape_metadata, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_contact_collider_velocity_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_contact_collider_velocity_at_position") = _GODOT_get_contact_collider_velocity_at_position;
	/**
	Return the linear velocity vector at contact point of the collider.
	*/
	Vector2 getContactColliderVelocityAtPosition(in long contact_idx) const
	{
		_GODOT_get_contact_collider_velocity_at_position.bind("Physics2DDirectBodyState", "get_contact_collider_velocity_at_position");
		return ptrcall!(Vector2)(_GODOT_get_contact_collider_velocity_at_position, _godot_object, contact_idx);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_step") = _GODOT_get_step;
	/**
	
	*/
	double getStep() const
	{
		_GODOT_get_step.bind("Physics2DDirectBodyState", "get_step");
		return ptrcall!(double)(_GODOT_get_step, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_integrate_forces;
	package(godot) alias _GODOT_methodBindInfo(string name : "integrate_forces") = _GODOT_integrate_forces;
	/**
	Call the built-in force integration code.
	*/
	void integrateForces()
	{
		_GODOT_integrate_forces.bind("Physics2DDirectBodyState", "integrate_forces");
		ptrcall!(void)(_GODOT_integrate_forces, _godot_object);
	}
	package(godot) static GodotMethod!(Physics2DDirectSpaceState) _GODOT_get_space_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_space_state") = _GODOT_get_space_state;
	/**
	Return the current state of space, useful for queries.
	*/
	Physics2DDirectSpaceState getSpaceState()
	{
		_GODOT_get_space_state.bind("Physics2DDirectBodyState", "get_space_state");
		return ptrcall!(Physics2DDirectSpaceState)(_GODOT_get_space_state, _godot_object);
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
	The inverse of the inertia of the body.
	*/
	@property double inverseInertia()
	{
		return getInverseInertia();
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
	The total gravity vector being currently applied to this body.
	*/
	@property Vector2 totalGravity()
	{
		return getTotalGravity();
	}
	/**
	The angular velocity of the body.
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
	The linear velocity of the body.
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
