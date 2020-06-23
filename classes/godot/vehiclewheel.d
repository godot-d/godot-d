/**
Physics object that simulates the behavior of a wheel.

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
import godot.node;
/**
Physics object that simulates the behavior of a wheel.

This node needs to be used as a child node of $(D VehicleBody) and simulates the behavior of one of its wheels. This node also acts as a collider to detect if the wheel is touching a surface.
*/
@GodotBaseClass struct VehicleWheel
{
	package(godot) enum string _GODOT_internal_name = "VehicleWheel";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_brake") GodotMethod!(double) getBrake;
		@GodotName("get_damping_compression") GodotMethod!(double) getDampingCompression;
		@GodotName("get_damping_relaxation") GodotMethod!(double) getDampingRelaxation;
		@GodotName("get_engine_force") GodotMethod!(double) getEngineForce;
		@GodotName("get_friction_slip") GodotMethod!(double) getFrictionSlip;
		@GodotName("get_radius") GodotMethod!(double) getRadius;
		@GodotName("get_roll_influence") GodotMethod!(double) getRollInfluence;
		@GodotName("get_rpm") GodotMethod!(double) getRpm;
		@GodotName("get_skidinfo") GodotMethod!(double) getSkidinfo;
		@GodotName("get_steering") GodotMethod!(double) getSteering;
		@GodotName("get_suspension_max_force") GodotMethod!(double) getSuspensionMaxForce;
		@GodotName("get_suspension_rest_length") GodotMethod!(double) getSuspensionRestLength;
		@GodotName("get_suspension_stiffness") GodotMethod!(double) getSuspensionStiffness;
		@GodotName("get_suspension_travel") GodotMethod!(double) getSuspensionTravel;
		@GodotName("is_in_contact") GodotMethod!(bool) isInContact;
		@GodotName("is_used_as_steering") GodotMethod!(bool) isUsedAsSteering;
		@GodotName("is_used_as_traction") GodotMethod!(bool) isUsedAsTraction;
		@GodotName("set_brake") GodotMethod!(void, double) setBrake;
		@GodotName("set_damping_compression") GodotMethod!(void, double) setDampingCompression;
		@GodotName("set_damping_relaxation") GodotMethod!(void, double) setDampingRelaxation;
		@GodotName("set_engine_force") GodotMethod!(void, double) setEngineForce;
		@GodotName("set_friction_slip") GodotMethod!(void, double) setFrictionSlip;
		@GodotName("set_radius") GodotMethod!(void, double) setRadius;
		@GodotName("set_roll_influence") GodotMethod!(void, double) setRollInfluence;
		@GodotName("set_steering") GodotMethod!(void, double) setSteering;
		@GodotName("set_suspension_max_force") GodotMethod!(void, double) setSuspensionMaxForce;
		@GodotName("set_suspension_rest_length") GodotMethod!(void, double) setSuspensionRestLength;
		@GodotName("set_suspension_stiffness") GodotMethod!(void, double) setSuspensionStiffness;
		@GodotName("set_suspension_travel") GodotMethod!(void, double) setSuspensionTravel;
		@GodotName("set_use_as_steering") GodotMethod!(void, bool) setUseAsSteering;
		@GodotName("set_use_as_traction") GodotMethod!(void, bool) setUseAsTraction;
	}
	/// 
	pragma(inline, true) bool opEquals(in VehicleWheel other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VehicleWheel opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VehicleWheel.
	/// Note: use `memnew!VehicleWheel` instead.
	static VehicleWheel _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VehicleWheel");
		if(constructor is null) return typeof(this).init;
		return cast(VehicleWheel)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getBrake() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBrake, _godot_object);
	}
	/**
	
	*/
	double getDampingCompression() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDampingCompression, _godot_object);
	}
	/**
	
	*/
	double getDampingRelaxation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDampingRelaxation, _godot_object);
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
	double getFrictionSlip() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFrictionSlip, _godot_object);
	}
	/**
	
	*/
	double getRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRadius, _godot_object);
	}
	/**
	
	*/
	double getRollInfluence() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRollInfluence, _godot_object);
	}
	/**
	Returns the rotational speed of the wheel in revolutions per minute.
	*/
	double getRpm() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRpm, _godot_object);
	}
	/**
	Returns a value between 0.0 and 1.0 that indicates whether this wheel is skidding. 0.0 is skidding (the wheel has lost grip, e.g. icy terrain), 1.0 means not skidding (the wheel has full grip, e.g. dry asphalt road).
	*/
	double getSkidinfo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSkidinfo, _godot_object);
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
	double getSuspensionMaxForce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSuspensionMaxForce, _godot_object);
	}
	/**
	
	*/
	double getSuspensionRestLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSuspensionRestLength, _godot_object);
	}
	/**
	
	*/
	double getSuspensionStiffness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSuspensionStiffness, _godot_object);
	}
	/**
	
	*/
	double getSuspensionTravel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSuspensionTravel, _godot_object);
	}
	/**
	Returns `true` if this wheel is in contact with a surface.
	*/
	bool isInContact() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInContact, _godot_object);
	}
	/**
	
	*/
	bool isUsedAsSteering() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsedAsSteering, _godot_object);
	}
	/**
	
	*/
	bool isUsedAsTraction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsedAsTraction, _godot_object);
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
	void setDampingCompression(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDampingCompression, _godot_object, length);
	}
	/**
	
	*/
	void setDampingRelaxation(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDampingRelaxation, _godot_object, length);
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
	void setFrictionSlip(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrictionSlip, _godot_object, length);
	}
	/**
	
	*/
	void setRadius(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRadius, _godot_object, length);
	}
	/**
	
	*/
	void setRollInfluence(in double roll_influence)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRollInfluence, _godot_object, roll_influence);
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
	void setSuspensionMaxForce(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSuspensionMaxForce, _godot_object, length);
	}
	/**
	
	*/
	void setSuspensionRestLength(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSuspensionRestLength, _godot_object, length);
	}
	/**
	
	*/
	void setSuspensionStiffness(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSuspensionStiffness, _godot_object, length);
	}
	/**
	
	*/
	void setSuspensionTravel(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSuspensionTravel, _godot_object, length);
	}
	/**
	
	*/
	void setUseAsSteering(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseAsSteering, _godot_object, enable);
	}
	/**
	
	*/
	void setUseAsTraction(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseAsTraction, _godot_object, enable);
	}
	/**
	Slows down the wheel by applying a braking force. The wheel is only slowed down if it is in contact with a surface. The force you need to apply to adequately slow down your vehicle depends on the $(D RigidBody.mass) of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 30 range for hard braking.
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
	The damping applied to the spring when relaxing. This value should be between 0.0 (no damping) and 1.0. This value should always be slightly higher than the $(D dampingCompression) property. For a $(D dampingCompression) value of 0.3, try a relaxation value of 0.5.
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
	/**
	Accelerates the wheel by applying an engine force. The wheel is only speed up if it is in contact with a surface. The $(D RigidBody.mass) of the vehicle has an effect on the acceleration of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 50 range for acceleration.
	$(B Note:) The simulation does not take the effect of gears into account, you will need to add logic for this if you wish to simulate gears.
	A negative value will result in the wheel reversing.
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
	The steering angle for the wheel. Setting this to a non-zero value will result in the vehicle turning when it's moving.
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
	/**
	The maximum force the spring can resist. This value should be higher than a quarter of the $(D RigidBody.mass) of the $(D VehicleBody) or the spring will not carry the weight of the vehicle. Good results are often obtained by a value that is about 3× to 4× this number.
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
	This value defines the stiffness of the suspension. Use a value lower than 50 for an off-road car, a value between 50 and 100 for a race car and try something around 200 for something like a Formula 1 car.
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
	This is the distance the suspension can travel. As Godot units are equivalent to meters, keep this setting relatively low. Try a value between 0.1 and 0.3 depending on the type of car.
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
	If `true`, this wheel will be turned when the car steers. This value is used in conjunction with $(D VehicleBody.steering) and ignored if you are using the per-wheel $(D steering) value instead.
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
	If `true`, this wheel transfers engine force to the ground to propel the vehicle forward. This value is used in conjunction with $(D VehicleBody.engineForce) and ignored if you are using the per-wheel $(D engineForce) value instead.
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
	This determines how much grip this wheel has. It is combined with the friction setting of the surface the wheel is in contact with. 0.0 means no grip, 1.0 is normal grip. For a drift car setup, try setting the grip of the rear wheels slightly lower than the front wheels, or use a lower value to simulate tire wear.
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
	This is the distance in meters the wheel is lowered from its origin point. Don't set this to 0.0 and move the wheel into position, instead move the origin point of your wheel (the gizmo in Godot) to the position the wheel will take when bottoming out, then use the rest length to move the wheel down to the position it should be in when the car is in rest.
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
	This value affects the roll of your vehicle. If set to 1.0 for all wheels, your vehicle will be prone to rolling over, while a value of 0.0 will resist body roll.
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
}
