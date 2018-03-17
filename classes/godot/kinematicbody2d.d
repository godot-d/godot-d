/**
Kinematic body 2D node.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.kinematicbody2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.physicsbody2d;
import godot.kinematiccollision2d;
/**
Kinematic body 2D node.

Kinematic bodies are special types of bodies that are meant to be user-controlled. They are not affected by physics at all (to other types of bodies, such a character or a rigid body, these are the same as a static body). They have however, two main uses:
Simulated Motion: When these bodies are moved manually, either from code or from an AnimationPlayer (with process mode set to fixed), the physics will automatically compute an estimate of their linear and angular velocity. This makes them very useful for moving platforms or other AnimationPlayer-controlled objects (like a door, a bridge that opens, etc).
Kinematic Characters: KinematicBody2D also has an API for moving objects (the $(D moveAndCollide) and $(D moveAndSlide) methods) while performing collision tests. This makes them really useful to implement characters that collide against a world, but that don't require advanced physics.
*/
@GodotBaseClass struct KinematicBody2D
{
	static immutable string _GODOT_internal_name = "KinematicBody2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; PhysicsBody2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in KinematicBody2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	KinematicBody2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static KinematicBody2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("KinematicBody2D");
		if(constructor is null) return typeof(this).init;
		return cast(KinematicBody2D)(constructor());
	}
	package(godot) static GodotMethod!(KinematicCollision2D, Vector2, bool) _GODOT_move_and_collide;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_and_collide") = _GODOT_move_and_collide;
	/**
	Moves the body along the vector `rel_vec`. The body will stop if it collides. Returns a $(D KinematicCollision2D), which contains information about the collision.
	*/
	Ref!KinematicCollision2D moveAndCollide(in Vector2 rel_vec, in bool infinite_inertia = true)
	{
		_GODOT_move_and_collide.bind("KinematicBody2D", "move_and_collide");
		return ptrcall!(KinematicCollision2D)(_GODOT_move_and_collide, _godot_object, rel_vec, infinite_inertia);
	}
	package(godot) static GodotMethod!(Vector2, Vector2, Vector2, bool, double, long, double) _GODOT_move_and_slide;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_and_slide") = _GODOT_move_and_slide;
	/**
	Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a `KinematicBody2D` or $(D RigidBody2D), it will also be affected by the motion of the other body. You can use this to make moving or rotating platforms, or to make nodes push other nodes.
	`linear_velocity` is a value in pixels per second. Unlike in for example $(D moveAndCollide), you should $(I not) multiply it with `delta` — this is done by the method.
	`floor_normal` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector2(0, 0)`, everything is considered a wall. This is useful for topdown games.
	If the body is standing on a slope and the horizontal speed (relative to the floor's speed) goes below `slope_stop_min_velocity`, the body will stop completely. This prevents the body from sliding down slopes when you include gravity in `linear_velocity`. When set to lower values, the body will not be able to stand still on steep slopes.
	If the body collides, it will change direction a maximum of `max_bounces` times before it stops.
	`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
	Returns the movement that remained when the body stopped. To get more detailed information about collisions that occurred, use $(D getSlideCollision).
	*/
	Vector2 moveAndSlide(in Vector2 linear_velocity, in Vector2 floor_normal = Vector2(0, 0), in bool infinite_inertia = true, in double slope_stop_min_velocity = 5, in long max_bounces = 4, in double floor_max_angle = 0.785398)
	{
		_GODOT_move_and_slide.bind("KinematicBody2D", "move_and_slide");
		return ptrcall!(Vector2)(_GODOT_move_and_slide, _godot_object, linear_velocity, floor_normal, infinite_inertia, slope_stop_min_velocity, max_bounces, floor_max_angle);
	}
	package(godot) static GodotMethod!(bool, Transform2D, Vector2, bool) _GODOT_test_move;
	package(godot) alias _GODOT_methodBindInfo(string name : "test_move") = _GODOT_test_move;
	/**
	Checks for collisions without moving the body. Virtually sets the node's position, scale and rotation to that of the given $(D Transform2D), then tries to move the body along the vector `rel_vec`. Returns `true` if a collision would occur.
	*/
	bool testMove(in Transform2D from, in Vector2 rel_vec, in bool infinite_inertia)
	{
		_GODOT_test_move.bind("KinematicBody2D", "test_move");
		return ptrcall!(bool)(_GODOT_test_move, _godot_object, from, rel_vec, infinite_inertia);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_floor;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_floor") = _GODOT_is_on_floor;
	/**
	Returns `true` if the body is on the floor. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnFloor() const
	{
		_GODOT_is_on_floor.bind("KinematicBody2D", "is_on_floor");
		return ptrcall!(bool)(_GODOT_is_on_floor, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_ceiling;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_ceiling") = _GODOT_is_on_ceiling;
	/**
	Returns `true` if the body is on the ceiling. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnCeiling() const
	{
		_GODOT_is_on_ceiling.bind("KinematicBody2D", "is_on_ceiling");
		return ptrcall!(bool)(_GODOT_is_on_ceiling, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_wall;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_wall") = _GODOT_is_on_wall;
	/**
	Returns `true` if the body is on a wall. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnWall() const
	{
		_GODOT_is_on_wall.bind("KinematicBody2D", "is_on_wall");
		return ptrcall!(bool)(_GODOT_is_on_wall, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_floor_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_floor_velocity") = _GODOT_get_floor_velocity;
	/**
	Returns the velocity of the floor. Only updates when calling $(D moveAndSlide).
	*/
	Vector2 getFloorVelocity() const
	{
		_GODOT_get_floor_velocity.bind("KinematicBody2D", "get_floor_velocity");
		return ptrcall!(Vector2)(_GODOT_get_floor_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_safe_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_safe_margin") = _GODOT_set_safe_margin;
	/**
	
	*/
	void setSafeMargin(in double pixels)
	{
		_GODOT_set_safe_margin.bind("KinematicBody2D", "set_safe_margin");
		ptrcall!(void)(_GODOT_set_safe_margin, _godot_object, pixels);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_safe_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_safe_margin") = _GODOT_get_safe_margin;
	/**
	
	*/
	double getSafeMargin() const
	{
		_GODOT_get_safe_margin.bind("KinematicBody2D", "get_safe_margin");
		return ptrcall!(double)(_GODOT_get_safe_margin, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_slide_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slide_count") = _GODOT_get_slide_count;
	/**
	Returns the number of times the body collided and changed direction during the last call to $(D moveAndSlide).
	*/
	long getSlideCount() const
	{
		_GODOT_get_slide_count.bind("KinematicBody2D", "get_slide_count");
		return ptrcall!(long)(_GODOT_get_slide_count, _godot_object);
	}
	package(godot) static GodotMethod!(KinematicCollision2D, long) _GODOT_get_slide_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slide_collision") = _GODOT_get_slide_collision;
	/**
	Returns a $(D KinematicCollision2D), which contains information about a collision that occurred during the last $(D moveAndSlide) call. Since the body can collide several times in a single call to $(D moveAndSlide), you must specify the index of the collision in the range 0 to ($(D getSlideCount) - 1).
	*/
	Ref!KinematicCollision2D getSlideCollision(in long slide_idx)
	{
		_GODOT_get_slide_collision.bind("KinematicBody2D", "get_slide_collision");
		return ptrcall!(KinematicCollision2D)(_GODOT_get_slide_collision, _godot_object, slide_idx);
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
