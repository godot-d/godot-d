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
import godot.collisionobject2d;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**
Kinematic body 2D node.

Kinematic bodies are special types of bodies that are meant to be user-controlled. They are not affected by physics at all (to other types of bodies, such a character or a rigid body, these are the same as a static body). They have however, two main uses:
Simulated Motion: When these bodies are moved manually, either from code or from an AnimationPlayer (with process mode set to fixed), the physics will automatically compute an estimate of their linear and angular velocity. This makes them very useful for moving platforms or other AnimationPlayer-controlled objects (like a door, a bridge that opens, etc).
Kinematic Characters: KinematicBody2D also has an API for moving objects (the $(D moveAndCollide) and $(D moveAndSlide) methods) while performing collision tests. This makes them really useful to implement characters that collide against a world, but that don't require advanced physics.
*/
@GodotBaseClass struct KinematicBody2D
{
	enum string _GODOT_internal_name = "KinematicBody2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; PhysicsBody2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("move_and_collide") GodotMethod!(KinematicCollision2D, Vector2, bool, bool, bool) moveAndCollide;
		@GodotName("move_and_slide") GodotMethod!(Vector2, Vector2, Vector2, bool, bool, long, double) moveAndSlide;
		@GodotName("move_and_slide_with_snap") GodotMethod!(Vector2, Vector2, Vector2, Vector2, bool, bool, long, double) moveAndSlideWithSnap;
		@GodotName("test_move") GodotMethod!(bool, Transform2D, Vector2, bool) testMove;
		@GodotName("is_on_floor") GodotMethod!(bool) isOnFloor;
		@GodotName("is_on_ceiling") GodotMethod!(bool) isOnCeiling;
		@GodotName("is_on_wall") GodotMethod!(bool) isOnWall;
		@GodotName("get_floor_velocity") GodotMethod!(Vector2) getFloorVelocity;
		@GodotName("set_safe_margin") GodotMethod!(void, double) setSafeMargin;
		@GodotName("get_safe_margin") GodotMethod!(double) getSafeMargin;
		@GodotName("get_slide_count") GodotMethod!(long) getSlideCount;
		@GodotName("get_slide_collision") GodotMethod!(KinematicCollision2D, long) getSlideCollision;
		@GodotName("set_sync_to_physics") GodotMethod!(void, bool) setSyncToPhysics;
		@GodotName("is_sync_to_physics_enabled") GodotMethod!(bool) isSyncToPhysicsEnabled;
		@GodotName("_direct_state_changed") GodotMethod!(void, GodotObject) _directStateChanged;
	}
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
	@disable new(size_t s);
	/**
	Moves the body along the vector `rel_vec`. The body will stop if it collides. Returns a $(D KinematicCollision2D), which contains information about the collision.
	*/
	Ref!KinematicCollision2D moveAndCollide(in Vector2 rel_vec, in bool infinite_inertia = true, in bool exclude_raycast_shapes = true, in bool test_only = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(KinematicCollision2D)(_classBinding.moveAndCollide, _godot_object, rel_vec, infinite_inertia, exclude_raycast_shapes, test_only);
	}
	/**
	Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a `KinematicBody2D` or $(D RigidBody2D), it will also be affected by the motion of the other body. You can use this to make moving or rotating platforms, or to make nodes push other nodes.
	`linear_velocity` is a value in pixels per second. Unlike in for example $(D moveAndCollide), you should $(I not) multiply it with `delta` — this is done by the method.
	`floor_normal` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector2(0, 0)`, everything is considered a wall. This is useful for topdown games.
	$(I TODO: Update for stop_on_slope argument.) If the body is standing on a slope and the horizontal speed (relative to the floor's speed) goes below `slope_stop_min_velocity`, the body will stop completely. This prevents the body from sliding down slopes when you include gravity in `linear_velocity`. When set to lower values, the body will not be able to stand still on steep slopes.
	If the body collides, it will change direction a maximum of `max_bounces` times before it stops.
	`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
	Returns the movement that remained when the body stopped. To get more detailed information about collisions that occurred, use $(D getSlideCollision).
	*/
	Vector2 moveAndSlide(in Vector2 linear_velocity, in Vector2 floor_normal = Vector2(0, 0), in bool infinite_inertia = true, in bool stop_on_slope = false, in long max_bounces = 4, in double floor_max_angle = 0.785398)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.moveAndSlide, _godot_object, linear_velocity, floor_normal, infinite_inertia, stop_on_slope, max_bounces, floor_max_angle);
	}
	/**
	Moves the body while keeping it attached to slopes. Similar to $(D moveAndSlide).
	As long as the `snap` vector is in contact with the ground, the body will remain attached to the surface. This means you must disable snap in order to jump, for example. You can do this by setting `snap` to `(0, 0)` or by using $(D moveAndSlide) instead.
	*/
	Vector2 moveAndSlideWithSnap(in Vector2 linear_velocity, in Vector2 snap, in Vector2 floor_normal = Vector2(0, 0), in bool infinite_inertia = true, in bool stop_on_slope = false, in long max_bounces = 4, in double floor_max_angle = 0.785398)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.moveAndSlideWithSnap, _godot_object, linear_velocity, snap, floor_normal, infinite_inertia, stop_on_slope, max_bounces, floor_max_angle);
	}
	/**
	Checks for collisions without moving the body. Virtually sets the node's position, scale and rotation to that of the given $(D Transform2D), then tries to move the body along the vector `rel_vec`. Returns `true` if a collision would occur.
	*/
	bool testMove(in Transform2D from, in Vector2 rel_vec, in bool infinite_inertia)
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
	Vector2 getFloorVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getFloorVelocity, _godot_object);
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
	Returns a $(D KinematicCollision2D), which contains information about a collision that occurred during the last $(D moveAndSlide) call. Since the body can collide several times in a single call to $(D moveAndSlide), you must specify the index of the collision in the range 0 to ($(D getSlideCount) - 1).
	*/
	Ref!KinematicCollision2D getSlideCollision(in long slide_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(KinematicCollision2D)(_classBinding.getSlideCollision, _godot_object, slide_idx);
	}
	/**
	
	*/
	void setSyncToPhysics(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSyncToPhysics, _godot_object, enable);
	}
	/**
	
	*/
	bool isSyncToPhysicsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSyncToPhysicsEnabled, _godot_object);
	}
	/**
	
	*/
	void _directStateChanged(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_direct_state_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	/**
	If `true` the body's movement will be synchronized to the physics frame. This is useful when animating movement via $(D AnimationPlayer), for example on moving platforms.
	*/
	@property bool motionSyncToPhysics()
	{
		return isSyncToPhysicsEnabled();
	}
	/// ditto
	@property void motionSyncToPhysics(bool v)
	{
		setSyncToPhysics(v);
	}
}
