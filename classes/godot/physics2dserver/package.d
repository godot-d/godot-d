/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2dserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.physics2ddirectbodystate;
import godot.physics2dtestmotionresult;
import godot.physics2ddirectspacestate;
/**

*/
@GodotBaseClass struct Physics2DServerSingleton
{
	package(godot) enum string _GODOT_internal_name = "Physics2DServer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "Physics2DServer";
		@GodotName("area_add_shape") GodotMethod!(void, RID, RID, Transform2D, bool) areaAddShape;
		@GodotName("area_attach_canvas_instance_id") GodotMethod!(void, RID, long) areaAttachCanvasInstanceId;
		@GodotName("area_attach_object_instance_id") GodotMethod!(void, RID, long) areaAttachObjectInstanceId;
		@GodotName("area_clear_shapes") GodotMethod!(void, RID) areaClearShapes;
		@GodotName("area_create") GodotMethod!(RID) areaCreate;
		@GodotName("area_get_canvas_instance_id") GodotMethod!(long, RID) areaGetCanvasInstanceId;
		@GodotName("area_get_object_instance_id") GodotMethod!(long, RID) areaGetObjectInstanceId;
		@GodotName("area_get_param") GodotMethod!(Variant, RID, long) areaGetParam;
		@GodotName("area_get_shape") GodotMethod!(RID, RID, long) areaGetShape;
		@GodotName("area_get_shape_count") GodotMethod!(long, RID) areaGetShapeCount;
		@GodotName("area_get_shape_transform") GodotMethod!(Transform2D, RID, long) areaGetShapeTransform;
		@GodotName("area_get_space") GodotMethod!(RID, RID) areaGetSpace;
		@GodotName("area_get_space_override_mode") GodotMethod!(Physics2DServer.AreaSpaceOverrideMode, RID) areaGetSpaceOverrideMode;
		@GodotName("area_get_transform") GodotMethod!(Transform2D, RID) areaGetTransform;
		@GodotName("area_remove_shape") GodotMethod!(void, RID, long) areaRemoveShape;
		@GodotName("area_set_area_monitor_callback") GodotMethod!(void, RID, GodotObject, String) areaSetAreaMonitorCallback;
		@GodotName("area_set_collision_layer") GodotMethod!(void, RID, long) areaSetCollisionLayer;
		@GodotName("area_set_collision_mask") GodotMethod!(void, RID, long) areaSetCollisionMask;
		@GodotName("area_set_monitor_callback") GodotMethod!(void, RID, GodotObject, String) areaSetMonitorCallback;
		@GodotName("area_set_monitorable") GodotMethod!(void, RID, bool) areaSetMonitorable;
		@GodotName("area_set_param") GodotMethod!(void, RID, long, Variant) areaSetParam;
		@GodotName("area_set_shape") GodotMethod!(void, RID, long, RID) areaSetShape;
		@GodotName("area_set_shape_disabled") GodotMethod!(void, RID, long, bool) areaSetShapeDisabled;
		@GodotName("area_set_shape_transform") GodotMethod!(void, RID, long, Transform2D) areaSetShapeTransform;
		@GodotName("area_set_space") GodotMethod!(void, RID, RID) areaSetSpace;
		@GodotName("area_set_space_override_mode") GodotMethod!(void, RID, long) areaSetSpaceOverrideMode;
		@GodotName("area_set_transform") GodotMethod!(void, RID, Transform2D) areaSetTransform;
		@GodotName("body_add_central_force") GodotMethod!(void, RID, Vector2) bodyAddCentralForce;
		@GodotName("body_add_collision_exception") GodotMethod!(void, RID, RID) bodyAddCollisionException;
		@GodotName("body_add_force") GodotMethod!(void, RID, Vector2, Vector2) bodyAddForce;
		@GodotName("body_add_shape") GodotMethod!(void, RID, RID, Transform2D, bool) bodyAddShape;
		@GodotName("body_add_torque") GodotMethod!(void, RID, double) bodyAddTorque;
		@GodotName("body_apply_central_impulse") GodotMethod!(void, RID, Vector2) bodyApplyCentralImpulse;
		@GodotName("body_apply_impulse") GodotMethod!(void, RID, Vector2, Vector2) bodyApplyImpulse;
		@GodotName("body_apply_torque_impulse") GodotMethod!(void, RID, double) bodyApplyTorqueImpulse;
		@GodotName("body_attach_canvas_instance_id") GodotMethod!(void, RID, long) bodyAttachCanvasInstanceId;
		@GodotName("body_attach_object_instance_id") GodotMethod!(void, RID, long) bodyAttachObjectInstanceId;
		@GodotName("body_clear_shapes") GodotMethod!(void, RID) bodyClearShapes;
		@GodotName("body_create") GodotMethod!(RID) bodyCreate;
		@GodotName("body_get_canvas_instance_id") GodotMethod!(long, RID) bodyGetCanvasInstanceId;
		@GodotName("body_get_collision_layer") GodotMethod!(long, RID) bodyGetCollisionLayer;
		@GodotName("body_get_collision_mask") GodotMethod!(long, RID) bodyGetCollisionMask;
		@GodotName("body_get_continuous_collision_detection_mode") GodotMethod!(Physics2DServer.CCDMode, RID) bodyGetContinuousCollisionDetectionMode;
		@GodotName("body_get_direct_state") GodotMethod!(Physics2DDirectBodyState, RID) bodyGetDirectState;
		@GodotName("body_get_max_contacts_reported") GodotMethod!(long, RID) bodyGetMaxContactsReported;
		@GodotName("body_get_mode") GodotMethod!(Physics2DServer.BodyMode, RID) bodyGetMode;
		@GodotName("body_get_object_instance_id") GodotMethod!(long, RID) bodyGetObjectInstanceId;
		@GodotName("body_get_param") GodotMethod!(double, RID, long) bodyGetParam;
		@GodotName("body_get_shape") GodotMethod!(RID, RID, long) bodyGetShape;
		@GodotName("body_get_shape_count") GodotMethod!(long, RID) bodyGetShapeCount;
		@GodotName("body_get_shape_metadata") GodotMethod!(Variant, RID, long) bodyGetShapeMetadata;
		@GodotName("body_get_shape_transform") GodotMethod!(Transform2D, RID, long) bodyGetShapeTransform;
		@GodotName("body_get_space") GodotMethod!(RID, RID) bodyGetSpace;
		@GodotName("body_get_state") GodotMethod!(Variant, RID, long) bodyGetState;
		@GodotName("body_is_omitting_force_integration") GodotMethod!(bool, RID) bodyIsOmittingForceIntegration;
		@GodotName("body_remove_collision_exception") GodotMethod!(void, RID, RID) bodyRemoveCollisionException;
		@GodotName("body_remove_shape") GodotMethod!(void, RID, long) bodyRemoveShape;
		@GodotName("body_set_axis_velocity") GodotMethod!(void, RID, Vector2) bodySetAxisVelocity;
		@GodotName("body_set_collision_layer") GodotMethod!(void, RID, long) bodySetCollisionLayer;
		@GodotName("body_set_collision_mask") GodotMethod!(void, RID, long) bodySetCollisionMask;
		@GodotName("body_set_continuous_collision_detection_mode") GodotMethod!(void, RID, long) bodySetContinuousCollisionDetectionMode;
		@GodotName("body_set_force_integration_callback") GodotMethod!(void, RID, GodotObject, String, Variant) bodySetForceIntegrationCallback;
		@GodotName("body_set_max_contacts_reported") GodotMethod!(void, RID, long) bodySetMaxContactsReported;
		@GodotName("body_set_mode") GodotMethod!(void, RID, long) bodySetMode;
		@GodotName("body_set_omit_force_integration") GodotMethod!(void, RID, bool) bodySetOmitForceIntegration;
		@GodotName("body_set_param") GodotMethod!(void, RID, long, double) bodySetParam;
		@GodotName("body_set_shape") GodotMethod!(void, RID, long, RID) bodySetShape;
		@GodotName("body_set_shape_as_one_way_collision") GodotMethod!(void, RID, long, bool, double) bodySetShapeAsOneWayCollision;
		@GodotName("body_set_shape_disabled") GodotMethod!(void, RID, long, bool) bodySetShapeDisabled;
		@GodotName("body_set_shape_metadata") GodotMethod!(void, RID, long, Variant) bodySetShapeMetadata;
		@GodotName("body_set_shape_transform") GodotMethod!(void, RID, long, Transform2D) bodySetShapeTransform;
		@GodotName("body_set_space") GodotMethod!(void, RID, RID) bodySetSpace;
		@GodotName("body_set_state") GodotMethod!(void, RID, long, Variant) bodySetState;
		@GodotName("body_test_motion") GodotMethod!(bool, RID, Transform2D, Vector2, bool, double, Physics2DTestMotionResult, bool, Array) bodyTestMotion;
		@GodotName("capsule_shape_create") GodotMethod!(RID) capsuleShapeCreate;
		@GodotName("circle_shape_create") GodotMethod!(RID) circleShapeCreate;
		@GodotName("concave_polygon_shape_create") GodotMethod!(RID) concavePolygonShapeCreate;
		@GodotName("convex_polygon_shape_create") GodotMethod!(RID) convexPolygonShapeCreate;
		@GodotName("damped_spring_joint_create") GodotMethod!(RID, Vector2, Vector2, RID, RID) dampedSpringJointCreate;
		@GodotName("damped_string_joint_get_param") GodotMethod!(double, RID, long) dampedStringJointGetParam;
		@GodotName("damped_string_joint_set_param") GodotMethod!(void, RID, long, double) dampedStringJointSetParam;
		@GodotName("free_rid") GodotMethod!(void, RID) freeRid;
		@GodotName("get_process_info") GodotMethod!(long, long) getProcessInfo;
		@GodotName("groove_joint_create") GodotMethod!(RID, Vector2, Vector2, Vector2, RID, RID) grooveJointCreate;
		@GodotName("joint_get_param") GodotMethod!(double, RID, long) jointGetParam;
		@GodotName("joint_get_type") GodotMethod!(Physics2DServer.JointType, RID) jointGetType;
		@GodotName("joint_set_param") GodotMethod!(void, RID, long, double) jointSetParam;
		@GodotName("line_shape_create") GodotMethod!(RID) lineShapeCreate;
		@GodotName("pin_joint_create") GodotMethod!(RID, Vector2, RID, RID) pinJointCreate;
		@GodotName("ray_shape_create") GodotMethod!(RID) rayShapeCreate;
		@GodotName("rectangle_shape_create") GodotMethod!(RID) rectangleShapeCreate;
		@GodotName("segment_shape_create") GodotMethod!(RID) segmentShapeCreate;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("set_collision_iterations") GodotMethod!(void, long) setCollisionIterations;
		@GodotName("shape_get_data") GodotMethod!(Variant, RID) shapeGetData;
		@GodotName("shape_get_type") GodotMethod!(Physics2DServer.ShapeType, RID) shapeGetType;
		@GodotName("shape_set_data") GodotMethod!(void, RID, Variant) shapeSetData;
		@GodotName("space_create") GodotMethod!(RID) spaceCreate;
		@GodotName("space_get_direct_state") GodotMethod!(Physics2DDirectSpaceState, RID) spaceGetDirectState;
		@GodotName("space_get_param") GodotMethod!(double, RID, long) spaceGetParam;
		@GodotName("space_is_active") GodotMethod!(bool, RID) spaceIsActive;
		@GodotName("space_set_active") GodotMethod!(void, RID, bool) spaceSetActive;
		@GodotName("space_set_param") GodotMethod!(void, RID, long, double) spaceSetParam;
	}
	/// 
	pragma(inline, true) bool opEquals(in Physics2DServerSingleton other) const
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
	/// Construct a new instance of Physics2DServerSingleton.
	/// Note: use `memnew!Physics2DServerSingleton` instead.
	static Physics2DServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DServer");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DServerSingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ProcessInfo : int
	{
		/** */
		infoActiveObjects = 0,
		/** */
		infoCollisionPairs = 1,
		/** */
		infoIslandCount = 2,
	}
	/// 
	enum AreaBodyStatus : int
	{
		/** */
		areaBodyAdded = 0,
		/** */
		areaBodyRemoved = 1,
	}
	/// 
	enum DampedStringParam : int
	{
		/** */
		dampedStringRestLength = 0,
		/** */
		dampedStringStiffness = 1,
		/** */
		dampedStringDamping = 2,
	}
	/// 
	enum BodyMode : int
	{
		/** */
		bodyModeStatic = 0,
		/** */
		bodyModeKinematic = 1,
		/** */
		bodyModeRigid = 2,
		/** */
		bodyModeCharacter = 3,
	}
	/// 
	enum ShapeType : int
	{
		/** */
		shapeLine = 0,
		/** */
		shapeRay = 1,
		/** */
		shapeSegment = 2,
		/** */
		shapeCircle = 3,
		/** */
		shapeRectangle = 4,
		/** */
		shapeCapsule = 5,
		/** */
		shapeConvexPolygon = 6,
		/** */
		shapeConcavePolygon = 7,
		/** */
		shapeCustom = 8,
	}
	/// 
	enum JointParam : int
	{
		/** */
		jointParamBias = 0,
		/** */
		jointParamMaxBias = 1,
		/** */
		jointParamMaxForce = 2,
	}
	/// 
	enum SpaceParameter : int
	{
		/** */
		spaceParamContactRecycleRadius = 0,
		/** */
		spaceParamContactMaxSeparation = 1,
		/** */
		spaceParamBodyMaxAllowedPenetration = 2,
		/** */
		spaceParamBodyLinearVelocitySleepThreshold = 3,
		/** */
		spaceParamBodyAngularVelocitySleepThreshold = 4,
		/** */
		spaceParamBodyTimeToSleep = 5,
		/** */
		spaceParamConstraintDefaultBias = 6,
	}
	/// 
	enum JointType : int
	{
		/** */
		jointPin = 0,
		/** */
		jointGroove = 1,
		/** */
		jointDampedSpring = 2,
	}
	/// 
	enum CCDMode : int
	{
		/** */
		ccdModeDisabled = 0,
		/** */
		ccdModeCastRay = 1,
		/** */
		ccdModeCastShape = 2,
	}
	/// 
	enum BodyState : int
	{
		/** */
		bodyStateTransform = 0,
		/** */
		bodyStateLinearVelocity = 1,
		/** */
		bodyStateAngularVelocity = 2,
		/** */
		bodyStateSleeping = 3,
		/** */
		bodyStateCanSleep = 4,
	}
	/// 
	enum BodyParameter : int
	{
		/** */
		bodyParamBounce = 0,
		/** */
		bodyParamFriction = 1,
		/** */
		bodyParamMass = 2,
		/** */
		bodyParamInertia = 3,
		/** */
		bodyParamGravityScale = 4,
		/** */
		bodyParamLinearDamp = 5,
		/** */
		bodyParamAngularDamp = 6,
		/** */
		bodyParamMax = 7,
	}
	/// 
	enum AreaSpaceOverrideMode : int
	{
		/** */
		areaSpaceOverrideDisabled = 0,
		/** */
		areaSpaceOverrideCombine = 1,
		/** */
		areaSpaceOverrideCombineReplace = 2,
		/** */
		areaSpaceOverrideReplace = 3,
		/** */
		areaSpaceOverrideReplaceCombine = 4,
	}
	/// 
	enum AreaParameter : int
	{
		/** */
		areaParamGravity = 0,
		/** */
		areaParamGravityVector = 1,
		/** */
		areaParamGravityIsPoint = 2,
		/** */
		areaParamGravityDistanceScale = 3,
		/** */
		areaParamGravityPointAttenuation = 4,
		/** */
		areaParamLinearDamp = 5,
		/** */
		areaParamAngularDamp = 6,
		/** */
		areaParamPriority = 7,
	}
	/// 
	enum Constants : int
	{
		dampedStringRestLength = 0,
		bodyParamBounce = 0,
		ccdModeDisabled = 0,
		spaceParamContactRecycleRadius = 0,
		areaBodyAdded = 0,
		bodyStateTransform = 0,
		areaParamGravity = 0,
		infoActiveObjects = 0,
		jointParamBias = 0,
		areaSpaceOverrideDisabled = 0,
		jointPin = 0,
		shapeLine = 0,
		bodyModeStatic = 0,
		areaBodyRemoved = 1,
		jointGroove = 1,
		bodyParamFriction = 1,
		bodyStateLinearVelocity = 1,
		areaSpaceOverrideCombine = 1,
		ccdModeCastRay = 1,
		spaceParamContactMaxSeparation = 1,
		jointParamMaxBias = 1,
		areaParamGravityVector = 1,
		bodyModeKinematic = 1,
		shapeRay = 1,
		dampedStringStiffness = 1,
		infoCollisionPairs = 1,
		spaceParamBodyMaxAllowedPenetration = 2,
		dampedStringDamping = 2,
		infoIslandCount = 2,
		ccdModeCastShape = 2,
		jointParamMaxForce = 2,
		bodyStateAngularVelocity = 2,
		jointDampedSpring = 2,
		bodyModeRigid = 2,
		bodyParamMass = 2,
		shapeSegment = 2,
		areaSpaceOverrideCombineReplace = 2,
		areaParamGravityIsPoint = 2,
		bodyParamInertia = 3,
		areaSpaceOverrideReplace = 3,
		shapeCircle = 3,
		bodyModeCharacter = 3,
		areaParamGravityDistanceScale = 3,
		spaceParamBodyLinearVelocitySleepThreshold = 3,
		bodyStateSleeping = 3,
		spaceParamBodyAngularVelocitySleepThreshold = 4,
		areaParamGravityPointAttenuation = 4,
		bodyParamGravityScale = 4,
		areaSpaceOverrideReplaceCombine = 4,
		bodyStateCanSleep = 4,
		shapeRectangle = 4,
		bodyParamLinearDamp = 5,
		spaceParamBodyTimeToSleep = 5,
		areaParamLinearDamp = 5,
		shapeCapsule = 5,
		spaceParamConstraintDefaultBias = 6,
		bodyParamAngularDamp = 6,
		areaParamAngularDamp = 6,
		shapeConvexPolygon = 6,
		bodyParamMax = 7,
		areaParamPriority = 7,
		shapeConcavePolygon = 7,
		shapeCustom = 8,
	}
	/**
	
	*/
	void areaAddShape(in RID area, in RID shape, in Transform2D transform = Transform2D.init, in bool disabled = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaAddShape, _godot_object, area, shape, transform, disabled);
	}
	/**
	
	*/
	void areaAttachCanvasInstanceId(in RID area, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaAttachCanvasInstanceId, _godot_object, area, id);
	}
	/**
	
	*/
	void areaAttachObjectInstanceId(in RID area, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaAttachObjectInstanceId, _godot_object, area, id);
	}
	/**
	
	*/
	void areaClearShapes(in RID area)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaClearShapes, _godot_object, area);
	}
	/**
	
	*/
	RID areaCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.areaCreate, _godot_object);
	}
	/**
	
	*/
	long areaGetCanvasInstanceId(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.areaGetCanvasInstanceId, _godot_object, area);
	}
	/**
	
	*/
	long areaGetObjectInstanceId(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.areaGetObjectInstanceId, _godot_object, area);
	}
	/**
	
	*/
	Variant areaGetParam(in RID area, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.areaGetParam, _godot_object, area, param);
	}
	/**
	
	*/
	RID areaGetShape(in RID area, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.areaGetShape, _godot_object, area, shape_idx);
	}
	/**
	
	*/
	long areaGetShapeCount(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.areaGetShapeCount, _godot_object, area);
	}
	/**
	
	*/
	Transform2D areaGetShapeTransform(in RID area, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.areaGetShapeTransform, _godot_object, area, shape_idx);
	}
	/**
	
	*/
	RID areaGetSpace(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.areaGetSpace, _godot_object, area);
	}
	/**
	
	*/
	Physics2DServer.AreaSpaceOverrideMode areaGetSpaceOverrideMode(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.AreaSpaceOverrideMode)(GDNativeClassBinding.areaGetSpaceOverrideMode, _godot_object, area);
	}
	/**
	
	*/
	Transform2D areaGetTransform(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.areaGetTransform, _godot_object, area);
	}
	/**
	
	*/
	void areaRemoveShape(in RID area, in long shape_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaRemoveShape, _godot_object, area, shape_idx);
	}
	/**
	
	*/
	void areaSetAreaMonitorCallback(in RID area, GodotObject receiver, in String method)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetAreaMonitorCallback, _godot_object, area, receiver, method);
	}
	/**
	
	*/
	void areaSetCollisionLayer(in RID area, in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetCollisionLayer, _godot_object, area, layer);
	}
	/**
	
	*/
	void areaSetCollisionMask(in RID area, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetCollisionMask, _godot_object, area, mask);
	}
	/**
	
	*/
	void areaSetMonitorCallback(in RID area, GodotObject receiver, in String method)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetMonitorCallback, _godot_object, area, receiver, method);
	}
	/**
	
	*/
	void areaSetMonitorable(in RID area, in bool monitorable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetMonitorable, _godot_object, area, monitorable);
	}
	/**
	
	*/
	void areaSetParam(VariantArg2)(in RID area, in long param, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetParam, _godot_object, area, param, value);
	}
	/**
	
	*/
	void areaSetShape(in RID area, in long shape_idx, in RID shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetShape, _godot_object, area, shape_idx, shape);
	}
	/**
	
	*/
	void areaSetShapeDisabled(in RID area, in long shape_idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetShapeDisabled, _godot_object, area, shape_idx, disabled);
	}
	/**
	
	*/
	void areaSetShapeTransform(in RID area, in long shape_idx, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetShapeTransform, _godot_object, area, shape_idx, transform);
	}
	/**
	
	*/
	void areaSetSpace(in RID area, in RID space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetSpace, _godot_object, area, space);
	}
	/**
	
	*/
	void areaSetSpaceOverrideMode(in RID area, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetSpaceOverrideMode, _godot_object, area, mode);
	}
	/**
	
	*/
	void areaSetTransform(in RID area, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetTransform, _godot_object, area, transform);
	}
	/**
	
	*/
	void bodyAddCentralForce(in RID _body, in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAddCentralForce, _godot_object, _body, force);
	}
	/**
	
	*/
	void bodyAddCollisionException(in RID _body, in RID excepted_body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAddCollisionException, _godot_object, _body, excepted_body);
	}
	/**
	
	*/
	void bodyAddForce(in RID _body, in Vector2 offset, in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAddForce, _godot_object, _body, offset, force);
	}
	/**
	
	*/
	void bodyAddShape(in RID _body, in RID shape, in Transform2D transform = Transform2D.init, in bool disabled = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAddShape, _godot_object, _body, shape, transform, disabled);
	}
	/**
	
	*/
	void bodyAddTorque(in RID _body, in double torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAddTorque, _godot_object, _body, torque);
	}
	/**
	
	*/
	void bodyApplyCentralImpulse(in RID _body, in Vector2 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyApplyCentralImpulse, _godot_object, _body, impulse);
	}
	/**
	
	*/
	void bodyApplyImpulse(in RID _body, in Vector2 position, in Vector2 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyApplyImpulse, _godot_object, _body, position, impulse);
	}
	/**
	
	*/
	void bodyApplyTorqueImpulse(in RID _body, in double impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyApplyTorqueImpulse, _godot_object, _body, impulse);
	}
	/**
	
	*/
	void bodyAttachCanvasInstanceId(in RID _body, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAttachCanvasInstanceId, _godot_object, _body, id);
	}
	/**
	
	*/
	void bodyAttachObjectInstanceId(in RID _body, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAttachObjectInstanceId, _godot_object, _body, id);
	}
	/**
	
	*/
	void bodyClearShapes(in RID _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyClearShapes, _godot_object, _body);
	}
	/**
	
	*/
	RID bodyCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.bodyCreate, _godot_object);
	}
	/**
	
	*/
	long bodyGetCanvasInstanceId(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bodyGetCanvasInstanceId, _godot_object, _body);
	}
	/**
	
	*/
	long bodyGetCollisionLayer(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bodyGetCollisionLayer, _godot_object, _body);
	}
	/**
	
	*/
	long bodyGetCollisionMask(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bodyGetCollisionMask, _godot_object, _body);
	}
	/**
	
	*/
	Physics2DServer.CCDMode bodyGetContinuousCollisionDetectionMode(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.CCDMode)(GDNativeClassBinding.bodyGetContinuousCollisionDetectionMode, _godot_object, _body);
	}
	/**
	
	*/
	Physics2DDirectBodyState bodyGetDirectState(in RID _body)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DDirectBodyState)(GDNativeClassBinding.bodyGetDirectState, _godot_object, _body);
	}
	/**
	
	*/
	long bodyGetMaxContactsReported(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bodyGetMaxContactsReported, _godot_object, _body);
	}
	/**
	
	*/
	Physics2DServer.BodyMode bodyGetMode(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.BodyMode)(GDNativeClassBinding.bodyGetMode, _godot_object, _body);
	}
	/**
	
	*/
	long bodyGetObjectInstanceId(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bodyGetObjectInstanceId, _godot_object, _body);
	}
	/**
	
	*/
	double bodyGetParam(in RID _body, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.bodyGetParam, _godot_object, _body, param);
	}
	/**
	
	*/
	RID bodyGetShape(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.bodyGetShape, _godot_object, _body, shape_idx);
	}
	/**
	
	*/
	long bodyGetShapeCount(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bodyGetShapeCount, _godot_object, _body);
	}
	/**
	
	*/
	Variant bodyGetShapeMetadata(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.bodyGetShapeMetadata, _godot_object, _body, shape_idx);
	}
	/**
	
	*/
	Transform2D bodyGetShapeTransform(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.bodyGetShapeTransform, _godot_object, _body, shape_idx);
	}
	/**
	
	*/
	RID bodyGetSpace(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.bodyGetSpace, _godot_object, _body);
	}
	/**
	
	*/
	Variant bodyGetState(in RID _body, in long state) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.bodyGetState, _godot_object, _body, state);
	}
	/**
	
	*/
	bool bodyIsOmittingForceIntegration(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.bodyIsOmittingForceIntegration, _godot_object, _body);
	}
	/**
	
	*/
	void bodyRemoveCollisionException(in RID _body, in RID excepted_body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyRemoveCollisionException, _godot_object, _body, excepted_body);
	}
	/**
	
	*/
	void bodyRemoveShape(in RID _body, in long shape_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyRemoveShape, _godot_object, _body, shape_idx);
	}
	/**
	
	*/
	void bodySetAxisVelocity(in RID _body, in Vector2 axis_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetAxisVelocity, _godot_object, _body, axis_velocity);
	}
	/**
	
	*/
	void bodySetCollisionLayer(in RID _body, in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetCollisionLayer, _godot_object, _body, layer);
	}
	/**
	
	*/
	void bodySetCollisionMask(in RID _body, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetCollisionMask, _godot_object, _body, mask);
	}
	/**
	
	*/
	void bodySetContinuousCollisionDetectionMode(in RID _body, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetContinuousCollisionDetectionMode, _godot_object, _body, mode);
	}
	/**
	
	*/
	void bodySetForceIntegrationCallback(VariantArg3)(in RID _body, GodotObject receiver, in String method, in VariantArg3 userdata = Variant.nil)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetForceIntegrationCallback, _godot_object, _body, receiver, method, userdata);
	}
	/**
	
	*/
	void bodySetMaxContactsReported(in RID _body, in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetMaxContactsReported, _godot_object, _body, amount);
	}
	/**
	
	*/
	void bodySetMode(in RID _body, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetMode, _godot_object, _body, mode);
	}
	/**
	
	*/
	void bodySetOmitForceIntegration(in RID _body, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetOmitForceIntegration, _godot_object, _body, enable);
	}
	/**
	
	*/
	void bodySetParam(in RID _body, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetParam, _godot_object, _body, param, value);
	}
	/**
	
	*/
	void bodySetShape(in RID _body, in long shape_idx, in RID shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetShape, _godot_object, _body, shape_idx, shape);
	}
	/**
	
	*/
	void bodySetShapeAsOneWayCollision(in RID _body, in long shape_idx, in bool enable, in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetShapeAsOneWayCollision, _godot_object, _body, shape_idx, enable, margin);
	}
	/**
	
	*/
	void bodySetShapeDisabled(in RID _body, in long shape_idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetShapeDisabled, _godot_object, _body, shape_idx, disabled);
	}
	/**
	
	*/
	void bodySetShapeMetadata(VariantArg2)(in RID _body, in long shape_idx, in VariantArg2 metadata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetShapeMetadata, _godot_object, _body, shape_idx, metadata);
	}
	/**
	
	*/
	void bodySetShapeTransform(in RID _body, in long shape_idx, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetShapeTransform, _godot_object, _body, shape_idx, transform);
	}
	/**
	
	*/
	void bodySetSpace(in RID _body, in RID space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetSpace, _godot_object, _body, space);
	}
	/**
	
	*/
	void bodySetState(VariantArg2)(in RID _body, in long state, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetState, _godot_object, _body, state, value);
	}
	/**
	
	*/
	bool bodyTestMotion(in RID _body, in Transform2D from, in Vector2 motion, in bool infinite_inertia, in double margin = 0.08, Physics2DTestMotionResult result = Physics2DTestMotionResult.init, in bool exclude_raycast_shapes = true, in Array exclude = Array.make())
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.bodyTestMotion, _godot_object, _body, from, motion, infinite_inertia, margin, result, exclude_raycast_shapes, exclude);
	}
	/**
	
	*/
	RID capsuleShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.capsuleShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID circleShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.circleShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID concavePolygonShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.concavePolygonShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID convexPolygonShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.convexPolygonShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID dampedSpringJointCreate(in Vector2 anchor_a, in Vector2 anchor_b, in RID body_a, in RID body_b = RID.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.dampedSpringJointCreate, _godot_object, anchor_a, anchor_b, body_a, body_b);
	}
	/**
	
	*/
	double dampedStringJointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.dampedStringJointGetParam, _godot_object, joint, param);
	}
	/**
	
	*/
	void dampedStringJointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.dampedStringJointSetParam, _godot_object, joint, param, value);
	}
	/**
	
	*/
	void freeRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.freeRid, _godot_object, rid);
	}
	/**
	
	*/
	long getProcessInfo(in long process_info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getProcessInfo, _godot_object, process_info);
	}
	/**
	
	*/
	RID grooveJointCreate(in Vector2 groove1_a, in Vector2 groove2_a, in Vector2 anchor_b, in RID body_a = RID.init, in RID body_b = RID.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.grooveJointCreate, _godot_object, groove1_a, groove2_a, anchor_b, body_a, body_b);
	}
	/**
	
	*/
	double jointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.jointGetParam, _godot_object, joint, param);
	}
	/**
	
	*/
	Physics2DServer.JointType jointGetType(in RID joint) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.JointType)(GDNativeClassBinding.jointGetType, _godot_object, joint);
	}
	/**
	
	*/
	void jointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.jointSetParam, _godot_object, joint, param, value);
	}
	/**
	
	*/
	RID lineShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.lineShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID pinJointCreate(in Vector2 anchor, in RID body_a, in RID body_b = RID.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.pinJointCreate, _godot_object, anchor, body_a, body_b);
	}
	/**
	
	*/
	RID rayShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.rayShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID rectangleShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.rectangleShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID segmentShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.segmentShapeCreate, _godot_object);
	}
	/**
	
	*/
	void setActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setActive, _godot_object, active);
	}
	/**
	
	*/
	void setCollisionIterations(in long iterations)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionIterations, _godot_object, iterations);
	}
	/**
	
	*/
	Variant shapeGetData(in RID shape) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.shapeGetData, _godot_object, shape);
	}
	/**
	
	*/
	Physics2DServer.ShapeType shapeGetType(in RID shape) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.ShapeType)(GDNativeClassBinding.shapeGetType, _godot_object, shape);
	}
	/**
	
	*/
	void shapeSetData(VariantArg1)(in RID shape, in VariantArg1 data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shapeSetData, _godot_object, shape, data);
	}
	/**
	
	*/
	RID spaceCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.spaceCreate, _godot_object);
	}
	/**
	
	*/
	Physics2DDirectSpaceState spaceGetDirectState(in RID space)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DDirectSpaceState)(GDNativeClassBinding.spaceGetDirectState, _godot_object, space);
	}
	/**
	
	*/
	double spaceGetParam(in RID space, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.spaceGetParam, _godot_object, space, param);
	}
	/**
	
	*/
	bool spaceIsActive(in RID space) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.spaceIsActive, _godot_object, space);
	}
	/**
	
	*/
	void spaceSetActive(in RID space, in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.spaceSetActive, _godot_object, space, active);
	}
	/**
	
	*/
	void spaceSetParam(in RID space, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.spaceSetParam, _godot_object, space, param, value);
	}
}
/// Returns: the Physics2DServerSingleton
@property @nogc nothrow pragma(inline, true)
Physics2DServerSingleton Physics2DServer()
{
	checkClassBinding!Physics2DServerSingleton();
	return Physics2DServerSingleton(Physics2DServerSingleton.GDNativeClassBinding._singleton);
}
