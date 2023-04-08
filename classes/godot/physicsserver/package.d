/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicsserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.physicsdirectbodystate;
import godot.physicstestmotionresult;
import godot.physicsdirectspacestate;
/**

*/
@GodotBaseClass struct PhysicsServerSingleton
{
	package(godot) enum string _GODOT_internal_name = "PhysicsServer";
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
		immutable char* _singletonName = "PhysicsServer";
		@GodotName("area_add_shape") GodotMethod!(void, RID, RID, Transform, bool) areaAddShape;
		@GodotName("area_attach_object_instance_id") GodotMethod!(void, RID, long) areaAttachObjectInstanceId;
		@GodotName("area_clear_shapes") GodotMethod!(void, RID) areaClearShapes;
		@GodotName("area_create") GodotMethod!(RID) areaCreate;
		@GodotName("area_get_object_instance_id") GodotMethod!(long, RID) areaGetObjectInstanceId;
		@GodotName("area_get_param") GodotMethod!(Variant, RID, long) areaGetParam;
		@GodotName("area_get_shape") GodotMethod!(RID, RID, long) areaGetShape;
		@GodotName("area_get_shape_count") GodotMethod!(long, RID) areaGetShapeCount;
		@GodotName("area_get_shape_transform") GodotMethod!(Transform, RID, long) areaGetShapeTransform;
		@GodotName("area_get_space") GodotMethod!(RID, RID) areaGetSpace;
		@GodotName("area_get_space_override_mode") GodotMethod!(PhysicsServer.AreaSpaceOverrideMode, RID) areaGetSpaceOverrideMode;
		@GodotName("area_get_transform") GodotMethod!(Transform, RID) areaGetTransform;
		@GodotName("area_is_ray_pickable") GodotMethod!(bool, RID) areaIsRayPickable;
		@GodotName("area_remove_shape") GodotMethod!(void, RID, long) areaRemoveShape;
		@GodotName("area_set_area_monitor_callback") GodotMethod!(void, RID, GodotObject, String) areaSetAreaMonitorCallback;
		@GodotName("area_set_collision_layer") GodotMethod!(void, RID, long) areaSetCollisionLayer;
		@GodotName("area_set_collision_mask") GodotMethod!(void, RID, long) areaSetCollisionMask;
		@GodotName("area_set_monitor_callback") GodotMethod!(void, RID, GodotObject, String) areaSetMonitorCallback;
		@GodotName("area_set_monitorable") GodotMethod!(void, RID, bool) areaSetMonitorable;
		@GodotName("area_set_param") GodotMethod!(void, RID, long, Variant) areaSetParam;
		@GodotName("area_set_ray_pickable") GodotMethod!(void, RID, bool) areaSetRayPickable;
		@GodotName("area_set_shape") GodotMethod!(void, RID, long, RID) areaSetShape;
		@GodotName("area_set_shape_disabled") GodotMethod!(void, RID, long, bool) areaSetShapeDisabled;
		@GodotName("area_set_shape_transform") GodotMethod!(void, RID, long, Transform) areaSetShapeTransform;
		@GodotName("area_set_space") GodotMethod!(void, RID, RID) areaSetSpace;
		@GodotName("area_set_space_override_mode") GodotMethod!(void, RID, long) areaSetSpaceOverrideMode;
		@GodotName("area_set_transform") GodotMethod!(void, RID, Transform) areaSetTransform;
		@GodotName("body_add_central_force") GodotMethod!(void, RID, Vector3) bodyAddCentralForce;
		@GodotName("body_add_collision_exception") GodotMethod!(void, RID, RID) bodyAddCollisionException;
		@GodotName("body_add_force") GodotMethod!(void, RID, Vector3, Vector3) bodyAddForce;
		@GodotName("body_add_shape") GodotMethod!(void, RID, RID, Transform, bool) bodyAddShape;
		@GodotName("body_add_torque") GodotMethod!(void, RID, Vector3) bodyAddTorque;
		@GodotName("body_apply_central_impulse") GodotMethod!(void, RID, Vector3) bodyApplyCentralImpulse;
		@GodotName("body_apply_impulse") GodotMethod!(void, RID, Vector3, Vector3) bodyApplyImpulse;
		@GodotName("body_apply_torque_impulse") GodotMethod!(void, RID, Vector3) bodyApplyTorqueImpulse;
		@GodotName("body_attach_object_instance_id") GodotMethod!(void, RID, long) bodyAttachObjectInstanceId;
		@GodotName("body_clear_shapes") GodotMethod!(void, RID) bodyClearShapes;
		@GodotName("body_create") GodotMethod!(RID, long, bool) bodyCreate;
		@GodotName("body_get_collision_layer") GodotMethod!(long, RID) bodyGetCollisionLayer;
		@GodotName("body_get_collision_mask") GodotMethod!(long, RID) bodyGetCollisionMask;
		@GodotName("body_get_direct_state") GodotMethod!(PhysicsDirectBodyState, RID) bodyGetDirectState;
		@GodotName("body_get_kinematic_safe_margin") GodotMethod!(double, RID) bodyGetKinematicSafeMargin;
		@GodotName("body_get_max_contacts_reported") GodotMethod!(long, RID) bodyGetMaxContactsReported;
		@GodotName("body_get_mode") GodotMethod!(PhysicsServer.BodyMode, RID) bodyGetMode;
		@GodotName("body_get_object_instance_id") GodotMethod!(long, RID) bodyGetObjectInstanceId;
		@GodotName("body_get_param") GodotMethod!(double, RID, long) bodyGetParam;
		@GodotName("body_get_shape") GodotMethod!(RID, RID, long) bodyGetShape;
		@GodotName("body_get_shape_count") GodotMethod!(long, RID) bodyGetShapeCount;
		@GodotName("body_get_shape_transform") GodotMethod!(Transform, RID, long) bodyGetShapeTransform;
		@GodotName("body_get_space") GodotMethod!(RID, RID) bodyGetSpace;
		@GodotName("body_get_state") GodotMethod!(Variant, RID, long) bodyGetState;
		@GodotName("body_is_axis_locked") GodotMethod!(bool, RID, long) bodyIsAxisLocked;
		@GodotName("body_is_continuous_collision_detection_enabled") GodotMethod!(bool, RID) bodyIsContinuousCollisionDetectionEnabled;
		@GodotName("body_is_omitting_force_integration") GodotMethod!(bool, RID) bodyIsOmittingForceIntegration;
		@GodotName("body_is_ray_pickable") GodotMethod!(bool, RID) bodyIsRayPickable;
		@GodotName("body_remove_collision_exception") GodotMethod!(void, RID, RID) bodyRemoveCollisionException;
		@GodotName("body_remove_shape") GodotMethod!(void, RID, long) bodyRemoveShape;
		@GodotName("body_set_axis_lock") GodotMethod!(void, RID, long, bool) bodySetAxisLock;
		@GodotName("body_set_axis_velocity") GodotMethod!(void, RID, Vector3) bodySetAxisVelocity;
		@GodotName("body_set_collision_layer") GodotMethod!(void, RID, long) bodySetCollisionLayer;
		@GodotName("body_set_collision_mask") GodotMethod!(void, RID, long) bodySetCollisionMask;
		@GodotName("body_set_enable_continuous_collision_detection") GodotMethod!(void, RID, bool) bodySetEnableContinuousCollisionDetection;
		@GodotName("body_set_force_integration_callback") GodotMethod!(void, RID, GodotObject, String, Variant) bodySetForceIntegrationCallback;
		@GodotName("body_set_kinematic_safe_margin") GodotMethod!(void, RID, double) bodySetKinematicSafeMargin;
		@GodotName("body_set_max_contacts_reported") GodotMethod!(void, RID, long) bodySetMaxContactsReported;
		@GodotName("body_set_mode") GodotMethod!(void, RID, long) bodySetMode;
		@GodotName("body_set_omit_force_integration") GodotMethod!(void, RID, bool) bodySetOmitForceIntegration;
		@GodotName("body_set_param") GodotMethod!(void, RID, long, double) bodySetParam;
		@GodotName("body_set_ray_pickable") GodotMethod!(void, RID, bool) bodySetRayPickable;
		@GodotName("body_set_shape") GodotMethod!(void, RID, long, RID) bodySetShape;
		@GodotName("body_set_shape_disabled") GodotMethod!(void, RID, long, bool) bodySetShapeDisabled;
		@GodotName("body_set_shape_transform") GodotMethod!(void, RID, long, Transform) bodySetShapeTransform;
		@GodotName("body_set_space") GodotMethod!(void, RID, RID) bodySetSpace;
		@GodotName("body_set_state") GodotMethod!(void, RID, long, Variant) bodySetState;
		@GodotName("body_test_motion") GodotMethod!(bool, RID, Transform, Vector3, bool, PhysicsTestMotionResult, bool, Array) bodyTestMotion;
		@GodotName("cone_twist_joint_get_param") GodotMethod!(double, RID, long) coneTwistJointGetParam;
		@GodotName("cone_twist_joint_set_param") GodotMethod!(void, RID, long, double) coneTwistJointSetParam;
		@GodotName("free_rid") GodotMethod!(void, RID) freeRid;
		@GodotName("generic_6dof_joint_get_flag") GodotMethod!(bool, RID, long, long) generic6dofJointGetFlag;
		@GodotName("generic_6dof_joint_get_param") GodotMethod!(double, RID, long, long) generic6dofJointGetParam;
		@GodotName("generic_6dof_joint_set_flag") GodotMethod!(void, RID, long, long, bool) generic6dofJointSetFlag;
		@GodotName("generic_6dof_joint_set_param") GodotMethod!(void, RID, long, long, double) generic6dofJointSetParam;
		@GodotName("get_process_info") GodotMethod!(long, long) getProcessInfo;
		@GodotName("hinge_joint_get_flag") GodotMethod!(bool, RID, long) hingeJointGetFlag;
		@GodotName("hinge_joint_get_param") GodotMethod!(double, RID, long) hingeJointGetParam;
		@GodotName("hinge_joint_set_flag") GodotMethod!(void, RID, long, bool) hingeJointSetFlag;
		@GodotName("hinge_joint_set_param") GodotMethod!(void, RID, long, double) hingeJointSetParam;
		@GodotName("joint_create_cone_twist") GodotMethod!(RID, RID, Transform, RID, Transform) jointCreateConeTwist;
		@GodotName("joint_create_generic_6dof") GodotMethod!(RID, RID, Transform, RID, Transform) jointCreateGeneric6dof;
		@GodotName("joint_create_hinge") GodotMethod!(RID, RID, Transform, RID, Transform) jointCreateHinge;
		@GodotName("joint_create_pin") GodotMethod!(RID, RID, Vector3, RID, Vector3) jointCreatePin;
		@GodotName("joint_create_slider") GodotMethod!(RID, RID, Transform, RID, Transform) jointCreateSlider;
		@GodotName("joint_get_solver_priority") GodotMethod!(long, RID) jointGetSolverPriority;
		@GodotName("joint_get_type") GodotMethod!(PhysicsServer.JointType, RID) jointGetType;
		@GodotName("joint_set_solver_priority") GodotMethod!(void, RID, long) jointSetSolverPriority;
		@GodotName("pin_joint_get_local_a") GodotMethod!(Vector3, RID) pinJointGetLocalA;
		@GodotName("pin_joint_get_local_b") GodotMethod!(Vector3, RID) pinJointGetLocalB;
		@GodotName("pin_joint_get_param") GodotMethod!(double, RID, long) pinJointGetParam;
		@GodotName("pin_joint_set_local_a") GodotMethod!(void, RID, Vector3) pinJointSetLocalA;
		@GodotName("pin_joint_set_local_b") GodotMethod!(void, RID, Vector3) pinJointSetLocalB;
		@GodotName("pin_joint_set_param") GodotMethod!(void, RID, long, double) pinJointSetParam;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("set_collision_iterations") GodotMethod!(void, long) setCollisionIterations;
		@GodotName("shape_create") GodotMethod!(RID, long) shapeCreate;
		@GodotName("shape_get_data") GodotMethod!(Variant, RID) shapeGetData;
		@GodotName("shape_get_type") GodotMethod!(PhysicsServer.ShapeType, RID) shapeGetType;
		@GodotName("shape_set_data") GodotMethod!(void, RID, Variant) shapeSetData;
		@GodotName("slider_joint_get_param") GodotMethod!(double, RID, long) sliderJointGetParam;
		@GodotName("slider_joint_set_param") GodotMethod!(void, RID, long, double) sliderJointSetParam;
		@GodotName("space_create") GodotMethod!(RID) spaceCreate;
		@GodotName("space_get_direct_state") GodotMethod!(PhysicsDirectSpaceState, RID) spaceGetDirectState;
		@GodotName("space_get_param") GodotMethod!(double, RID, long) spaceGetParam;
		@GodotName("space_is_active") GodotMethod!(bool, RID) spaceIsActive;
		@GodotName("space_set_active") GodotMethod!(void, RID, bool) spaceSetActive;
		@GodotName("space_set_param") GodotMethod!(void, RID, long, double) spaceSetParam;
	}
	/// 
	pragma(inline, true) bool opEquals(in PhysicsServerSingleton other) const
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
	/// Construct a new instance of PhysicsServerSingleton.
	/// Note: use `memnew!PhysicsServerSingleton` instead.
	static PhysicsServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsServer");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsServerSingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum BodyAxis : int
	{
		/** */
		bodyAxisLinearX = 1,
		/** */
		bodyAxisLinearY = 2,
		/** */
		bodyAxisLinearZ = 4,
		/** */
		bodyAxisAngularX = 8,
		/** */
		bodyAxisAngularY = 16,
		/** */
		bodyAxisAngularZ = 32,
	}
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
		shapePlane = 0,
		/** */
		shapeRay = 1,
		/** */
		shapeSphere = 2,
		/** */
		shapeBox = 3,
		/** */
		shapeCapsule = 4,
		/** */
		shapeCylinder = 5,
		/** */
		shapeConvexPolygon = 6,
		/** */
		shapeConcavePolygon = 7,
		/** */
		shapeHeightmap = 8,
		/** */
		shapeCustom = 9,
	}
	/// 
	enum PinJointParam : int
	{
		/** */
		pinJointBias = 0,
		/** */
		pinJointDamping = 1,
		/** */
		pinJointImpulseClamp = 2,
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
		spaceParamBodyAngularVelocityDampRatio = 6,
		/** */
		spaceParamConstraintDefaultBias = 7,
	}
	/// 
	enum ConeTwistJointParam : int
	{
		/** */
		coneTwistJointSwingSpan = 0,
		/** */
		coneTwistJointTwistSpan = 1,
		/** */
		coneTwistJointBias = 2,
		/** */
		coneTwistJointSoftness = 3,
		/** */
		coneTwistJointRelaxation = 4,
	}
	/// 
	enum JointType : int
	{
		/** */
		jointPin = 0,
		/** */
		jointHinge = 1,
		/** */
		jointSlider = 2,
		/** */
		jointConeTwist = 3,
		/** */
		joint6dof = 4,
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
		bodyParamGravityScale = 3,
		/** */
		bodyParamLinearDamp = 4,
		/** */
		bodyParamAngularDamp = 5,
		/** */
		bodyParamMax = 6,
	}
	/// 
	enum G6DOFJointAxisParam : int
	{
		/** */
		g6dofJointLinearLowerLimit = 0,
		/** */
		g6dofJointLinearUpperLimit = 1,
		/** */
		g6dofJointLinearLimitSoftness = 2,
		/** */
		g6dofJointLinearRestitution = 3,
		/** */
		g6dofJointLinearDamping = 4,
		/** */
		g6dofJointLinearMotorTargetVelocity = 5,
		/** */
		g6dofJointLinearMotorForceLimit = 6,
		/** */
		g6dofJointAngularLowerLimit = 10,
		/** */
		g6dofJointAngularUpperLimit = 11,
		/** */
		g6dofJointAngularLimitSoftness = 12,
		/** */
		g6dofJointAngularDamping = 13,
		/** */
		g6dofJointAngularRestitution = 14,
		/** */
		g6dofJointAngularForceLimit = 15,
		/** */
		g6dofJointAngularErp = 16,
		/** */
		g6dofJointAngularMotorTargetVelocity = 17,
		/** */
		g6dofJointAngularMotorForceLimit = 18,
	}
	/// 
	enum SliderJointParam : int
	{
		/** */
		sliderJointLinearLimitUpper = 0,
		/** */
		sliderJointLinearLimitLower = 1,
		/** */
		sliderJointLinearLimitSoftness = 2,
		/** */
		sliderJointLinearLimitRestitution = 3,
		/** */
		sliderJointLinearLimitDamping = 4,
		/** */
		sliderJointLinearMotionSoftness = 5,
		/** */
		sliderJointLinearMotionRestitution = 6,
		/** */
		sliderJointLinearMotionDamping = 7,
		/** */
		sliderJointLinearOrthogonalSoftness = 8,
		/** */
		sliderJointLinearOrthogonalRestitution = 9,
		/** */
		sliderJointLinearOrthogonalDamping = 10,
		/** */
		sliderJointAngularLimitUpper = 11,
		/** */
		sliderJointAngularLimitLower = 12,
		/** */
		sliderJointAngularLimitSoftness = 13,
		/** */
		sliderJointAngularLimitRestitution = 14,
		/** */
		sliderJointAngularLimitDamping = 15,
		/** */
		sliderJointAngularMotionSoftness = 16,
		/** */
		sliderJointAngularMotionRestitution = 17,
		/** */
		sliderJointAngularMotionDamping = 18,
		/** */
		sliderJointAngularOrthogonalSoftness = 19,
		/** */
		sliderJointAngularOrthogonalRestitution = 20,
		/** */
		sliderJointAngularOrthogonalDamping = 21,
		/** */
		sliderJointMax = 22,
	}
	/// 
	enum HingeJointParam : int
	{
		/** */
		hingeJointBias = 0,
		/** */
		hingeJointLimitUpper = 1,
		/** */
		hingeJointLimitLower = 2,
		/** */
		hingeJointLimitBias = 3,
		/** */
		hingeJointLimitSoftness = 4,
		/** */
		hingeJointLimitRelaxation = 5,
		/** */
		hingeJointMotorTargetVelocity = 6,
		/** */
		hingeJointMotorMaxImpulse = 7,
	}
	/// 
	enum G6DOFJointAxisFlag : int
	{
		/** */
		g6dofJointFlagEnableLinearLimit = 0,
		/** */
		g6dofJointFlagEnableAngularLimit = 1,
		/** */
		g6dofJointFlagEnableMotor = 4,
		/** */
		g6dofJointFlagEnableLinearMotor = 5,
	}
	/// 
	enum HingeJointFlag : int
	{
		/** */
		hingeJointFlagUseLimit = 0,
		/** */
		hingeJointFlagEnableMotor = 1,
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
		infoActiveObjects = 0,
		sliderJointLinearLimitUpper = 0,
		hingeJointBias = 0,
		g6dofJointLinearLowerLimit = 0,
		jointPin = 0,
		areaSpaceOverrideDisabled = 0,
		shapePlane = 0,
		bodyStateTransform = 0,
		bodyParamBounce = 0,
		coneTwistJointSwingSpan = 0,
		hingeJointFlagUseLimit = 0,
		areaParamGravity = 0,
		pinJointBias = 0,
		bodyModeStatic = 0,
		spaceParamContactRecycleRadius = 0,
		g6dofJointFlagEnableLinearLimit = 0,
		areaBodyAdded = 0,
		spaceParamContactMaxSeparation = 1,
		shapeRay = 1,
		hingeJointFlagEnableMotor = 1,
		pinJointDamping = 1,
		sliderJointLinearLimitLower = 1,
		g6dofJointLinearUpperLimit = 1,
		bodyModeKinematic = 1,
		coneTwistJointTwistSpan = 1,
		areaBodyRemoved = 1,
		bodyStateLinearVelocity = 1,
		bodyAxisLinearX = 1,
		bodyParamFriction = 1,
		areaSpaceOverrideCombine = 1,
		infoCollisionPairs = 1,
		jointHinge = 1,
		g6dofJointFlagEnableAngularLimit = 1,
		areaParamGravityVector = 1,
		hingeJointLimitUpper = 1,
		coneTwistJointBias = 2,
		areaSpaceOverrideCombineReplace = 2,
		bodyStateAngularVelocity = 2,
		bodyModeRigid = 2,
		areaParamGravityIsPoint = 2,
		shapeSphere = 2,
		infoIslandCount = 2,
		spaceParamBodyMaxAllowedPenetration = 2,
		jointSlider = 2,
		g6dofJointLinearLimitSoftness = 2,
		sliderJointLinearLimitSoftness = 2,
		pinJointImpulseClamp = 2,
		hingeJointLimitLower = 2,
		bodyParamMass = 2,
		bodyAxisLinearY = 2,
		areaParamGravityDistanceScale = 3,
		spaceParamBodyLinearVelocitySleepThreshold = 3,
		shapeBox = 3,
		jointConeTwist = 3,
		coneTwistJointSoftness = 3,
		bodyModeCharacter = 3,
		bodyParamGravityScale = 3,
		g6dofJointLinearRestitution = 3,
		sliderJointLinearLimitRestitution = 3,
		areaSpaceOverrideReplace = 3,
		bodyStateSleeping = 3,
		hingeJointLimitBias = 3,
		areaSpaceOverrideReplaceCombine = 4,
		bodyParamLinearDamp = 4,
		g6dofJointFlagEnableMotor = 4,
		g6dofJointLinearDamping = 4,
		spaceParamBodyAngularVelocitySleepThreshold = 4,
		hingeJointLimitSoftness = 4,
		coneTwistJointRelaxation = 4,
		shapeCapsule = 4,
		joint6dof = 4,
		areaParamGravityPointAttenuation = 4,
		bodyAxisLinearZ = 4,
		sliderJointLinearLimitDamping = 4,
		bodyStateCanSleep = 4,
		g6dofJointFlagEnableLinearMotor = 5,
		sliderJointLinearMotionSoftness = 5,
		areaParamLinearDamp = 5,
		bodyParamAngularDamp = 5,
		shapeCylinder = 5,
		hingeJointLimitRelaxation = 5,
		spaceParamBodyTimeToSleep = 5,
		g6dofJointLinearMotorTargetVelocity = 5,
		shapeConvexPolygon = 6,
		sliderJointLinearMotionRestitution = 6,
		g6dofJointLinearMotorForceLimit = 6,
		spaceParamBodyAngularVelocityDampRatio = 6,
		areaParamAngularDamp = 6,
		hingeJointMotorTargetVelocity = 6,
		bodyParamMax = 6,
		areaParamPriority = 7,
		shapeConcavePolygon = 7,
		hingeJointMotorMaxImpulse = 7,
		spaceParamConstraintDefaultBias = 7,
		sliderJointLinearMotionDamping = 7,
		shapeHeightmap = 8,
		sliderJointLinearOrthogonalSoftness = 8,
		bodyAxisAngularX = 8,
		shapeCustom = 9,
		sliderJointLinearOrthogonalRestitution = 9,
		g6dofJointAngularLowerLimit = 10,
		sliderJointLinearOrthogonalDamping = 10,
		g6dofJointAngularUpperLimit = 11,
		sliderJointAngularLimitUpper = 11,
		sliderJointAngularLimitLower = 12,
		g6dofJointAngularLimitSoftness = 12,
		g6dofJointAngularDamping = 13,
		sliderJointAngularLimitSoftness = 13,
		g6dofJointAngularRestitution = 14,
		sliderJointAngularLimitRestitution = 14,
		sliderJointAngularLimitDamping = 15,
		g6dofJointAngularForceLimit = 15,
		bodyAxisAngularY = 16,
		g6dofJointAngularErp = 16,
		sliderJointAngularMotionSoftness = 16,
		sliderJointAngularMotionRestitution = 17,
		g6dofJointAngularMotorTargetVelocity = 17,
		sliderJointAngularMotionDamping = 18,
		g6dofJointAngularMotorForceLimit = 18,
		sliderJointAngularOrthogonalSoftness = 19,
		sliderJointAngularOrthogonalRestitution = 20,
		sliderJointAngularOrthogonalDamping = 21,
		sliderJointMax = 22,
		bodyAxisAngularZ = 32,
	}
	/**
	
	*/
	void areaAddShape(in RID area, in RID shape, in Transform transform = Transform.init, in bool disabled = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaAddShape, _godot_object, area, shape, transform, disabled);
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
	Transform areaGetShapeTransform(in RID area, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.areaGetShapeTransform, _godot_object, area, shape_idx);
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
	PhysicsServer.AreaSpaceOverrideMode areaGetSpaceOverrideMode(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsServer.AreaSpaceOverrideMode)(GDNativeClassBinding.areaGetSpaceOverrideMode, _godot_object, area);
	}
	/**
	
	*/
	Transform areaGetTransform(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.areaGetTransform, _godot_object, area);
	}
	/**
	
	*/
	bool areaIsRayPickable(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.areaIsRayPickable, _godot_object, area);
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
	void areaSetRayPickable(in RID area, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetRayPickable, _godot_object, area, enable);
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
	void areaSetShapeTransform(in RID area, in long shape_idx, in Transform transform)
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
	void areaSetTransform(in RID area, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetTransform, _godot_object, area, transform);
	}
	/**
	
	*/
	void bodyAddCentralForce(in RID _body, in Vector3 force)
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
	void bodyAddForce(in RID _body, in Vector3 force, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAddForce, _godot_object, _body, force, position);
	}
	/**
	
	*/
	void bodyAddShape(in RID _body, in RID shape, in Transform transform = Transform.init, in bool disabled = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAddShape, _godot_object, _body, shape, transform, disabled);
	}
	/**
	
	*/
	void bodyAddTorque(in RID _body, in Vector3 torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAddTorque, _godot_object, _body, torque);
	}
	/**
	
	*/
	void bodyApplyCentralImpulse(in RID _body, in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyApplyCentralImpulse, _godot_object, _body, impulse);
	}
	/**
	
	*/
	void bodyApplyImpulse(in RID _body, in Vector3 position, in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyApplyImpulse, _godot_object, _body, position, impulse);
	}
	/**
	
	*/
	void bodyApplyTorqueImpulse(in RID _body, in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyApplyTorqueImpulse, _godot_object, _body, impulse);
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
	RID bodyCreate(in long mode = 2, in bool init_sleeping = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.bodyCreate, _godot_object, mode, init_sleeping);
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
	PhysicsDirectBodyState bodyGetDirectState(in RID _body)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsDirectBodyState)(GDNativeClassBinding.bodyGetDirectState, _godot_object, _body);
	}
	/**
	
	*/
	double bodyGetKinematicSafeMargin(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.bodyGetKinematicSafeMargin, _godot_object, _body);
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
	PhysicsServer.BodyMode bodyGetMode(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsServer.BodyMode)(GDNativeClassBinding.bodyGetMode, _godot_object, _body);
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
	Transform bodyGetShapeTransform(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.bodyGetShapeTransform, _godot_object, _body, shape_idx);
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
	bool bodyIsAxisLocked(in RID _body, in long axis) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.bodyIsAxisLocked, _godot_object, _body, axis);
	}
	/**
	
	*/
	bool bodyIsContinuousCollisionDetectionEnabled(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.bodyIsContinuousCollisionDetectionEnabled, _godot_object, _body);
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
	bool bodyIsRayPickable(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.bodyIsRayPickable, _godot_object, _body);
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
	void bodySetAxisLock(in RID _body, in long axis, in bool lock)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetAxisLock, _godot_object, _body, axis, lock);
	}
	/**
	
	*/
	void bodySetAxisVelocity(in RID _body, in Vector3 axis_velocity)
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
	void bodySetEnableContinuousCollisionDetection(in RID _body, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetEnableContinuousCollisionDetection, _godot_object, _body, enable);
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
	void bodySetKinematicSafeMargin(in RID _body, in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetKinematicSafeMargin, _godot_object, _body, margin);
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
	void bodySetRayPickable(in RID _body, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetRayPickable, _godot_object, _body, enable);
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
	void bodySetShapeDisabled(in RID _body, in long shape_idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetShapeDisabled, _godot_object, _body, shape_idx, disabled);
	}
	/**
	
	*/
	void bodySetShapeTransform(in RID _body, in long shape_idx, in Transform transform)
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
	bool bodyTestMotion(in RID _body, in Transform from, in Vector3 motion, in bool infinite_inertia, PhysicsTestMotionResult result = PhysicsTestMotionResult.init, in bool exclude_raycast_shapes = true, in Array exclude = Array.make())
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.bodyTestMotion, _godot_object, _body, from, motion, infinite_inertia, result, exclude_raycast_shapes, exclude);
	}
	/**
	
	*/
	double coneTwistJointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.coneTwistJointGetParam, _godot_object, joint, param);
	}
	/**
	
	*/
	void coneTwistJointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.coneTwistJointSetParam, _godot_object, joint, param, value);
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
	bool generic6dofJointGetFlag(in RID joint, in long axis, in long flag)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.generic6dofJointGetFlag, _godot_object, joint, axis, flag);
	}
	/**
	
	*/
	double generic6dofJointGetParam(in RID joint, in long axis, in long param)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.generic6dofJointGetParam, _godot_object, joint, axis, param);
	}
	/**
	
	*/
	void generic6dofJointSetFlag(in RID joint, in long axis, in long flag, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.generic6dofJointSetFlag, _godot_object, joint, axis, flag, enable);
	}
	/**
	
	*/
	void generic6dofJointSetParam(in RID joint, in long axis, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.generic6dofJointSetParam, _godot_object, joint, axis, param, value);
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
	bool hingeJointGetFlag(in RID joint, in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hingeJointGetFlag, _godot_object, joint, flag);
	}
	/**
	
	*/
	double hingeJointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.hingeJointGetParam, _godot_object, joint, param);
	}
	/**
	
	*/
	void hingeJointSetFlag(in RID joint, in long flag, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.hingeJointSetFlag, _godot_object, joint, flag, enabled);
	}
	/**
	
	*/
	void hingeJointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.hingeJointSetParam, _godot_object, joint, param, value);
	}
	/**
	
	*/
	RID jointCreateConeTwist(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.jointCreateConeTwist, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	/**
	
	*/
	RID jointCreateGeneric6dof(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.jointCreateGeneric6dof, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	/**
	
	*/
	RID jointCreateHinge(in RID body_A, in Transform hinge_A, in RID body_B, in Transform hinge_B)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.jointCreateHinge, _godot_object, body_A, hinge_A, body_B, hinge_B);
	}
	/**
	
	*/
	RID jointCreatePin(in RID body_A, in Vector3 local_A, in RID body_B, in Vector3 local_B)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.jointCreatePin, _godot_object, body_A, local_A, body_B, local_B);
	}
	/**
	
	*/
	RID jointCreateSlider(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.jointCreateSlider, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	/**
	
	*/
	long jointGetSolverPriority(in RID joint) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.jointGetSolverPriority, _godot_object, joint);
	}
	/**
	
	*/
	PhysicsServer.JointType jointGetType(in RID joint) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsServer.JointType)(GDNativeClassBinding.jointGetType, _godot_object, joint);
	}
	/**
	
	*/
	void jointSetSolverPriority(in RID joint, in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.jointSetSolverPriority, _godot_object, joint, priority);
	}
	/**
	
	*/
	Vector3 pinJointGetLocalA(in RID joint) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.pinJointGetLocalA, _godot_object, joint);
	}
	/**
	
	*/
	Vector3 pinJointGetLocalB(in RID joint) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.pinJointGetLocalB, _godot_object, joint);
	}
	/**
	
	*/
	double pinJointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.pinJointGetParam, _godot_object, joint, param);
	}
	/**
	
	*/
	void pinJointSetLocalA(in RID joint, in Vector3 local_A)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pinJointSetLocalA, _godot_object, joint, local_A);
	}
	/**
	
	*/
	void pinJointSetLocalB(in RID joint, in Vector3 local_B)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pinJointSetLocalB, _godot_object, joint, local_B);
	}
	/**
	
	*/
	void pinJointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pinJointSetParam, _godot_object, joint, param, value);
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
	RID shapeCreate(in long type)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.shapeCreate, _godot_object, type);
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
	PhysicsServer.ShapeType shapeGetType(in RID shape) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsServer.ShapeType)(GDNativeClassBinding.shapeGetType, _godot_object, shape);
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
	double sliderJointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.sliderJointGetParam, _godot_object, joint, param);
	}
	/**
	
	*/
	void sliderJointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.sliderJointSetParam, _godot_object, joint, param, value);
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
	PhysicsDirectSpaceState spaceGetDirectState(in RID space)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsDirectSpaceState)(GDNativeClassBinding.spaceGetDirectState, _godot_object, space);
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
/// Returns: the PhysicsServerSingleton
@property @nogc nothrow pragma(inline, true)
PhysicsServerSingleton PhysicsServer()
{
	checkClassBinding!PhysicsServerSingleton();
	return PhysicsServerSingleton(PhysicsServerSingleton.GDNativeClassBinding._singleton);
}
