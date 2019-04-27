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
import godot.node;
/**
Physics object that simulates the behaviour of a wheel.

This node needs to be used as a child node of $(D VehicleBody) and simulates the behaviour of one of its wheels. This node also acts as a collider to detect if the wheel is touching a surface.
*/
@GodotBaseClass struct VehicleWheel
{
	enum string _GODOT_internal_name = "VehicleWheel";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_radius") GodotMethod!(void, double) setRadius;
		@GodotName("get_radius") GodotMethod!(double) getRadius;
		@GodotName("set_suspension_rest_length") GodotMethod!(void, double) setSuspensionRestLength;
		@GodotName("get_suspension_rest_length") GodotMethod!(double) getSuspensionRestLength;
		@GodotName("set_suspension_travel") GodotMethod!(void, double) setSuspensionTravel;
		@GodotName("get_suspension_travel") GodotMethod!(double) getSuspensionTravel;
		@GodotName("set_suspension_stiffness") GodotMethod!(void, double) setSuspensionStiffness;
		@GodotName("get_suspension_stiffness") GodotMethod!(double) getSuspensionStiffness;
		@GodotName("set_suspension_max_force") GodotMethod!(void, double) setSuspensionMaxForce;
		@GodotName("get_suspension_max_force") GodotMethod!(double) getSuspensionMaxForce;
		@GodotName("set_damping_compression") GodotMethod!(void, double) setDampingCompression;
		@GodotName("get_damping_compression") GodotMethod!(double) getDampingCompression;
		@GodotName("set_damping_relaxation") GodotMethod!(void, double) setDampingRelaxation;
		@GodotName("get_damping_relaxation") GodotMethod!(double) getDampingRelaxation;
		@GodotName("set_use_as_traction") GodotMethod!(void, bool) setUseAsTraction;
		@GodotName("is_used_as_traction") GodotMethod!(bool) isUsedAsTraction;
		@GodotName("set_use_as_steering") GodotMethod!(void, bool) setUseAsSteering;
		@GodotName("is_used_as_steering") GodotMethod!(bool) isUsedAsSteering;
		@GodotName("set_friction_slip") GodotMethod!(void, double) setFrictionSlip;
		@GodotName("get_friction_slip") GodotMethod!(double) getFrictionSlip;
		@GodotName("is_in_contact") GodotMethod!(bool) isInContact;
		@GodotName("set_roll_influence") GodotMethod!(void, double) setRollInfluence;
		@GodotName("get_roll_influence") GodotMethod!(double) getRollInfluence;
		@GodotName("get_skidinfo") GodotMethod!(double) getSkidinfo;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void setRadius(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadius, _godot_object, length);
	}
	/**
	
	*/
	double getRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRadius, _godot_object);
	}
	/**
	
	*/
	void setSuspensionRestLength(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSuspensionRestLength, _godot_object, length);
	}
	/**
	
	*/
	double getSuspensionRestLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSuspensionRestLength, _godot_object);
	}
	/**
	
	*/
	void setSuspensionTravel(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSuspensionTravel, _godot_object, length);
	}
	/**
	
	*/
	double getSuspensionTravel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSuspensionTravel, _godot_object);
	}
	/**
	
	*/
	void setSuspensionStiffness(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSuspensionStiffness, _godot_object, length);
	}
	/**
	
	*/
	double getSuspensionStiffness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSuspensionStiffness, _godot_object);
	}
	/**
	
	*/
	void setSuspensionMaxForce(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSuspensionMaxForce, _godot_object, length);
	}
	/**
	
	*/
	double getSuspensionMaxForce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSuspensionMaxForce, _godot_object);
	}
	/**
	
	*/
	void setDampingCompression(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDampingCompression, _godot_object, length);
	}
	/**
	
	*/
	double getDampingCompression() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDampingCompression, _godot_object);
	}
	/**
	
	*/
	void setDampingRelaxation(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDampingRelaxation, _godot_object, length);
	}
	/**
	
	*/
	double getDampingRelaxation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDampingRelaxation, _godot_object);
	}
	/**
	
	*/
	void setUseAsTraction(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseAsTraction, _godot_object, enable);
	}
	/**
	
	*/
	bool isUsedAsTraction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsedAsTraction, _godot_object);
	}
	/**
	
	*/
	void setUseAsSteering(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseAsSteering, _godot_object, enable);
	}
	/**
	
	*/
	bool isUsedAsSteering() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsedAsSteering, _godot_object);
	}
	/**
	
	*/
	void setFrictionSlip(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFrictionSlip, _godot_object, length);
	}
	/**
	
	*/
	double getFrictionSlip() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFrictionSlip, _godot_object);
	}
	/**
	Returns `true` if this wheel is in contact with a surface.
	*/
	bool isInContact() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInContact, _godot_object);
	}
	/**
	
	*/
	void setRollInfluence(in double roll_influence)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRollInfluence, _godot_object, roll_influence);
	}
	/**
	
	*/
	double getRollInfluence() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRollInfluence, _godot_object);
	}
	/**
	Returns a value between 0.0 and 1.0 that indicates whether this wheel is skidding. 0.0 is not skidding, 1.0 means the wheel has lost grip.
	*/
	double getSkidinfo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSkidinfo, _godot_object);
	}
	/**
	If `true` this wheel transfers engine force to the ground to propel the vehicle forward.
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
	If `true` this wheel will be turned when the car steers.
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
	This is the distance the suspension can travel. As Godot measures are in meters keep this setting relatively low. Try a value between 0.1 and 0.3 depending on the type of car .
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
	The maximum force the spring can resist. This value should be higher than a quarter of the $(D RigidBody.mass) of the $(D VehicleBody) or the spring will not carry the weight of the vehicle. Good results are often obtained by a value that is about 3x to 4x this number.
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
	The damping applied to the spring when relaxing. This value should be between 0.0 (no damping) and 1.0. This value should always be slightly higher than the $(D dampingCompression) property. For a $(D dampingCompression) value of 0.3, try a relaxation value of 0.5
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
