/**
Kinematic body 3D node.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.kinematicbody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.physicsbody;
import godot.kinematiccollision;
import godot.collisionobject;
import godot.spatial;
import godot.node;
/**
Kinematic body 3D node.

Kinematic bodies are special types of bodies that are meant to be user-controlled. They are not affected by physics at all (to other types of bodies, such a character or a rigid body, these are the same as a static body). They have however, two main uses:
Simulated Motion: When these bodies are moved manually, either from code or from an AnimationPlayer (with process mode set to fixed), the physics will automatically compute an estimate of their linear and angular velocity. This makes them very useful for moving platforms or other AnimationPlayer-controlled objects (like a door, a bridge that opens, etc).
Kinematic Characters: KinematicBody also has an API for moving objects (the $(D moveAndCollide) and $(D moveAndSlide) methods) while performing collision tests. This makes them really useful to implement characters that collide against a world, but that don't require advanced physics.
*/
@GodotBaseClass struct KinematicBody
{
	enum string _GODOT_internal_name = "KinematicBody";
public:
@nogc nothrow:
	union { godot_object _godot_object; PhysicsBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("move_and_collide") GodotMethod!(KinematicCollision, Vector3, bool, bool, bool) moveAndCollide;
		@GodotName("move_and_slide") GodotMethod!(Vector3, Vector3, Vector3, bool, long, double, bool) moveAndSlide;
		@GodotName("move_and_slide_with_snap") GodotMethod!(Vector3, Vector3, Vector3, Vector3, bool, long, double, bool) moveAndSlideWithSnap;
		@GodotName("test_move") GodotMethod!(bool, Transform, Vector3, bool) testMove;
		@GodotName("is_on_floor") GodotMethod!(bool) isOnFloor;
		@GodotName("is_on_ceiling") GodotMethod!(bool) isOnCeiling;
		@GodotName("is_on_wall") GodotMethod!(bool) isOnWall;
		@GodotName("get_floor_velocity") GodotMethod!(Vector3) getFloorVelocity;
		@GodotName("set_axis_lock") GodotMethod!(void, long, bool) setAxisLock;
		@GodotName("get_axis_lock") GodotMethod!(bool, long) getAxisLock;
		@GodotName("set_safe_margin") GodotMethod!(void, double) setSafeMargin;
		@GodotName("get_safe_margin") GodotMethod!(double) getSafeMargin;
		@GodotName("get_slide_count") GodotMethod!(long) getSlideCount;
		@GodotName("get_slide_collision") GodotMethod!(KinematicCollision, long) getSlideCollision;
	}
	bool opEquals(in KinematicBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	KinematicBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static KinematicBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("KinematicBody");
		if(constructor is null) return typeof(this).init;
		return cast(KinematicBody)(constructor());
	}
	@disable new(size_t s);
	/**
	Moves the body along the vector `rel_vec`. The body will stop if it collides. Returns a $(D KinematicCollision), which contains information about the collision.
	If `test_only` is `true`, the body does not move but the would-be collision information is given.
	*/
	Ref!KinematicCollision moveAndCollide(in Vector3 rel_vec, in bool infinite_inertia = true, in bool exclude_raycast_shapes = true, in bool test_only = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(KinematicCollision)(_classBinding.moveAndCollide, _godot_object, rel_vec, infinite_inertia, exclude_raycast_shapes, test_only);
	}
	/**
	Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a $(D KinematicBody) or $(D RigidBody), it will also be affected by the motion of the other body. You can use this to make moving or rotating platforms, or to make nodes push other nodes.
	`linear_velocity` is the velocity vector (typically meters per second). Unlike in $(D moveAndCollide), you should $(I not) multiply it by `delta` — the physics engine handles applying the velocity.
	`floor_normal` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector3(0, 0, 0)`, everything is considered a wall. This is useful for topdown games.
	If `stop_on_slope` is `true`, body will not slide on slopes if you include gravity in `linear_velocity`.
	If the body collides, it will change direction a maximum of `max_slides` times before it stops.
	`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
	If `infinite_inertia` is `true`, body will be able to push $(D RigidBody) nodes, but it won't also detect any collisions with them. If `false` it will interact with $(D RigidBody) nodes like with $(D StaticBody).
	Returns the `linear_velocity` vector, rotated and/or scaled if a slide collision occurred. To get detailed information about collisions that occurred, use $(D getSlideCollision).
	*/
	Vector3 moveAndSlide(in Vector3 linear_velocity, in Vector3 floor_normal = Vector3(0, 0, 0), in bool stop_on_slope = false, in long max_slides = 4, in double floor_max_angle = 0.785398, in bool infinite_inertia = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.moveAndSlide, _godot_object, linear_velocity, floor_normal, stop_on_slope, max_slides, floor_max_angle, infinite_inertia);
	}
	/**
	Moves the body while keeping it attached to slopes. Similar to $(D moveAndSlide).
	As long as the `snap` vector is in contact with the ground, the body will remain attached to the surface. This means you must disable snap in order to jump, for example. You can do this by setting`snap` to`(0, 0, 0)` or by using $(D moveAndSlide) instead.
	*/
	Vector3 moveAndSlideWithSnap(in Vector3 linear_velocity, in Vector3 snap, in Vector3 floor_normal = Vector3(0, 0, 0), in bool stop_on_slope = false, in long max_slides = 4, in double floor_max_angle = 0.785398, in bool infinite_inertia = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.moveAndSlideWithSnap, _godot_object, linear_velocity, snap, floor_normal, stop_on_slope, max_slides, floor_max_angle, infinite_inertia);
	}
	/**
	Checks for collisions without moving the body. Virtually sets the node's position, scale and rotation to that of the given $(D Transform), then tries to move the body along the vector `rel_vec`. Returns `true` if a collision would occur.
	*/
	bool testMove(in Transform from, in Vector3 rel_vec, in bool infinite_inertia = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.testMove, _godot_object, from, rel_vec, infinite_inertia);
	}
	/**
	Returns `true` if the body is on the floor. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnFloor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isOnFloor, _godot_object);
	}
	/**
	Returns `true` if the body is on the ceiling. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnCeiling() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isOnCeiling, _godot_object);
	}
	/**
	Returns `true` if the body is on a wall. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnWall() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isOnWall, _godot_object);
	}
	/**
	Returns the velocity of the floor. Only updates when calling $(D moveAndSlide).
	*/
	Vector3 getFloorVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getFloorVelocity, _godot_object);
	}
	/**
	
	*/
	void setAxisLock(in long axis, in bool lock)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAxisLock, _godot_object, axis, lock);
	}
	/**
	
	*/
	bool getAxisLock(in long axis) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getAxisLock, _godot_object, axis);
	}
	/**
	
	*/
	void setSafeMargin(in double pixels)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSafeMargin, _godot_object, pixels);
	}
	/**
	
	*/
	double getSafeMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSafeMargin, _godot_object);
	}
	/**
	Returns the number of times the body collided and changed direction during the last call to $(D moveAndSlide).
	*/
	long getSlideCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSlideCount, _godot_object);
	}
	/**
	Returns a $(D KinematicCollision), which contains information about a collision that occurred during the last $(D moveAndSlide) call. Since the body can collide several times in a single call to $(D moveAndSlide), you must specify the index of the collision in the range 0 to ($(D getSlideCount) - 1).
	*/
	Ref!KinematicCollision getSlideCollision(in long slide_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(KinematicCollision)(_classBinding.getSlideCollision, _godot_object, slide_idx);
	}
	/**
	Lock the body's movement in the x-axis.
	*/
	@property bool moveLockX()
	{
		return getAxisLock(1);
	}
	/// ditto
	@property void moveLockX(bool v)
	{
		setAxisLock(1, v);
	}
	/**
	Lock the body's movement in the y-axis.
	*/
	@property bool moveLockY()
	{
		return getAxisLock(2);
	}
	/// ditto
	@property void moveLockY(bool v)
	{
		setAxisLock(2, v);
	}
	/**
	Lock the body's movement in the z-axis.
	*/
	@property bool moveLockZ()
	{
		return getAxisLock(4);
	}
	/// ditto
	@property void moveLockZ(bool v)
	{
		setAxisLock(4, v);
	}
	/**
	If the body is at least this close to another body, this body will consider them to be colliding.
	*/
	@property double collisionSafeMargin()
	{
		return getSafeMargin();
	}
	/// ditto
	@property void collisionSafeMargin(double v)
	{
		setSafeMargin(v);
	}
}
