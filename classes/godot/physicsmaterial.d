/**
A material for physics properties.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicsmaterial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
/**
A material for physics properties.

Provides a means of modifying the collision properties of a $(D PhysicsBody).
*/
@GodotBaseClass struct PhysicsMaterial
{
	package(godot) enum string _GODOT_internal_name = "PhysicsMaterial";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_bounce") GodotMethod!(double) getBounce;
		@GodotName("get_friction") GodotMethod!(double) getFriction;
		@GodotName("is_absorbent") GodotMethod!(bool) isAbsorbent;
		@GodotName("is_rough") GodotMethod!(bool) isRough;
		@GodotName("set_absorbent") GodotMethod!(void, bool) setAbsorbent;
		@GodotName("set_bounce") GodotMethod!(void, double) setBounce;
		@GodotName("set_friction") GodotMethod!(void, double) setFriction;
		@GodotName("set_rough") GodotMethod!(void, bool) setRough;
	}
	/// 
	pragma(inline, true) bool opEquals(in PhysicsMaterial other) const
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
	/// Construct a new instance of PhysicsMaterial.
	/// Note: use `memnew!PhysicsMaterial` instead.
	static PhysicsMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsMaterial)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getBounce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBounce, _godot_object);
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
	bool isAbsorbent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAbsorbent, _godot_object);
	}
	/**
	
	*/
	bool isRough() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRough, _godot_object);
	}
	/**
	
	*/
	void setAbsorbent(in bool absorbent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAbsorbent, _godot_object, absorbent);
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
	void setFriction(in double friction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFriction, _godot_object, friction);
	}
	/**
	
	*/
	void setRough(in bool rough)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRough, _godot_object, rough);
	}
	/**
	If `true`, subtracts the bounciness from the colliding object's bounciness instead of adding it.
	*/
	@property bool absorbent()
	{
		return isAbsorbent();
	}
	/// ditto
	@property void absorbent(bool v)
	{
		setAbsorbent(v);
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
	The body's friction. Values range from `0` (frictionless) to `1` (maximum friction).
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
	If `true`, the physics engine will use the friction of the object marked as "rough" when two objects collide. If `false`, the physics engine will use the lowest friction of all colliding objects instead. If `true` for both colliding objects, the physics engine will use the highest friction.
	*/
	@property bool rough()
	{
		return isRough();
	}
	/// ditto
	@property void rough(bool v)
	{
		setRough(v);
	}
}
