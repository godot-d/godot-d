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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.collisionobject2d;
import godot.node;
/**
2D area for detection and 2D physics influence.

2D area that detects $(D CollisionObject2D) nodes overlapping, entering, or exiting. Can also alter or override local physics parameters (gravity, damping).
*/
@GodotBaseClass struct Area2D
{
	package(godot) enum string _GODOT_internal_name = "Area2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CollisionObject2D _GODOT_base; }
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
		@GodotName("get_audio_bus_name") GodotMethod!(String) getAudioBusName;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("get_gravity") GodotMethod!(double) getGravity;
		@GodotName("get_gravity_distance_scale") GodotMethod!(double) getGravityDistanceScale;
		@GodotName("get_gravity_vector") GodotMethod!(Vector2) getGravityVector;
		@GodotName("get_linear_damp") GodotMethod!(double) getLinearDamp;
		@GodotName("get_overlapping_areas") GodotMethod!(Array) getOverlappingAreas;
		@GodotName("get_overlapping_bodies") GodotMethod!(Array) getOverlappingBodies;
		@GodotName("get_priority") GodotMethod!(double) getPriority;
		@GodotName("get_space_override_mode") GodotMethod!(Area2D.SpaceOverride) getSpaceOverrideMode;
		@GodotName("is_gravity_a_point") GodotMethod!(bool) isGravityAPoint;
		@GodotName("is_monitorable") GodotMethod!(bool) isMonitorable;
		@GodotName("is_monitoring") GodotMethod!(bool) isMonitoring;
		@GodotName("is_overriding_audio_bus") GodotMethod!(bool) isOverridingAudioBus;
		@GodotName("overlaps_area") GodotMethod!(bool, Node) overlapsArea;
		@GodotName("overlaps_body") GodotMethod!(bool, Node) overlapsBody;
		@GodotName("set_angular_damp") GodotMethod!(void, double) setAngularDamp;
		@GodotName("set_audio_bus_name") GodotMethod!(void, String) setAudioBusName;
		@GodotName("set_audio_bus_override") GodotMethod!(void, bool) setAudioBusOverride;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("set_gravity") GodotMethod!(void, double) setGravity;
		@GodotName("set_gravity_distance_scale") GodotMethod!(void, double) setGravityDistanceScale;
		@GodotName("set_gravity_is_point") GodotMethod!(void, bool) setGravityIsPoint;
		@GodotName("set_gravity_vector") GodotMethod!(void, Vector2) setGravityVector;
		@GodotName("set_linear_damp") GodotMethod!(void, double) setLinearDamp;
		@GodotName("set_monitorable") GodotMethod!(void, bool) setMonitorable;
		@GodotName("set_monitoring") GodotMethod!(void, bool) setMonitoring;
		@GodotName("set_priority") GodotMethod!(void, double) setPriority;
		@GodotName("set_space_override_mode") GodotMethod!(void, long) setSpaceOverrideMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in Area2D other) const
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
	/// Construct a new instance of Area2D.
	/// Note: use `memnew!Area2D` instead.
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
	String getAudioBusName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAudioBusName, _godot_object);
	}
	/**
	
	*/
	long getCollisionLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionLayer, _godot_object);
	}
	/**
	Returns an individual bit on the layer mask. Describes whether other areas will collide with this one on the given layer.
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
	Returns an individual bit on the collision mask. Describes whether this area will collide with others on the given layer.
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
	Vector2 getGravityVector() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getGravityVector, _godot_object);
	}
	/**
	
	*/
	double getLinearDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLinearDamp, _godot_object);
	}
	/**
	Returns a list of intersecting $(D Area2D)s. For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
	*/
	Array getOverlappingAreas() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getOverlappingAreas, _godot_object);
	}
	/**
	Returns a list of intersecting $(D PhysicsBody2D)s. For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
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
	Area2D.SpaceOverride getSpaceOverrideMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Area2D.SpaceOverride)(GDNativeClassBinding.getSpaceOverrideMode, _godot_object);
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
	If `true`, the given area overlaps the Area2D.
	$(B Note:) The result of this test is not immediate after moving objects. For performance, the list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
	*/
	bool overlapsArea(Node area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.overlapsArea, _godot_object, area);
	}
	/**
	If `true`, the given physics body overlaps the Area2D.
	$(B Note:) The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
	The `body` argument can either be a $(D PhysicsBody2D) or a $(D TileMap) instance (while TileMaps are not physics bodies themselves, they register their tiles with collision shapes as a virtual physics body).
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
	void setAudioBusName(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAudioBusName, _godot_object, name);
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
	Set/clear individual bits on the layer mask. This makes getting an area in/out of only one layer easier.
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
	Set/clear individual bits on the collision mask. This makes selecting the areas scanned easier.
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
	void setGravityVector(in Vector2 vector)
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
	void setSpaceOverrideMode(in long space_override_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpaceOverrideMode, _godot_object, space_override_mode);
	}
	/**
	The rate at which objects stop spinning in this area. Represents the angular velocity lost per second.
	See $(D ProjectSettings.physics/2d/defaultAngularDamp) for more details about damping.
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
		return getAudioBusName();
	}
	/// ditto
	@property void audioBusName(String v)
	{
		setAudioBusName(v);
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
	The area's physics layer(s). Collidable objects can exist in any of 32 different layers. A contact is detected if object A is in any of the layers that object B scans, or object B is in any layers that object A scans. See also $(D collisionMask). See $(D url=https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks)Collision layers and masks$(D /url) in the documentation for more information.
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
	The physics layers this area scans to determine collision detection. See $(D url=https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks)Collision layers and masks$(D /url) in the documentation for more information.
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
	The area's gravity intensity (in pixels per second squared). This value multiplies the gravity vector. This is useful to alter the force of gravity without altering its direction.
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
	The rate at which objects stop moving in this area. Represents the linear velocity lost per second.
	See $(D ProjectSettings.physics/2d/defaultLinearDamp) for more details about damping.
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
	Override mode for gravity and damping calculations within this area. See $(D spaceoverride) for possible values.
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
}
