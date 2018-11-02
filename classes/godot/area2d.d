/**
2D area for detection and 2D physics influence.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.area2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.collisionobject2d;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**
2D area for detection and 2D physics influence.

2D area that detects $(D CollisionObject2D) nodes overlapping, entering, or exiting. Can also alter or override local physics parameters (gravity, damping).
*/
@GodotBaseClass struct Area2D
{
	enum string _GODOT_internal_name = "Area2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; CollisionObject2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_body_enter_tree") GodotMethod!(void, long) _bodyEnterTree;
		@GodotName("_body_exit_tree") GodotMethod!(void, long) _bodyExitTree;
		@GodotName("_area_enter_tree") GodotMethod!(void, long) _areaEnterTree;
		@GodotName("_area_exit_tree") GodotMethod!(void, long) _areaExitTree;
		@GodotName("set_space_override_mode") GodotMethod!(void, long) setSpaceOverrideMode;
		@GodotName("get_space_override_mode") GodotMethod!(Area2D.SpaceOverride) getSpaceOverrideMode;
		@GodotName("set_gravity_is_point") GodotMethod!(void, bool) setGravityIsPoint;
		@GodotName("is_gravity_a_point") GodotMethod!(bool) isGravityAPoint;
		@GodotName("set_gravity_distance_scale") GodotMethod!(void, double) setGravityDistanceScale;
		@GodotName("get_gravity_distance_scale") GodotMethod!(double) getGravityDistanceScale;
		@GodotName("set_gravity_vector") GodotMethod!(void, Vector2) setGravityVector;
		@GodotName("get_gravity_vector") GodotMethod!(Vector2) getGravityVector;
		@GodotName("set_gravity") GodotMethod!(void, double) setGravity;
		@GodotName("get_gravity") GodotMethod!(double) getGravity;
		@GodotName("set_linear_damp") GodotMethod!(void, double) setLinearDamp;
		@GodotName("get_linear_damp") GodotMethod!(double) getLinearDamp;
		@GodotName("set_angular_damp") GodotMethod!(void, double) setAngularDamp;
		@GodotName("get_angular_damp") GodotMethod!(double) getAngularDamp;
		@GodotName("set_priority") GodotMethod!(void, double) setPriority;
		@GodotName("get_priority") GodotMethod!(double) getPriority;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("set_monitoring") GodotMethod!(void, bool) setMonitoring;
		@GodotName("is_monitoring") GodotMethod!(bool) isMonitoring;
		@GodotName("set_monitorable") GodotMethod!(void, bool) setMonitorable;
		@GodotName("is_monitorable") GodotMethod!(bool) isMonitorable;
		@GodotName("get_overlapping_bodies") GodotMethod!(Array) getOverlappingBodies;
		@GodotName("get_overlapping_areas") GodotMethod!(Array) getOverlappingAreas;
		@GodotName("overlaps_body") GodotMethod!(bool, GodotObject) overlapsBody;
		@GodotName("overlaps_area") GodotMethod!(bool, GodotObject) overlapsArea;
		@GodotName("set_audio_bus_name") GodotMethod!(void, String) setAudioBusName;
		@GodotName("get_audio_bus_name") GodotMethod!(String) getAudioBusName;
		@GodotName("set_audio_bus_override") GodotMethod!(void, bool) setAudioBusOverride;
		@GodotName("is_overriding_audio_bus") GodotMethod!(bool) isOverridingAudioBus;
		@GodotName("_body_inout") GodotMethod!(void, long, RID, long, long, long) _bodyInout;
		@GodotName("_area_inout") GodotMethod!(void, long, RID, long, long, long) _areaInout;
	}
	bool opEquals(in Area2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Area2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Area2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Area2D");
		if(constructor is null) return typeof(this).init;
		return cast(Area2D)(constructor());
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
		This area adds its gravity/damping values to whatever has been calculated so far (in `priority` order).
		*/
		spaceOverrideCombine = 1,
		/**
		This area adds its gravity/damping values to whatever has been calculated so far (in `priority` order), ignoring any lower priority areas.
		*/
		spaceOverrideCombineReplace = 2,
		/**
		This area replaces any gravity/damping, even the defaults, ignoring any lower priority areas.
		*/
		spaceOverrideReplace = 3,
		/**
		This area replaces any gravity/damping calculated so far (in `priority` order), but keeps calculating the rest of the areas.
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
	void _bodyEnterTree(in long id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_body_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _bodyExitTree(in long id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_body_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _areaEnterTree(in long id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_area_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _areaExitTree(in long id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_area_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setSpaceOverrideMode(in long space_override_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpaceOverrideMode, _godot_object, space_override_mode);
	}
	/**
	
	*/
	Area2D.SpaceOverride getSpaceOverrideMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Area2D.SpaceOverride)(_classBinding.getSpaceOverrideMode, _godot_object);
	}
	/**
	
	*/
	void setGravityIsPoint(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGravityIsPoint, _godot_object, enable);
	}
	/**
	
	*/
	bool isGravityAPoint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isGravityAPoint, _godot_object);
	}
	/**
	
	*/
	void setGravityDistanceScale(in double distance_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGravityDistanceScale, _godot_object, distance_scale);
	}
	/**
	
	*/
	double getGravityDistanceScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGravityDistanceScale, _godot_object);
	}
	/**
	
	*/
	void setGravityVector(in Vector2 vector)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGravityVector, _godot_object, vector);
	}
	/**
	
	*/
	Vector2 getGravityVector() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getGravityVector, _godot_object);
	}
	/**
	
	*/
	void setGravity(in double gravity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGravity, _godot_object, gravity);
	}
	/**
	
	*/
	double getGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGravity, _godot_object);
	}
	/**
	
	*/
	void setLinearDamp(in double linear_damp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLinearDamp, _godot_object, linear_damp);
	}
	/**
	
	*/
	double getLinearDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLinearDamp, _godot_object);
	}
	/**
	
	*/
	void setAngularDamp(in double angular_damp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAngularDamp, _godot_object, angular_damp);
	}
	/**
	
	*/
	double getAngularDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAngularDamp, _godot_object);
	}
	/**
	
	*/
	void setPriority(in double priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPriority, _godot_object, priority);
	}
	/**
	
	*/
	double getPriority() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPriority, _godot_object);
	}
	/**
	
	*/
	void setCollisionMask(in long collision_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMask, _godot_object, collision_mask);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionMask, _godot_object);
	}
	/**
	
	*/
	void setCollisionLayer(in long collision_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionLayer, _godot_object, collision_layer);
	}
	/**
	
	*/
	long getCollisionLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionLayer, _godot_object);
	}
	/**
	Set/clear individual bits on the collision mask. This makes selecting the areas scanned easier.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	Return an individual bit on the collision mask. Describes whether this area will collide with others on the given layer.
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	Set/clear individual bits on the layer mask. This makes getting an area in/out of only one layer easier.
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionLayerBit, _godot_object, bit, value);
	}
	/**
	Return an individual bit on the layer mask. Describes whether other areas will collide with this one on the given layer.
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionLayerBit, _godot_object, bit);
	}
	/**
	
	*/
	void setMonitoring(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMonitoring, _godot_object, enable);
	}
	/**
	
	*/
	bool isMonitoring() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isMonitoring, _godot_object);
	}
	/**
	
	*/
	void setMonitorable(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMonitorable, _godot_object, enable);
	}
	/**
	
	*/
	bool isMonitorable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isMonitorable, _godot_object);
	}
	/**
	Returns a list of intersecting $(D PhysicsBody2D)s. For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
	*/
	Array getOverlappingBodies() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getOverlappingBodies, _godot_object);
	}
	/**
	Returns a list of intersecting `Area2D`s. For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
	*/
	Array getOverlappingAreas() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getOverlappingAreas, _godot_object);
	}
	/**
	If `true` the given body overlaps the Area2D. Note that the result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
	*/
	bool overlapsBody(GodotObject _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.overlapsBody, _godot_object, _body);
	}
	/**
	If `true` the given area overlaps the Area2D. Note that the result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
	*/
	bool overlapsArea(GodotObject area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.overlapsArea, _godot_object, area);
	}
	/**
	
	*/
	void setAudioBusName(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAudioBusName, _godot_object, name);
	}
	/**
	
	*/
	String getAudioBusName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getAudioBusName, _godot_object);
	}
	/**
	
	*/
	void setAudioBusOverride(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAudioBusOverride, _godot_object, enable);
	}
	/**
	
	*/
	bool isOverridingAudioBus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isOverridingAudioBus, _godot_object);
	}
	/**
	
	*/
	void _bodyInout(in long arg0, in RID arg1, in long arg2, in long arg3, in long arg4)
	{
		Array _GODOT_args = Array.empty_array;
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
	void _areaInout(in long arg0, in RID arg1, in long arg2, in long arg3, in long arg4)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		_GODOT_args.append(arg4);
		String _GODOT_method_name = String("_area_inout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Override mode for gravity and damping calculations within this area. See the SPACE_OVERRIDE_* constants for values.
	*/
	@property Area2D.SpaceOverride spaceOverride()
	{
		return getSpaceOverrideMode();
	}
	/// ditto
	@property void spaceOverride(long v)
	{
		setSpaceOverrideMode(v);
	}
	/**
	If `true` gravity is calculated from a point (set via `gravity_vec`). Also see `space_override`. Default value: `false`.
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
	The area's gravity vector (not normalized). If gravity is a point (see $(D isGravityAPoint)), this will be the point of attraction.
	*/
	@property Vector2 gravityVec()
	{
		return getGravityVector();
	}
	/// ditto
	@property void gravityVec(Vector2 v)
	{
		setGravityVector(v);
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
	The rate at which objects stop moving in this area. Represents the linear velocity lost per second. Values range from `0` (no damping) to `1` (full damping).
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
	The rate at which objects stop spinning in this area. Represents the angular velocity lost per second. Values range from `0` (no damping) to `1` (full damping).
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
	The area's priority. Higher priority areas are processed first. Default value: 0.
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
	If `true` the area detects bodies or areas entering and exiting it. Default value: `true`.
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
	If `true` other monitoring areas can detect this area. Default value: `true`.
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
	The area's physics layer(s). Collidable objects can exist in any of 32 different layers. A contact is detected if object A is in any of the layers that object B scans, or object B is in any layers that object A scans. See also `collision_mask`.
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
	The physics layers this area scans to determine collision detection.
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
	If `true` the area's audio bus overrides the default audio bus. Default value: `false`.
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
	The name of the area's audio bus.
	*/
	@property String audioBusName()
	{
		return getAudioBusName();
	}
	/// ditto
	@property void audioBusName(String v)
	{
		setAudioBusName(v);
	}
}
