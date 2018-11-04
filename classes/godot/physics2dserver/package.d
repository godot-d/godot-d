/**
Physics 2D Server.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2dserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.physics2ddirectspacestate;
import godot.physics2dtestmotionresult;
import godot.physics2ddirectbodystate;
/**
Physics 2D Server.

Physics 2D Server is the server responsible for all 2D physics. It can create many kinds of physics objects, but does not insert them on the node tree.
*/
@GodotBaseClass struct Physics2DServerSingleton
{
	enum string _GODOT_internal_name = "Physics2DServer";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "Physics2DServer";
		@GodotName("line_shape_create") GodotMethod!(RID) lineShapeCreate;
		@GodotName("ray_shape_create") GodotMethod!(RID) rayShapeCreate;
		@GodotName("segment_shape_create") GodotMethod!(RID) segmentShapeCreate;
		@GodotName("circle_shape_create") GodotMethod!(RID) circleShapeCreate;
		@GodotName("rectangle_shape_create") GodotMethod!(RID) rectangleShapeCreate;
		@GodotName("capsule_shape_create") GodotMethod!(RID) capsuleShapeCreate;
		@GodotName("convex_polygon_shape_create") GodotMethod!(RID) convexPolygonShapeCreate;
		@GodotName("concave_polygon_shape_create") GodotMethod!(RID) concavePolygonShapeCreate;
		@GodotName("shape_set_data") GodotMethod!(void, RID, Variant) shapeSetData;
		@GodotName("shape_get_type") GodotMethod!(Physics2DServer.ShapeType, RID) shapeGetType;
		@GodotName("shape_get_data") GodotMethod!(Variant, RID) shapeGetData;
		@GodotName("space_create") GodotMethod!(RID) spaceCreate;
		@GodotName("space_set_active") GodotMethod!(void, RID, bool) spaceSetActive;
		@GodotName("space_is_active") GodotMethod!(bool, RID) spaceIsActive;
		@GodotName("space_set_param") GodotMethod!(void, RID, long, double) spaceSetParam;
		@GodotName("space_get_param") GodotMethod!(double, RID, long) spaceGetParam;
		@GodotName("space_get_direct_state") GodotMethod!(Physics2DDirectSpaceState, RID) spaceGetDirectState;
		@GodotName("area_create") GodotMethod!(RID) areaCreate;
		@GodotName("area_set_space") GodotMethod!(void, RID, RID) areaSetSpace;
		@GodotName("area_get_space") GodotMethod!(RID, RID) areaGetSpace;
		@GodotName("area_set_space_override_mode") GodotMethod!(void, RID, long) areaSetSpaceOverrideMode;
		@GodotName("area_get_space_override_mode") GodotMethod!(Physics2DServer.AreaSpaceOverrideMode, RID) areaGetSpaceOverrideMode;
		@GodotName("area_add_shape") GodotMethod!(void, RID, RID, Transform2D) areaAddShape;
		@GodotName("area_set_shape") GodotMethod!(void, RID, long, RID) areaSetShape;
		@GodotName("area_set_shape_transform") GodotMethod!(void, RID, long, Transform2D) areaSetShapeTransform;
		@GodotName("area_set_shape_disabled") GodotMethod!(void, RID, long, bool) areaSetShapeDisabled;
		@GodotName("area_get_shape_count") GodotMethod!(long, RID) areaGetShapeCount;
		@GodotName("area_get_shape") GodotMethod!(RID, RID, long) areaGetShape;
		@GodotName("area_get_shape_transform") GodotMethod!(Transform2D, RID, long) areaGetShapeTransform;
		@GodotName("area_remove_shape") GodotMethod!(void, RID, long) areaRemoveShape;
		@GodotName("area_clear_shapes") GodotMethod!(void, RID) areaClearShapes;
		@GodotName("area_set_collision_layer") GodotMethod!(void, RID, long) areaSetCollisionLayer;
		@GodotName("area_set_collision_mask") GodotMethod!(void, RID, long) areaSetCollisionMask;
		@GodotName("area_set_param") GodotMethod!(void, RID, long, Variant) areaSetParam;
		@GodotName("area_set_transform") GodotMethod!(void, RID, Transform2D) areaSetTransform;
		@GodotName("area_get_param") GodotMethod!(Variant, RID, long) areaGetParam;
		@GodotName("area_get_transform") GodotMethod!(Transform2D, RID) areaGetTransform;
		@GodotName("area_attach_object_instance_id") GodotMethod!(void, RID, long) areaAttachObjectInstanceId;
		@GodotName("area_get_object_instance_id") GodotMethod!(long, RID) areaGetObjectInstanceId;
		@GodotName("area_set_monitor_callback") GodotMethod!(void, RID, GodotObject, String) areaSetMonitorCallback;
		@GodotName("area_set_area_monitor_callback") GodotMethod!(void, RID, GodotObject, String) areaSetAreaMonitorCallback;
		@GodotName("area_set_monitorable") GodotMethod!(void, RID, bool) areaSetMonitorable;
		@GodotName("body_create") GodotMethod!(RID) bodyCreate;
		@GodotName("body_set_space") GodotMethod!(void, RID, RID) bodySetSpace;
		@GodotName("body_get_space") GodotMethod!(RID, RID) bodyGetSpace;
		@GodotName("body_set_mode") GodotMethod!(void, RID, long) bodySetMode;
		@GodotName("body_get_mode") GodotMethod!(Physics2DServer.BodyMode, RID) bodyGetMode;
		@GodotName("body_add_shape") GodotMethod!(void, RID, RID, Transform2D) bodyAddShape;
		@GodotName("body_set_shape") GodotMethod!(void, RID, long, RID) bodySetShape;
		@GodotName("body_set_shape_transform") GodotMethod!(void, RID, long, Transform2D) bodySetShapeTransform;
		@GodotName("body_set_shape_metadata") GodotMethod!(void, RID, long, Variant) bodySetShapeMetadata;
		@GodotName("body_get_shape_count") GodotMethod!(long, RID) bodyGetShapeCount;
		@GodotName("body_get_shape") GodotMethod!(RID, RID, long) bodyGetShape;
		@GodotName("body_get_shape_transform") GodotMethod!(Transform2D, RID, long) bodyGetShapeTransform;
		@GodotName("body_get_shape_metadata") GodotMethod!(Variant, RID, long) bodyGetShapeMetadata;
		@GodotName("body_remove_shape") GodotMethod!(void, RID, long) bodyRemoveShape;
		@GodotName("body_clear_shapes") GodotMethod!(void, RID) bodyClearShapes;
		@GodotName("body_set_shape_disabled") GodotMethod!(void, RID, long, bool) bodySetShapeDisabled;
		@GodotName("body_set_shape_as_one_way_collision") GodotMethod!(void, RID, long, bool) bodySetShapeAsOneWayCollision;
		@GodotName("body_attach_object_instance_id") GodotMethod!(void, RID, long) bodyAttachObjectInstanceId;
		@GodotName("body_get_object_instance_id") GodotMethod!(long, RID) bodyGetObjectInstanceId;
		@GodotName("body_set_continuous_collision_detection_mode") GodotMethod!(void, RID, long) bodySetContinuousCollisionDetectionMode;
		@GodotName("body_get_continuous_collision_detection_mode") GodotMethod!(Physics2DServer.CCDMode, RID) bodyGetContinuousCollisionDetectionMode;
		@GodotName("body_set_collision_layer") GodotMethod!(void, RID, long) bodySetCollisionLayer;
		@GodotName("body_get_collision_layer") GodotMethod!(long, RID) bodyGetCollisionLayer;
		@GodotName("body_set_collision_mask") GodotMethod!(void, RID, long) bodySetCollisionMask;
		@GodotName("body_get_collision_mask") GodotMethod!(long, RID) bodyGetCollisionMask;
		@GodotName("body_set_param") GodotMethod!(void, RID, long, double) bodySetParam;
		@GodotName("body_get_param") GodotMethod!(double, RID, long) bodyGetParam;
		@GodotName("body_set_state") GodotMethod!(void, RID, long, Variant) bodySetState;
		@GodotName("body_get_state") GodotMethod!(Variant, RID, long) bodyGetState;
		@GodotName("body_apply_central_impulse") GodotMethod!(void, RID, Vector2) bodyApplyCentralImpulse;
		@GodotName("body_apply_torque_impulse") GodotMethod!(void, RID, double) bodyApplyTorqueImpulse;
		@GodotName("body_apply_impulse") GodotMethod!(void, RID, Vector2, Vector2) bodyApplyImpulse;
		@GodotName("body_add_central_force") GodotMethod!(void, RID, Vector2) bodyAddCentralForce;
		@GodotName("body_add_force") GodotMethod!(void, RID, Vector2, Vector2) bodyAddForce;
		@GodotName("body_add_torque") GodotMethod!(void, RID, double) bodyAddTorque;
		@GodotName("body_set_axis_velocity") GodotMethod!(void, RID, Vector2) bodySetAxisVelocity;
		@GodotName("body_add_collision_exception") GodotMethod!(void, RID, RID) bodyAddCollisionException;
		@GodotName("body_remove_collision_exception") GodotMethod!(void, RID, RID) bodyRemoveCollisionException;
		@GodotName("body_set_max_contacts_reported") GodotMethod!(void, RID, long) bodySetMaxContactsReported;
		@GodotName("body_get_max_contacts_reported") GodotMethod!(long, RID) bodyGetMaxContactsReported;
		@GodotName("body_set_omit_force_integration") GodotMethod!(void, RID, bool) bodySetOmitForceIntegration;
		@GodotName("body_is_omitting_force_integration") GodotMethod!(bool, RID) bodyIsOmittingForceIntegration;
		@GodotName("body_set_force_integration_callback") GodotMethod!(void, RID, GodotObject, String, Variant) bodySetForceIntegrationCallback;
		@GodotName("body_test_motion") GodotMethod!(bool, RID, Transform2D, Vector2, bool, double, Physics2DTestMotionResult) bodyTestMotion;
		@GodotName("body_get_direct_state") GodotMethod!(Physics2DDirectBodyState, RID) bodyGetDirectState;
		@GodotName("joint_set_param") GodotMethod!(void, RID, long, double) jointSetParam;
		@GodotName("joint_get_param") GodotMethod!(double, RID, long) jointGetParam;
		@GodotName("pin_joint_create") GodotMethod!(RID, Vector2, RID, RID) pinJointCreate;
		@GodotName("groove_joint_create") GodotMethod!(RID, Vector2, Vector2, Vector2, RID, RID) grooveJointCreate;
		@GodotName("damped_spring_joint_create") GodotMethod!(RID, Vector2, Vector2, RID, RID) dampedSpringJointCreate;
		@GodotName("damped_string_joint_set_param") GodotMethod!(void, RID, long, double) dampedStringJointSetParam;
		@GodotName("damped_string_joint_get_param") GodotMethod!(double, RID, long) dampedStringJointGetParam;
		@GodotName("joint_get_type") GodotMethod!(Physics2DServer.JointType, RID) jointGetType;
		@GodotName("free_rid") GodotMethod!(void, RID) freeRid;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("get_process_info") GodotMethod!(long, long) getProcessInfo;
	}
	bool opEquals(in Physics2DServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		Constant to get the number of objects that are not sleeping.
		*/
		infoActiveObjects = 0,
		/**
		Constant to get the number of possible collisions.
		*/
		infoCollisionPairs = 1,
		/**
		Constant to get the number of space regions where a collision could occur.
		*/
		infoIslandCount = 2,
	}
	/// 
	enum AreaBodyStatus : int
	{
		/**
		The value of the first parameter and area callback function receives, when an object enters one of its shapes.
		*/
		areaBodyAdded = 0,
		/**
		The value of the first parameter and area callback function receives, when an object exits one of its shapes.
		*/
		areaBodyRemoved = 1,
	}
	/// 
	enum DampedStringParam : int
	{
		/**
		Set the resting length of the spring joint. The joint will always try to go to back this length when pulled apart.
		*/
		dampedStringRestLength = 0,
		/**
		Set the stiffness of the spring joint. The joint applies a force equal to the stiffness times the distance from its resting length.
		*/
		dampedStringStiffness = 1,
		/**
		Set the damping ratio of the spring joint. A value of 0 indicates an undamped spring, while 1 causes the system to reach equilibrium as fast as possible (critical damping).
		*/
		dampedStringDamping = 2,
	}
	/// 
	enum BodyMode : int
	{
		/**
		Constant for static bodies.
		*/
		bodyModeStatic = 0,
		/**
		Constant for kinematic bodies.
		*/
		bodyModeKinematic = 1,
		/**
		Constant for rigid bodies.
		*/
		bodyModeRigid = 2,
		/**
		Constant for rigid bodies in character mode. In this mode, a body can not rotate, and only its linear velocity is affected by physics.
		*/
		bodyModeCharacter = 3,
	}
	/// 
	enum ShapeType : int
	{
		/**
		This is the constant for creating line shapes. A line shape is an infinite line with an origin point, and a normal. Thus, it can be used for front/behind checks.
		*/
		shapeLine = 0,
		/**
		
		*/
		shapeRay = 1,
		/**
		This is the constant for creating segment shapes. A segment shape is a line from a point A to a point B. It can be checked for intersections.
		*/
		shapeSegment = 2,
		/**
		This is the constant for creating circle shapes. A circle shape only has a radius. It can be used for intersections and inside/outside checks.
		*/
		shapeCircle = 3,
		/**
		This is the constant for creating rectangle shapes. A rectangle shape is defined by a width and a height. It can be used for intersections and inside/outside checks.
		*/
		shapeRectangle = 4,
		/**
		This is the constant for creating capsule shapes. A capsule shape is defined by a radius and a length. It can be used for intersections and inside/outside checks.
		*/
		shapeCapsule = 5,
		/**
		This is the constant for creating convex polygon shapes. A polygon is defined by a list of points. It can be used for intersections and inside/outside checks. Unlike the method $(D CollisionPolygon2D.setPolygon), polygons modified with $(D shapeSetData) do not verify that the points supplied form is a convex polygon.
		*/
		shapeConvexPolygon = 6,
		/**
		This is the constant for creating concave polygon shapes. A polygon is defined by a list of points. It can be used for intersections checks, but not for inside/outside checks.
		*/
		shapeConcavePolygon = 7,
		/**
		This constant is used internally by the engine. Any attempt to create this kind of shape results in an error.
		*/
		shapeCustom = 8,
	}
	/// 
	enum JointParam : int
	{
		/**
		
		*/
		jointParamBias = 0,
		/**
		
		*/
		jointParamMaxBias = 1,
		/**
		
		*/
		jointParamMaxForce = 2,
	}
	/// 
	enum SpaceParameter : int
	{
		/**
		Constant to set/get the maximum distance a pair of bodies has to move before their collision status has to be recalculated.
		*/
		spaceParamContactRecycleRadius = 0,
		/**
		Constant to set/get the maximum distance a shape can be from another before they are considered separated.
		*/
		spaceParamContactMaxSeparation = 1,
		/**
		Constant to set/get the maximum distance a shape can penetrate another shape before it is considered a collision.
		*/
		spaceParamBodyMaxAllowedPenetration = 2,
		/**
		Constant to set/get the threshold linear velocity of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after the time given.
		*/
		spaceParamBodyLinearVelocitySleepThreshold = 3,
		/**
		Constant to set/get the threshold angular velocity of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after the time given.
		*/
		spaceParamBodyAngularVelocitySleepThreshold = 4,
		/**
		Constant to set/get the maximum time of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after this time.
		*/
		spaceParamBodyTimeToSleep = 5,
		/**
		Constant to set/get the default solver bias for all physics constraints. A solver bias is a factor controlling how much two objects "rebound", after violating a constraint, to avoid leaving them in that state because of numerical imprecision.
		*/
		spaceParamConstraintDefaultBias = 6,
	}
	/// 
	enum JointType : int
	{
		/**
		Constant to create pin joints.
		*/
		jointPin = 0,
		/**
		Constant to create groove joints.
		*/
		jointGroove = 1,
		/**
		Constant to create damped spring joints.
		*/
		jointDampedSpring = 2,
	}
	/// 
	enum CCDMode : int
	{
		/**
		Disables continuous collision detection. This is the fastest way to detect body collisions, but can miss small, fast-moving objects.
		*/
		ccdModeDisabled = 0,
		/**
		Enables continuous collision detection by raycasting. It is faster than shapecasting, but less precise.
		*/
		ccdModeCastRay = 1,
		/**
		Enables continuous collision detection by shapecasting. It is the slowest CCD method, and the most precise.
		*/
		ccdModeCastShape = 2,
	}
	/// 
	enum BodyState : int
	{
		/**
		Constant to set/get the current transform matrix of the body.
		*/
		bodyStateTransform = 0,
		/**
		Constant to set/get the current linear velocity of the body.
		*/
		bodyStateLinearVelocity = 1,
		/**
		Constant to set/get the current angular velocity of the body.
		*/
		bodyStateAngularVelocity = 2,
		/**
		Constant to sleep/wake up a body, or to get whether it is sleeping.
		*/
		bodyStateSleeping = 3,
		/**
		Constant to set/get whether the body can sleep.
		*/
		bodyStateCanSleep = 4,
	}
	/// 
	enum BodyParameter : int
	{
		/**
		Constant to set/get a body's bounce factor.
		*/
		bodyParamBounce = 0,
		/**
		Constant to set/get a body's friction.
		*/
		bodyParamFriction = 1,
		/**
		Constant to set/get a body's mass.
		*/
		bodyParamMass = 2,
		/**
		Constant to set/get a body's inertia.
		*/
		bodyParamInertia = 3,
		/**
		Constant to set/get a body's gravity multiplier.
		*/
		bodyParamGravityScale = 4,
		/**
		Constant to set/get a body's linear dampening factor.
		*/
		bodyParamLinearDamp = 5,
		/**
		Constant to set/get a body's angular dampening factor.
		*/
		bodyParamAngularDamp = 6,
		/**
		This is the last ID for body parameters. Any attempt to set this property is ignored. Any attempt to get it returns 0.
		*/
		bodyParamMax = 7,
	}
	/// 
	enum AreaSpaceOverrideMode : int
	{
		/**
		This area does not affect gravity/damp. These are generally areas that exist only to detect collisions, and objects entering or exiting them.
		*/
		areaSpaceOverrideDisabled = 0,
		/**
		This area adds its gravity/damp values to whatever has been calculated so far. This way, many overlapping areas can combine their physics to make interesting effects.
		*/
		areaSpaceOverrideCombine = 1,
		/**
		This area adds its gravity/damp values to whatever has been calculated so far. Then stops taking into account the rest of the areas, even the default one.
		*/
		areaSpaceOverrideCombineReplace = 2,
		/**
		This area replaces any gravity/damp, even the default one, and stops taking into account the rest of the areas.
		*/
		areaSpaceOverrideReplace = 3,
		/**
		This area replaces any gravity/damp calculated so far, but keeps calculating the rest of the areas, down to the default one.
		*/
		areaSpaceOverrideReplaceCombine = 4,
	}
	/// 
	enum AreaParameter : int
	{
		/**
		Constant to set/get gravity strength in an area.
		*/
		areaParamGravity = 0,
		/**
		Constant to set/get gravity vector/center in an area.
		*/
		areaParamGravityVector = 1,
		/**
		Constant to set/get whether the gravity vector of an area is a direction, or a center point.
		*/
		areaParamGravityIsPoint = 2,
		/**
		Constant to set/get the falloff factor for point gravity of an area. The greater this value is, the faster the strength of gravity decreases with the square of distance.
		*/
		areaParamGravityDistanceScale = 3,
		/**
		This constant was used to set/get the falloff factor for point gravity. It has been superseded by AREA_PARAM_GRAVITY_DISTANCE_SCALE.
		*/
		areaParamGravityPointAttenuation = 4,
		/**
		Constant to set/get the linear dampening factor of an area.
		*/
		areaParamLinearDamp = 5,
		/**
		Constant to set/get the angular dampening factor of an area.
		*/
		areaParamAngularDamp = 6,
		/**
		Constant to set/get the priority (order of processing) of an area.
		*/
		areaParamPriority = 7,
	}
	/// 
	enum Constants : int
	{
		dampedStringRestLength = 0,
		bodyParamBounce = 0,
		spaceParamContactRecycleRadius = 0,
		ccdModeDisabled = 0,
		areaBodyAdded = 0,
		bodyStateTransform = 0,
		areaParamGravity = 0,
		infoActiveObjects = 0,
		jointParamBias = 0,
		areaSpaceOverrideDisabled = 0,
		shapeLine = 0,
		jointPin = 0,
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
		shapeRay = 1,
		bodyModeKinematic = 1,
		dampedStringStiffness = 1,
		infoCollisionPairs = 1,
		spaceParamBodyMaxAllowedPenetration = 2,
		dampedStringDamping = 2,
		infoIslandCount = 2,
		ccdModeCastShape = 2,
		jointParamMaxForce = 2,
		bodyStateAngularVelocity = 2,
		shapeSegment = 2,
		jointDampedSpring = 2,
		bodyModeRigid = 2,
		areaSpaceOverrideCombineReplace = 2,
		bodyParamMass = 2,
		areaParamGravityIsPoint = 2,
		bodyParamInertia = 3,
		areaSpaceOverrideReplace = 3,
		shapeCircle = 3,
		bodyModeCharacter = 3,
		spaceParamBodyLinearVelocitySleepThreshold = 3,
		areaParamGravityDistanceScale = 3,
		bodyStateSleeping = 3,
		areaParamGravityPointAttenuation = 4,
		bodyParamGravityScale = 4,
		areaSpaceOverrideReplaceCombine = 4,
		bodyStateCanSleep = 4,
		spaceParamBodyAngularVelocitySleepThreshold = 4,
		shapeRectangle = 4,
		spaceParamBodyTimeToSleep = 5,
		bodyParamLinearDamp = 5,
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
	RID lineShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.lineShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID rayShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.rayShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID segmentShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.segmentShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID circleShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.circleShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID rectangleShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.rectangleShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID capsuleShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.capsuleShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID convexPolygonShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.convexPolygonShapeCreate, _godot_object);
	}
	/**
	
	*/
	RID concavePolygonShapeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.concavePolygonShapeCreate, _godot_object);
	}
	/**
	Sets the shape data that defines its shape and size. The data to be passed depends on the kind of shape created $(D shapeGetType).
	*/
	void shapeSetData(VariantArg1)(in RID shape, in VariantArg1 data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.shapeSetData, _godot_object, shape, data);
	}
	/**
	Returns the type of shape (see SHAPE_* constants).
	*/
	Physics2DServer.ShapeType shapeGetType(in RID shape) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.ShapeType)(_classBinding.shapeGetType, _godot_object, shape);
	}
	/**
	Returns the shape data.
	*/
	Variant shapeGetData(in RID shape) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.shapeGetData, _godot_object, shape);
	}
	/**
	Creates a space. A space is a collection of parameters for the physics engine that can be assigned to an area or a body. It can be assigned to an area with $(D areaSetSpace), or to a body with $(D bodySetSpace).
	*/
	RID spaceCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.spaceCreate, _godot_object);
	}
	/**
	Marks a space as active. It will not have an effect, unless it is assigned to an area or body.
	*/
	void spaceSetActive(in RID space, in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.spaceSetActive, _godot_object, space, active);
	}
	/**
	Returns whether the space is active.
	*/
	bool spaceIsActive(in RID space) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.spaceIsActive, _godot_object, space);
	}
	/**
	Sets the value for a space parameter. A list of available parameters is on the SPACE_PARAM_* constants.
	*/
	void spaceSetParam(in RID space, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.spaceSetParam, _godot_object, space, param, value);
	}
	/**
	Returns the value of a space parameter.
	*/
	double spaceGetParam(in RID space, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.spaceGetParam, _godot_object, space, param);
	}
	/**
	Returns the state of a space, a $(D Physics2DDirectSpaceState). This object can be used to make collision/intersection queries.
	*/
	Physics2DDirectSpaceState spaceGetDirectState(in RID space)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DDirectSpaceState)(_classBinding.spaceGetDirectState, _godot_object, space);
	}
	/**
	Creates an $(D Area2D).
	*/
	RID areaCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.areaCreate, _godot_object);
	}
	/**
	Assigns a space to the area.
	*/
	void areaSetSpace(in RID area, in RID space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetSpace, _godot_object, area, space);
	}
	/**
	Returns the space assigned to the area.
	*/
	RID areaGetSpace(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.areaGetSpace, _godot_object, area);
	}
	/**
	Sets the space override mode for the area. The modes are described in the constants AREA_SPACE_OVERRIDE_*.
	*/
	void areaSetSpaceOverrideMode(in RID area, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetSpaceOverrideMode, _godot_object, area, mode);
	}
	/**
	Returns the space override mode for the area.
	*/
	Physics2DServer.AreaSpaceOverrideMode areaGetSpaceOverrideMode(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.AreaSpaceOverrideMode)(_classBinding.areaGetSpaceOverrideMode, _godot_object, area);
	}
	/**
	Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
	*/
	void areaAddShape(in RID area, in RID shape, in Transform2D transform = Transform2D.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaAddShape, _godot_object, area, shape, transform);
	}
	/**
	Substitutes a given area shape by another. The old shape is selected by its index, the new one by its $(D RID).
	*/
	void areaSetShape(in RID area, in long shape_idx, in RID shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetShape, _godot_object, area, shape_idx, shape);
	}
	/**
	Sets the transform matrix for an area shape.
	*/
	void areaSetShapeTransform(in RID area, in long shape_idx, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetShapeTransform, _godot_object, area, shape_idx, transform);
	}
	/**
	Disables a given shape in an area.
	*/
	void areaSetShapeDisabled(in RID area, in long shape_idx, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetShapeDisabled, _godot_object, area, shape_idx, disable);
	}
	/**
	Returns the number of shapes assigned to an area.
	*/
	long areaGetShapeCount(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.areaGetShapeCount, _godot_object, area);
	}
	/**
	Returns the $(D RID) of the nth shape of an area.
	*/
	RID areaGetShape(in RID area, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.areaGetShape, _godot_object, area, shape_idx);
	}
	/**
	Returns the transform matrix of a shape within an area.
	*/
	Transform2D areaGetShapeTransform(in RID area, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.areaGetShapeTransform, _godot_object, area, shape_idx);
	}
	/**
	Removes a shape from an area. It does not delete the shape, so it can be reassigned later.
	*/
	void areaRemoveShape(in RID area, in long shape_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaRemoveShape, _godot_object, area, shape_idx);
	}
	/**
	Removes all shapes from an area. It does not delete the shapes, so they can be reassigned later.
	*/
	void areaClearShapes(in RID area)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaClearShapes, _godot_object, area);
	}
	/**
	Assigns the area to one or many physics layers.
	*/
	void areaSetCollisionLayer(in RID area, in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetCollisionLayer, _godot_object, area, layer);
	}
	/**
	Sets which physics layers the area will monitor.
	*/
	void areaSetCollisionMask(in RID area, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetCollisionMask, _godot_object, area, mask);
	}
	/**
	Sets the value for an area parameter. A list of available parameters is on the AREA_PARAM_* constants.
	*/
	void areaSetParam(VariantArg2)(in RID area, in long param, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetParam, _godot_object, area, param, value);
	}
	/**
	Sets the transform matrix for an area.
	*/
	void areaSetTransform(in RID area, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetTransform, _godot_object, area, transform);
	}
	/**
	Returns an area parameter value. A list of available parameters is on the AREA_PARAM_* constants.
	*/
	Variant areaGetParam(in RID area, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.areaGetParam, _godot_object, area, param);
	}
	/**
	Returns the transform matrix for an area.
	*/
	Transform2D areaGetTransform(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.areaGetTransform, _godot_object, area);
	}
	/**
	Assigns the area to a descendant of $(D GodotObject), so it can exist in the node tree.
	*/
	void areaAttachObjectInstanceId(in RID area, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaAttachObjectInstanceId, _godot_object, area, id);
	}
	/**
	Gets the instance ID of the object the area is assigned to.
	*/
	long areaGetObjectInstanceId(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.areaGetObjectInstanceId, _godot_object, area);
	}
	/**
	Sets the function to call when any body/area enters or exits the area. This callback will be called for any object interacting with the area, and takes five parameters:
	1: AREA_BODY_ADDED or AREA_BODY_REMOVED, depending on whether the object entered or exited the area.
	2: $(D RID) of the object that entered/exited the area.
	3: Instance ID of the object that entered/exited the area.
	4: The shape index of the object that entered/exited the area.
	5: The shape index of the area where the object entered/exited.
	*/
	void areaSetMonitorCallback(in RID area, GodotObject receiver, in String method)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetMonitorCallback, _godot_object, area, receiver, method);
	}
	/**
	
	*/
	void areaSetAreaMonitorCallback(in RID area, GodotObject receiver, in String method)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetAreaMonitorCallback, _godot_object, area, receiver, method);
	}
	/**
	
	*/
	void areaSetMonitorable(in RID area, in bool monitorable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetMonitorable, _godot_object, area, monitorable);
	}
	/**
	Creates a physics body. The first parameter can be any value from constants BODY_MODE*, for the type of body created. Additionally, the body can be created in sleeping state to save processing time.
	*/
	RID bodyCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.bodyCreate, _godot_object);
	}
	/**
	Assigns a space to the body (see $(D spaceCreate)).
	*/
	void bodySetSpace(in RID _body, in RID space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetSpace, _godot_object, _body, space);
	}
	/**
	Returns the $(D RID) of the space assigned to a body.
	*/
	RID bodyGetSpace(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.bodyGetSpace, _godot_object, _body);
	}
	/**
	Sets the body mode, from one of the constants BODY_MODE*.
	*/
	void bodySetMode(in RID _body, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetMode, _godot_object, _body, mode);
	}
	/**
	Returns the body mode.
	*/
	Physics2DServer.BodyMode bodyGetMode(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.BodyMode)(_classBinding.bodyGetMode, _godot_object, _body);
	}
	/**
	Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
	*/
	void bodyAddShape(in RID _body, in RID shape, in Transform2D transform = Transform2D.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAddShape, _godot_object, _body, shape, transform);
	}
	/**
	Substitutes a given body shape by another. The old shape is selected by its index, the new one by its $(D RID).
	*/
	void bodySetShape(in RID _body, in long shape_idx, in RID shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetShape, _godot_object, _body, shape_idx, shape);
	}
	/**
	Sets the transform matrix for a body shape.
	*/
	void bodySetShapeTransform(in RID _body, in long shape_idx, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetShapeTransform, _godot_object, _body, shape_idx, transform);
	}
	/**
	Sets metadata of a shape within a body. This metadata is different from $(D GodotObject.setMeta), and can be retrieved on shape queries.
	*/
	void bodySetShapeMetadata(VariantArg2)(in RID _body, in long shape_idx, in VariantArg2 metadata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetShapeMetadata, _godot_object, _body, shape_idx, metadata);
	}
	/**
	Returns the number of shapes assigned to a body.
	*/
	long bodyGetShapeCount(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.bodyGetShapeCount, _godot_object, _body);
	}
	/**
	Returns the $(D RID) of the nth shape of a body.
	*/
	RID bodyGetShape(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.bodyGetShape, _godot_object, _body, shape_idx);
	}
	/**
	Returns the transform matrix of a body shape.
	*/
	Transform2D bodyGetShapeTransform(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.bodyGetShapeTransform, _godot_object, _body, shape_idx);
	}
	/**
	Returns the metadata of a shape of a body.
	*/
	Variant bodyGetShapeMetadata(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.bodyGetShapeMetadata, _godot_object, _body, shape_idx);
	}
	/**
	Removes a shape from a body. The shape is not deleted, so it can be reused afterwards.
	*/
	void bodyRemoveShape(in RID _body, in long shape_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyRemoveShape, _godot_object, _body, shape_idx);
	}
	/**
	Removes all shapes from a body.
	*/
	void bodyClearShapes(in RID _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyClearShapes, _godot_object, _body);
	}
	/**
	Disables shape in body if `disable` is `true`.
	*/
	void bodySetShapeDisabled(in RID _body, in long shape_idx, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetShapeDisabled, _godot_object, _body, shape_idx, disable);
	}
	/**
	Enables one way collision on body if `enable` is `true`.
	*/
	void bodySetShapeAsOneWayCollision(in RID _body, in long shape_idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetShapeAsOneWayCollision, _godot_object, _body, shape_idx, enable);
	}
	/**
	Assigns the area to a descendant of $(D GodotObject), so it can exist in the node tree.
	*/
	void bodyAttachObjectInstanceId(in RID _body, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAttachObjectInstanceId, _godot_object, _body, id);
	}
	/**
	Gets the instance ID of the object the area is assigned to.
	*/
	long bodyGetObjectInstanceId(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.bodyGetObjectInstanceId, _godot_object, _body);
	}
	/**
	Sets the continuous collision detection mode from any of the CCD_MODE_* constants.
	Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.
	*/
	void bodySetContinuousCollisionDetectionMode(in RID _body, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetContinuousCollisionDetectionMode, _godot_object, _body, mode);
	}
	/**
	Returns the continuous collision detection mode.
	*/
	Physics2DServer.CCDMode bodyGetContinuousCollisionDetectionMode(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.CCDMode)(_classBinding.bodyGetContinuousCollisionDetectionMode, _godot_object, _body);
	}
	/**
	Sets the physics layer or layers a body belongs to.
	*/
	void bodySetCollisionLayer(in RID _body, in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetCollisionLayer, _godot_object, _body, layer);
	}
	/**
	Returns the physics layer or layers a body belongs to.
	*/
	long bodyGetCollisionLayer(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.bodyGetCollisionLayer, _godot_object, _body);
	}
	/**
	Sets the physics layer or layers a body can collide with.
	*/
	void bodySetCollisionMask(in RID _body, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetCollisionMask, _godot_object, _body, mask);
	}
	/**
	Returns the physics layer or layers a body can collide with.
	*/
	long bodyGetCollisionMask(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.bodyGetCollisionMask, _godot_object, _body);
	}
	/**
	Sets a body parameter. A list of available parameters is on the BODY_PARAM_* constants.
	*/
	void bodySetParam(in RID _body, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetParam, _godot_object, _body, param, value);
	}
	/**
	Returns the value of a body parameter. A list of available parameters is on the BODY_PARAM_* constants.
	*/
	double bodyGetParam(in RID _body, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.bodyGetParam, _godot_object, _body, param);
	}
	/**
	Sets a body state (see BODY_STATE* constants).
	*/
	void bodySetState(VariantArg2)(in RID _body, in long state, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetState, _godot_object, _body, state, value);
	}
	/**
	Returns a body state.
	*/
	Variant bodyGetState(in RID _body, in long state) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.bodyGetState, _godot_object, _body, state);
	}
	/**
	
	*/
	void bodyApplyCentralImpulse(in RID _body, in Vector2 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyApplyCentralImpulse, _godot_object, _body, impulse);
	}
	/**
	
	*/
	void bodyApplyTorqueImpulse(in RID _body, in double impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyApplyTorqueImpulse, _godot_object, _body, impulse);
	}
	/**
	Adds a positioned impulse to the applied force and torque. Both the force and the offset from the body origin are in global coordinates.
	*/
	void bodyApplyImpulse(in RID _body, in Vector2 position, in Vector2 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyApplyImpulse, _godot_object, _body, position, impulse);
	}
	/**
	
	*/
	void bodyAddCentralForce(in RID _body, in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAddCentralForce, _godot_object, _body, force);
	}
	/**
	Adds a positioned force to the applied force and torque. As with $(D bodyApplyImpulse), both the force and the offset from the body origin are in global coordinates. A force differs from an impulse in that, while the two are forces, the impulse clears itself after being applied.
	*/
	void bodyAddForce(in RID _body, in Vector2 offset, in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAddForce, _godot_object, _body, offset, force);
	}
	/**
	
	*/
	void bodyAddTorque(in RID _body, in double torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAddTorque, _godot_object, _body, torque);
	}
	/**
	Sets an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	*/
	void bodySetAxisVelocity(in RID _body, in Vector2 axis_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetAxisVelocity, _godot_object, _body, axis_velocity);
	}
	/**
	Adds a body to the list of bodies exempt from collisions.
	*/
	void bodyAddCollisionException(in RID _body, in RID excepted_body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAddCollisionException, _godot_object, _body, excepted_body);
	}
	/**
	Removes a body from the list of bodies exempt from collisions.
	*/
	void bodyRemoveCollisionException(in RID _body, in RID excepted_body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyRemoveCollisionException, _godot_object, _body, excepted_body);
	}
	/**
	Sets the maximum contacts to report. Bodies can keep a log of the contacts with other bodies, this is enabled by setting the maximum amount of contacts reported to a number greater than 0.
	*/
	void bodySetMaxContactsReported(in RID _body, in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetMaxContactsReported, _godot_object, _body, amount);
	}
	/**
	Returns the maximum contacts that can be reported. See $(D bodySetMaxContactsReported).
	*/
	long bodyGetMaxContactsReported(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.bodyGetMaxContactsReported, _godot_object, _body);
	}
	/**
	Sets whether a body uses a callback function to calculate its own physics (see $(D bodySetForceIntegrationCallback)).
	*/
	void bodySetOmitForceIntegration(in RID _body, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetOmitForceIntegration, _godot_object, _body, enable);
	}
	/**
	Returns whether a body uses a callback function to calculate its own physics (see $(D bodySetForceIntegrationCallback)).
	*/
	bool bodyIsOmittingForceIntegration(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.bodyIsOmittingForceIntegration, _godot_object, _body);
	}
	/**
	Sets the function used to calculate physics for an object, if that object allows it (see $(D bodySetOmitForceIntegration)).
	*/
	void bodySetForceIntegrationCallback(VariantArg3)(in RID _body, GodotObject receiver, in String method, in VariantArg3 userdata = Variant.nil)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetForceIntegrationCallback, _godot_object, _body, receiver, method, userdata);
	}
	/**
	Returns whether a body can move from a given point in a given direction. Apart from the boolean return value, a $(D Physics2DTestMotionResult) can be passed to return additional information in.
	*/
	bool bodyTestMotion(in RID _body, in Transform2D from, in Vector2 motion, in bool infinite_inertia, in double margin = 0.08, Physics2DTestMotionResult result = Physics2DTestMotionResult.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.bodyTestMotion, _godot_object, _body, from, motion, infinite_inertia, margin, result);
	}
	/**
	Returns the $(D Physics2DDirectBodyState) of the body.
	*/
	Physics2DDirectBodyState bodyGetDirectState(in RID _body)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DDirectBodyState)(_classBinding.bodyGetDirectState, _godot_object, _body);
	}
	/**
	Sets a joint parameter. Parameters are explained in the JOINT_PARAM* constants.
	*/
	void jointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.jointSetParam, _godot_object, joint, param, value);
	}
	/**
	Returns the value of a joint parameter.
	*/
	double jointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.jointGetParam, _godot_object, joint, param);
	}
	/**
	Creates a pin joint between two bodies. If not specified, the second body is assumed to be the joint itself.
	*/
	RID pinJointCreate(in Vector2 anchor, in RID body_a, in RID body_b = RID.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.pinJointCreate, _godot_object, anchor, body_a, body_b);
	}
	/**
	Creates a groove joint between two bodies. If not specified, the bodyies are assumed to be the joint itself.
	*/
	RID grooveJointCreate(in Vector2 groove1_a, in Vector2 groove2_a, in Vector2 anchor_b, in RID body_a = RID.init, in RID body_b = RID.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.grooveJointCreate, _godot_object, groove1_a, groove2_a, anchor_b, body_a, body_b);
	}
	/**
	Creates a damped spring joint between two bodies. If not specified, the second body is assumed to be the joint itself.
	*/
	RID dampedSpringJointCreate(in Vector2 anchor_a, in Vector2 anchor_b, in RID body_a, in RID body_b = RID.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.dampedSpringJointCreate, _godot_object, anchor_a, anchor_b, body_a, body_b);
	}
	/**
	Sets a damped spring joint parameter. Parameters are explained in the DAMPED_STRING* constants.
	*/
	void dampedStringJointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.dampedStringJointSetParam, _godot_object, joint, param, value);
	}
	/**
	Returns the value of a damped spring joint parameter.
	*/
	double dampedStringJointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.dampedStringJointGetParam, _godot_object, joint, param);
	}
	/**
	Returns the type of a joint (see JOINT_* constants).
	*/
	Physics2DServer.JointType jointGetType(in RID joint) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.JointType)(_classBinding.jointGetType, _godot_object, joint);
	}
	/**
	Destroys any of the objects created by Physics2DServer. If the $(D RID) passed is not one of the objects that can be created by Physics2DServer, an error will be sent to the console.
	*/
	void freeRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.freeRid, _godot_object, rid);
	}
	/**
	Activates or deactivates the 2D physics engine.
	*/
	void setActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setActive, _godot_object, active);
	}
	/**
	Returns information about the current state of the 2D physics engine. The states are listed under the INFO_* constants.
	*/
	long getProcessInfo(in long process_info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getProcessInfo, _godot_object, process_info);
	}
}
/// Returns: the Physics2DServerSingleton
@property @nogc nothrow pragma(inline, true)
Physics2DServerSingleton Physics2DServer()
{
	checkClassBinding!Physics2DServerSingleton();
	return Physics2DServerSingleton(Physics2DServerSingleton._classBinding._singleton);
}
