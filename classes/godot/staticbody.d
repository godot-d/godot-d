/**
Static body for 3D physics.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.staticbody;
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
import godot.physicsmaterial;
import godot.collisionobject;
import godot.spatial;
import godot.node;
/**
Static body for 3D physics.

A static body is a simple body that is not intended to move. They don't consume any CPU resources in contrast to a $(D RigidBody) so they are great for scenario collision.
A static body can also be animated by using simulated motion mode. This is useful for implementing functionalities such as moving platforms. When this mode is active the body can be animated and automatically computes linear and angular velocity to apply in that frame and to influence other bodies.
Alternatively, a constant linear or angular velocity can be set for the static body, so even if it doesn't move, it affects other bodies as if it was moving (this is useful for simulating conveyor belts or conveyor wheels).
*/
@GodotBaseClass struct StaticBody
{
	enum string _GODOT_internal_name = "StaticBody";
public:
@nogc nothrow:
	union { godot_object _godot_object; PhysicsBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_constant_linear_velocity") GodotMethod!(void, Vector3) setConstantLinearVelocity;
		@GodotName("set_constant_angular_velocity") GodotMethod!(void, Vector3) setConstantAngularVelocity;
		@GodotName("get_constant_linear_velocity") GodotMethod!(Vector3) getConstantLinearVelocity;
		@GodotName("get_constant_angular_velocity") GodotMethod!(Vector3) getConstantAngularVelocity;
		@GodotName("set_friction") GodotMethod!(void, double) setFriction;
		@GodotName("get_friction") GodotMethod!(double) getFriction;
		@GodotName("set_bounce") GodotMethod!(void, double) setBounce;
		@GodotName("get_bounce") GodotMethod!(double) getBounce;
		@GodotName("set_physics_material_override") GodotMethod!(void, PhysicsMaterial) setPhysicsMaterialOverride;
		@GodotName("get_physics_material_override") GodotMethod!(PhysicsMaterial) getPhysicsMaterialOverride;
		@GodotName("_reload_physics_characteristics") GodotMethod!(void) _reloadPhysicsCharacteristics;
	}
	bool opEquals(in StaticBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StaticBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StaticBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StaticBody");
		if(constructor is null) return typeof(this).init;
		return cast(StaticBody)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setConstantLinearVelocity(in Vector3 vel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstantLinearVelocity, _godot_object, vel);
	}
	/**
	
	*/
	void setConstantAngularVelocity(in Vector3 vel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstantAngularVelocity, _godot_object, vel);
	}
	/**
	
	*/
	Vector3 getConstantLinearVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getConstantLinearVelocity, _godot_object);
	}
	/**
	
	*/
	Vector3 getConstantAngularVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getConstantAngularVelocity, _godot_object);
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
	The body friction, from 0 (frictionless) to 1 (full friction).
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
	The body bounciness.
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
	The constant linear velocity for the body. This does not move the body, but affects other bodies that touch it, as if it was in a state of movement.
	*/
	@property Vector3 constantLinearVelocity()
	{
		return getConstantLinearVelocity();
	}
	/// ditto
	@property void constantLinearVelocity(Vector3 v)
	{
		setConstantLinearVelocity(v);
	}
	/**
	The constant angular velocity for the body. This does not rotate the body, but affects other bodies that touch it, as if it was in a state of rotation.
	*/
	@property Vector3 constantAngularVelocity()
	{
		return getConstantAngularVelocity();
	}
	/// ditto
	@property void constantAngularVelocity(Vector3 v)
	{
		setConstantAngularVelocity(v);
	}
}
