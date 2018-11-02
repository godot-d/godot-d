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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.reference;
/**
A material for physics properties.

Provides a means of modifying the collision properties of a $(D PhysicsBody).
*/
@GodotBaseClass struct PhysicsMaterial
{
	enum string _GODOT_internal_name = "PhysicsMaterial";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_friction") GodotMethod!(void, double) setFriction;
		@GodotName("get_friction") GodotMethod!(double) getFriction;
		@GodotName("set_rough") GodotMethod!(void, bool) setRough;
		@GodotName("is_rough") GodotMethod!(bool) isRough;
		@GodotName("set_bounce") GodotMethod!(void, double) setBounce;
		@GodotName("get_bounce") GodotMethod!(double) getBounce;
		@GodotName("set_absorbent") GodotMethod!(void, bool) setAbsorbent;
		@GodotName("is_absorbent") GodotMethod!(bool) isAbsorbent;
	}
	bool opEquals(in PhysicsMaterial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsMaterial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setRough(in bool rough)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRough, _godot_object, rough);
	}
	/**
	
	*/
	bool isRough() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRough, _godot_object);
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
	void setAbsorbent(in bool absorbent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAbsorbent, _godot_object, absorbent);
	}
	/**
	
	*/
	bool isAbsorbent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAbsorbent, _godot_object);
	}
	/**
	The body's friction. Values range from `0` (frictionless) to `1` (maximum friction). Default value: `1`.
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
	@property bool rough()
	{
		return isRough();
	}
	/// ditto
	@property void rough(bool v)
	{
		setRough(v);
	}
	/**
	The body's bounciness. Default value: `0`.
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
	@property bool absorbent()
	{
		return isAbsorbent();
	}
	/// ditto
	@property void absorbent(bool v)
	{
		setAbsorbent(v);
	}
}
