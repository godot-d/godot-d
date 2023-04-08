/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.vehiclewheel;
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
import godot.spatial;
import godot.node;
/**

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
		@GodotName("get_contact_body") GodotMethod!(Spatial) getContactBody;
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
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
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
	Spatial getContactBody() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Spatial)(GDNativeClassBinding.getContactBody, _godot_object);
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
	
	*/
	double getRpm() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRpm, _godot_object);
	}
	/**
	
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
	/**
	
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
