/**
Physics object that simulates the behaviour of a wheel.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.vehiclewheel;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
/**
Physics object that simulates the behaviour of a wheel.

This node needs to be used as a child node of $(D VehicleBody) and simulates the behaviour of one of its wheels. This node also acts as a collider to detect if the wheel is touching a surface.
*/
@GodotBaseClass struct VehicleWheel
{
	static immutable string _GODOT_internal_name = "VehicleWheel";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VehicleWheel other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VehicleWheel opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VehicleWheel _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VehicleWheel");
		if(constructor is null) return typeof(this).init;
		return cast(VehicleWheel)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radius") = _GODOT_set_radius;
	/**
	
	*/
	void setRadius(in double length)
	{
		_GODOT_set_radius.bind("VehicleWheel", "set_radius");
		ptrcall!(void)(_GODOT_set_radius, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radius") = _GODOT_get_radius;
	/**
	
	*/
	double getRadius() const
	{
		_GODOT_get_radius.bind("VehicleWheel", "get_radius");
		return ptrcall!(double)(_GODOT_get_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_suspension_rest_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_suspension_rest_length") = _GODOT_set_suspension_rest_length;
	/**
	
	*/
	void setSuspensionRestLength(in double length)
	{
		_GODOT_set_suspension_rest_length.bind("VehicleWheel", "set_suspension_rest_length");
		ptrcall!(void)(_GODOT_set_suspension_rest_length, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_suspension_rest_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_suspension_rest_length") = _GODOT_get_suspension_rest_length;
	/**
	
	*/
	double getSuspensionRestLength() const
	{
		_GODOT_get_suspension_rest_length.bind("VehicleWheel", "get_suspension_rest_length");
		return ptrcall!(double)(_GODOT_get_suspension_rest_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_suspension_travel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_suspension_travel") = _GODOT_set_suspension_travel;
	/**
	
	*/
	void setSuspensionTravel(in double length)
	{
		_GODOT_set_suspension_travel.bind("VehicleWheel", "set_suspension_travel");
		ptrcall!(void)(_GODOT_set_suspension_travel, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_suspension_travel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_suspension_travel") = _GODOT_get_suspension_travel;
	/**
	
	*/
	double getSuspensionTravel() const
	{
		_GODOT_get_suspension_travel.bind("VehicleWheel", "get_suspension_travel");
		return ptrcall!(double)(_GODOT_get_suspension_travel, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_suspension_stiffness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_suspension_stiffness") = _GODOT_set_suspension_stiffness;
	/**
	
	*/
	void setSuspensionStiffness(in double length)
	{
		_GODOT_set_suspension_stiffness.bind("VehicleWheel", "set_suspension_stiffness");
		ptrcall!(void)(_GODOT_set_suspension_stiffness, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_suspension_stiffness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_suspension_stiffness") = _GODOT_get_suspension_stiffness;
	/**
	
	*/
	double getSuspensionStiffness() const
	{
		_GODOT_get_suspension_stiffness.bind("VehicleWheel", "get_suspension_stiffness");
		return ptrcall!(double)(_GODOT_get_suspension_stiffness, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_suspension_max_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_suspension_max_force") = _GODOT_set_suspension_max_force;
	/**
	
	*/
	void setSuspensionMaxForce(in double length)
	{
		_GODOT_set_suspension_max_force.bind("VehicleWheel", "set_suspension_max_force");
		ptrcall!(void)(_GODOT_set_suspension_max_force, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_suspension_max_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_suspension_max_force") = _GODOT_get_suspension_max_force;
	/**
	
	*/
	double getSuspensionMaxForce() const
	{
		_GODOT_get_suspension_max_force.bind("VehicleWheel", "get_suspension_max_force");
		return ptrcall!(double)(_GODOT_get_suspension_max_force, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_damping_compression;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_damping_compression") = _GODOT_set_damping_compression;
	/**
	
	*/
	void setDampingCompression(in double length)
	{
		_GODOT_set_damping_compression.bind("VehicleWheel", "set_damping_compression");
		ptrcall!(void)(_GODOT_set_damping_compression, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_damping_compression;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_damping_compression") = _GODOT_get_damping_compression;
	/**
	
	*/
	double getDampingCompression() const
	{
		_GODOT_get_damping_compression.bind("VehicleWheel", "get_damping_compression");
		return ptrcall!(double)(_GODOT_get_damping_compression, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_damping_relaxation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_damping_relaxation") = _GODOT_set_damping_relaxation;
	/**
	
	*/
	void setDampingRelaxation(in double length)
	{
		_GODOT_set_damping_relaxation.bind("VehicleWheel", "set_damping_relaxation");
		ptrcall!(void)(_GODOT_set_damping_relaxation, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_damping_relaxation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_damping_relaxation") = _GODOT_get_damping_relaxation;
	/**
	
	*/
	double getDampingRelaxation() const
	{
		_GODOT_get_damping_relaxation.bind("VehicleWheel", "get_damping_relaxation");
		return ptrcall!(double)(_GODOT_get_damping_relaxation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_as_traction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_as_traction") = _GODOT_set_use_as_traction;
	/**
	
	*/
	void setUseAsTraction(in bool enable)
	{
		_GODOT_set_use_as_traction.bind("VehicleWheel", "set_use_as_traction");
		ptrcall!(void)(_GODOT_set_use_as_traction, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_used_as_traction;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_used_as_traction") = _GODOT_is_used_as_traction;
	/**
	
	*/
	bool isUsedAsTraction() const
	{
		_GODOT_is_used_as_traction.bind("VehicleWheel", "is_used_as_traction");
		return ptrcall!(bool)(_GODOT_is_used_as_traction, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_as_steering;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_as_steering") = _GODOT_set_use_as_steering;
	/**
	
	*/
	void setUseAsSteering(in bool enable)
	{
		_GODOT_set_use_as_steering.bind("VehicleWheel", "set_use_as_steering");
		ptrcall!(void)(_GODOT_set_use_as_steering, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_used_as_steering;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_used_as_steering") = _GODOT_is_used_as_steering;
	/**
	
	*/
	bool isUsedAsSteering() const
	{
		_GODOT_is_used_as_steering.bind("VehicleWheel", "is_used_as_steering");
		return ptrcall!(bool)(_GODOT_is_used_as_steering, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_friction_slip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_friction_slip") = _GODOT_set_friction_slip;
	/**
	
	*/
	void setFrictionSlip(in double length)
	{
		_GODOT_set_friction_slip.bind("VehicleWheel", "set_friction_slip");
		ptrcall!(void)(_GODOT_set_friction_slip, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_friction_slip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_friction_slip") = _GODOT_get_friction_slip;
	/**
	
	*/
	double getFrictionSlip() const
	{
		_GODOT_get_friction_slip.bind("VehicleWheel", "get_friction_slip");
		return ptrcall!(double)(_GODOT_get_friction_slip, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_in_contact;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_in_contact") = _GODOT_is_in_contact;
	/**
	Returns true if this wheel is in contact with a surface.
	*/
	bool isInContact() const
	{
		_GODOT_is_in_contact.bind("VehicleWheel", "is_in_contact");
		return ptrcall!(bool)(_GODOT_is_in_contact, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_roll_influence;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_roll_influence") = _GODOT_set_roll_influence;
	/**
	
	*/
	void setRollInfluence(in double roll_influence)
	{
		_GODOT_set_roll_influence.bind("VehicleWheel", "set_roll_influence");
		ptrcall!(void)(_GODOT_set_roll_influence, _godot_object, roll_influence);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_roll_influence;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_roll_influence") = _GODOT_get_roll_influence;
	/**
	
	*/
	double getRollInfluence() const
	{
		_GODOT_get_roll_influence.bind("VehicleWheel", "get_roll_influence");
		return ptrcall!(double)(_GODOT_get_roll_influence, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_skidinfo;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_skidinfo") = _GODOT_get_skidinfo;
	/**
	Returns a value between 0.0 and 1.0 that indicates whether this wheel is skidding. 0.0 is not skidding, 1.0 means the wheel has lost grip.
	*/
	double getSkidinfo() const
	{
		_GODOT_get_skidinfo.bind("VehicleWheel", "get_skidinfo");
		return ptrcall!(double)(_GODOT_get_skidinfo, _godot_object);
	}
	/**
	If true this wheel transfers engine force to the ground to propel the vehicle forward.
	*/
	@property bool useAsTraction()
	{
		return isUsedAsTraction();
	}
	/// ditto
	@property void useAsTraction(bool v)
	{
		setUseAsTraction(v);
	}
	/**
	If true this wheel will be turned when the car steers.
	*/
	@property bool useAsSteering()
	{
		return isUsedAsSteering();
	}
	/// ditto
	@property void useAsSteering(bool v)
	{
		setUseAsSteering(v);
	}
	/**
	This value effects the roll of your vehicle. If set to 0.0 for all wheels your vehicle will be prone to rolling over while a value of 1.0 will resist body roll.
	*/
	@property double wheelRollInfluence()
	{
		return getRollInfluence();
	}
	/// ditto
	@property void wheelRollInfluence(double v)
	{
		setRollInfluence(v);
	}
	/**
	The radius of the wheel in meters.
	*/
	@property double wheelRadius()
	{
		return getRadius();
	}
	/// ditto
	@property void wheelRadius(double v)
	{
		setRadius(v);
	}
	/**
	This is the distance in meters the wheel is lowered from its origin point. Don't set this to 0.0 and move the wheel into position, instead move the origin point of your wheel (the gizmo in Godot) to the position the wheel will take when bottoming out, then use the rest lenght to move the wheel down to the position it should be in when the car is in rest.
	*/
	@property double wheelRestLength()
	{
		return getSuspensionRestLength();
	}
	/// ditto
	@property void wheelRestLength(double v)
	{
		setSuspensionRestLength(v);
	}
	/**
	This determines how much grip this wheel has. It is combined with the friction setting of the surface the wheel is in contact with. 0.0 means no grip, 1.0 is normal grip. For a drift car setup, try setting the grip of the rear wheels slightly lower then the front wheels, or use a lower value to simulate tire wear.
	It's best to set this to 1.0 when starting out.
	*/
	@property double wheelFrictionSlip()
	{
		return getFrictionSlip();
	}
	/// ditto
	@property void wheelFrictionSlip(double v)
	{
		setFrictionSlip(v);
	}
	/**
	This is the distance the suspension can travel. As Godots measures are in meters keep this setting relatively low. Try a value between 0.1 and 0.3 depending on the type of car .
	*/
	@property double suspensionTravel()
	{
		return getSuspensionTravel();
	}
	/// ditto
	@property void suspensionTravel(double v)
	{
		setSuspensionTravel(v);
	}
	/**
	This value defines the stiffness of the suspension. Use a value lower then 50 for an offroad car, a value between 50 and 100 for a race car and try something around 200 for something like a Formula 1 car.
	*/
	@property double suspensionStiffness()
	{
		return getSuspensionStiffness();
	}
	/// ditto
	@property void suspensionStiffness(double v)
	{
		setSuspensionStiffness(v);
	}
	/**
	The maximum force the spring can resist. This value should be higher then a quarter of the $(D RigidBody.mass) of the $(D VehicleBody) or the spring will not carry the weight of the vehicle. Good results are often obtained by a value that is about 3x to 4x this number.
	*/
	@property double suspensionMaxForce()
	{
		return getSuspensionMaxForce();
	}
	/// ditto
	@property void suspensionMaxForce(double v)
	{
		setSuspensionMaxForce(v);
	}
	/**
	The damping applied to the spring when the spring is being compressed. This value should be between 0.0 (no damping) and 1.0. A value of 0.0 means the car will keep bouncing as the spring keeps its energy. A good value for this is around 0.3 for a normal car, 0.5 for a race car.
	*/
	@property double dampingCompression()
	{
		return getDampingCompression();
	}
	/// ditto
	@property void dampingCompression(double v)
	{
		setDampingCompression(v);
	}
	/**
	The damping applied to the spring when relaxing. This value should be between 0.0 (no damping) and 1.0. This value should always be slighly higher then the $(D dampingCompression) property. For a $(D dampingCompression) value of 0.3, try a relaxation value of 0.5
	*/
	@property double dampingRelaxation()
	{
		return getDampingRelaxation();
	}
	/// ditto
	@property void dampingRelaxation(double v)
	{
		setDampingRelaxation(v);
	}
}
