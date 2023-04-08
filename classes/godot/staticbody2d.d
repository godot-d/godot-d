/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.staticbody2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.physicsbody2d;
import godot.collisionobject2d;
import godot.node2d;
import godot.canvasitem;
import godot.node;
import godot.physicsmaterial;
/**

*/
@GodotBaseClass struct StaticBody2D
{
	package(godot) enum string _GODOT_internal_name = "StaticBody2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PhysicsBody2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_reload_physics_characteristics") GodotMethod!(void) _reloadPhysicsCharacteristics;
		@GodotName("get_bounce") GodotMethod!(double) getBounce;
		@GodotName("get_constant_angular_velocity") GodotMethod!(double) getConstantAngularVelocity;
		@GodotName("get_constant_linear_velocity") GodotMethod!(Vector2) getConstantLinearVelocity;
		@GodotName("get_friction") GodotMethod!(double) getFriction;
		@GodotName("get_physics_material_override") GodotMethod!(PhysicsMaterial) getPhysicsMaterialOverride;
		@GodotName("set_bounce") GodotMethod!(void, double) setBounce;
		@GodotName("set_constant_angular_velocity") GodotMethod!(void, double) setConstantAngularVelocity;
		@GodotName("set_constant_linear_velocity") GodotMethod!(void, Vector2) setConstantLinearVelocity;
		@GodotName("set_friction") GodotMethod!(void, double) setFriction;
		@GodotName("set_physics_material_override") GodotMethod!(void, PhysicsMaterial) setPhysicsMaterialOverride;
	}
	/// 
	pragma(inline, true) bool opEquals(in StaticBody2D other) const
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
	/// Construct a new instance of StaticBody2D.
	/// Note: use `memnew!StaticBody2D` instead.
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
	void _reloadPhysicsCharacteristics()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_reload_physics_characteristics");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double getBounce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBounce, _godot_object);
	}
	/**
	
	*/
	double getConstantAngularVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getConstantAngularVelocity, _godot_object);
	}
	/**
	
	*/
	Vector2 getConstantLinearVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getConstantLinearVelocity, _godot_object);
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
	Ref!PhysicsMaterial getPhysicsMaterialOverride() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsMaterial)(GDNativeClassBinding.getPhysicsMaterialOverride, _godot_object);
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
	void setConstantAngularVelocity(in double vel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConstantAngularVelocity, _godot_object, vel);
	}
	/**
	
	*/
	void setConstantLinearVelocity(in Vector2 vel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConstantLinearVelocity, _godot_object, vel);
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
	void setPhysicsMaterialOverride(PhysicsMaterial physics_material_override)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicsMaterialOverride, _godot_object, physics_material_override);
	}
	/**
	
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
