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
	static immutable string _GODOT_internal_name = "Physics2DServer";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "Physics2DServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		bodyParamBounce = 0,
		areaBodyAdded = 0,
		jointPin = 0,
		jointParamBias = 0,
		shapeLine = 0,
		ccdModeDisabled = 0,
		areaParamGravity = 0,
		areaSpaceOverrideDisabled = 0,
		bodyStateTransform = 0,
		infoActiveObjects = 0,
		bodyModeStatic = 0,
		dampedStringRestLength = 0,
		spaceParamContactRecycleRadius = 0,
		jointParamMaxBias = 1,
		bodyStateLinearVelocity = 1,
		areaBodyRemoved = 1,
		areaSpaceOverrideCombine = 1,
		infoCollisionPairs = 1,
		bodyModeKinematic = 1,
		shapeRay = 1,
		jointGroove = 1,
		dampedStringStiffness = 1,
		ccdModeCastRay = 1,
		bodyParamFriction = 1,
		spaceParamContactMaxSeparation = 1,
		areaParamGravityVector = 1,
		jointParamMaxForce = 2,
		areaParamGravityIsPoint = 2,
		ccdModeCastShape = 2,
		bodyModeRigid = 2,
		dampedStringDamping = 2,
		shapeSegment = 2,
		jointDampedSpring = 2,
		areaSpaceOverrideCombineReplace = 2,
		spaceParamBodyMaxAllowedPenetration = 2,
		bodyParamMass = 2,
		bodyStateAngularVelocity = 2,
		infoIslandCount = 2,
		areaSpaceOverrideReplace = 3,
		bodyStateSleeping = 3,
		areaParamGravityDistanceScale = 3,
		bodyParamInertia = 3,
		bodyModeCharacter = 3,
		spaceParamBodyLinearVelocitySleepThreshold = 3,
		shapeCircle = 3,
		areaParamGravityPointAttenuation = 4,
		bodyParamGravityScale = 4,
		spaceParamBodyAngularVelocitySleepThreshold = 4,
		shapeRectangle = 4,
		bodyStateCanSleep = 4,
		areaSpaceOverrideReplaceCombine = 4,
		areaParamLinearDamp = 5,
		shapeCapsule = 5,
		bodyParamLinearDamp = 5,
		spaceParamBodyTimeToSleep = 5,
		areaParamAngularDamp = 6,
		bodyParamAngularDamp = 6,
		shapeConvexPolygon = 6,
		spaceParamConstraintDefaultBias = 6,
		bodyParamMax = 7,
		shapeConcavePolygon = 7,
		areaParamPriority = 7,
		shapeCustom = 8,
	}
	package(godot) static GodotMethod!(RID) _GODOT_line_shape_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "line_shape_create") = _GODOT_line_shape_create;
	/**
	
	*/
	RID lineShapeCreate()
	{
		_GODOT_line_shape_create.bind("Physics2DServer", "line_shape_create");
		return ptrcall!(RID)(_GODOT_line_shape_create, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_ray_shape_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "ray_shape_create") = _GODOT_ray_shape_create;
	/**
	
	*/
	RID rayShapeCreate()
	{
		_GODOT_ray_shape_create.bind("Physics2DServer", "ray_shape_create");
		return ptrcall!(RID)(_GODOT_ray_shape_create, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_segment_shape_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_shape_create") = _GODOT_segment_shape_create;
	/**
	
	*/
	RID segmentShapeCreate()
	{
		_GODOT_segment_shape_create.bind("Physics2DServer", "segment_shape_create");
		return ptrcall!(RID)(_GODOT_segment_shape_create, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_circle_shape_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "circle_shape_create") = _GODOT_circle_shape_create;
	/**
	
	*/
	RID circleShapeCreate()
	{
		_GODOT_circle_shape_create.bind("Physics2DServer", "circle_shape_create");
		return ptrcall!(RID)(_GODOT_circle_shape_create, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_rectangle_shape_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "rectangle_shape_create") = _GODOT_rectangle_shape_create;
	/**
	
	*/
	RID rectangleShapeCreate()
	{
		_GODOT_rectangle_shape_create.bind("Physics2DServer", "rectangle_shape_create");
		return ptrcall!(RID)(_GODOT_rectangle_shape_create, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_capsule_shape_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "capsule_shape_create") = _GODOT_capsule_shape_create;
	/**
	
	*/
	RID capsuleShapeCreate()
	{
		_GODOT_capsule_shape_create.bind("Physics2DServer", "capsule_shape_create");
		return ptrcall!(RID)(_GODOT_capsule_shape_create, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_convex_polygon_shape_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "convex_polygon_shape_create") = _GODOT_convex_polygon_shape_create;
	/**
	
	*/
	RID convexPolygonShapeCreate()
	{
		_GODOT_convex_polygon_shape_create.bind("Physics2DServer", "convex_polygon_shape_create");
		return ptrcall!(RID)(_GODOT_convex_polygon_shape_create, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_concave_polygon_shape_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "concave_polygon_shape_create") = _GODOT_concave_polygon_shape_create;
	/**
	
	*/
	RID concavePolygonShapeCreate()
	{
		_GODOT_concave_polygon_shape_create.bind("Physics2DServer", "concave_polygon_shape_create");
		return ptrcall!(RID)(_GODOT_concave_polygon_shape_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, Variant) _GODOT_shape_set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_set_data") = _GODOT_shape_set_data;
	/**
	Sets the shape data that defines its shape and size. The data to be passed depends on the kind of shape created $(D shapeGetType).
	*/
	void shapeSetData(VariantArg1)(in RID shape, in VariantArg1 data)
	{
		_GODOT_shape_set_data.bind("Physics2DServer", "shape_set_data");
		ptrcall!(void)(_GODOT_shape_set_data, _godot_object, shape, data);
	}
	package(godot) static GodotMethod!(Physics2DServer.ShapeType, RID) _GODOT_shape_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_get_type") = _GODOT_shape_get_type;
	/**
	Returns the type of shape (see SHAPE_* constants).
	*/
	Physics2DServer.ShapeType shapeGetType(in RID shape) const
	{
		_GODOT_shape_get_type.bind("Physics2DServer", "shape_get_type");
		return ptrcall!(Physics2DServer.ShapeType)(_GODOT_shape_get_type, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Variant, RID) _GODOT_shape_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_get_data") = _GODOT_shape_get_data;
	/**
	Returns the shape data.
	*/
	Variant shapeGetData(in RID shape) const
	{
		_GODOT_shape_get_data.bind("Physics2DServer", "shape_get_data");
		return ptrcall!(Variant)(_GODOT_shape_get_data, _godot_object, shape);
	}
	package(godot) static GodotMethod!(RID) _GODOT_space_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_create") = _GODOT_space_create;
	/**
	Creates a space. A space is a collection of parameters for the physics engine that can be assigned to an area or a body. It can be assigned to an area with $(D areaSetSpace), or to a body with $(D bodySetSpace).
	*/
	RID spaceCreate()
	{
		_GODOT_space_create.bind("Physics2DServer", "space_create");
		return ptrcall!(RID)(_GODOT_space_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_space_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_set_active") = _GODOT_space_set_active;
	/**
	Marks a space as active. It will not have an effect, unless it is assigned to an area or body.
	*/
	void spaceSetActive(in RID space, in bool active)
	{
		_GODOT_space_set_active.bind("Physics2DServer", "space_set_active");
		ptrcall!(void)(_GODOT_space_set_active, _godot_object, space, active);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_space_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_is_active") = _GODOT_space_is_active;
	/**
	Returns whether the space is active.
	*/
	bool spaceIsActive(in RID space) const
	{
		_GODOT_space_is_active.bind("Physics2DServer", "space_is_active");
		return ptrcall!(bool)(_GODOT_space_is_active, _godot_object, space);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_space_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_set_param") = _GODOT_space_set_param;
	/**
	Sets the value for a space parameter. A list of available parameters is on the SPACE_PARAM_* constants.
	*/
	void spaceSetParam(in RID space, in long param, in double value)
	{
		_GODOT_space_set_param.bind("Physics2DServer", "space_set_param");
		ptrcall!(void)(_GODOT_space_set_param, _godot_object, space, param, value);
	}
	package(godot) static GodotMethod!(double, RID, long) _GODOT_space_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_get_param") = _GODOT_space_get_param;
	/**
	Returns the value of a space parameter.
	*/
	double spaceGetParam(in RID space, in long param) const
	{
		_GODOT_space_get_param.bind("Physics2DServer", "space_get_param");
		return ptrcall!(double)(_GODOT_space_get_param, _godot_object, space, param);
	}
	package(godot) static GodotMethod!(Physics2DDirectSpaceState, RID) _GODOT_space_get_direct_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "space_get_direct_state") = _GODOT_space_get_direct_state;
	/**
	Returns the state of a space, a $(D Physics2DDirectSpaceState). This object can be used to make collision/intersection queries.
	*/
	Physics2DDirectSpaceState spaceGetDirectState(in RID space)
	{
		_GODOT_space_get_direct_state.bind("Physics2DServer", "space_get_direct_state");
		return ptrcall!(Physics2DDirectSpaceState)(_GODOT_space_get_direct_state, _godot_object, space);
	}
	package(godot) static GodotMethod!(RID) _GODOT_area_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_create") = _GODOT_area_create;
	/**
	Creates an $(D Area2D).
	*/
	RID areaCreate()
	{
		_GODOT_area_create.bind("Physics2DServer", "area_create");
		return ptrcall!(RID)(_GODOT_area_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_area_set_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_space") = _GODOT_area_set_space;
	/**
	Assigns a space to the area.
	*/
	void areaSetSpace(in RID area, in RID space)
	{
		_GODOT_area_set_space.bind("Physics2DServer", "area_set_space");
		ptrcall!(void)(_GODOT_area_set_space, _godot_object, area, space);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_area_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_space") = _GODOT_area_get_space;
	/**
	Returns the space assigned to the area.
	*/
	RID areaGetSpace(in RID area) const
	{
		_GODOT_area_get_space.bind("Physics2DServer", "area_get_space");
		return ptrcall!(RID)(_GODOT_area_get_space, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_area_set_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_space_override_mode") = _GODOT_area_set_space_override_mode;
	/**
	Sets the space override mode for the area. The modes are described in the constants AREA_SPACE_OVERRIDE_*.
	*/
	void areaSetSpaceOverrideMode(in RID area, in long mode)
	{
		_GODOT_area_set_space_override_mode.bind("Physics2DServer", "area_set_space_override_mode");
		ptrcall!(void)(_GODOT_area_set_space_override_mode, _godot_object, area, mode);
	}
	package(godot) static GodotMethod!(Physics2DServer.AreaSpaceOverrideMode, RID) _GODOT_area_get_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_space_override_mode") = _GODOT_area_get_space_override_mode;
	/**
	Returns the space override mode for the area.
	*/
	Physics2DServer.AreaSpaceOverrideMode areaGetSpaceOverrideMode(in RID area) const
	{
		_GODOT_area_get_space_override_mode.bind("Physics2DServer", "area_get_space_override_mode");
		return ptrcall!(Physics2DServer.AreaSpaceOverrideMode)(_GODOT_area_get_space_override_mode, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, RID, Transform2D) _GODOT_area_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_add_shape") = _GODOT_area_add_shape;
	/**
	Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
	*/
	void areaAddShape(in RID area, in RID shape, in Transform2D transform = Transform2D.init)
	{
		_GODOT_area_add_shape.bind("Physics2DServer", "area_add_shape");
		ptrcall!(void)(_GODOT_area_add_shape, _godot_object, area, shape, transform);
	}
	package(godot) static GodotMethod!(void, RID, long, RID) _GODOT_area_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_shape") = _GODOT_area_set_shape;
	/**
	Substitutes a given area shape by another. The old shape is selected by its index, the new one by its $(D RID).
	*/
	void areaSetShape(in RID area, in long shape_idx, in RID shape)
	{
		_GODOT_area_set_shape.bind("Physics2DServer", "area_set_shape");
		ptrcall!(void)(_GODOT_area_set_shape, _godot_object, area, shape_idx, shape);
	}
	package(godot) static GodotMethod!(void, RID, long, Transform2D) _GODOT_area_set_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_shape_transform") = _GODOT_area_set_shape_transform;
	/**
	Sets the transform matrix for an area shape.
	*/
	void areaSetShapeTransform(in RID area, in long shape_idx, in Transform2D transform)
	{
		_GODOT_area_set_shape_transform.bind("Physics2DServer", "area_set_shape_transform");
		ptrcall!(void)(_GODOT_area_set_shape_transform, _godot_object, area, shape_idx, transform);
	}
	package(godot) static GodotMethod!(void, RID, long, bool) _GODOT_area_set_shape_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_shape_disabled") = _GODOT_area_set_shape_disabled;
	/**
	Disables a given shape in an area.
	*/
	void areaSetShapeDisabled(in RID area, in long shape_idx, in bool disable)
	{
		_GODOT_area_set_shape_disabled.bind("Physics2DServer", "area_set_shape_disabled");
		ptrcall!(void)(_GODOT_area_set_shape_disabled, _godot_object, area, shape_idx, disable);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_area_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape_count") = _GODOT_area_get_shape_count;
	/**
	Returns the number of shapes assigned to an area.
	*/
	long areaGetShapeCount(in RID area) const
	{
		_GODOT_area_get_shape_count.bind("Physics2DServer", "area_get_shape_count");
		return ptrcall!(long)(_GODOT_area_get_shape_count, _godot_object, area);
	}
	package(godot) static GodotMethod!(RID, RID, long) _GODOT_area_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape") = _GODOT_area_get_shape;
	/**
	Returns the $(D RID) of the nth shape of an area.
	*/
	RID areaGetShape(in RID area, in long shape_idx) const
	{
		_GODOT_area_get_shape.bind("Physics2DServer", "area_get_shape");
		return ptrcall!(RID)(_GODOT_area_get_shape, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(Transform2D, RID, long) _GODOT_area_get_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_shape_transform") = _GODOT_area_get_shape_transform;
	/**
	Returns the transform matrix of a shape within an area.
	*/
	Transform2D areaGetShapeTransform(in RID area, in long shape_idx) const
	{
		_GODOT_area_get_shape_transform.bind("Physics2DServer", "area_get_shape_transform");
		return ptrcall!(Transform2D)(_GODOT_area_get_shape_transform, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_area_remove_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_remove_shape") = _GODOT_area_remove_shape;
	/**
	Removes a shape from an area. It does not delete the shape, so it can be reassigned later.
	*/
	void areaRemoveShape(in RID area, in long shape_idx)
	{
		_GODOT_area_remove_shape.bind("Physics2DServer", "area_remove_shape");
		ptrcall!(void)(_GODOT_area_remove_shape, _godot_object, area, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_area_clear_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_clear_shapes") = _GODOT_area_clear_shapes;
	/**
	Removes all shapes from an area. It does not delete the shapes, so they can be reassigned later.
	*/
	void areaClearShapes(in RID area)
	{
		_GODOT_area_clear_shapes.bind("Physics2DServer", "area_clear_shapes");
		ptrcall!(void)(_GODOT_area_clear_shapes, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_area_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_collision_layer") = _GODOT_area_set_collision_layer;
	/**
	Assigns the area to one or many physics layers.
	*/
	void areaSetCollisionLayer(in RID area, in long layer)
	{
		_GODOT_area_set_collision_layer.bind("Physics2DServer", "area_set_collision_layer");
		ptrcall!(void)(_GODOT_area_set_collision_layer, _godot_object, area, layer);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_area_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_collision_mask") = _GODOT_area_set_collision_mask;
	/**
	Sets which physics layers the area will monitor.
	*/
	void areaSetCollisionMask(in RID area, in long mask)
	{
		_GODOT_area_set_collision_mask.bind("Physics2DServer", "area_set_collision_mask");
		ptrcall!(void)(_GODOT_area_set_collision_mask, _godot_object, area, mask);
	}
	package(godot) static GodotMethod!(void, RID, long, Variant) _GODOT_area_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_param") = _GODOT_area_set_param;
	/**
	Sets the value for an area parameter. A list of available parameters is on the AREA_PARAM_* constants.
	*/
	void areaSetParam(VariantArg2)(in RID area, in long param, in VariantArg2 value)
	{
		_GODOT_area_set_param.bind("Physics2DServer", "area_set_param");
		ptrcall!(void)(_GODOT_area_set_param, _godot_object, area, param, value);
	}
	package(godot) static GodotMethod!(void, RID, Transform2D) _GODOT_area_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_set_transform") = _GODOT_area_set_transform;
	/**
	Sets the transform matrix for an area.
	*/
	void areaSetTransform(in RID area, in Transform2D transform)
	{
		_GODOT_area_set_transform.bind("Physics2DServer", "area_set_transform");
		ptrcall!(void)(_GODOT_area_set_transform, _godot_object, area, transform);
	}
	package(godot) static GodotMethod!(Variant, RID, long) _GODOT_area_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_param") = _GODOT_area_get_param;
	/**
	Returns an area parameter value. A list of available parameters is on the AREA_PARAM_* constants.
	*/
	Variant areaGetParam(in RID area, in long param) const
	{
		_GODOT_area_get_param.bind("Physics2DServer", "area_get_param");
		return ptrcall!(Variant)(_GODOT_area_get_param, _godot_object, area, param);
	}
	package(godot) static GodotMethod!(Transform2D, RID) _GODOT_area_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_transform") = _GODOT_area_get_transform;
	/**
	Returns the transform matrix for an area.
	*/
	Transform2D areaGetTransform(in RID area) const
	{
		_GODOT_area_get_transform.bind("Physics2DServer", "area_get_transform");
		return ptrcall!(Transform2D)(_GODOT_area_get_transform, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_area_attach_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_attach_object_instance_id") = _GODOT_area_attach_object_instance_id;
	/**
	Assigns the area to a descendant of $(D GodotObject), so it can exist in the node tree.
	*/
	void areaAttachObjectInstanceId(in RID area, in long id)
	{
		_GODOT_area_attach_object_instance_id.bind("Physics2DServer", "area_attach_object_instance_id");
		ptrcall!(void)(_GODOT_area_attach_object_instance_id, _godot_object, area, id);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_area_get_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "area_get_object_instance_id") = _GODOT_area_get_object_instance_id;
	/**
	Gets the instance ID of the object the area is assigned to.
	*/
	long areaGetObjectInstanceId(in RID area) const
	{
		_GODOT_area_get_object_instance_id.bind("Physics2DServer", "area_get_object_instance_id");
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
		_GODOT_area_set_monitor_callback.bind("Physics2DServer", "area_set_monitor_callback");
		ptrcall!(void)(_GODOT_area_set_monitor_callback, _godot_object, area, receiver, method);
	}
	package(godot) static GodotMethod!(RID) _GODOT_body_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_create") = _GODOT_body_create;
	/**
	Creates a physics body. The first parameter can be any value from constants BODY_MODE*, for the type of body created. Additionally, the body can be created in sleeping state to save processing time.
	*/
	RID bodyCreate()
	{
		_GODOT_body_create.bind("Physics2DServer", "body_create");
		return ptrcall!(RID)(_GODOT_body_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_set_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_space") = _GODOT_body_set_space;
	/**
	Assigns a space to the body (see $(D spaceCreate)).
	*/
	void bodySetSpace(in RID _body, in RID space)
	{
		_GODOT_body_set_space.bind("Physics2DServer", "body_set_space");
		ptrcall!(void)(_GODOT_body_set_space, _godot_object, _body, space);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_body_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_space") = _GODOT_body_get_space;
	/**
	Returns the $(D RID) of the space assigned to a body.
	*/
	RID bodyGetSpace(in RID _body) const
	{
		_GODOT_body_get_space.bind("Physics2DServer", "body_get_space");
		return ptrcall!(RID)(_GODOT_body_get_space, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_mode") = _GODOT_body_set_mode;
	/**
	Sets the body mode, from one of the constants BODY_MODE*.
	*/
	void bodySetMode(in RID _body, in long mode)
	{
		_GODOT_body_set_mode.bind("Physics2DServer", "body_set_mode");
		ptrcall!(void)(_GODOT_body_set_mode, _godot_object, _body, mode);
	}
	package(godot) static GodotMethod!(Physics2DServer.BodyMode, RID) _GODOT_body_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_mode") = _GODOT_body_get_mode;
	/**
	Returns the body mode.
	*/
	Physics2DServer.BodyMode bodyGetMode(in RID _body) const
	{
		_GODOT_body_get_mode.bind("Physics2DServer", "body_get_mode");
		return ptrcall!(Physics2DServer.BodyMode)(_GODOT_body_get_mode, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, RID, Transform2D) _GODOT_body_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_add_shape") = _GODOT_body_add_shape;
	/**
	Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
	*/
	void bodyAddShape(in RID _body, in RID shape, in Transform2D transform = Transform2D.init)
	{
		_GODOT_body_add_shape.bind("Physics2DServer", "body_add_shape");
		ptrcall!(void)(_GODOT_body_add_shape, _godot_object, _body, shape, transform);
	}
	package(godot) static GodotMethod!(void, RID, long, RID) _GODOT_body_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape") = _GODOT_body_set_shape;
	/**
	Substitutes a given body shape by another. The old shape is selected by its index, the new one by its $(D RID).
	*/
	void bodySetShape(in RID _body, in long shape_idx, in RID shape)
	{
		_GODOT_body_set_shape.bind("Physics2DServer", "body_set_shape");
		ptrcall!(void)(_GODOT_body_set_shape, _godot_object, _body, shape_idx, shape);
	}
	package(godot) static GodotMethod!(void, RID, long, Transform2D) _GODOT_body_set_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape_transform") = _GODOT_body_set_shape_transform;
	/**
	Sets the transform matrix for a body shape.
	*/
	void bodySetShapeTransform(in RID _body, in long shape_idx, in Transform2D transform)
	{
		_GODOT_body_set_shape_transform.bind("Physics2DServer", "body_set_shape_transform");
		ptrcall!(void)(_GODOT_body_set_shape_transform, _godot_object, _body, shape_idx, transform);
	}
	package(godot) static GodotMethod!(void, RID, long, Variant) _GODOT_body_set_shape_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape_metadata") = _GODOT_body_set_shape_metadata;
	/**
	Sets metadata of a shape within a body. This metadata is different from $(D GodotObject.setMeta), and can be retrieved on shape queries.
	*/
	void bodySetShapeMetadata(VariantArg2)(in RID _body, in long shape_idx, in VariantArg2 metadata)
	{
		_GODOT_body_set_shape_metadata.bind("Physics2DServer", "body_set_shape_metadata");
		ptrcall!(void)(_GODOT_body_set_shape_metadata, _godot_object, _body, shape_idx, metadata);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_body_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape_count") = _GODOT_body_get_shape_count;
	/**
	Returns the number of shapes assigned to a body.
	*/
	long bodyGetShapeCount(in RID _body) const
	{
		_GODOT_body_get_shape_count.bind("Physics2DServer", "body_get_shape_count");
		return ptrcall!(long)(_GODOT_body_get_shape_count, _godot_object, _body);
	}
	package(godot) static GodotMethod!(RID, RID, long) _GODOT_body_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape") = _GODOT_body_get_shape;
	/**
	Returns the $(D RID) of the nth shape of a body.
	*/
	RID bodyGetShape(in RID _body, in long shape_idx) const
	{
		_GODOT_body_get_shape.bind("Physics2DServer", "body_get_shape");
		return ptrcall!(RID)(_GODOT_body_get_shape, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(Transform2D, RID, long) _GODOT_body_get_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape_transform") = _GODOT_body_get_shape_transform;
	/**
	Returns the transform matrix of a body shape.
	*/
	Transform2D bodyGetShapeTransform(in RID _body, in long shape_idx) const
	{
		_GODOT_body_get_shape_transform.bind("Physics2DServer", "body_get_shape_transform");
		return ptrcall!(Transform2D)(_GODOT_body_get_shape_transform, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(Variant, RID, long) _GODOT_body_get_shape_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_shape_metadata") = _GODOT_body_get_shape_metadata;
	/**
	Returns the metadata of a shape of a body.
	*/
	Variant bodyGetShapeMetadata(in RID _body, in long shape_idx) const
	{
		_GODOT_body_get_shape_metadata.bind("Physics2DServer", "body_get_shape_metadata");
		return ptrcall!(Variant)(_GODOT_body_get_shape_metadata, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_remove_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_remove_shape") = _GODOT_body_remove_shape;
	/**
	Removes a shape from a body. The shape is not deleted, so it can be reused afterwards.
	*/
	void bodyRemoveShape(in RID _body, in long shape_idx)
	{
		_GODOT_body_remove_shape.bind("Physics2DServer", "body_remove_shape");
		ptrcall!(void)(_GODOT_body_remove_shape, _godot_object, _body, shape_idx);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_body_clear_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_clear_shapes") = _GODOT_body_clear_shapes;
	/**
	Removes all shapes from a body.
	*/
	void bodyClearShapes(in RID _body)
	{
		_GODOT_body_clear_shapes.bind("Physics2DServer", "body_clear_shapes");
		ptrcall!(void)(_GODOT_body_clear_shapes, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long, bool) _GODOT_body_set_shape_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape_disabled") = _GODOT_body_set_shape_disabled;
	/**
	Disables shape in body if `disable` is `true`.
	*/
	void bodySetShapeDisabled(in RID _body, in long shape_idx, in bool disable)
	{
		_GODOT_body_set_shape_disabled.bind("Physics2DServer", "body_set_shape_disabled");
		ptrcall!(void)(_GODOT_body_set_shape_disabled, _godot_object, _body, shape_idx, disable);
	}
	package(godot) static GodotMethod!(void, RID, long, bool) _GODOT_body_set_shape_as_one_way_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_shape_as_one_way_collision") = _GODOT_body_set_shape_as_one_way_collision;
	/**
	Enables one way collision on body if `enable` is `true`.
	*/
	void bodySetShapeAsOneWayCollision(in RID _body, in long shape_idx, in bool enable)
	{
		_GODOT_body_set_shape_as_one_way_collision.bind("Physics2DServer", "body_set_shape_as_one_way_collision");
		ptrcall!(void)(_GODOT_body_set_shape_as_one_way_collision, _godot_object, _body, shape_idx, enable);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_attach_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_attach_object_instance_id") = _GODOT_body_attach_object_instance_id;
	/**
	Assigns the area to a descendant of $(D GodotObject), so it can exist in the node tree.
	*/
	void bodyAttachObjectInstanceId(in RID _body, in long id)
	{
		_GODOT_body_attach_object_instance_id.bind("Physics2DServer", "body_attach_object_instance_id");
		ptrcall!(void)(_GODOT_body_attach_object_instance_id, _godot_object, _body, id);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_body_get_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_object_instance_id") = _GODOT_body_get_object_instance_id;
	/**
	Gets the instance ID of the object the area is assigned to.
	*/
	long bodyGetObjectInstanceId(in RID _body) const
	{
		_GODOT_body_get_object_instance_id.bind("Physics2DServer", "body_get_object_instance_id");
		return ptrcall!(long)(_GODOT_body_get_object_instance_id, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_set_continuous_collision_detection_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_continuous_collision_detection_mode") = _GODOT_body_set_continuous_collision_detection_mode;
	/**
	Sets the continuous collision detection mode from any of the CCD_MODE_* constants.
	Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.
	*/
	void bodySetContinuousCollisionDetectionMode(in RID _body, in long mode)
	{
		_GODOT_body_set_continuous_collision_detection_mode.bind("Physics2DServer", "body_set_continuous_collision_detection_mode");
		ptrcall!(void)(_GODOT_body_set_continuous_collision_detection_mode, _godot_object, _body, mode);
	}
	package(godot) static GodotMethod!(Physics2DServer.CCDMode, RID) _GODOT_body_get_continuous_collision_detection_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_continuous_collision_detection_mode") = _GODOT_body_get_continuous_collision_detection_mode;
	/**
	Returns the continuous collision detection mode.
	*/
	Physics2DServer.CCDMode bodyGetContinuousCollisionDetectionMode(in RID _body) const
	{
		_GODOT_body_get_continuous_collision_detection_mode.bind("Physics2DServer", "body_get_continuous_collision_detection_mode");
		return ptrcall!(Physics2DServer.CCDMode)(_GODOT_body_get_continuous_collision_detection_mode, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_collision_layer") = _GODOT_body_set_collision_layer;
	/**
	Sets the physics layer or layers a body belongs to.
	*/
	void bodySetCollisionLayer(in RID _body, in long layer)
	{
		_GODOT_body_set_collision_layer.bind("Physics2DServer", "body_set_collision_layer");
		ptrcall!(void)(_GODOT_body_set_collision_layer, _godot_object, _body, layer);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_body_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_collision_layer") = _GODOT_body_get_collision_layer;
	/**
	Returns the physics layer or layers a body belongs to.
	*/
	long bodyGetCollisionLayer(in RID _body) const
	{
		_GODOT_body_get_collision_layer.bind("Physics2DServer", "body_get_collision_layer");
		return ptrcall!(long)(_GODOT_body_get_collision_layer, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_collision_mask") = _GODOT_body_set_collision_mask;
	/**
	Sets the physics layer or layers a body can collide with.
	*/
	void bodySetCollisionMask(in RID _body, in long mask)
	{
		_GODOT_body_set_collision_mask.bind("Physics2DServer", "body_set_collision_mask");
		ptrcall!(void)(_GODOT_body_set_collision_mask, _godot_object, _body, mask);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_body_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_collision_mask") = _GODOT_body_get_collision_mask;
	/**
	Returns the physics layer or layers a body can collide with.
	*/
	long bodyGetCollisionMask(in RID _body) const
	{
		_GODOT_body_get_collision_mask.bind("Physics2DServer", "body_get_collision_mask");
		return ptrcall!(long)(_GODOT_body_get_collision_mask, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_body_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_param") = _GODOT_body_set_param;
	/**
	Sets a body parameter. A list of available parameters is on the BODY_PARAM_* constants.
	*/
	void bodySetParam(in RID _body, in long param, in double value)
	{
		_GODOT_body_set_param.bind("Physics2DServer", "body_set_param");
		ptrcall!(void)(_GODOT_body_set_param, _godot_object, _body, param, value);
	}
	package(godot) static GodotMethod!(double, RID, long) _GODOT_body_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_param") = _GODOT_body_get_param;
	/**
	Returns the value of a body parameter. A list of available parameters is on the BODY_PARAM_* constants.
	*/
	double bodyGetParam(in RID _body, in long param) const
	{
		_GODOT_body_get_param.bind("Physics2DServer", "body_get_param");
		return ptrcall!(double)(_GODOT_body_get_param, _godot_object, _body, param);
	}
	package(godot) static GodotMethod!(void, RID, long, Variant) _GODOT_body_set_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_state") = _GODOT_body_set_state;
	/**
	Sets a body state (see BODY_STATE* constants).
	*/
	void bodySetState(VariantArg2)(in RID _body, in long state, in VariantArg2 value)
	{
		_GODOT_body_set_state.bind("Physics2DServer", "body_set_state");
		ptrcall!(void)(_GODOT_body_set_state, _godot_object, _body, state, value);
	}
	package(godot) static GodotMethod!(Variant, RID, long) _GODOT_body_get_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_state") = _GODOT_body_get_state;
	/**
	Returns a body state.
	*/
	Variant bodyGetState(in RID _body, in long state) const
	{
		_GODOT_body_get_state.bind("Physics2DServer", "body_get_state");
		return ptrcall!(Variant)(_GODOT_body_get_state, _godot_object, _body, state);
	}
	package(godot) static GodotMethod!(void, RID, Vector2, Vector2) _GODOT_body_apply_impulse;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_apply_impulse") = _GODOT_body_apply_impulse;
	/**
	Adds a positioned impulse to the applied force and torque. Both the force and the offset from the body origin are in global coordinates.
	*/
	void bodyApplyImpulse(in RID _body, in Vector2 position, in Vector2 impulse)
	{
		_GODOT_body_apply_impulse.bind("Physics2DServer", "body_apply_impulse");
		ptrcall!(void)(_GODOT_body_apply_impulse, _godot_object, _body, position, impulse);
	}
	package(godot) static GodotMethod!(void, RID, Vector2, Vector2) _GODOT_body_add_force;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_add_force") = _GODOT_body_add_force;
	/**
	Adds a positioned force to the applied force and torque. As with $(D bodyApplyImpulse), both the force and the offset from the body origin are in global coordinates. A force differs from an impulse in that, while the two are forces, the impulse clears itself after being applied.
	*/
	void bodyAddForce(in RID _body, in Vector2 offset, in Vector2 force)
	{
		_GODOT_body_add_force.bind("Physics2DServer", "body_add_force");
		ptrcall!(void)(_GODOT_body_add_force, _godot_object, _body, offset, force);
	}
	package(godot) static GodotMethod!(void, RID, Vector2) _GODOT_body_set_axis_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_axis_velocity") = _GODOT_body_set_axis_velocity;
	/**
	Sets an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	*/
	void bodySetAxisVelocity(in RID _body, in Vector2 axis_velocity)
	{
		_GODOT_body_set_axis_velocity.bind("Physics2DServer", "body_set_axis_velocity");
		ptrcall!(void)(_GODOT_body_set_axis_velocity, _godot_object, _body, axis_velocity);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_add_collision_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_add_collision_exception") = _GODOT_body_add_collision_exception;
	/**
	Adds a body to the list of bodies exempt from collisions.
	*/
	void bodyAddCollisionException(in RID _body, in RID excepted_body)
	{
		_GODOT_body_add_collision_exception.bind("Physics2DServer", "body_add_collision_exception");
		ptrcall!(void)(_GODOT_body_add_collision_exception, _godot_object, _body, excepted_body);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_body_remove_collision_exception;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_remove_collision_exception") = _GODOT_body_remove_collision_exception;
	/**
	Removes a body from the list of bodies exempt from collisions.
	*/
	void bodyRemoveCollisionException(in RID _body, in RID excepted_body)
	{
		_GODOT_body_remove_collision_exception.bind("Physics2DServer", "body_remove_collision_exception");
		ptrcall!(void)(_GODOT_body_remove_collision_exception, _godot_object, _body, excepted_body);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_body_set_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_max_contacts_reported") = _GODOT_body_set_max_contacts_reported;
	/**
	Sets the maximum contacts to report. Bodies can keep a log of the contacts with other bodies, this is enabled by setting the maximum amount of contacts reported to a number greater than 0.
	*/
	void bodySetMaxContactsReported(in RID _body, in long amount)
	{
		_GODOT_body_set_max_contacts_reported.bind("Physics2DServer", "body_set_max_contacts_reported");
		ptrcall!(void)(_GODOT_body_set_max_contacts_reported, _godot_object, _body, amount);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_body_get_max_contacts_reported;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_max_contacts_reported") = _GODOT_body_get_max_contacts_reported;
	/**
	Returns the maximum contacts that can be reported. See $(D bodySetMaxContactsReported).
	*/
	long bodyGetMaxContactsReported(in RID _body) const
	{
		_GODOT_body_get_max_contacts_reported.bind("Physics2DServer", "body_get_max_contacts_reported");
		return ptrcall!(long)(_GODOT_body_get_max_contacts_reported, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_body_set_omit_force_integration;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_omit_force_integration") = _GODOT_body_set_omit_force_integration;
	/**
	Sets whether a body uses a callback function to calculate its own physics (see $(D bodySetForceIntegrationCallback)).
	*/
	void bodySetOmitForceIntegration(in RID _body, in bool enable)
	{
		_GODOT_body_set_omit_force_integration.bind("Physics2DServer", "body_set_omit_force_integration");
		ptrcall!(void)(_GODOT_body_set_omit_force_integration, _godot_object, _body, enable);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_body_is_omitting_force_integration;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_is_omitting_force_integration") = _GODOT_body_is_omitting_force_integration;
	/**
	Returns whether a body uses a callback function to calculate its own physics (see $(D bodySetForceIntegrationCallback)).
	*/
	bool bodyIsOmittingForceIntegration(in RID _body) const
	{
		_GODOT_body_is_omitting_force_integration.bind("Physics2DServer", "body_is_omitting_force_integration");
		return ptrcall!(bool)(_GODOT_body_is_omitting_force_integration, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, GodotObject, String, Variant) _GODOT_body_set_force_integration_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_set_force_integration_callback") = _GODOT_body_set_force_integration_callback;
	/**
	Sets the function used to calculate physics for an object, if that object allows it (see $(D bodySetOmitForceIntegration)).
	*/
	void bodySetForceIntegrationCallback(StringArg2, VariantArg3)(in RID _body, GodotObject receiver, in StringArg2 method, in VariantArg3 userdata = Variant.nil)
	{
		_GODOT_body_set_force_integration_callback.bind("Physics2DServer", "body_set_force_integration_callback");
		ptrcall!(void)(_GODOT_body_set_force_integration_callback, _godot_object, _body, receiver, method, userdata);
	}
	package(godot) static GodotMethod!(bool, RID, Transform2D, Vector2, double, Physics2DTestMotionResult) _GODOT_body_test_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_test_motion") = _GODOT_body_test_motion;
	/**
	Returns whether a body can move from a given point in a given direction. Apart from the boolean return value, a $(D Physics2DTestMotionResult) can be passed to return additional information in.
	*/
	bool bodyTestMotion(in RID _body, in Transform2D from, in Vector2 motion, in double margin = 0.08, Physics2DTestMotionResult result = Physics2DTestMotionResult.init)
	{
		_GODOT_body_test_motion.bind("Physics2DServer", "body_test_motion");
		return ptrcall!(bool)(_GODOT_body_test_motion, _godot_object, _body, from, motion, margin, result);
	}
	package(godot) static GodotMethod!(Physics2DDirectBodyState, RID) _GODOT_body_get_direct_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "body_get_direct_state") = _GODOT_body_get_direct_state;
	/**
	Returns the $(D Physics2DDirectBodyState) of the body.
	*/
	Physics2DDirectBodyState bodyGetDirectState(in RID _body)
	{
		_GODOT_body_get_direct_state.bind("Physics2DServer", "body_get_direct_state");
		return ptrcall!(Physics2DDirectBodyState)(_GODOT_body_get_direct_state, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_set_param") = _GODOT_joint_set_param;
	/**
	Sets a joint parameter. Parameters are explained in the JOINT_PARAM* constants.
	*/
	void jointSetParam(in RID joint, in long param, in double value)
	{
		_GODOT_joint_set_param.bind("Physics2DServer", "joint_set_param");
		ptrcall!(void)(_GODOT_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(double, RID, long) _GODOT_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_get_param") = _GODOT_joint_get_param;
	/**
	Returns the value of a joint parameter.
	*/
	double jointGetParam(in RID joint, in long param) const
	{
		_GODOT_joint_get_param.bind("Physics2DServer", "joint_get_param");
		return ptrcall!(double)(_GODOT_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(RID, Vector2, RID, RID) _GODOT_pin_joint_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "pin_joint_create") = _GODOT_pin_joint_create;
	/**
	Creates a pin joint between two bodies. If not specified, the second body is assumed to be the joint itself.
	*/
	RID pinJointCreate(in Vector2 anchor, in RID body_a, in RID body_b = RID.init)
	{
		_GODOT_pin_joint_create.bind("Physics2DServer", "pin_joint_create");
		return ptrcall!(RID)(_GODOT_pin_joint_create, _godot_object, anchor, body_a, body_b);
	}
	package(godot) static GodotMethod!(RID, Vector2, Vector2, Vector2, RID, RID) _GODOT_groove_joint_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "groove_joint_create") = _GODOT_groove_joint_create;
	/**
	Creates a groove joint between two bodies. If not specified, the bodyies are assumed to be the joint itself.
	*/
	RID grooveJointCreate(in Vector2 groove1_a, in Vector2 groove2_a, in Vector2 anchor_b, in RID body_a = RID.init, in RID body_b = RID.init)
	{
		_GODOT_groove_joint_create.bind("Physics2DServer", "groove_joint_create");
		return ptrcall!(RID)(_GODOT_groove_joint_create, _godot_object, groove1_a, groove2_a, anchor_b, body_a, body_b);
	}
	package(godot) static GodotMethod!(RID, Vector2, Vector2, RID, RID) _GODOT_damped_spring_joint_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "damped_spring_joint_create") = _GODOT_damped_spring_joint_create;
	/**
	Creates a damped spring joint between two bodies. If not specified, the second body is assumed to be the joint itself.
	*/
	RID dampedSpringJointCreate(in Vector2 anchor_a, in Vector2 anchor_b, in RID body_a, in RID body_b = RID.init)
	{
		_GODOT_damped_spring_joint_create.bind("Physics2DServer", "damped_spring_joint_create");
		return ptrcall!(RID)(_GODOT_damped_spring_joint_create, _godot_object, anchor_a, anchor_b, body_a, body_b);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_damped_string_joint_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "damped_string_joint_set_param") = _GODOT_damped_string_joint_set_param;
	/**
	Sets a damped spring joint parameter. Parameters are explained in the DAMPED_STRING* constants.
	*/
	void dampedStringJointSetParam(in RID joint, in long param, in double value)
	{
		_GODOT_damped_string_joint_set_param.bind("Physics2DServer", "damped_string_joint_set_param");
		ptrcall!(void)(_GODOT_damped_string_joint_set_param, _godot_object, joint, param, value);
	}
	package(godot) static GodotMethod!(double, RID, long) _GODOT_damped_string_joint_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "damped_string_joint_get_param") = _GODOT_damped_string_joint_get_param;
	/**
	Returns the value of a damped spring joint parameter.
	*/
	double dampedStringJointGetParam(in RID joint, in long param) const
	{
		_GODOT_damped_string_joint_get_param.bind("Physics2DServer", "damped_string_joint_get_param");
		return ptrcall!(double)(_GODOT_damped_string_joint_get_param, _godot_object, joint, param);
	}
	package(godot) static GodotMethod!(Physics2DServer.JointType, RID) _GODOT_joint_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "joint_get_type") = _GODOT_joint_get_type;
	/**
	Returns the type of a joint (see JOINT_* constants).
	*/
	Physics2DServer.JointType jointGetType(in RID joint) const
	{
		_GODOT_joint_get_type.bind("Physics2DServer", "joint_get_type");
		return ptrcall!(Physics2DServer.JointType)(_GODOT_joint_get_type, _godot_object, joint);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_free_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "free_rid") = _GODOT_free_rid;
	/**
	Destroys any of the objects created by Physics2DServer. If the $(D RID) passed is not one of the objects that can be created by Physics2DServer, an error will be sent to the console.
	*/
	void freeRid(in RID rid)
	{
		_GODOT_free_rid.bind("Physics2DServer", "free_rid");
		ptrcall!(void)(_GODOT_free_rid, _godot_object, rid);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_active") = _GODOT_set_active;
	/**
	Activates or deactivates the 2D physics engine.
	*/
	void setActive(in bool active)
	{
		_GODOT_set_active.bind("Physics2DServer", "set_active");
		ptrcall!(void)(_GODOT_set_active, _godot_object, active);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_process_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_process_info") = _GODOT_get_process_info;
	/**
	Returns information about the current state of the 2D physics engine. The states are listed under the INFO_* constants.
	*/
	long getProcessInfo(in long process_info)
	{
		_GODOT_get_process_info.bind("Physics2DServer", "get_process_info");
		return ptrcall!(long)(_GODOT_get_process_info, _godot_object, process_info);
	}
}
/// Returns: the Physics2DServerSingleton
@property @nogc nothrow pragma(inline, true)
Physics2DServerSingleton Physics2DServer()
{
	return Physics2DServerSingleton._GODOT_singleton();
}
