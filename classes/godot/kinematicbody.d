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
/**
Kinematic body 3D node.

Kinematic bodies are special types of bodies that are meant to be user-controlled. They are not affected by physics at all (to other types of bodies, such a character or a rigid body, these are the same as a static body). They have however, two main uses:
Simulated Motion: When these bodies are moved manually, either from code or from an AnimationPlayer (with process mode set to fixed), the physics will automatically compute an estimate of their linear and angular velocity. This makes them very useful for moving platforms or other AnimationPlayer-controlled objects (like a door, a bridge that opens, etc).
Kinematic Characters: KinematicBody also has an API for moving objects (the $(D moveAndCollide) and $(D moveAndSlide) methods) while performing collision tests. This makes them really useful to implement characters that collide against a world, but that don't require advanced physics.
*/
@GodotBaseClass struct KinematicBody
{
	static immutable string _GODOT_internal_name = "KinematicBody";
public:
@nogc nothrow:
	union { godot_object _godot_object; PhysicsBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(KinematicCollision, Vector3, bool) _GODOT_move_and_collide;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_and_collide") = _GODOT_move_and_collide;
	/**
	Moves the body along the vector `rel_vec`. The body will stop if it collides. Returns a $(D KinematicCollision), which contains information about the collision.
	*/
	Ref!KinematicCollision moveAndCollide(in Vector3 rel_vec, in bool infinite_inertia = true)
	{
		_GODOT_move_and_collide.bind("KinematicBody", "move_and_collide");
		return ptrcall!(KinematicCollision)(_GODOT_move_and_collide, _godot_object, rel_vec, infinite_inertia);
	}
	package(godot) static GodotMethod!(Vector3, Vector3, Vector3, bool, double, long, double) _GODOT_move_and_slide;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_and_slide") = _GODOT_move_and_slide;
	/**
	Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a `KinematicBody` or $(D RigidBody), it will also be affected by the motion of the other body. You can use this to make moving or rotating platforms, or to make nodes push other nodes.
	`linear_velocity` is a value in pixels per second. Unlike in for example $(D moveAndCollide), you should $(I not) multiply it with `delta` — this is done by the method.
	`floor_normal` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector3(0, 0, 0)`, everything is considered a wall. This is useful for topdown games.
	If the body is standing on a slope and the horizontal speed (relative to the floor's speed) goes below `slope_stop_min_velocity`, the body will stop completely. This prevents the body from sliding down slopes when you include gravity in `linear_velocity`. When set to lower values, the body will not be able to stand still on steep slopes.
	If the body collides, it will change direction a maximum of `max_slides` times before it stops.
	`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
	Returns the movement that remained when the body stopped. To get more detailed information about collisions that occurred, use $(D getSlideCollision).
	*/
	Vector3 moveAndSlide(in Vector3 linear_velocity, in Vector3 floor_normal = Vector3(0, 0, 0), in bool infinite_inertia = true, in double slope_stop_min_velocity = 0.05, in long max_slides = 4, in double floor_max_angle = 0.785398)
	{
		_GODOT_move_and_slide.bind("KinematicBody", "move_and_slide");
		return ptrcall!(Vector3)(_GODOT_move_and_slide, _godot_object, linear_velocity, floor_normal, infinite_inertia, slope_stop_min_velocity, max_slides, floor_max_angle);
	}
	package(godot) static GodotMethod!(bool, Transform, Vector3, bool) _GODOT_test_move;
	package(godot) alias _GODOT_methodBindInfo(string name : "test_move") = _GODOT_test_move;
	/**
	Checks for collisions without moving the body. Virtually sets the node's position, scale and rotation to that of the given $(D Transform), then tries to move the body along the vector `rel_vec`. Returns `true` if a collision would occur.
	*/
	bool testMove(in Transform from, in Vector3 rel_vec, in bool infinite_inertia)
	{
		_GODOT_test_move.bind("KinematicBody", "test_move");
		return ptrcall!(bool)(_GODOT_test_move, _godot_object, from, rel_vec, infinite_inertia);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_floor;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_floor") = _GODOT_is_on_floor;
	/**
	Returns `true` if the body is on the floor. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnFloor() const
	{
		_GODOT_is_on_floor.bind("KinematicBody", "is_on_floor");
		return ptrcall!(bool)(_GODOT_is_on_floor, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_ceiling;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_ceiling") = _GODOT_is_on_ceiling;
	/**
	Returns `true` if the body is on the ceiling. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnCeiling() const
	{
		_GODOT_is_on_ceiling.bind("KinematicBody", "is_on_ceiling");
		return ptrcall!(bool)(_GODOT_is_on_ceiling, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_wall;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_wall") = _GODOT_is_on_wall;
	/**
	Returns `true` if the body is on a wall. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnWall() const
	{
		_GODOT_is_on_wall.bind("KinematicBody", "is_on_wall");
		return ptrcall!(bool)(_GODOT_is_on_wall, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_floor_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_floor_velocity") = _GODOT_get_floor_velocity;
	/**
	Returns the velocity of the floor. Only updates when calling $(D moveAndSlide).
	*/
	Vector3 getFloorVelocity() const
	{
		_GODOT_get_floor_velocity.bind("KinematicBody", "get_floor_velocity");
		return ptrcall!(Vector3)(_GODOT_get_floor_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_axis_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis_lock") = _GODOT_set_axis_lock;
	/**
	
	*/
	void setAxisLock(in long axis, in bool lock)
	{
		_GODOT_set_axis_lock.bind("KinematicBody", "set_axis_lock");
		ptrcall!(void)(_GODOT_set_axis_lock, _godot_object, axis, lock);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_axis_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_axis_lock") = _GODOT_get_axis_lock;
	/**
	
	*/
	bool getAxisLock(in long axis) const
	{
		_GODOT_get_axis_lock.bind("KinematicBody", "get_axis_lock");
		return ptrcall!(bool)(_GODOT_get_axis_lock, _godot_object, axis);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_safe_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_safe_margin") = _GODOT_set_safe_margin;
	/**
	
	*/
	void setSafeMargin(in double pixels)
	{
		_GODOT_set_safe_margin.bind("KinematicBody", "set_safe_margin");
		ptrcall!(void)(_GODOT_set_safe_margin, _godot_object, pixels);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_safe_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_safe_margin") = _GODOT_get_safe_margin;
	/**
	
	*/
	double getSafeMargin() const
	{
		_GODOT_get_safe_margin.bind("KinematicBody", "get_safe_margin");
		return ptrcall!(double)(_GODOT_get_safe_margin, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_slide_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slide_count") = _GODOT_get_slide_count;
	/**
	Returns the number of times the body collided and changed direction during the last call to $(D moveAndSlide).
	*/
	long getSlideCount() const
	{
		_GODOT_get_slide_count.bind("KinematicBody", "get_slide_count");
		return ptrcall!(long)(_GODOT_get_slide_count, _godot_object);
	}
	package(godot) static GodotMethod!(KinematicCollision, long) _GODOT_get_slide_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slide_collision") = _GODOT_get_slide_collision;
	/**
	Returns a $(D KinematicCollision), which contains information about a collision that occurred during the last $(D moveAndSlide) call. Since the body can collide several times in a single call to $(D moveAndSlide), you must specify the index of the collision in the range 0 to ($(D getSlideCount) - 1).
	*/
	Ref!KinematicCollision getSlideCollision(in long slide_idx)
	{
		_GODOT_get_slide_collision.bind("KinematicBody", "get_slide_collision");
		return ptrcall!(KinematicCollision)(_GODOT_get_slide_collision, _godot_object, slide_idx);
	}
	/**
	
	*/
	@property bool axisLockLinearX()
	{
		return getAxisLock(1);
	}
	/// ditto
	@property void axisLockLinearX(bool v)
	{
		setAxisLock(1, v);
	}
	/**
	
	*/
	@property bool axisLockLinearY()
	{
		return getAxisLock(2);
	}
	/// ditto
	@property void axisLockLinearY(bool v)
	{
		setAxisLock(2, v);
	}
	/**
	
	*/
	@property bool axisLockLinearZ()
	{
		return getAxisLock(4);
	}
	/// ditto
	@property void axisLockLinearZ(bool v)
	{
		setAxisLock(4, v);
	}
	/**
	
	*/
	@property bool axisLockAngularX()
	{
		return getAxisLock(8);
	}
	/// ditto
	@property void axisLockAngularX(bool v)
	{
		setAxisLock(8, v);
	}
	/**
	
	*/
	@property bool axisLockAngularY()
	{
		return getAxisLock(16);
	}
	/// ditto
	@property void axisLockAngularY(bool v)
	{
		setAxisLock(16, v);
	}
	/**
	
	*/
	@property bool axisLockAngularZ()
	{
		return getAxisLock(32);
	}
	/// ditto
	@property void axisLockAngularZ(bool v)
	{
		setAxisLock(32, v);
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
