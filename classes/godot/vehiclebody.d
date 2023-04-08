/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.vehiclebody;
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
import godot.rigidbody;
import godot.physicsbody;
import godot.collisionobject;
import godot.spatial;
import godot.node;
/**

*/
@GodotBaseClass struct VehicleBody
{
	package(godot) enum string _GODOT_internal_name = "VehicleBody";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ RigidBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_brake") GodotMethod!(double) getBrake;
		@GodotName("get_engine_force") GodotMethod!(double) getEngineForce;
		@GodotName("get_steering") GodotMethod!(double) getSteering;
		@GodotName("set_brake") GodotMethod!(void, double) setBrake;
		@GodotName("set_engine_force") GodotMethod!(void, double) setEngineForce;
		@GodotName("set_steering") GodotMethod!(void, double) setSteering;
	}
	/// 
	pragma(inline, true) bool opEquals(in VehicleBody other) const
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
	/// Construct a new instance of VehicleBody.
	/// Note: use `memnew!VehicleBody` instead.
	static VehicleBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VehicleBody");
		if(constructor is null) return typeof(this).init;
		return cast(VehicleBody)(constructor());
	}
	/**
	
	*/
	double getBrake() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBrake, _godot_object);
	}
	/**
	
	*/
	double getEngineForce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEngineForce, _godot_object);
	}
	/**
	
	*/
	double getSteering() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSteering, _godot_object);
	}
	/**
	
	*/
	void setBrake(in double brake)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBrake, _godot_object, brake);
	}
	/**
	
	*/
	void setEngineForce(in double engine_force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEngineForce, _godot_object, engine_force);
	}
	/**
	
	*/
	void setSteering(in double steering)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSteering, _godot_object, steering);
	}
	/**
	
	*/
	@property double brake()
	{
		return getBrake();
	}
	/// ditto
	@property void brake(double v)
	{
		setBrake(v);
	}
	/**
	
	*/
	@property double engineForce()
	{
		return getEngineForce();
	}
	/// ditto
	@property void engineForce(double v)
	{
		setEngineForce(v);
	}
	/**
	
	*/
	@property double steering()
	{
		return getSteering();
	}
	/// ditto
	@property void steering(double v)
	{
		setSteering(v);
	}
}
