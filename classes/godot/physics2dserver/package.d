/**
Server interface for low-level 2D physics access.

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
import godot.object;
import godot.physics2ddirectbodystate;
import godot.physics2dtestmotionresult;
import godot.physics2ddirectspacestate;
/**
Server interface for low-level 2D physics access.

Physics2DServer is the server responsible for all 2D physics. It can create many kinds of physics objects, but does not insert them on the node tree.
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
		@GodotName("body_test_motion") GodotMethod!(bool, RID, Transform2D, Vector2, bool, double, Physics2DTestMotionResult) bodyTestMotion;
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
		Sets the resting length of the spring joint. The joint will always try to go to back this length when pulled apart.
		*/
		dampedStringRestLength = 0,
		/**
		Sets the stiffness of the spring joint. The joint applies a force equal to the stiffness times the distance from its resting length.
		*/
		dampedStringStiffness = 1,
		/**
		Sets the damping ratio of the spring joint. A value of 0 indicates an undamped spring, while 1 causes the system to reach equilibrium as fast as possible (critical damping).
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
		This is the constant for creating convex polygon shapes. A polygon is defined by a list of points. It can be used for intersections and inside/outside checks. Unlike the $(D CollisionPolygon2D.polygon) property, polygons modified with $(D shapeSetData) do not verify that the points supplied form is a convex polygon.
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
		/**
		
		*/
		spaceParamTestMotionMinContactDepth = 7,
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
		Represents the size of the $(D bodyparameter) enum.
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
		This constant was used to set/get the falloff factor for point gravity. It has been superseded by $(D constant AREA_PARAM_GRAVITY_DISTANCE_SCALE).
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
		spaceParamTestMotionMinContactDepth = 7,
		bodyParamMax = 7,
		areaParamPriority = 7,
		shapeConcavePolygon = 7,
		shapeCustom = 8,
	}
	/**
	Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
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
	Assigns the area to a descendant of $(D GodotObject), so it can exist in the node tree.
	*/
	void areaAttachObjectInstanceId(in RID area, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaAttachObjectInstanceId, _godot_object, area, id);
	}
	/**
	Removes all shapes from an area. It does not delete the shapes, so they can be reassigned later.
	*/
	void areaClearShapes(in RID area)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaClearShapes, _godot_object, area);
	}
	/**
	Creates an $(D Area2D).
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
	Gets the instance ID of the object the area is assigned to.
	*/
	long areaGetObjectInstanceId(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.areaGetObjectInstanceId, _godot_object, area);
	}
	/**
	Returns an area parameter value. See $(D areaparameter) for a list of available parameters.
	*/
	Variant areaGetParam(in RID area, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.areaGetParam, _godot_object, area, param);
	}
	/**
	Returns the $(D RID) of the nth shape of an area.
	*/
	RID areaGetShape(in RID area, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.areaGetShape, _godot_object, area, shape_idx);
	}
	/**
	Returns the number of shapes assigned to an area.
	*/
	long areaGetShapeCount(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.areaGetShapeCount, _godot_object, area);
	}
	/**
	Returns the transform matrix of a shape within an area.
	*/
	Transform2D areaGetShapeTransform(in RID area, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.areaGetShapeTransform, _godot_object, area, shape_idx);
	}
	/**
	Returns the space assigned to the area.
	*/
	RID areaGetSpace(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.areaGetSpace, _godot_object, area);
	}
	/**
	Returns the space override mode for the area.
	*/
	Physics2DServer.AreaSpaceOverrideMode areaGetSpaceOverrideMode(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.AreaSpaceOverrideMode)(GDNativeClassBinding.areaGetSpaceOverrideMode, _godot_object, area);
	}
	/**
	Returns the transform matrix for an area.
	*/
	Transform2D areaGetTransform(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.areaGetTransform, _godot_object, area);
	}
	/**
	Removes a shape from an area. It does not delete the shape, so it can be reassigned later.
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
	Assigns the area to one or many physics layers.
	*/
	void areaSetCollisionLayer(in RID area, in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetCollisionLayer, _godot_object, area, layer);
	}
	/**
	Sets which physics layers the area will monitor.
	*/
	void areaSetCollisionMask(in RID area, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetCollisionMask, _godot_object, area, mask);
	}
	/**
	Sets the function to call when any body/area enters or exits the area. This callback will be called for any object interacting with the area, and takes five parameters:
	1: $(D constant AREA_BODY_ADDED) or $(D constant AREA_BODY_REMOVED), depending on whether the object entered or exited the area.
	2: $(D RID) of the object that entered/exited the area.
	3: Instance ID of the object that entered/exited the area.
	4: The shape index of the object that entered/exited the area.
	5: The shape index of the area where the object entered/exited.
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
	Sets the value for an area parameter. See $(D areaparameter) for a list of available parameters.
	*/
	void areaSetParam(VariantArg2)(in RID area, in long param, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetParam, _godot_object, area, param, value);
	}
	/**
	Substitutes a given area shape by another. The old shape is selected by its index, the new one by its $(D RID).
	*/
	void areaSetShape(in RID area, in long shape_idx, in RID shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetShape, _godot_object, area, shape_idx, shape);
	}
	/**
	Disables a given shape in an area.
	*/
	void areaSetShapeDisabled(in RID area, in long shape_idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetShapeDisabled, _godot_object, area, shape_idx, disabled);
	}
	/**
	Sets the transform matrix for an area shape.
	*/
	void areaSetShapeTransform(in RID area, in long shape_idx, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetShapeTransform, _godot_object, area, shape_idx, transform);
	}
	/**
	Assigns a space to the area.
	*/
	void areaSetSpace(in RID area, in RID space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetSpace, _godot_object, area, space);
	}
	/**
	Sets the space override mode for the area. See $(D areaspaceoverridemode) for a list of available modes.
	*/
	void areaSetSpaceOverrideMode(in RID area, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.areaSetSpaceOverrideMode, _godot_object, area, mode);
	}
	/**
	Sets the transform matrix for an area.
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
	Adds a body to the list of bodies exempt from collisions.
	*/
	void bodyAddCollisionException(in RID _body, in RID excepted_body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAddCollisionException, _godot_object, _body, excepted_body);
	}
	/**
	Adds a positioned force to the applied force and torque. As with $(D bodyApplyImpulse), both the force and the offset from the body origin are in global coordinates. A force differs from an impulse in that, while the two are forces, the impulse clears itself after being applied.
	*/
	void bodyAddForce(in RID _body, in Vector2 offset, in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAddForce, _godot_object, _body, offset, force);
	}
	/**
	Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
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
	Adds a positioned impulse to the applied force and torque. Both the force and the offset from the body origin are in global coordinates.
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
	Assigns the area to a descendant of $(D GodotObject), so it can exist in the node tree.
	*/
	void bodyAttachObjectInstanceId(in RID _body, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyAttachObjectInstanceId, _godot_object, _body, id);
	}
	/**
	Removes all shapes from a body.
	*/
	void bodyClearShapes(in RID _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyClearShapes, _godot_object, _body);
	}
	/**
	Creates a physics body.
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
	Returns the physics layer or layers a body belongs to.
	*/
	long bodyGetCollisionLayer(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bodyGetCollisionLayer, _godot_object, _body);
	}
	/**
	Returns the physics layer or layers a body can collide with.
	*/
	long bodyGetCollisionMask(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bodyGetCollisionMask, _godot_object, _body);
	}
	/**
	Returns the continuous collision detection mode.
	*/
	Physics2DServer.CCDMode bodyGetContinuousCollisionDetectionMode(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.CCDMode)(GDNativeClassBinding.bodyGetContinuousCollisionDetectionMode, _godot_object, _body);
	}
	/**
	Returns the $(D Physics2DDirectBodyState) of the body.
	*/
	Physics2DDirectBodyState bodyGetDirectState(in RID _body)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DDirectBodyState)(GDNativeClassBinding.bodyGetDirectState, _godot_object, _body);
	}
	/**
	Returns the maximum contacts that can be reported. See $(D bodySetMaxContactsReported).
	*/
	long bodyGetMaxContactsReported(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bodyGetMaxContactsReported, _godot_object, _body);
	}
	/**
	Returns the body mode.
	*/
	Physics2DServer.BodyMode bodyGetMode(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.BodyMode)(GDNativeClassBinding.bodyGetMode, _godot_object, _body);
	}
	/**
	Gets the instance ID of the object the area is assigned to.
	*/
	long bodyGetObjectInstanceId(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bodyGetObjectInstanceId, _godot_object, _body);
	}
	/**
	Returns the value of a body parameter. See $(D bodyparameter) for a list of available parameters.
	*/
	double bodyGetParam(in RID _body, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.bodyGetParam, _godot_object, _body, param);
	}
	/**
	Returns the $(D RID) of the nth shape of a body.
	*/
	RID bodyGetShape(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.bodyGetShape, _godot_object, _body, shape_idx);
	}
	/**
	Returns the number of shapes assigned to a body.
	*/
	long bodyGetShapeCount(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bodyGetShapeCount, _godot_object, _body);
	}
	/**
	Returns the metadata of a shape of a body.
	*/
	Variant bodyGetShapeMetadata(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.bodyGetShapeMetadata, _godot_object, _body, shape_idx);
	}
	/**
	Returns the transform matrix of a body shape.
	*/
	Transform2D bodyGetShapeTransform(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.bodyGetShapeTransform, _godot_object, _body, shape_idx);
	}
	/**
	Returns the $(D RID) of the space assigned to a body.
	*/
	RID bodyGetSpace(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.bodyGetSpace, _godot_object, _body);
	}
	/**
	Returns a body state.
	*/
	Variant bodyGetState(in RID _body, in long state) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.bodyGetState, _godot_object, _body, state);
	}
	/**
	Returns whether a body uses a callback function to calculate its own physics (see $(D bodySetForceIntegrationCallback)).
	*/
	bool bodyIsOmittingForceIntegration(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.bodyIsOmittingForceIntegration, _godot_object, _body);
	}
	/**
	Removes a body from the list of bodies exempt from collisions.
	*/
	void bodyRemoveCollisionException(in RID _body, in RID excepted_body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyRemoveCollisionException, _godot_object, _body, excepted_body);
	}
	/**
	Removes a shape from a body. The shape is not deleted, so it can be reused afterwards.
	*/
	void bodyRemoveShape(in RID _body, in long shape_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodyRemoveShape, _godot_object, _body, shape_idx);
	}
	/**
	Sets an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	*/
	void bodySetAxisVelocity(in RID _body, in Vector2 axis_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetAxisVelocity, _godot_object, _body, axis_velocity);
	}
	/**
	Sets the physics layer or layers a body belongs to.
	*/
	void bodySetCollisionLayer(in RID _body, in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetCollisionLayer, _godot_object, _body, layer);
	}
	/**
	Sets the physics layer or layers a body can collide with.
	*/
	void bodySetCollisionMask(in RID _body, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetCollisionMask, _godot_object, _body, mask);
	}
	/**
	Sets the continuous collision detection mode using one of the $(D ccdmode) constants.
	Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.
	*/
	void bodySetContinuousCollisionDetectionMode(in RID _body, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetContinuousCollisionDetectionMode, _godot_object, _body, mode);
	}
	/**
	Sets the function used to calculate physics for an object, if that object allows it (see $(D bodySetOmitForceIntegration)).
	*/
	void bodySetForceIntegrationCallback(VariantArg3)(in RID _body, GodotObject receiver, in String method, in VariantArg3 userdata = Variant.nil)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetForceIntegrationCallback, _godot_object, _body, receiver, method, userdata);
	}
	/**
	Sets the maximum contacts to report. Bodies can keep a log of the contacts with other bodies, this is enabled by setting the maximum amount of contacts reported to a number greater than 0.
	*/
	void bodySetMaxContactsReported(in RID _body, in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetMaxContactsReported, _godot_object, _body, amount);
	}
	/**
	Sets the body mode using one of the $(D bodymode) constants.
	*/
	void bodySetMode(in RID _body, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetMode, _godot_object, _body, mode);
	}
	/**
	Sets whether a body uses a callback function to calculate its own physics (see $(D bodySetForceIntegrationCallback)).
	*/
	void bodySetOmitForceIntegration(in RID _body, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetOmitForceIntegration, _godot_object, _body, enable);
	}
	/**
	Sets a body parameter. See $(D bodyparameter) for a list of available parameters.
	*/
	void bodySetParam(in RID _body, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetParam, _godot_object, _body, param, value);
	}
	/**
	Substitutes a given body shape by another. The old shape is selected by its index, the new one by its $(D RID).
	*/
	void bodySetShape(in RID _body, in long shape_idx, in RID shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetShape, _godot_object, _body, shape_idx, shape);
	}
	/**
	Enables one way collision on body if `enable` is `true`.
	*/
	void bodySetShapeAsOneWayCollision(in RID _body, in long shape_idx, in bool enable, in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetShapeAsOneWayCollision, _godot_object, _body, shape_idx, enable, margin);
	}
	/**
	Disables shape in body if `disable` is `true`.
	*/
	void bodySetShapeDisabled(in RID _body, in long shape_idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetShapeDisabled, _godot_object, _body, shape_idx, disabled);
	}
	/**
	Sets metadata of a shape within a body. This metadata is different from $(D GodotObject.setMeta), and can be retrieved on shape queries.
	*/
	void bodySetShapeMetadata(VariantArg2)(in RID _body, in long shape_idx, in VariantArg2 metadata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetShapeMetadata, _godot_object, _body, shape_idx, metadata);
	}
	/**
	Sets the transform matrix for a body shape.
	*/
	void bodySetShapeTransform(in RID _body, in long shape_idx, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetShapeTransform, _godot_object, _body, shape_idx, transform);
	}
	/**
	Assigns a space to the body (see $(D spaceCreate)).
	*/
	void bodySetSpace(in RID _body, in RID space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetSpace, _godot_object, _body, space);
	}
	/**
	Sets a body state using one of the $(D bodystate) constants.
	Note that the method doesn't take effect immediately. The state will change on the next physics frame.
	*/
	void bodySetState(VariantArg2)(in RID _body, in long state, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bodySetState, _godot_object, _body, state, value);
	}
	/**
	Returns `true` if a collision would result from moving in the given direction from a given point in space. Margin increases the size of the shapes involved in the collision detection. $(D Physics2DTestMotionResult) can be passed to return additional information in.
	*/
	bool bodyTestMotion(in RID _body, in Transform2D from, in Vector2 motion, in bool infinite_inertia, in double margin = 0.08, Physics2DTestMotionResult result = Physics2DTestMotionResult.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.bodyTestMotion, _godot_object, _body, from, motion, infinite_inertia, margin, result);
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
	Creates a damped spring joint between two bodies. If not specified, the second body is assumed to be the joint itself.
	*/
	RID dampedSpringJointCreate(in Vector2 anchor_a, in Vector2 anchor_b, in RID body_a, in RID body_b = RID.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.dampedSpringJointCreate, _godot_object, anchor_a, anchor_b, body_a, body_b);
	}
	/**
	Returns the value of a damped spring joint parameter.
	*/
	double dampedStringJointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.dampedStringJointGetParam, _godot_object, joint, param);
	}
	/**
	Sets a damped spring joint parameter. See $(D dampedstringparam) for a list of available parameters.
	*/
	void dampedStringJointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.dampedStringJointSetParam, _godot_object, joint, param, value);
	}
	/**
	Destroys any of the objects created by Physics2DServer. If the $(D RID) passed is not one of the objects that can be created by Physics2DServer, an error will be sent to the console.
	*/
	void freeRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.freeRid, _godot_object, rid);
	}
	/**
	Returns information about the current state of the 2D physics engine. See $(D processinfo) for a list of available states.
	*/
	long getProcessInfo(in long process_info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getProcessInfo, _godot_object, process_info);
	}
	/**
	Creates a groove joint between two bodies. If not specified, the bodies are assumed to be the joint itself.
	*/
	RID grooveJointCreate(in Vector2 groove1_a, in Vector2 groove2_a, in Vector2 anchor_b, in RID body_a = RID.init, in RID body_b = RID.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.grooveJointCreate, _godot_object, groove1_a, groove2_a, anchor_b, body_a, body_b);
	}
	/**
	Returns the value of a joint parameter.
	*/
	double jointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.jointGetParam, _godot_object, joint, param);
	}
	/**
	Returns a joint's type (see $(D jointtype)).
	*/
	Physics2DServer.JointType jointGetType(in RID joint) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.JointType)(GDNativeClassBinding.jointGetType, _godot_object, joint);
	}
	/**
	Sets a joint parameter. See $(D jointparam) for a list of available parameters.
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
	Creates a pin joint between two bodies. If not specified, the second body is assumed to be the joint itself.
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
	Activates or deactivates the 2D physics engine.
	*/
	void setActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setActive, _godot_object, active);
	}
	/**
	Returns the shape data.
	*/
	Variant shapeGetData(in RID shape) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.shapeGetData, _godot_object, shape);
	}
	/**
	Returns a shape's type (see $(D shapetype)).
	*/
	Physics2DServer.ShapeType shapeGetType(in RID shape) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DServer.ShapeType)(GDNativeClassBinding.shapeGetType, _godot_object, shape);
	}
	/**
	Sets the shape data that defines its shape and size. The data to be passed depends on the kind of shape created $(D shapeGetType).
	*/
	void shapeSetData(VariantArg1)(in RID shape, in VariantArg1 data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shapeSetData, _godot_object, shape, data);
	}
	/**
	Creates a space. A space is a collection of parameters for the physics engine that can be assigned to an area or a body. It can be assigned to an area with $(D areaSetSpace), or to a body with $(D bodySetSpace).
	*/
	RID spaceCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.spaceCreate, _godot_object);
	}
	/**
	Returns the state of a space, a $(D Physics2DDirectSpaceState). This object can be used to make collision/intersection queries.
	*/
	Physics2DDirectSpaceState spaceGetDirectState(in RID space)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DDirectSpaceState)(GDNativeClassBinding.spaceGetDirectState, _godot_object, space);
	}
	/**
	Returns the value of a space parameter.
	*/
	double spaceGetParam(in RID space, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.spaceGetParam, _godot_object, space, param);
	}
	/**
	Returns whether the space is active.
	*/
	bool spaceIsActive(in RID space) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.spaceIsActive, _godot_object, space);
	}
	/**
	Marks a space as active. It will not have an effect, unless it is assigned to an area or body.
	*/
	void spaceSetActive(in RID space, in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.spaceSetActive, _godot_object, space, active);
	}
	/**
	Sets the value for a space parameter. See $(D spaceparameter) for a list of available parameters.
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
