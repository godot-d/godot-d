/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.area;
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
import godot.collisionobject;
import godot.node;
/**

*/
@GodotBaseClass struct Area
{
	package(godot) enum string _GODOT_internal_name = "Area";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CollisionObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_area_enter_tree") GodotMethod!(void, long) _areaEnterTree;
		@GodotName("_area_exit_tree") GodotMethod!(void, long) _areaExitTree;
		@GodotName("_area_inout") GodotMethod!(void, long, RID, long, long, long) _areaInout;
		@GodotName("_body_enter_tree") GodotMethod!(void, long) _bodyEnterTree;
		@GodotName("_body_exit_tree") GodotMethod!(void, long) _bodyExitTree;
		@GodotName("_body_inout") GodotMethod!(void, long, RID, long, long, long) _bodyInout;
		@GodotName("get_angular_damp") GodotMethod!(double) getAngularDamp;
		@GodotName("get_audio_bus") GodotMethod!(String) getAudioBus;
		@GodotName("get_gravity") GodotMethod!(double) getGravity;
		@GodotName("get_gravity_distance_scale") GodotMethod!(double) getGravityDistanceScale;
		@GodotName("get_gravity_vector") GodotMethod!(Vector3) getGravityVector;
		@GodotName("get_linear_damp") GodotMethod!(double) getLinearDamp;
		@GodotName("get_overlapping_areas") GodotMethod!(Array) getOverlappingAreas;
		@GodotName("get_overlapping_bodies") GodotMethod!(Array) getOverlappingBodies;
		@GodotName("get_priority") GodotMethod!(double) getPriority;
		@GodotName("get_reverb_amount") GodotMethod!(double) getReverbAmount;
		@GodotName("get_reverb_bus") GodotMethod!(String) getReverbBus;
		@GodotName("get_reverb_uniformity") GodotMethod!(double) getReverbUniformity;
		@GodotName("get_space_override_mode") GodotMethod!(Area.SpaceOverride) getSpaceOverrideMode;
		@GodotName("is_gravity_a_point") GodotMethod!(bool) isGravityAPoint;
		@GodotName("is_monitorable") GodotMethod!(bool) isMonitorable;
		@GodotName("is_monitoring") GodotMethod!(bool) isMonitoring;
		@GodotName("is_overriding_audio_bus") GodotMethod!(bool) isOverridingAudioBus;
		@GodotName("is_using_reverb_bus") GodotMethod!(bool) isUsingReverbBus;
		@GodotName("overlaps_area") GodotMethod!(bool, Node) overlapsArea;
		@GodotName("overlaps_body") GodotMethod!(bool, Node) overlapsBody;
		@GodotName("set_angular_damp") GodotMethod!(void, double) setAngularDamp;
		@GodotName("set_audio_bus") GodotMethod!(void, String) setAudioBus;
		@GodotName("set_audio_bus_override") GodotMethod!(void, bool) setAudioBusOverride;
		@GodotName("set_gravity") GodotMethod!(void, double) setGravity;
		@GodotName("set_gravity_distance_scale") GodotMethod!(void, double) setGravityDistanceScale;
		@GodotName("set_gravity_is_point") GodotMethod!(void, bool) setGravityIsPoint;
		@GodotName("set_gravity_vector") GodotMethod!(void, Vector3) setGravityVector;
		@GodotName("set_linear_damp") GodotMethod!(void, double) setLinearDamp;
		@GodotName("set_monitorable") GodotMethod!(void, bool) setMonitorable;
		@GodotName("set_monitoring") GodotMethod!(void, bool) setMonitoring;
		@GodotName("set_priority") GodotMethod!(void, double) setPriority;
		@GodotName("set_reverb_amount") GodotMethod!(void, double) setReverbAmount;
		@GodotName("set_reverb_bus") GodotMethod!(void, String) setReverbBus;
		@GodotName("set_reverb_uniformity") GodotMethod!(void, double) setReverbUniformity;
		@GodotName("set_space_override_mode") GodotMethod!(void, long) setSpaceOverrideMode;
		@GodotName("set_use_reverb_bus") GodotMethod!(void, bool) setUseReverbBus;
	}
	/// 
	pragma(inline, true) bool opEquals(in Area other) const
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
	/// Construct a new instance of Area.
	/// Note: use `memnew!Area` instead.
	static Area _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Area");
		if(constructor is null) return typeof(this).init;
		return cast(Area)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum SpaceOverride : int
	{
		/** */
		spaceOverrideDisabled = 0,
		/** */
		spaceOverrideCombine = 1,
		/** */
		spaceOverrideCombineReplace = 2,
		/** */
		spaceOverrideReplace = 3,
		/** */
		spaceOverrideReplaceCombine = 4,
	}
	/// 
	enum Constants : int
	{
		spaceOverrideDisabled = 0,
		spaceOverrideCombine = 1,
		spaceOverrideCombineReplace = 2,
		spaceOverrideReplace = 3,
		spaceOverrideReplaceCombine = 4,
	}
	/**
	
	*/
	void _areaEnterTree(in long id)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_area_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _areaExitTree(in long id)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_area_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _areaInout(in long arg0, in RID arg1, in long arg2, in long arg3, in long arg4)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		_GODOT_args.append(arg4);
		String _GODOT_method_name = String("_area_inout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _bodyEnterTree(in long id)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_body_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _bodyExitTree(in long id)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_body_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _bodyInout(in long arg0, in RID arg1, in long arg2, in long arg3, in long arg4)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		_GODOT_args.append(arg4);
		String _GODOT_method_name = String("_body_inout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double getAngularDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAngularDamp, _godot_object);
	}
	/**
	
	*/
	String getAudioBus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAudioBus, _godot_object);
	}
	/**
	
	*/
	double getGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGravity, _godot_object);
	}
	/**
	
	*/
	double getGravityDistanceScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGravityDistanceScale, _godot_object);
	}
	/**
	
	*/
	Vector3 getGravityVector() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getGravityVector, _godot_object);
	}
	/**
	
	*/
	double getLinearDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLinearDamp, _godot_object);
	}
	/**
	
	*/
	Array getOverlappingAreas() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getOverlappingAreas, _godot_object);
	}
	/**
	
	*/
	Array getOverlappingBodies() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getOverlappingBodies, _godot_object);
	}
	/**
	
	*/
	double getPriority() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPriority, _godot_object);
	}
	/**
	
	*/
	double getReverbAmount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getReverbAmount, _godot_object);
	}
	/**
	
	*/
	String getReverbBus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getReverbBus, _godot_object);
	}
	/**
	
	*/
	double getReverbUniformity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getReverbUniformity, _godot_object);
	}
	/**
	
	*/
	Area.SpaceOverride getSpaceOverrideMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Area.SpaceOverride)(GDNativeClassBinding.getSpaceOverrideMode, _godot_object);
	}
	/**
	
	*/
	bool isGravityAPoint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isGravityAPoint, _godot_object);
	}
	/**
	
	*/
	bool isMonitorable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isMonitorable, _godot_object);
	}
	/**
	
	*/
	bool isMonitoring() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isMonitoring, _godot_object);
	}
	/**
	
	*/
	bool isOverridingAudioBus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOverridingAudioBus, _godot_object);
	}
	/**
	
	*/
	bool isUsingReverbBus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingReverbBus, _godot_object);
	}
	/**
	
	*/
	bool overlapsArea(Node area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.overlapsArea, _godot_object, area);
	}
	/**
	
	*/
	bool overlapsBody(Node _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.overlapsBody, _godot_object, _body);
	}
	/**
	
	*/
	void setAngularDamp(in double angular_damp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAngularDamp, _godot_object, angular_damp);
	}
	/**
	
	*/
	void setAudioBus(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAudioBus, _godot_object, name);
	}
	/**
	
	*/
	void setAudioBusOverride(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAudioBusOverride, _godot_object, enable);
	}
	/**
	
	*/
	void setGravity(in double gravity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGravity, _godot_object, gravity);
	}
	/**
	
	*/
	void setGravityDistanceScale(in double distance_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGravityDistanceScale, _godot_object, distance_scale);
	}
	/**
	
	*/
	void setGravityIsPoint(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGravityIsPoint, _godot_object, enable);
	}
	/**
	
	*/
	void setGravityVector(in Vector3 vector)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGravityVector, _godot_object, vector);
	}
	/**
	
	*/
	void setLinearDamp(in double linear_damp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLinearDamp, _godot_object, linear_damp);
	}
	/**
	
	*/
	void setMonitorable(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMonitorable, _godot_object, enable);
	}
	/**
	
	*/
	void setMonitoring(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMonitoring, _godot_object, enable);
	}
	/**
	
	*/
	void setPriority(in double priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPriority, _godot_object, priority);
	}
	/**
	
	*/
	void setReverbAmount(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setReverbAmount, _godot_object, amount);
	}
	/**
	
	*/
	void setReverbBus(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setReverbBus, _godot_object, name);
	}
	/**
	
	*/
	void setReverbUniformity(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setReverbUniformity, _godot_object, amount);
	}
	/**
	
	*/
	void setSpaceOverrideMode(in long enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpaceOverrideMode, _godot_object, enable);
	}
	/**
	
	*/
	void setUseReverbBus(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseReverbBus, _godot_object, enable);
	}
	/**
	
	*/
	@property double angularDamp()
	{
		return getAngularDamp();
	}
	/// ditto
	@property void angularDamp(double v)
	{
		setAngularDamp(v);
	}
	/**
	
	*/
	@property String audioBusName()
	{
		return getAudioBus();
	}
	/// ditto
	@property void audioBusName(String v)
	{
		setAudioBus(v);
	}
	/**
	
	*/
	@property bool audioBusOverride()
	{
		return isOverridingAudioBus();
	}
	/// ditto
	@property void audioBusOverride(bool v)
	{
		setAudioBusOverride(v);
	}
	/**
	
	*/
	@property double gravity()
	{
		return getGravity();
	}
	/// ditto
	@property void gravity(double v)
	{
		setGravity(v);
	}
	/**
	
	*/
	@property double gravityDistanceScale()
	{
		return getGravityDistanceScale();
	}
	/// ditto
	@property void gravityDistanceScale(double v)
	{
		setGravityDistanceScale(v);
	}
	/**
	
	*/
	@property bool gravityPoint()
	{
		return isGravityAPoint();
	}
	/// ditto
	@property void gravityPoint(bool v)
	{
		setGravityIsPoint(v);
	}
	/**
	
	*/
	@property Vector3 gravityVec()
	{
		return getGravityVector();
	}
	/// ditto
	@property void gravityVec(Vector3 v)
	{
		setGravityVector(v);
	}
	/**
	
	*/
	@property double linearDamp()
	{
		return getLinearDamp();
	}
	/// ditto
	@property void linearDamp(double v)
	{
		setLinearDamp(v);
	}
	/**
	
	*/
	@property bool monitorable()
	{
		return isMonitorable();
	}
	/// ditto
	@property void monitorable(bool v)
	{
		setMonitorable(v);
	}
	/**
	
	*/
	@property bool monitoring()
	{
		return isMonitoring();
	}
	/// ditto
	@property void monitoring(bool v)
	{
		setMonitoring(v);
	}
	/**
	
	*/
	@property double priority()
	{
		return getPriority();
	}
	/// ditto
	@property void priority(double v)
	{
		setPriority(v);
	}
	/**
	
	*/
	@property double reverbBusAmount()
	{
		return getReverbAmount();
	}
	/// ditto
	@property void reverbBusAmount(double v)
	{
		setReverbAmount(v);
	}
	/**
	
	*/
	@property bool reverbBusEnable()
	{
		return isUsingReverbBus();
	}
	/// ditto
	@property void reverbBusEnable(bool v)
	{
		setUseReverbBus(v);
	}
	/**
	
	*/
	@property String reverbBusName()
	{
		return getReverbBus();
	}
	/// ditto
	@property void reverbBusName(String v)
	{
		setReverbBus(v);
	}
	/**
	
	*/
	@property double reverbBusUniformity()
	{
		return getReverbUniformity();
	}
	/// ditto
	@property void reverbBusUniformity(double v)
	{
		setReverbUniformity(v);
	}
	/**
	
	*/
	@property Area.SpaceOverride spaceOverride()
	{
		return getSpaceOverrideMode();
	}
	/// ditto
	@property void spaceOverride(long v)
	{
		setSpaceOverrideMode(v);
	}
}
