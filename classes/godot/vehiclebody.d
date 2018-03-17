/**
Physics body that simulates the behaviour of a car.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.vehiclebody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.rigidbody;
/**
Physics body that simulates the behaviour of a car.

This nodes implements all the physics logic needed to simulate a car. It is based on the raycast vehicle system commonly found in physics engines. You will need to add a $(D CollisionShape) for the main body of your vehicle and add $(D VehicleWheel) nodes for the wheels. You should also add a $(D MeshInstance) to this node for the 3D model of your car but this model should not include meshes for the wheels. You should control the vehicle by using the $(D brake), $(D engineForce), and $(D steering) properties and not change the position or orientation of this node directly.
Note that the origin point of your VehicleBody will determine the center of gravity of your vehicle so it is better to keep this low and move the $(D CollisionShape) and $(D MeshInstance) upwards.
*/
@GodotBaseClass struct VehicleBody
{
	static immutable string _GODOT_internal_name = "VehicleBody";
public:
@nogc nothrow:
	union { godot_object _godot_object; RigidBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VehicleBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VehicleBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VehicleBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VehicleBody");
		if(constructor is null) return typeof(this).init;
		return cast(VehicleBody)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_engine_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_engine_force") = _GODOT_set_engine_force;
	/**
	
	*/
	void setEngineForce(in double engine_force)
	{
		_GODOT_set_engine_force.bind("VehicleBody", "set_engine_force");
		ptrcall!(void)(_GODOT_set_engine_force, _godot_object, engine_force);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_engine_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_engine_force") = _GODOT_get_engine_force;
	/**
	
	*/
	double getEngineForce() const
	{
		_GODOT_get_engine_force.bind("VehicleBody", "get_engine_force");
		return ptrcall!(double)(_GODOT_get_engine_force, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_brake;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_brake") = _GODOT_set_brake;
	/**
	
	*/
	void setBrake(in double brake)
	{
		_GODOT_set_brake.bind("VehicleBody", "set_brake");
		ptrcall!(void)(_GODOT_set_brake, _godot_object, brake);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_brake;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_brake") = _GODOT_get_brake;
	/**
	
	*/
	double getBrake() const
	{
		_GODOT_get_brake.bind("VehicleBody", "get_brake");
		return ptrcall!(double)(_GODOT_get_brake, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_steering;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_steering") = _GODOT_set_steering;
	/**
	
	*/
	void setSteering(in double steering)
	{
		_GODOT_set_steering.bind("VehicleBody", "set_steering");
		ptrcall!(void)(_GODOT_set_steering, _godot_object, steering);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_steering;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_steering") = _GODOT_get_steering;
	/**
	
	*/
	double getSteering() const
	{
		_GODOT_get_steering.bind("VehicleBody", "get_steering");
		return ptrcall!(double)(_GODOT_get_steering, _godot_object);
	}
	/**
	Accelerates the vehicle by applying an engine force. The vehicle is only speed up if the wheels that have $(D VehicleWheel.setUseAsTraction) set to true and are in contact with a surface. The $(D RigidBody.mass) of the vehicle has an effect on the acceleration of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 50 range for acceleration. Note that the simulation does not take the effect of gears into account, you will need to add logic for this if you wish to simulate gears.
	A negative value will result in the vehicle reversing.
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
	Slows down the vehicle by applying a braking force. The vehicle is only slowed down if the wheels are in contact with a surface. The force you need to apply to adequately slow down your vehicle depends on the $(D RigidBody.mass) of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 30 range for hard braking.
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
	The steering angle for the vehicle. Setting this to a non-zero value will result in the vehicle turning when it's moving. Wheels that have $(D VehicleWheel.setUseAsSteering) set to true will automatically be rotated.
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
