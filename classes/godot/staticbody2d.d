/**
Static body for 2D Physics.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.staticbody2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.physicsbody2d;
import godot.physicsmaterial;
import godot.collisionobject2d;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**
Static body for 2D Physics.

A StaticBody2D is a body that is not intended to move. It is ideal for implementing objects in the environment, such as walls or platforms.
Additionally, a constant linear or angular velocity can be set for the static body, which will affect colliding bodies as if it were moving (for example, a conveyor belt).
*/
@GodotBaseClass struct StaticBody2D
{
	enum string _GODOT_internal_name = "StaticBody2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; PhysicsBody2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_constant_linear_velocity") GodotMethod!(void, Vector2) setConstantLinearVelocity;
		@GodotName("set_constant_angular_velocity") GodotMethod!(void, double) setConstantAngularVelocity;
		@GodotName("get_constant_linear_velocity") GodotMethod!(Vector2) getConstantLinearVelocity;
		@GodotName("get_constant_angular_velocity") GodotMethod!(double) getConstantAngularVelocity;
		@GodotName("set_friction") GodotMethod!(void, double) setFriction;
		@GodotName("get_friction") GodotMethod!(double) getFriction;
		@GodotName("set_bounce") GodotMethod!(void, double) setBounce;
		@GodotName("get_bounce") GodotMethod!(double) getBounce;
		@GodotName("set_physics_material_override") GodotMethod!(void, PhysicsMaterial) setPhysicsMaterialOverride;
		@GodotName("get_physics_material_override") GodotMethod!(PhysicsMaterial) getPhysicsMaterialOverride;
		@GodotName("_reload_physics_characteristics") GodotMethod!(void) _reloadPhysicsCharacteristics;
	}
	bool opEquals(in StaticBody2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StaticBody2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StaticBody2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StaticBody2D");
		if(constructor is null) return typeof(this).init;
		return cast(StaticBody2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setConstantLinearVelocity(in Vector2 vel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstantLinearVelocity, _godot_object, vel);
	}
	/**
	
	*/
	void setConstantAngularVelocity(in double vel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstantAngularVelocity, _godot_object, vel);
	}
	/**
	
	*/
	Vector2 getConstantLinearVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getConstantLinearVelocity, _godot_object);
	}
	/**
	
	*/
	double getConstantAngularVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getConstantAngularVelocity, _godot_object);
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
	Constant linear velocity for the body. This does not move the body, but affects colliding bodies, as if it were moving.
	*/
	@property Vector2 constantLinearVelocity()
	{
		return getConstantLinearVelocity();
	}
	/// ditto
	@property void constantLinearVelocity(Vector2 v)
	{
		setConstantLinearVelocity(v);
	}
	/**
	Constant angular velocity for the body. This does not rotate the body, but affects colliding bodies, as if it were rotating.
	*/
	@property double constantAngularVelocity()
	{
		return getConstantAngularVelocity();
	}
	/// ditto
	@property void constantAngularVelocity(double v)
	{
		setConstantAngularVelocity(v);
	}
	/**
	The body's friction. Values range from `0` (no friction) to `1` (full friction).
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
	The body's bounciness. Values range from `0` (no bounce) to `1` (full bounciness).
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
}
