/**
General-purpose area node for detection and 3D physics influence.

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
import godot.object;
import godot.classdb;
import godot.collisionobject;
import godot.node;
/**
General-purpose area node for detection and 3D physics influence.

3D area that detects $(D CollisionObject) nodes overlapping, entering, or exiting. Can also alter or override local physics parameters (gravity, damping).
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
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
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
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
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
		/**
		This area does not affect gravity/damping.
		*/
		spaceOverrideDisabled = 0,
		/**
		This area adds its gravity/damping values to whatever has been calculated so far (in $(D priority) order).
		*/
		spaceOverrideCombine = 1,
		/**
		This area adds its gravity/damping values to whatever has been calculated so far (in $(D priority) order), ignoring any lower priority areas.
		*/
		spaceOverrideCombineReplace = 2,
		/**
		This area replaces any gravity/damping, even the defaults, ignoring any lower priority areas.
		*/
		spaceOverrideReplace = 3,
		/**
		This area replaces any gravity/damping calculated so far (in $(D priority) order), but keeps calculating the rest of the areas.
		*/
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
	long getCollisionLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionLayer, _godot_object);
	}
	/**
	Returns an individual bit on the layer mask.
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionLayerBit, _godot_object, bit);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionMask, _godot_object);
	}
	/**
	Returns an individual bit on the collision mask.
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionMaskBit, _godot_object, bit);
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
	Returns a list of intersecting $(D Area)s. For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
	*/
	Array getOverlappingAreas() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getOverlappingAreas, _godot_object);
	}
	/**
	Returns a list of intersecting $(D PhysicsBody)s. For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
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
	If `true`, the given area overlaps the Area.
	$(B Note:) The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
	*/
	bool overlapsArea(Node area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.overlapsArea, _godot_object, area);
	}
	/**
	If `true`, the given physics body overlaps the Area.
	$(B Note:) The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
	The `body` argument can either be a $(D PhysicsBody) or a $(D GridMap) instance (while GridMaps are not physics body themselves, they register their tiles with collision shapes as a virtual physics body).
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
	void setCollisionLayer(in long collision_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionLayer, _godot_object, collision_layer);
	}
	/**
	Set/clear individual bits on the layer mask. This simplifies editing this $(D Area)'s layers.
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionLayerBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setCollisionMask(in long collision_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMask, _godot_object, collision_mask);
	}
	/**
	Set/clear individual bits on the collision mask. This simplifies editing which $(D Area) layers this $(D Area) scans.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMaskBit, _godot_object, bit, value);
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
	The rate at which objects stop spinning in this area. Represents the angular velocity lost per second.
	See $(D ProjectSettings.physics/3d/defaultAngularDamp) for more details about damping.
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
	The name of the area's audio bus.
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
	If `true`, the area's audio bus overrides the default audio bus.
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
	The area's physics layer(s). Collidable objects can exist in any of 32 different layers. A contact is detected if object A is in any of the layers that object B scans, or object B is in any layers that object A scans. See also $(D collisionMask). See $(D url=https://docs.godotengine.org/en/3.2/tutorials/physics/physics_introduction.html#collision-layers-and-masks)Collision layers and masks$(D /url) in the documentation for more information.
	*/
	@property long collisionLayer()
	{
		return getCollisionLayer();
	}
	/// ditto
	@property void collisionLayer(long v)
	{
		setCollisionLayer(v);
	}
	/**
	The physics layers this area scans to determine collision detection. See $(D url=https://docs.godotengine.org/en/3.2/tutorials/physics/physics_introduction.html#collision-layers-and-masks)Collision layers and masks$(D /url) in the documentation for more information.
	*/
	@property long collisionMask()
	{
		return getCollisionMask();
	}
	/// ditto
	@property void collisionMask(long v)
	{
		setCollisionMask(v);
	}
	/**
	The area's gravity intensity (ranges from -1024 to 1024). This value multiplies the gravity vector. This is useful to alter the force of gravity without altering its direction.
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
	The falloff factor for point gravity. The greater the value, the faster gravity decreases with distance.
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
	If `true`, gravity is calculated from a point (set via $(D gravityVec)). See also $(D spaceOverride).
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
	The area's gravity vector (not normalized). If gravity is a point (see $(D gravityPoint)), this will be the point of attraction.
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
	The rate at which objects stop moving in this area. Represents the linear velocity lost per second.
	See $(D ProjectSettings.physics/3d/defaultLinearDamp) for more details about damping.
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
	If `true`, other monitoring areas can detect this area.
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
	If `true`, the area detects bodies or areas entering and exiting it.
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
	The area's priority. Higher priority areas are processed first.
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
	The degree to which this area applies reverb to its associated audio. Ranges from `0` to `1` with `0.1` precision.
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
	If `true`, the area applies reverb to its associated audio.
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
	The reverb bus name to use for this area's associated audio.
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
	The degree to which this area's reverb is a uniform effect. Ranges from `0` to `1` with `0.1` precision.
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
	Override mode for gravity and damping calculations within this area. See $(D spaceoverride) for possible values.
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
