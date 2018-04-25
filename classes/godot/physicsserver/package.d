/**
Server interface for low level physics access.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicsserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.physicsdirectspacestate;
import godot.physicsdirectbodystate;
/**
Server interface for low level physics access.

Everything related to physics in 3D.
*/
@GodotBaseClass struct PhysicsServerSingleton
{
	static immutable string _GODOT_internal_name = "PhysicsServer";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "PhysicsServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PhysicsServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		
		*/
		bodyAxisLinearX = 1,
		/**
		
		*/
		bodyAxisLinearY = 2,
		/**
		
		*/
		bodyAxisLinearZ = 4,
		/**
		
		*/
		bodyAxisAngularX = 8,
		/**
		
		*/
		bodyAxisAngularY = 16,
		/**
		
		*/
		bodyAxisAngularZ = 32,
	}
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
		
		*/
		bodyModeSoft = 3,
		/**
		Constant for rigid bodies in character mode. In this mode, a body can not rotate, and only its linear velocity is affected by physics.
		*/
		bodyModeCharacter = 4,
	}
	/// 
	enum ShapeType : int
	{
		/**
		The $(D Shape) is a $(D PlaneShape).
		*/
		shapePlane = 0,
		/**
		The $(D Shape) is a $(D RayShape).
		*/
		shapeRay = 1,
		/**
		The $(D Shape) is a $(D SphereShape).
		*/
		shapeSphere = 2,
		/**
		The $(D Shape) is a $(D BoxShape).
		*/
		shapeBox = 3,
		/**
		The $(D Shape) is a $(D CapsuleShape).
		*/
		shapeCapsule = 4,
		/**
		The $(D Shape) is a $(D ConvexPolygonShape).
		*/
		shapeConvexPolygon = 5,
		/**
		The $(D Shape) is a $(D ConcavePolygonShape).
		*/
		shapeConcavePolygon = 6,
		/**
		The $(D Shape) is a $(D HeightMapShape).
		*/
		shapeHeightmap = 7,
		/**
		This constant is used internally by the engine. Any attempt to create this kind of shape results in an error.
		*/
		shapeCustom = 8,
	}
	/// 
	enum PinJointParam : int
	{
		/**
		The strength with which the pinned objects try to stay in positional relation to each other.
		The higher, the stronger.
		*/
		pinJointBias = 0,
		/**
		The strength with which the pinned objects try to stay in velocity relation to each other.
		The higher, the stronger.
		*/
		pinJointDamping = 1,
		/**
		If above 0, this value is the maximum value for an impulse that this Joint puts on it's ends.
		*/
		pinJointImpulseClamp = 2,
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
		
		*/
		spaceParamBodyAngularVelocityDampRatio = 6,
		/**
		Constant to set/get the default solver bias for all physics constraints. A solver bias is a factor controlling how much two objects "rebound", after violating a constraint, to avoid leaving them in that state because of numerical imprecision.
		*/
		spaceParamConstraintDefaultBias = 7,
	}
	/// 
	enum ConeTwistJointParam : int
	{
		/**
		Swing is rotation from side to side, around the axis perpendicular to the twist axis.
		The swing span defines, how much rotation will not get corrected allong the swing axis.
		Could be defined as looseness in the $(D ConeTwistJoint).
		If below 0.05, this behaviour is locked. Default value: `PI/4`.
		*/
		coneTwistJointSwingSpan = 0,
		/**
		Twist is the rotation around the twist axis, this value defined how far the joint can twist.
		Twist is locked if below 0.05.
		*/
		coneTwistJointTwistSpan = 1,
		/**
		The speed with which the swing or twist will take place.
		The higher, the faster.
		*/
		coneTwistJointBias = 2,
		/**
		The ease with which the Joint twists, if it's too low, it takes more force to twist the joint.
		*/
		coneTwistJointSoftness = 3,
		/**
		Defines, how fast the swing- and twist-speed-difference on both sides gets synced.
		*/
		coneTwistJointRelaxation = 4,
	}
	/// 
	enum JointType : int
	{
		/**
		The $(D Joint) is a $(D PinJoint).
		*/
		jointPin = 0,
		/**
		The $(D Joint) is a $(D HingeJoint).
		*/
		jointHinge = 1,
		/**
		The $(D Joint) is a $(D SliderJoint).
		*/
		jointSlider = 2,
		/**
		The $(D Joint) is a $(D ConeTwistJoint).
		*/
		jointConeTwist = 3,
		/**
		The $(D Joint) is a $(D Generic6DOFJoint).
		*/
		joint6dof = 4,
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
		Constant to set/get a body's gravity multiplier.
		*/
		bodyParamGravityScale = 3,
		/**
		Constant to set/get a body's linear dampening factor.
		*/
		bodyParamLinearDamp = 4,
		/**
		Constant to set/get a body's angular dampening factor.
		*/
		bodyParamAngularDamp = 5,
		/**
		This is the last ID for body parameters. Any attempt to set this property is ignored. Any attempt to get it returns 0.
		*/
		bodyParamMax = 6,
	}
	/// 
	enum G6DOFJointAxisParam : int
	{
		/**
		The minimum difference between the pivot points' axes.
		*/
		g6dofJointLinearLowerLimit = 0,
		/**
		The maximum difference between the pivot points' axes.
		*/
		g6dofJointLinearUpperLimit = 1,
		/**
		A factor that gets applied to the movement across the axes. The lower, the slower the movement.
		*/
		g6dofJointLinearLimitSoftness = 2,
		/**
		The amount of restitution on the axes movement. The lower, the more velocity-energy gets lost.
		*/
		g6dofJointLinearRestitution = 3,
		/**
		The amount of damping that happens at the linear motion across the axes.
		*/
		g6dofJointLinearDamping = 4,
		/**
		The minimum rotation in negative direction to break loose and rotate around the axes.
		*/
		g6dofJointAngularLowerLimit = 5,
		/**
		The minimum rotation in positive direction to break loose and rotate around the axes.
		*/
		g6dofJointAngularUpperLimit = 6,
		/**
		A factor that gets multiplied onto all rotations across the axes.
		*/
		g6dofJointAngularLimitSoftness = 7,
		/**
		The amount of rotational damping across the axes. The lower, the more dampening occurs.
		*/
		g6dofJointAngularDamping = 8,
		/**
		The amount of rotational restitution across the axes. The lower, the more restitution occurs.
		*/
		g6dofJointAngularRestitution = 9,
		/**
		The maximum amount of force that can occur, when rotating around the axes.
		*/
		g6dofJointAngularForceLimit = 10,
		/**
		When correcting the crossing of limits in rotation across the axes, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
		*/
		g6dofJointAngularErp = 11,
		/**
		Target speed for the motor at the axes.
		*/
		g6dofJointAngularMotorTargetVelocity = 12,
		/**
		Maximum acceleration for the motor at the axes.
		*/
		g6dofJointAngularMotorForceLimit = 13,
	}
	/// 
	enum SliderJointParam : int
	{
		/**
		The maximum difference between the pivot points on their x-axis before damping happens.
		*/
		sliderJointLinearLimitUpper = 0,
		/**
		The minimum difference between the pivot points on their x-axis before damping happens.
		*/
		sliderJointLinearLimitLower = 1,
		/**
		A factor applied to the movement across the slider axis once the limits get surpassed. The lower, the slower the movement.
		*/
		sliderJointLinearLimitSoftness = 2,
		/**
		The amount of restitution once the limits are surpassed. The lower, the more velocityenergy gets lost.
		*/
		sliderJointLinearLimitRestitution = 3,
		/**
		The amount of damping once the slider limits are surpassed.
		*/
		sliderJointLinearLimitDamping = 4,
		/**
		A factor applied to the movement across the slider axis as long as the slider is in the limits. The lower, the slower the movement.
		*/
		sliderJointLinearMotionSoftness = 5,
		/**
		The amount of restitution inside the slider limits.
		*/
		sliderJointLinearMotionRestitution = 6,
		/**
		The amount of damping inside the slider limits.
		*/
		sliderJointLinearMotionDamping = 7,
		/**
		A factor applied to the movement across axes orthogonal to the slider.
		*/
		sliderJointLinearOrthogonalSoftness = 8,
		/**
		The amount of restitution when movement is across axes orthogonal to the slider.
		*/
		sliderJointLinearOrthogonalRestitution = 9,
		/**
		The amount of damping when movement is across axes orthogonal to the slider.
		*/
		sliderJointLinearOrthogonalDamping = 10,
		/**
		The upper limit of rotation in the slider.
		*/
		sliderJointAngularLimitUpper = 11,
		/**
		The lower limit of rotation in the slider.
		*/
		sliderJointAngularLimitLower = 12,
		/**
		A factor applied to the all rotation once the limit is surpassed.
		*/
		sliderJointAngularLimitSoftness = 13,
		/**
		The amount of restitution of the rotation when the limit is surpassed.
		*/
		sliderJointAngularLimitRestitution = 14,
		/**
		The amount of damping of the rotation when the limit is surpassed.
		*/
		sliderJointAngularLimitDamping = 15,
		/**
		A factor that gets applied to the all rotation in the limits.
		*/
		sliderJointAngularMotionSoftness = 16,
		/**
		The amount of restitution of the rotation in the limits.
		*/
		sliderJointAngularMotionRestitution = 17,
		/**
		The amount of damping of the rotation in the limits.
		*/
		sliderJointAngularMotionDamping = 18,
		/**
		A factor that gets applied to the all rotation across axes orthogonal to the slider.
		*/
		sliderJointAngularOrthogonalSoftness = 19,
		/**
		The amount of restitution of the rotation across axes orthogonal to the slider.
		*/
		sliderJointAngularOrthogonalRestitution = 20,
		/**
		The amount of damping of the rotation across axes orthogonal to the slider.
		*/
		sliderJointAngularOrthogonalDamping = 21,
		/**
		End flag of SLIDER_JOINT_* constants, used internally.
		*/
		sliderJointMax = 22,
	}
	/// 
	enum HingeJointParam : int
	{
		/**
		The speed with which the two bodies get pulled together when they move in different directions.
		*/
		hingeJointBias = 0,
		/**
		The maximum rotation across the Hinge.
		*/
		hingeJointLimitUpper = 1,
		/**
		The minimum rotation across the Hinge.
		*/
		hingeJointLimitLower = 2,
		/**
		The speed with which the rotation across the axis perpendicular to the hinge gets corrected.
		*/
		hingeJointLimitBias = 3,
		/**
		
		*/
		hingeJointLimitSoftness = 4,
		/**
		The lower this value, the more the rotation gets slowed down.
		*/
		hingeJointLimitRelaxation = 5,
		/**
		Target speed for the motor.
		*/
		hingeJointMotorTargetVelocity = 6,
		/**
		Maximum acceleration for the motor.
		*/
		hingeJointMotorMaxImpulse = 7,
	}
	/// 
	enum G6DOFJointAxisFlag : int
	{
		/**
		If `set` there is linear motion possible within the given limits.
		*/
		g6dofJointFlagEnableLinearLimit = 0,
		/**
		If `set` there is rotational motion possible.
		*/
		g6dofJointFlagEnableAngularLimit = 1,
		/**
		If `set` there is a rotational motor across these axes.
		*/
		g6dofJointFlagEnableMotor = 2,
	}
	/// 
	enum HingeJointFlag : int
	{
		/**
		If `true` the Hinge has a maximum and a minimum rotation.
		*/
		hingeJointFlagUseLimit = 0,
		/**
		If `true` a motor turns the Hinge
		*/
		hingeJointFlagEnableMotor = 1,
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
		g6dofJointFlagEnableLinearLimit = 0,
		sliderJointLinearLimitUpper = 0,
		areaSpaceOverrideDisabled = 0,
		bodyModeStatic = 0,
		areaBodyAdded = 0,
		spaceParamContactRecycleRadius = 0,
		pinJointBias = 0,
		bodyStateTransform = 0,
		hingeJointBias = 0,
		infoActiveObjects = 0,
		bodyParamBounce = 0,
		coneTwistJointSwingSpan = 0,
		g6dofJointLinearLowerLimit = 0,
		areaParamGravity = 0,
		hingeJointFlagUseLimit = 0,
		jointPin = 0,
		shapePlane = 0,
		jointHinge = 1,
		bodyStateLinearVelocity = 1,
		areaSpaceOverrideCombine = 1,
		spaceParamContactMaxSeparation = 1,
		hingeJointFlagEnableMotor = 1,
		hingeJointLimitUpper = 1,
		areaBodyRemoved = 1,
		areaParamGravityVector = 1,
		g6dofJointLinearUpperLimit = 1,
		bodyParamFriction = 1,
		g6dofJointFlagEnableAngularLimit = 1,
		infoCollisionPairs = 1,
		coneTwistJointTwistSpan = 1,
		bodyAxisLinearX = 1,
		bodyModeKinematic = 1,
		shapeRay = 1,
		pinJointDamping = 1,
		sliderJointLinearLimitLower = 1,
		coneTwistJointBias = 2,
		sliderJointLinearLimitSoftness = 2,
		bodyStateAngularVelocity = 2,
		hingeJointLimitLower = 2,
		g6dofJointFlagEnableMotor = 2,
		bodyAxisLinearY = 2,
		bodyModeRigid = 2,
		areaParamGravityIsPoint = 2,
		infoIslandCount = 2,
		spaceParamBodyMaxAllowedPenetration = 2,
		shapeSphere = 2,
		jointSlider = 2,
		pinJointImpulseClamp = 2,
		g6dofJointLinearLimitSoftness = 2,
		bodyParamMass = 2,
		areaSpaceOverrideCombineReplace = 2,
		areaSpaceOverrideReplace = 3,
		coneTwistJointSoftness = 3,
		bodyModeSoft = 3,
		bodyParamGravityScale = 3,
		bodyStateSleeping = 3,
		jointConeTwist = 3,
		hingeJointLimitBias = 3,
		sliderJointLinearLimitRestitution = 3,
		spaceParamBodyLinearVelocitySleepThreshold = 3,
		g6dofJointLinearRestitution = 3,
		shapeBox = 3,
		areaParamGravityDistanceScale = 3,
		joint6dof = 4,
		g6dofJointLinearDamping = 4,
		bodyParamLinearDamp = 4,
		shapeCapsule = 4,
		bodyStateCanSleep = 4,
		spaceParamBodyAngularVelocitySleepThreshold = 4,
		hingeJointLimitSoftness = 4,
		coneTwistJointRelaxation = 4,
		bodyAxisLinearZ = 4,
		areaParamGravityPointAttenuation = 4,
		bodyModeCharacter = 4,
		sliderJointLinearLimitDamping = 4,
		areaSpaceOverrideReplaceCombine = 4,
		areaParamLinearDamp = 5,
		g6dofJointAngularLowerLimit = 5,
		sliderJointLinearMotionSoftness = 5,
		spaceParamBodyTimeToSleep = 5,
		hingeJointLimitRelaxation = 5,
		bodyParamAngularDamp = 5,
		shapeConvexPolygon = 5,
		areaParamAngularDamp = 6,
		hingeJointMotorTargetVelocity = 6,
		bodyParamMax = 6,
		sliderJointLinearMotionRestitution = 6,
		spaceParamBodyAngularVelocityDampRatio = 6,
		shapeConcavePolygon = 6,
		g6dofJointAngularUpperLimit = 6,
		g6dofJointAngularLimitSoftness = 7,
		spaceParamConstraintDefaultBias = 7,
		shapeHeightmap = 7,
		hingeJointMotorMaxImpulse = 7,
		sliderJointLinearMotionDamping = 7,
		areaParamPriority = 7,
		g6dofJointAngularDamping = 8,
		shapeCustom = 8,
		sliderJointLinearOrthogonalSoftness = 8,
		bodyAxisAngularX = 8,
		sliderJointLinearOrthogonalRestitution = 9,
		g6dofJointAngularRestitution = 9,
		sliderJointLinearOrthogonalDamping = 10,
		g6dofJointAngularForceLimit = 10,
		g6dofJointAngularErp = 11,
		sliderJointAngularLimitUpper = 11,
		g6dofJointAngularMotorTargetVelocity = 12,
		sliderJointAngularLimitLower = 12,
		sliderJointAngularLimitSoftness = 13,
		g6dofJointAngularMotorForceLimit = 13,
		sliderJointAngularLimitRestitution = 14,
		sliderJointAngularLimitDamping = 15,
		sliderJointAngularMotionSoftness = 16,
		bodyAxisAngularY = 16,
		sliderJointAngularMotionRestitution = 17,
		sliderJointAngularMotionDamping = 18,
		sliderJointAngularOrthogonalSoftness = 19,
		sliderJointAngularOrthogonalRestitution = 20,
		sliderJointAngularOrthogonalDamping = 21,
		sliderJointMax = 22,
		bodyAxisAngularZ = 32,
	}
	package(godot) static GodotMethod!(RID, long) _GODOT_shape_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_create") = _GODOT_shape_create;
	/**
	Creates a shape of type SHAPE_*. Does not assign it to a body or an area. To do so, you must use $(D areaSetShape) or $(D bodySetShape).
	*/
	RID shapeCreate(in long type)
	{
		_GODOT_shape_create.bind("PhysicsServer", "shape_create");
		return ptrcall!(RID)(_GODOT_shape_create, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, RID, Variant) _GODOT_shape_set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_set_data") = _GODOT_shape_set_data;
	/**
	Sets the shape data that defines its shape and size. The data to be passed depends on the kind of shape created $(D shapeGetType).
	*/
	void shapeSetData(VariantArg1)(in RID shape, in VariantArg1 data)
	{
		_GODOT_shape_set_data.bind("PhysicsServer", "shape_set_data");
		ptrcall!(void)(_GODOT_shape_set_data, _godot_object, shape, data);
	}
	package(godot) static GodotMethod!(PhysicsServer.ShapeType, RID) _GODOT_shape_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_get_type") = _GODOT_shape_get_type;
	/**
	Returns the type of shape (see SHAPE_* constants).
	*/
	PhysicsServer.ShapeType shapeGetType(in RID shape) const
	{
		_GODOT_shape_get_type.bind("PhysicsServer", "shape_get_type");
		return ptrcall!(PhysicsServer.ShapeType)(_GODOT_shape_get_type, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Variant, RID) _GODOT_shape_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_get_data") = _GODOT_shape_get_data;
	/**
	Returns the shape data.
	*/
	Variant shapeGetData(in RID shape) const
	{
		_GODOT_shape_get_data.bind("PhysicsServer", "shape_get_data");
		return ptrcall!(Variant)(_GODOT_shape_get_data, _godot_object, shape);
	}
	package(godot) static GodotMethod!(RID) _GODOT_space_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_create") = _GODOT_space_create;
	/**
	Creates a space. A space is a collection of parameters for the physics engine that can be assigned to an area or a body. It can be assigned to an area with $(D areaSetSpace), or to a body with $(D bodySetSpace).
	*/
	RID spaceCreate()
	{
		_GODOT_space_create.bind("PhysicsServer", "space_create");
		return ptrcall!(RID)(_GODOT_space_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_space_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_set_active") = _GODOT_space_set_active;
	/**
	Marks a space as active. It will not have an effect, unless it is assigned to an area or body.
	*/
	void spaceSetActive(in RID space, in bool active)
	{
		_GODOT_space_set_active.bind("PhysicsServer", "space_set_active");
		ptrcall!(void)(_GODOT_space_set_active, _godot_object, space, active);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_space_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_is_active") = _GODOT_space_is_active;
	/**
	Returns whether the space is active.
	*/
	bool spaceIsActive(in RID space) const
	{
		_GODOT_space_is_active.bind("PhysicsServer", "space_is_active");
		return ptrcall!(bool)(_GODOT_space_is_active, _godot_object, space);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_space_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_set_param") = _GODOT_space_set_param;
	/**
	Sets the value for a space parameter. A list of available parameters is on the SPACE_PARAM_* constants.
	*/
	void spaceSetParam(in RID space, in long param, in double value)
	{
		_GODOT_space_set_param.bind("PhysicsServer", "space_set_param");
		ptrcall!(void)(_GODOT_space_set_param, _godot_object, space, param, value);
	}
	package(godot) static GodotMethod!(double, RID, long) _GODOT_space_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_get_param") = _GODOT_space_get_param;
	/**
	Returns the value of a space parameter.
	*/
	double spaceGetParam(in RID space, in long param) const
	{
		_GODOT_space_get_param.bind("PhysicsServer", "space_get_param");
		return ptrcall!(double)(_GODOT_space_get_param, _godot_object, space, param);
	}
	package(godot) static GodotMethod!(PhysicsDirectSpaceState, RID) _GODOT_space_get_direct_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_get_direct_state") = _GODOT_space_get_direct_state;
	/**
	Returns the state of a space, a $(D PhysicsDirectSpaceState). This object can be used to make collision/intersection queries.
	*/
	PhysicsDirectSpaceState spaceGetDirectState(in RID space)
	{
		_GODOT_space_get_direct_state.bind("PhysicsServer", "space_get_direct_state");
		return ptrcall!(PhysicsDirectSpaceState)(_GODOT_space_get_direct_state, _godot_object, space);
	}
	package(godot) static GodotMethod!(RID) _GODOT_area_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_create") = _GODOT_area_create;
	/**
	Creates an $(D Area).
	*/
	RID areaCreate()
	{
		_GODOT_area_create.bind("PhysicsServer", "area_create");
		return ptrcall!(RID)(_GODOT_area_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_area_set_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_space") = _GODOT_area_set_space;
	/**
	Assigns a space to the area.
	*/
	void areaSetSpace(in RID area, in RID space)
	{
		_GODOT_area_set_space.bind("PhysicsServer", "area_set_space");
		ptrcall!(void)(_GODOT_area_set_space, _godot_object, area, space);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_area_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_space") = _GODOT_area_get_space;
	/**
	Returns the space assigned to the area.
	*/
	RID areaGetSpace(in RID area) const
	{
		_GODOT_area_get_space.bind("PhysicsServer", "area_get_space");
		return ptrcall!(RID)(_GODOT_area_get_space, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_area_set_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_space_override_mode") = _GODOT_area_set_space_override_mode;
	/**
	Sets the space override mode for the area. The modes are described in the constants AREA_SPACE_OVERRIDE_*.
	*/
	void areaSetSpaceOverrideMode(in RID area, in long mode)
	{
		_GODOT_area_set_space_override_mode.bind("PhysicsServer", "area_set_space_override_mode");
		ptrcall!(void)(_GODOT_area_set_space_override_mode, _godot_object, area, mode);
	}
	package(godot) static GodotMethod!(PhysicsServer.AreaSpaceOverrideMode, RID) _GODOT_area_get_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_space_override_mode") = _GODOT_area_get_space_override_mode;
	/**
	Returns the space override mode for the area.
	*/
	PhysicsServer.AreaSpaceOverrideMode areaGetSpaceOverrideMode(in RID area) const
	{
		_GODOT_area_get_space_override_mode.bind("PhysicsServer", "area_get_space_override_mode");
		return ptrcall!(PhysicsServer.AreaSpaceOverrideMode)(_GODOT_area_get_space_override_mode, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, RID, Transform) _GODOT_area_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_add_shape") = _GODOT_area_add_shape;
	/**
	Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
	*/
	void areaAddShape(in RID area, in RID shape, in Transform transform = Transform.init)
	{
		_GODOT_area_add_shape.bind("PhysicsServer", "area_add_shape");
		ptrcall!(void)(_GODOT_area_add_shape, _godot_object, area, shape, transform);
	}
	package(godot) static GodotMethod!(void, RID, long, RID) _GODOT_area_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_shape") = _GODOT_area_set_shape;
	/**
	Substitutes a given area shape by another. The old shape is selected by its index, the new one by its $(D RID).
	*/
	void areaSetShape(in RID area, in long shape_idx, in RID shape)
	{
		_GODOT_area_set_shape.bind("PhysicsServer", "area_set_shape");
		ptrcall!(void)(_GODOT_area_set_shape, _godot_object, area, shape_idx, shape);
	}
	package(godot) static GodotMethod!(void, RID, long, Transform) _GODOT_area_set_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_shape_transform") = _GODOT_area_set_shape_transform;
	/**
	Sets the transform matrix for an area shape.
	*/
	void areaSetShapeTransform(in RID area, in long shape_idx, in Transform transform)
	{
		_GODOT_area_set_shape_transform.bind("PhysicsServer", "area_set_shape_transform");
		ptrcall!(void)(_GODOT_area_set_shape_transform, _godot_object, area, shape_idx, transform);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_area_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape_count") = _GODOT_area_get_shape_count;
	/**
	Returns the number of shapes assigned to an area.
	*/
	long areaGetShapeCount(in RID area) const
	{
		_GODOT_area_get_shape_count.bind("PhysicsServer", "area_get_shape_count");
		return ptrcall!(long)(_GODOT_area_get_shape_count, _godot_object, area);
	}
	package(godot) static GodotMethod!(RID, RID, long) _GODOT_area_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape") = _GODOT_area_get_shape;
	/**
	Returns the $(D RID) of the nth shape of an area.
	*/
	RID areaGetShape(in RID area, in long shape_idx) const
	{
		_GODOT_area_get_shape.bind("PhysicsServer", "area_get_shape");
		return ptrcall!(RID)(_GODOT_area_get_shape, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(Transform, RID, long) _GODOT_area_get_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape_transform") = _GODOT_area_get_shape_transform;
	/**
	Returns the transform matrix of a shape within an area.
	*/
	Transform areaGetShapeTransform(in RID area, in long shape_idx) const
	{
		_GODOT_area_get_shape_transform.bind("PhysicsServer", "area_get_shape_transform");
		return ptrcall!(Transform)(_GODOT_area_get_shape_transform, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_area_remove_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_remove_shape") = _GODOT_area_remove_shape;
	/**
	Removes a shape from an area. It does not delete the shape, so it can be reassigned later.
	*/
	void areaRemoveShape(in RID area, in long shape_idx)
	{
		_GODOT_area_remove_shape.bind("PhysicsServer", "area_remove_shape");
		ptrcall!(void)(_GODOT_area_remove_shape, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_area_clear_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_clear_shapes") = _GODOT_area_clear_shapes;
	/**
	Removes all shapes from an area. It does not delete the shapes, so they can be reassigned later.
	*/
	void areaClearShapes(in RID area)
	{
		_GODOT_area_clear_shapes.bind("PhysicsServer", "area_clear_shapes");
		ptrcall!(void)(_GODOT_area_clear_shapes, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_area_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_collision_layer") = _GODOT_area_set_collision_layer;
	/**
	Assigns the area to one or many physics layers.
	*/
	void areaSetCollisionLayer(in RID area, in long layer)
	{
		_GODOT_area_set_collision_layer.bind("PhysicsServer", "area_set_collision_layer");
		ptrcall!(void)(_GODOT_area_set_collision_layer, _godot_object, area, layer);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_area_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_collision_mask") = _GODOT_area_set_collision_mask;
	/**
	Sets which physics layers the area will monitor.
	*/
	void areaSetCollisionMask(in RID area, in long mask)
	{
		_GODOT_area_set_collision_mask.bind("PhysicsServer", "area_set_collision_mask");
		ptrcall!(void)(_GODOT_area_set_collision_mask, _godot_object, area, mask);
	}
	package(godot) static GodotMethod!(void, RID, long, Variant) _GODOT_area_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_param") = _GODOT_area_set_param;
	/**
	Sets the value for an area parameter. A list of available parameters is on the AREA_PARAM_* constants.
	*/
	void areaSetParam(VariantArg2)(in RID area, in long param, in VariantArg2 value)
	{
		_GODOT_area_set_param.bind("PhysicsServer", "area_set_param");
		ptrcall!(void)(_GODOT_area_set_param, _godot_object, area, param, value);
	}
	package(godot) static GodotMethod!(void, RID, Transform) _GODOT_area_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_transform") = _GODOT_area_set_transform;
	/**
	Sets the transform matrix for an area.
	*/
	void areaSetTransform(in RID area, in Transform transform)
	{
		_GODOT_area_set_transform.bind("PhysicsServer", "area_set_transform");
		ptrcall!(void)(_GODOT_area_set_transform, _godot_object, area, transform);
	}
	package(godot) static GodotMethod!(Variant, RID, long) _GODOT_area_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_param") = _GODOT_area_get_param;
	/**
	Returns an area parameter value. A list of available parameters is on the AREA_PARAM_* constants.
	*/
	Variant areaGetParam(in RID area, in long param) const
	{
		_GODOT_area_get_param.bind("PhysicsServer", "area_get_param");
		return ptrcall!(Variant)(_GODOT_area_get_param, _godot_object, area, param);
	}
	package(godot) static GodotMethod!(Transform, RID) _GODOT_area_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_transform") = _GODOT_area_get_transform;
	/**
	Returns the transform matrix for an area.
	*/
	Transform areaGetTransform(in RID area) const
	{
		_GODOT_area_get_transform.bind("PhysicsServer", "area_get_transform");
		return ptrcall!(Transform)(_GODOT_area_get_transform, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_area_attach_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_attach_object_instance_id") = _GODOT_area_attach_object_instance_id;
	/**
	Assigns the area to a descendant of $(D GodotObject), so it can exist in the node tree.
	*/
	void areaAttachObjectInstanceId(in RID area, in long id)
	{
		_GODOT_area_attach_object_instance_id.bind("PhysicsServer", "area_attach_object_instance_id");
		ptrcall!(void)(_GODOT_area_attach_object_instance_id, _godot_object, area, id);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_area_get_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_object_instance_id") = _GODOT_area_get_object_instance_id;
	/**
	Gets the instance ID of the object the area is assigned to.
	*/
	long areaGetObjectInstanceId(in RID area) const
	{
		_GODOT_area_get_object_instance_id.bind("PhysicsServer", "area_get_object_instance_id");
		return ptrcall!(long)(_GODOT_area_get_object_instance_id, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, GodotObject, String) _GODOT_area_set_monitor_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_monitor_callback") = _GODOT_area_set_monitor_callback;
	/**
	Sets the function to call when any body/area enters or exits the area. This callback will be called for any object interacting with the area, and takes five parameters:
	1: AREA_BODY_ADDED or AREA_BODY_REMOVED, depending on whether the object entered or exited the area.
	2: $(D RID) of the object that entered/exited the area.
	3: Instance ID of the object that entered/exited the area.
	4: The shape index of the object that entered/exited the area.
	5: The shape index of the area where the object entered/exited.
	*/
	void areaSetMonitorCallback(StringArg2)(in RID area, GodotObject receiver, in StringArg2 method)
	{
		_GODOT_area_set_monitor_callback.bind("PhysicsServer", "area_set_monitor_callback");
		ptrcall!(void)(_GODOT_area_set_monitor_callback, _godot_object, area, receiver, method);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_area_set_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_ray_pickable") = _GODOT_area_set_ray_pickable;
	/**
	Sets object pickable with rays.
	*/
	void areaSetRayPickable(in RID area, in bool enable)
	{
		_GODOT_area_set_ray_pickable.bind("PhysicsServer", "area_set_ray_pickable");
		ptrcall!(void)(_GODOT_area_set_ray_pickable, _godot_object, area, enable);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_area_is_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_is_ray_pickable") = _GODOT_area_is_ray_pickable;
	/**
	If `true` area collides with rays.
	*/
	bool areaIsRayPickable(in RID area) const
	{
		_GODOT_area_is_ray_pickable.bind("PhysicsServer", "area_is_ray_pickable");
		return ptrcall!(bool)(_GODOT_area_is_ray_pickable, _godot_object, area);
	}
	package(godot) static GodotMethod!(RID, long, bool) _GODOT_body_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_create") = _GODOT_body_create;
	/**
	Creates a physics body. The first parameter can be any value from constants BODY_MODE*, for the type of body created. Additionally, the body can be created in sleeping state to save processing time.
	*/
	RID bodyCreate(in long mode = 2, in bool init_sleeping = false)
	{
		_GODOT_body_create.bind("PhysicsServer", "body_create");
		return ptrcall!(RID)(_GODOT_body_create, _godot_object, mode, init_sleeping);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_set_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_space") = _GODOT_body_set_space;
	/**
	Assigns a space to the body (see $(D createSpace)).
	*/
	void bodySetSpace(in RID _body, in RID space)
	{
		_GODOT_body_set_space.bind("PhysicsServer", "body_set_space");
		ptrcall!(void)(_GODOT_body_set_space, _godot_object, _body, space);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_body_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_space") = _GODOT_body_get_space;
	/**
	Returns the $(D RID) of the space assigned to a body.
	*/
	RID bodyGetSpace(in RID _body) const
	{
		_GODOT_body_get_space.bind("PhysicsServer", "body_get_space");
		return ptrcall!(RID)(_GODOT_body_get_space, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_mode") = _GODOT_body_set_mode;
	/**
	Sets the body mode, from one of the constants BODY_MODE*.
	*/
	void bodySetMode(in RID _body, in long mode)
	{
		_GODOT_body_set_mode.bind("PhysicsServer", "body_set_mode");
		ptrcall!(void)(_GODOT_body_set_mode, _godot_object, _body, mode);
	}
	package(godot) static GodotMethod!(PhysicsServer.BodyMode, RID) _GODOT_body_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_mode") = _GODOT_body_get_mode;
	/**
	Returns the body mode.
	*/
	PhysicsServer.BodyMode bodyGetMode(in RID _body) const
	{
		_GODOT_body_get_mode.bind("PhysicsServer", "body_get_mode");
		return ptrcall!(PhysicsServer.BodyMode)(_GODOT_body_get_mode, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_collision_layer") = _GODOT_body_set_collision_layer;
	/**
	Sets the physics layer or layers a body belongs to.
	*/
	void bodySetCollisionLayer(in RID _body, in long layer)
	{
		_GODOT_body_set_collision_layer.bind("PhysicsServer", "body_set_collision_layer");
		ptrcall!(void)(_GODOT_body_set_collision_layer, _godot_object, _body, layer);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_body_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_collision_layer") = _GODOT_body_get_collision_layer;
	/**
	Returns the physics layer or layers a body belongs to.
	*/
	long bodyGetCollisionLayer(in RID _body) const
	{
		_GODOT_body_get_collision_layer.bind("PhysicsServer", "body_get_collision_layer");
		return ptrcall!(long)(_GODOT_body_get_collision_layer, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_collision_mask") = _GODOT_body_set_collision_mask;
	/**
	Sets the physics layer or layers a body can collide with.
	*/
	void bodySetCollisionMask(in RID _body, in long mask)
	{
		_GODOT_body_set_collision_mask.bind("PhysicsServer", "body_set_collision_mask");
		ptrcall!(void)(_GODOT_body_set_collision_mask, _godot_object, _body, mask);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_body_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_collision_mask") = _GODOT_body_get_collision_mask;
	/**
	Returns the physics layer or layers a body can collide with.
	-
	*/
	long bodyGetCollisionMask(in RID _body) const
	{
		_GODOT_body_get_collision_mask.bind("PhysicsServer", "body_get_collision_mask");
		return ptrcall!(long)(_GODOT_body_get_collision_mask, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, RID, Transform) _GODOT_body_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_add_shape") = _GODOT_body_add_shape;
	/**
	Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
	*/
	void bodyAddShape(in RID _body, in RID shape, in Transform transform = Transform.init)
	{
		_GODOT_body_add_shape.bind("PhysicsServer", "body_add_shape");
		ptrcall!(void)(_GODOT_body_add_shape, _godot_object, _body, shape, transform);
	}
	package(godot) static GodotMethod!(void, RID, long, RID) _GODOT_body_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape") = _GODOT_body_set_shape;
	/**
	Substitutes a given body shape by another. The old shape is selected by its index, the new one by its $(D RID).
	*/
	void bodySetShape(in RID _body, in long shape_idx, in RID shape)
	{
		_GODOT_body_set_shape.bind("PhysicsServer", "body_set_shape");
		ptrcall!(void)(_GODOT_body_set_shape, _godot_object, _body, shape_idx, shape);
	}
	package(godot) static GodotMethod!(void, RID, long, Transform) _GODOT_body_set_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape_transform") = _GODOT_body_set_shape_transform;
	/**
	Sets the transform matrix for a body shape.
	*/
	void bodySetShapeTransform(in RID _body, in long shape_idx, in Transform transform)
	{
		_GODOT_body_set_shape_transform.bind("PhysicsServer", "body_set_shape_transform");
		ptrcall!(void)(_GODOT_body_set_shape_transform, _godot_object, _body, shape_idx, transform);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_body_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape_count") = _GODOT_body_get_shape_count;
	/**
	Returns the number of shapes assigned to a body.
	*/
	long bodyGetShapeCount(in RID _body) const
	{
		_GODOT_body_get_shape_count.bind("PhysicsServer", "body_get_shape_count");
		return ptrcall!(long)(_GODOT_body_get_shape_count, _godot_object, _body);
	}
	package(godot) static GodotMethod!(RID, RID, long) _GODOT_body_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape") = _GODOT_body_get_shape;
	/**
	Returns the $(D RID) of the nth shape of a body.
	*/
	RID bodyGetShape(in RID _body, in long shape_idx) const
	{
		_GODOT_body_get_shape.bind("PhysicsServer", "body_get_shape");
		return ptrcall!(RID)(_GODOT_body_get_shape, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(Transform, RID, long) _GODOT_body_get_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape_transform") = _GODOT_body_get_shape_transform;
	/**
	Returns the transform matrix of a body shape.
	*/
	Transform bodyGetShapeTransform(in RID _body, in long shape_idx) const
	{
		_GODOT_body_get_shape_transform.bind("PhysicsServer", "body_get_shape_transform");
		return ptrcall!(Transform)(_GODOT_body_get_shape_transform, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_remove_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_remove_shape") = _GODOT_body_remove_shape;
	/**
	Removes a shape from a body. The shape is not deleted, so it can be reused afterwards.
	*/
	void bodyRemoveShape(in RID _body, in long shape_idx)
	{
		_GODOT_body_remove_shape.bind("PhysicsServer", "body_remove_shape");
		ptrcall!(void)(_GODOT_body_remove_shape, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_body_clear_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_clear_shapes") = _GODOT_body_clear_shapes;
	/**
	Removes all shapes from a body.
	*/
	void bodyClearShapes(in RID _body)
	{
		_GODOT_body_clear_shapes.bind("PhysicsServer", "body_clear_shapes");
		ptrcall!(void)(_GODOT_body_clear_shapes, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_attach_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_attach_object_instance_id") = _GODOT_body_attach_object_instance_id;
	/**
	Assigns the area to a descendant of $(D GodotObject), so it can exist in the node tree.
	*/
	void bodyAttachObjectInstanceId(in RID _body, in long id)
	{
		_GODOT_body_attach_object_instance_id.bind("PhysicsServer", "body_attach_object_instance_id");
		ptrcall!(void)(_GODOT_body_attach_object_instance_id, _godot_object, _body, id);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_body_get_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_object_instance_id") = _GODOT_body_get_object_instance_id;
	/**
	Gets the instance ID of the object the area is assigned to.
	*/
	long bodyGetObjectInstanceId(in RID _body) const
	{
		_GODOT_body_get_object_instance_id.bind("PhysicsServer", "body_get_object_instance_id");
		return ptrcall!(long)(_GODOT_body_get_object_instance_id, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_body_set_enable_continuous_collision_detection;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_enable_continuous_collision_detection") = _GODOT_body_set_enable_continuous_collision_detection;
	/**
	If `true` the continuous collision detection mode is enabled.
	Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.
	*/
	void bodySetEnableContinuousCollisionDetection(in RID _body, in bool enable)
	{
		_GODOT_body_set_enable_continuous_collision_detection.bind("PhysicsServer", "body_set_enable_continuous_collision_detection");
		ptrcall!(void)(_GODOT_body_set_enable_continuous_collision_detection, _godot_object, _body, enable);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_body_is_continuous_collision_detection_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_is_continuous_collision_detection_enabled") = _GODOT_body_is_continuous_collision_detection_enabled;
	/**
	If `true` the continuous collision detection mode is enabled.
	*/
	bool bodyIsContinuousCollisionDetectionEnabled(in RID _body) const
	{
		_GODOT_body_is_continuous_collision_detection_enabled.bind("PhysicsServer", "body_is_continuous_collision_detection_enabled");
		return ptrcall!(bool)(_GODOT_body_is_continuous_collision_detection_enabled, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_body_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_param") = _GODOT_body_set_param;
	/**
	Sets a body parameter. A list of available parameters is on the BODY_PARAM_* constants.
	*/
	void bodySetParam(in RID _body, in long param, in double value)
	{
		_GODOT_body_set_param.bind("PhysicsServer", "body_set_param");
		ptrcall!(void)(_GODOT_body_set_param, _godot_object, _body, param, value);
	}
	package(godot) static GodotMethod!(double, RID, long) _GODOT_body_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_param") = _GODOT_body_get_param;
	/**
	Returns the value of a body parameter. A list of available parameters is on the BODY_PARAM_* constants.
	*/
	double bodyGetParam(in RID _body, in long param) const
	{
		_GODOT_body_get_param.bind("PhysicsServer", "body_get_param");
		return ptrcall!(double)(_GODOT_body_get_param, _godot_object, _body, param);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_body_set_kinematic_safe_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_kinematic_safe_margin") = _GODOT_body_set_kinematic_safe_margin;
	/**
	
	*/
	void bodySetKinematicSafeMargin(in RID _body, in double margin)
	{
		_GODOT_body_set_kinematic_safe_margin.bind("PhysicsServer", "body_set_kinematic_safe_margin");
		ptrcall!(void)(_GODOT_body_set_kinematic_safe_margin, _godot_object, _body, margin);
	}
	package(godot) static GodotMethod!(double, RID) _GODOT_body_get_kinematic_safe_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_kinematic_safe_margin") = _GODOT_body_get_kinematic_safe_margin;
	/**
	
	*/
	double bodyGetKinematicSafeMargin(in RID _body) const
	{
		_GODOT_body_get_kinematic_safe_margin.bind("PhysicsServer", "body_get_kinematic_safe_margin");
		return ptrcall!(double)(_GODOT_body_get_kinematic_safe_margin, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long, Variant) _GODOT_body_set_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_state") = _GODOT_body_set_state;
	/**
	Sets a body state (see BODY_STATE* constants).
	*/
	void bodySetState(VariantArg2)(in RID _body, in long state, in VariantArg2 value)
	{
		_GODOT_body_set_state.bind("PhysicsServer", "body_set_state");
		ptrcall!(void)(_GODOT_body_set_state, _godot_object, _body, state, value);
	}
	package(godot) static GodotMethod!(Variant, RID, long) _GODOT_body_get_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_state") = _GODOT_body_get_state;
	/**
	Returns a body state.
	*/
	Variant bodyGetState(in RID _body, in long state) const
	{
		_GODOT_body_get_state.bind("PhysicsServer", "body_get_state");
		return ptrcall!(Variant)(_GODOT_body_get_state, _godot_object, _body, state);
	}
	package(godot) static GodotMethod!(void, RID, Vector3, Vector3) _GODOT_body_apply_impulse;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_apply_impulse") = _GODOT_body_apply_impulse;
	/**
	Gives the body a push at a `position` in the direction of the `impulse`.
	*/
	void bodyApplyImpulse(in RID _body, in Vector3 position, in Vector3 impulse)
	{
		_GODOT_body_apply_impulse.bind("PhysicsServer", "body_apply_impulse");
		ptrcall!(void)(_GODOT_body_apply_impulse, _godot_object, _body, position, impulse);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_body_apply_torque_impulse;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_apply_torque_impulse") = _GODOT_body_apply_torque_impulse;
	/**
	Gives the body a push to rotate it.
	*/
	void bodyApplyTorqueImpulse(in RID _body, in Vector3 impulse)
	{
		_GODOT_body_apply_torque_impulse.bind("PhysicsServer", "body_apply_torque_impulse");
		ptrcall!(void)(_GODOT_body_apply_torque_impulse, _godot_object, _body, impulse);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_body_set_axis_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_axis_velocity") = _GODOT_body_set_axis_velocity;
	/**
	Sets an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	*/
	void bodySetAxisVelocity(in RID _body, in Vector3 axis_velocity)
	{
		_GODOT_body_set_axis_velocity.bind("PhysicsServer", "body_set_axis_velocity");
		ptrcall!(void)(_GODOT_body_set_axis_velocity, _godot_object, _body, axis_velocity);
	}
	package(godot) static GodotMethod!(void, RID, long, bool) _GODOT_body_set_axis_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_axis_lock") = _GODOT_body_set_axis_lock;
	/**
	
	*/
	void bodySetAxisLock(in RID _body, in long axis, in bool lock)
	{
		_GODOT_body_set_axis_lock.bind("PhysicsServer", "body_set_axis_lock");
		ptrcall!(void)(_GODOT_body_set_axis_lock, _godot_object, _body, axis, lock);
	}
	package(godot) static GodotMethod!(bool, RID, long) _GODOT_body_is_axis_locked;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_is_axis_locked") = _GODOT_body_is_axis_locked;
	/**
	
	*/
	bool bodyIsAxisLocked(in RID _body, in long axis) const
	{
		_GODOT_body_is_axis_locked.bind("PhysicsServer", "body_is_axis_locked");
		return ptrcall!(bool)(_GODOT_body_is_axis_locked, _godot_object, _body, axis);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_add_collision_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_add_collision_exception") = _GODOT_body_add_collision_exception;
	/**
	Adds a body to the list of bodies exempt from collisions.
	*/
	void bodyAddCollisionException(in RID _body, in RID excepted_body)
	{
		_GODOT_body_add_collision_exception.bind("PhysicsServer", "body_add_collision_exception");
		ptrcall!(void)(_GODOT_body_add_collision_exception, _godot_object, _body, excepted_body);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_remove_collision_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_remove_collision_exception") = _GODOT_body_remove_collision_exception;
	/**
	Removes a body from the list of bodies exempt from collisions.
	Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.
	*/
	void bodyRemoveCollisionException(in RID _body, in RID excepted_body)
	{
		_GODOT_body_remove_collision_exception.bind("PhysicsServer", "body_remove_collision_exception");
		ptrcall!(void)(_GODOT_body_remove_collision_exception, _godot_object, _body, excepted_body);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_set_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_max_contacts_reported") = _GODOT_body_set_max_contacts_reported;
	/**
	Sets the maximum contacts to report. Bodies can keep a log of the contacts with other bodies, this is enabled by setting the maximum amount of contacts reported to a number greater than 0.
	*/
	void bodySetMaxContactsReported(in RID _body, in long amount)
	{
		_GODOT_body_set_max_contacts_reported.bind("PhysicsServer", "body_set_max_contacts_reported");
		ptrcall!(void)(_GODOT_body_set_max_contacts_reported, _godot_object, _body, amount);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_body_get_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_max_contacts_reported") = _GODOT_body_get_max_contacts_reported;
	/**
	Returns the maximum contacts that can be reported. See $(D bodySetMaxContactsReported).
	*/
	long bodyGetMaxContactsReported(in RID _body) const
	{
		_GODOT_body_get_max_contacts_reported.bind("PhysicsServer", "body_get_max_contacts_reported");
		return ptrcall!(long)(_GODOT_body_get_max_contacts_reported, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_body_set_omit_force_integration;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_omit_force_integration") = _GODOT_body_set_omit_force_integration;
	/**
	Sets whether a body uses a callback function to calculate its own physics (see $(D bodySetForceIntegrationCallback)).
	*/
	void bodySetOmitForceIntegration(in RID _body, in bool enable)
	{
		_GODOT_body_set_omit_force_integration.bind("PhysicsServer", "body_set_omit_force_integration");
		ptrcall!(void)(_GODOT_body_set_omit_force_integration, _godot_object, _body, enable);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_body_is_omitting_force_integration;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_is_omitting_force_integration") = _GODOT_body_is_omitting_force_integration;
	/**
	Returns whether a body uses a callback function to calculate its own physics (see $(D bodySetForceIntegrationCallback)).
	*/
	bool bodyIsOmittingForceIntegration(in RID _body) const
	{
		_GODOT_body_is_omitting_force_integration.bind("PhysicsServer", "body_is_omitting_force_integration");
		return ptrcall!(bool)(_GODOT_body_is_omitting_force_integration, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, GodotObject, String, Variant) _GODOT_body_set_force_integration_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_force_integration_callback") = _GODOT_body_set_force_integration_callback;
	/**
	Sets the function used to calculate physics for an object, if that object allows it (see $(D bodySetOmitForce integration)).
	*/
	void bodySetForceIntegrationCallback(StringArg2, VariantArg3)(in RID _body, GodotObject receiver, in StringArg2 method, in VariantArg3 userdata = Variant.nil)
	{
		_GODOT_body_set_force_integration_callback.bind("PhysicsServer", "body_set_force_integration_callback");
		ptrcall!(void)(_GODOT_body_set_force_integration_callback, _godot_object, _body, receiver, method, userdata);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_body_set_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_ray_pickable") = _GODOT_body_set_ray_pickable;
	/**
	Sets the body pickable with rays if `enabled` is set.
	*/
	void bodySetRayPickable(in RID _body, in bool enable)
	{
		_GODOT_body_set_ray_pickable.bind("PhysicsServer", "body_set_ray_pickable");
		ptrcall!(void)(_GODOT_body_set_ray_pickable, _godot_object, _body, enable);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_body_is_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_is_ray_pickable") = _GODOT_body_is_ray_pickable;
	/**
	If `true` the body can be detected by rays
	*/
	bool bodyIsRayPickable(in RID _body) const
	{
		_GODOT_body_is_ray_pickable.bind("PhysicsServer", "body_is_ray_pickable");
		return ptrcall!(bool)(_GODOT_body_is_ray_pickable, _godot_object, _body);
	}
	package(godot) static GodotMethod!(PhysicsDirectBodyState, RID) _GODOT_body_get_direct_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_direct_state") = _GODOT_body_get_direct_state;
	/**
	Returns the $(D PhysicsDirectBodyState) of the body.
	*/
	PhysicsDirectBodyState bodyGetDirectState(in RID _body)
	{
		_GODOT_body_get_direct_state.bind("PhysicsServer", "body_get_direct_state");
		return ptrcall!(PhysicsDirectBodyState)(_GODOT_body_get_direct_state, _godot_object, _body);
	}
	package(godot) static GodotMethod!(RID, RID, Vector3, RID, Vector3) _GODOT_joint_create_pin;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_create_pin") = _GODOT_joint_create_pin;
	/**
	Creates a $(D PinJoint).
	*/
	RID jointCreatePin(in RID body_A, in Vector3 local_A, in RID body_B, in Vector3 local_B)
	{
		_GODOT_joint_create_pin.bind("PhysicsServer", "joint_create_pin");
		return ptrcall!(RID)(_GODOT_joint_create_pin, _godot_object, body_A, local_A, body_B, local_B);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_pin_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_set_param") = _GODOT_pin_joint_set_param;
	/**
	Sets a pin_joint parameter (see PIN_JOINT* constants).
	*/
	void pinJointSetParam(in RID joint, in long param, in double value)
	{
		_GODOT_pin_joint_set_param.bind("PhysicsServer", "pin_joint_set_param");
		ptrcall!(void)(_GODOT_pin_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(double, RID, long) _GODOT_pin_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_get_param") = _GODOT_pin_joint_get_param;
	/**
	Gets a pin_joint parameter (see PIN_JOINT* constants).
	*/
	double pinJointGetParam(in RID joint, in long param) const
	{
		_GODOT_pin_joint_get_param.bind("PhysicsServer", "pin_joint_get_param");
		return ptrcall!(double)(_GODOT_pin_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_pin_joint_set_local_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_set_local_a") = _GODOT_pin_joint_set_local_a;
	/**
	Sets position of the joint in the local space of body a of the joint.
	*/
	void pinJointSetLocalA(in RID joint, in Vector3 local_A)
	{
		_GODOT_pin_joint_set_local_a.bind("PhysicsServer", "pin_joint_set_local_a");
		ptrcall!(void)(_GODOT_pin_joint_set_local_a, _godot_object, joint, local_A);
	}
	package(godot) static GodotMethod!(Vector3, RID) _GODOT_pin_joint_get_local_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_get_local_a") = _GODOT_pin_joint_get_local_a;
	/**
	Returns position of the joint in the local space of body a of the joint.
	*/
	Vector3 pinJointGetLocalA(in RID joint) const
	{
		_GODOT_pin_joint_get_local_a.bind("PhysicsServer", "pin_joint_get_local_a");
		return ptrcall!(Vector3)(_GODOT_pin_joint_get_local_a, _godot_object, joint);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_pin_joint_set_local_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_set_local_b") = _GODOT_pin_joint_set_local_b;
	/**
	Sets position of the joint in the local space of body b of the joint.
	*/
	void pinJointSetLocalB(in RID joint, in Vector3 local_B)
	{
		_GODOT_pin_joint_set_local_b.bind("PhysicsServer", "pin_joint_set_local_b");
		ptrcall!(void)(_GODOT_pin_joint_set_local_b, _godot_object, joint, local_B);
	}
	package(godot) static GodotMethod!(Vector3, RID) _GODOT_pin_joint_get_local_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_get_local_b") = _GODOT_pin_joint_get_local_b;
	/**
	Returns position of the joint in the local space of body b of the joint.
	*/
	Vector3 pinJointGetLocalB(in RID joint) const
	{
		_GODOT_pin_joint_get_local_b.bind("PhysicsServer", "pin_joint_get_local_b");
		return ptrcall!(Vector3)(_GODOT_pin_joint_get_local_b, _godot_object, joint);
	}
	package(godot) static GodotMethod!(RID, RID, Transform, RID, Transform) _GODOT_joint_create_hinge;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_create_hinge") = _GODOT_joint_create_hinge;
	/**
	Creates a $(D HingeJoint).
	*/
	RID jointCreateHinge(in RID body_A, in Transform hinge_A, in RID body_B, in Transform hinge_B)
	{
		_GODOT_joint_create_hinge.bind("PhysicsServer", "joint_create_hinge");
		return ptrcall!(RID)(_GODOT_joint_create_hinge, _godot_object, body_A, hinge_A, body_B, hinge_B);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_hinge_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "hinge_joint_set_param") = _GODOT_hinge_joint_set_param;
	/**
	Sets a hinge_joint parameter (see HINGE_JOINT* constants without the HINGE_JOINT_FLAG*).
	*/
	void hingeJointSetParam(in RID joint, in long param, in double value)
	{
		_GODOT_hinge_joint_set_param.bind("PhysicsServer", "hinge_joint_set_param");
		ptrcall!(void)(_GODOT_hinge_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(double, RID, long) _GODOT_hinge_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "hinge_joint_get_param") = _GODOT_hinge_joint_get_param;
	/**
	Gets a hinge_joint parameter (see HINGE_JOINT* constants without the HINGE_JOINT_FLAG*).
	*/
	double hingeJointGetParam(in RID joint, in long param) const
	{
		_GODOT_hinge_joint_get_param.bind("PhysicsServer", "hinge_joint_get_param");
		return ptrcall!(double)(_GODOT_hinge_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(void, RID, long, bool) _GODOT_hinge_joint_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "hinge_joint_set_flag") = _GODOT_hinge_joint_set_flag;
	/**
	Sets a hinge_joint flag (see HINGE_JOINT_FLAG* constants).
	*/
	void hingeJointSetFlag(in RID joint, in long flag, in bool enabled)
	{
		_GODOT_hinge_joint_set_flag.bind("PhysicsServer", "hinge_joint_set_flag");
		ptrcall!(void)(_GODOT_hinge_joint_set_flag, _godot_object, joint, flag, enabled);
	}
	package(godot) static GodotMethod!(bool, RID, long) _GODOT_hinge_joint_get_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "hinge_joint_get_flag") = _GODOT_hinge_joint_get_flag;
	/**
	Gets a hinge_joint flag (see HINGE_JOINT_FLAG* constants).
	*/
	bool hingeJointGetFlag(in RID joint, in long flag) const
	{
		_GODOT_hinge_joint_get_flag.bind("PhysicsServer", "hinge_joint_get_flag");
		return ptrcall!(bool)(_GODOT_hinge_joint_get_flag, _godot_object, joint, flag);
	}
	package(godot) static GodotMethod!(RID, RID, Transform, RID, Transform) _GODOT_joint_create_slider;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_create_slider") = _GODOT_joint_create_slider;
	/**
	Creates a $(D SliderJoint).
	*/
	RID jointCreateSlider(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		_GODOT_joint_create_slider.bind("PhysicsServer", "joint_create_slider");
		return ptrcall!(RID)(_GODOT_joint_create_slider, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_slider_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "slider_joint_set_param") = _GODOT_slider_joint_set_param;
	/**
	Gets a slider_joint parameter (see SLIDER_JOINT* constants).
	*/
	void sliderJointSetParam(in RID joint, in long param, in double value)
	{
		_GODOT_slider_joint_set_param.bind("PhysicsServer", "slider_joint_set_param");
		ptrcall!(void)(_GODOT_slider_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(double, RID, long) _GODOT_slider_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "slider_joint_get_param") = _GODOT_slider_joint_get_param;
	/**
	Gets a slider_joint parameter (see SLIDER_JOINT* constants).
	*/
	double sliderJointGetParam(in RID joint, in long param) const
	{
		_GODOT_slider_joint_get_param.bind("PhysicsServer", "slider_joint_get_param");
		return ptrcall!(double)(_GODOT_slider_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(RID, RID, Transform, RID, Transform) _GODOT_joint_create_cone_twist;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_create_cone_twist") = _GODOT_joint_create_cone_twist;
	/**
	Creates a $(D ConeTwistJoint).
	*/
	RID jointCreateConeTwist(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		_GODOT_joint_create_cone_twist.bind("PhysicsServer", "joint_create_cone_twist");
		return ptrcall!(RID)(_GODOT_joint_create_cone_twist, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_cone_twist_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "cone_twist_joint_set_param") = _GODOT_cone_twist_joint_set_param;
	/**
	Sets a cone_twist_joint parameter (see CONE_TWIST_JOINT* constants).
	*/
	void coneTwistJointSetParam(in RID joint, in long param, in double value)
	{
		_GODOT_cone_twist_joint_set_param.bind("PhysicsServer", "cone_twist_joint_set_param");
		ptrcall!(void)(_GODOT_cone_twist_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(double, RID, long) _GODOT_cone_twist_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "cone_twist_joint_get_param") = _GODOT_cone_twist_joint_get_param;
	/**
	Gets a cone_twist_joint parameter (see CONE_TWIST_JOINT* constants).
	*/
	double coneTwistJointGetParam(in RID joint, in long param) const
	{
		_GODOT_cone_twist_joint_get_param.bind("PhysicsServer", "cone_twist_joint_get_param");
		return ptrcall!(double)(_GODOT_cone_twist_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(PhysicsServer.JointType, RID) _GODOT_joint_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_get_type") = _GODOT_joint_get_type;
	/**
	Returns the type of the Joint.
	*/
	PhysicsServer.JointType jointGetType(in RID joint) const
	{
		_GODOT_joint_get_type.bind("PhysicsServer", "joint_get_type");
		return ptrcall!(PhysicsServer.JointType)(_GODOT_joint_get_type, _godot_object, joint);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_joint_set_solver_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_set_solver_priority") = _GODOT_joint_set_solver_priority;
	/**
	Sets the priority value of the Joint.
	*/
	void jointSetSolverPriority(in RID joint, in long priority)
	{
		_GODOT_joint_set_solver_priority.bind("PhysicsServer", "joint_set_solver_priority");
		ptrcall!(void)(_GODOT_joint_set_solver_priority, _godot_object, joint, priority);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_joint_get_solver_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_get_solver_priority") = _GODOT_joint_get_solver_priority;
	/**
	Gets the priority value of the Joint.
	*/
	long jointGetSolverPriority(in RID joint) const
	{
		_GODOT_joint_get_solver_priority.bind("PhysicsServer", "joint_get_solver_priority");
		return ptrcall!(long)(_GODOT_joint_get_solver_priority, _godot_object, joint);
	}
	package(godot) static GodotMethod!(RID, RID, Transform, RID, Transform) _GODOT_joint_create_generic_6dof;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_create_generic_6dof") = _GODOT_joint_create_generic_6dof;
	/**
	Creates a $(D Generic6DOFJoint).
	*/
	RID jointCreateGeneric6dof(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		_GODOT_joint_create_generic_6dof.bind("PhysicsServer", "joint_create_generic_6dof");
		return ptrcall!(RID)(_GODOT_joint_create_generic_6dof, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	package(godot) static GodotMethod!(void, RID, long, long, double) _GODOT_generic_6dof_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "generic_6dof_joint_set_param") = _GODOT_generic_6dof_joint_set_param;
	/**
	Sets a generic_6_DOF_joint parameter (see G6DOF_JOINT* constants without the G6DOF_JOINT_FLAG*).
	*/
	void generic6dofJointSetParam(in RID joint, in long axis, in long param, in double value)
	{
		_GODOT_generic_6dof_joint_set_param.bind("PhysicsServer", "generic_6dof_joint_set_param");
		ptrcall!(void)(_GODOT_generic_6dof_joint_set_param, _godot_object, joint, axis, param, value);
	}
	package(godot) static GodotMethod!(double, RID, long, long) _GODOT_generic_6dof_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "generic_6dof_joint_get_param") = _GODOT_generic_6dof_joint_get_param;
	/**
	Gets a generic_6_DOF_joint parameter (see G6DOF_JOINT* constants without the G6DOF_JOINT_FLAG*).
	*/
	double generic6dofJointGetParam(in RID joint, in long axis, in long param)
	{
		_GODOT_generic_6dof_joint_get_param.bind("PhysicsServer", "generic_6dof_joint_get_param");
		return ptrcall!(double)(_GODOT_generic_6dof_joint_get_param, _godot_object, joint, axis, param);
	}
	package(godot) static GodotMethod!(void, RID, long, long, bool) _GODOT_generic_6dof_joint_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "generic_6dof_joint_set_flag") = _GODOT_generic_6dof_joint_set_flag;
	/**
	Sets a generic_6_DOF_joint flag (see G6DOF_JOINT_FLAG* constants).
	*/
	void generic6dofJointSetFlag(in RID joint, in long axis, in long flag, in bool enable)
	{
		_GODOT_generic_6dof_joint_set_flag.bind("PhysicsServer", "generic_6dof_joint_set_flag");
		ptrcall!(void)(_GODOT_generic_6dof_joint_set_flag, _godot_object, joint, axis, flag, enable);
	}
	package(godot) static GodotMethod!(bool, RID, long, long) _GODOT_generic_6dof_joint_get_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "generic_6dof_joint_get_flag") = _GODOT_generic_6dof_joint_get_flag;
	/**
	Gets a generic_6_DOF_joint flag (see G6DOF_JOINT_FLAG* constants).
	*/
	bool generic6dofJointGetFlag(in RID joint, in long axis, in long flag)
	{
		_GODOT_generic_6dof_joint_get_flag.bind("PhysicsServer", "generic_6dof_joint_get_flag");
		return ptrcall!(bool)(_GODOT_generic_6dof_joint_get_flag, _godot_object, joint, axis, flag);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_free_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "free_rid") = _GODOT_free_rid;
	/**
	Destroys any of the objects created by PhysicsServer. If the $(D RID) passed is not one of the objects that can be created by PhysicsServer, an error will be sent to the console.
	*/
	void freeRid(in RID rid)
	{
		_GODOT_free_rid.bind("PhysicsServer", "free_rid");
		ptrcall!(void)(_GODOT_free_rid, _godot_object, rid);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_active") = _GODOT_set_active;
	/**
	Activates or deactivates the 3D physics engine.
	*/
	void setActive(in bool active)
	{
		_GODOT_set_active.bind("PhysicsServer", "set_active");
		ptrcall!(void)(_GODOT_set_active, _godot_object, active);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_process_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_process_info") = _GODOT_get_process_info;
	/**
	Returns an Info defined by the $(D ProcessInfo) input given.
	*/
	long getProcessInfo(in long process_info)
	{
		_GODOT_get_process_info.bind("PhysicsServer", "get_process_info");
		return ptrcall!(long)(_GODOT_get_process_info, _godot_object, process_info);
	}
}
/// Returns: the PhysicsServerSingleton
@property @nogc nothrow pragma(inline, true)
PhysicsServerSingleton PhysicsServer()
{
	return PhysicsServerSingleton._GODOT_singleton();
}
