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

Kinematic bodies are special types of bodies that are meant to be user-controlled. They are not affected by physics at all; to other types of bodies, such as a character or a rigid body, these are the same as a static body. However, they have two main uses:
$(B Simulated motion:) When these bodies are moved manually, either from code or from an $(D AnimationPlayer) (with $(D AnimationPlayer.playbackProcessMode) set to "physics"), the physics will automatically compute an estimate of their linear and angular velocity. This makes them very useful for moving platforms or other AnimationPlayer-controlled objects (like a door, a bridge that opens, etc).
$(B Kinematic characters:) KinematicBody2D also has an API for moving objects (the $(D moveAndCollide) and $(D moveAndSlide) methods) while performing collision tests. This makes them really useful to implement characters that collide against a world, but that don't require advanced physics.
*/
@GodotBaseClass struct KinematicBody2D
{
	package(godot) enum string _GODOT_internal_name = "KinematicBody2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PhysicsBody2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_direct_state_changed") GodotMethod!(void, GodotObject) _directStateChanged;
		@GodotName("get_floor_normal") GodotMethod!(Vector2) getFloorNormal;
		@GodotName("get_floor_velocity") GodotMethod!(Vector2) getFloorVelocity;
		@GodotName("get_safe_margin") GodotMethod!(double) getSafeMargin;
		@GodotName("get_slide_collision") GodotMethod!(KinematicCollision2D, long) getSlideCollision;
		@GodotName("get_slide_count") GodotMethod!(long) getSlideCount;
		@GodotName("is_on_ceiling") GodotMethod!(bool) isOnCeiling;
		@GodotName("is_on_floor") GodotMethod!(bool) isOnFloor;
		@GodotName("is_on_wall") GodotMethod!(bool) isOnWall;
		@GodotName("is_sync_to_physics_enabled") GodotMethod!(bool) isSyncToPhysicsEnabled;
		@GodotName("move_and_collide") GodotMethod!(KinematicCollision2D, Vector2, bool, bool, bool) moveAndCollide;
		@GodotName("move_and_slide") GodotMethod!(Vector2, Vector2, Vector2, bool, long, double, bool) moveAndSlide;
		@GodotName("move_and_slide_with_snap") GodotMethod!(Vector2, Vector2, Vector2, Vector2, bool, long, double, bool) moveAndSlideWithSnap;
		@GodotName("set_safe_margin") GodotMethod!(void, double) setSafeMargin;
		@GodotName("set_sync_to_physics") GodotMethod!(void, bool) setSyncToPhysics;
		@GodotName("test_move") GodotMethod!(bool, Transform2D, Vector2, bool) testMove;
	}
	/// 
	pragma(inline, true) bool opEquals(in KinematicBody2D other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) KinematicBody2D opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of KinematicBody2D.
	/// Note: use `memnew!KinematicBody2D` instead.
	static KinematicBody2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("KinematicBody2D");
		if(constructor is null) return typeof(this).init;
		return cast(KinematicBody2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _directStateChanged(GodotObject arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_direct_state_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns the surface normal of the floor at the last collision point. Only valid after calling $(D moveAndSlide) or $(D moveAndSlideWithSnap) and when $(D isOnFloor) returns `true`.
	*/
	Vector2 getFloorNormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getFloorNormal, _godot_object);
	}
	/**
	Returns the linear velocity of the floor at the last collision point. Only valid after calling $(D moveAndSlide) or $(D moveAndSlideWithSnap) and when $(D isOnFloor) returns `true`.
	*/
	Vector2 getFloorVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getFloorVelocity, _godot_object);
	}
	/**
	
	*/
	double getSafeMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSafeMargin, _godot_object);
	}
	/**
	Returns a $(D KinematicCollision2D), which contains information about a collision that occurred during the last $(D moveAndSlide) call. Since the body can collide several times in a single call to $(D moveAndSlide), you must specify the index of the collision in the range 0 to ($(D getSlideCount) - 1).
	$(B Example usage:)
	
	
	for i in get_slide_count():
	    var collision = get_slide_collision(i)
	    print("Collided with: ", collision.collider.name)
	
	
	*/
	Ref!KinematicCollision2D getSlideCollision(in long slide_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(KinematicCollision2D)(GDNativeClassBinding.getSlideCollision, _godot_object, slide_idx);
	}
	/**
	Returns the number of times the body collided and changed direction during the last call to $(D moveAndSlide).
	*/
	long getSlideCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSlideCount, _godot_object);
	}
	/**
	Returns `true` if the body is on the ceiling. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnCeiling() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOnCeiling, _godot_object);
	}
	/**
	Returns `true` if the body is on the floor. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnFloor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOnFloor, _godot_object);
	}
	/**
	Returns `true` if the body is on a wall. Only updates when calling $(D moveAndSlide).
	*/
	bool isOnWall() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOnWall, _godot_object);
	}
	/**
	
	*/
	bool isSyncToPhysicsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSyncToPhysicsEnabled, _godot_object);
	}
	/**
	Moves the body along the vector `rel_vec`. The body will stop if it collides. Returns a $(D KinematicCollision2D), which contains information about the collision.
	If `test_only` is `true`, the body does not move but the would-be collision information is given.
	*/
	Ref!KinematicCollision2D moveAndCollide(in Vector2 rel_vec, in bool infinite_inertia = true, in bool exclude_raycast_shapes = true, in bool test_only = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(KinematicCollision2D)(GDNativeClassBinding.moveAndCollide, _godot_object, rel_vec, infinite_inertia, exclude_raycast_shapes, test_only);
	}
	/**
	Moves the body along a vector. If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a $(D KinematicBody2D) or $(D RigidBody2D), it will also be affected by the motion of the other body. You can use this to make moving or rotating platforms, or to make nodes push other nodes.
	This method should be used in $(D Node._physicsProcess) (or in a method called by $(D Node._physicsProcess)), as it uses the physics step's `delta` value automatically in calculations. Otherwise, the simulation will run at an incorrect speed.
	`linear_velocity` is the velocity vector in pixels per second. Unlike in $(D moveAndCollide), you should $(I not) multiply it by `delta` — the physics engine handles applying the velocity. 
	`up_direction` is the up direction, used to determine what is a wall and what is a floor or a ceiling. If set to the default value of `Vector2(0, 0)`, everything is considered a wall. This is useful for topdown games.
	If `stop_on_slope` is `true`, body will not slide on slopes when you include gravity in `linear_velocity` and the body is standing still.
	If the body collides, it will change direction a maximum of `max_slides` times before it stops.
	`floor_max_angle` is the maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall. The default value equals 45 degrees.
	If `infinite_inertia` is `true`, body will be able to push $(D RigidBody2D) nodes, but it won't also detect any collisions with them. If `false`, it will interact with $(D RigidBody2D) nodes like with $(D StaticBody2D).
	Returns the `linear_velocity` vector, rotated and/or scaled if a slide collision occurred. To get detailed information about collisions that occurred, use $(D getSlideCollision).
	*/
	Vector2 moveAndSlide(in Vector2 linear_velocity, in Vector2 up_direction = Vector2(0, 0), in bool stop_on_slope = false, in long max_slides = 4, in double floor_max_angle = 0.785398, in bool infinite_inertia = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.moveAndSlide, _godot_object, linear_velocity, up_direction, stop_on_slope, max_slides, floor_max_angle, infinite_inertia);
	}
	/**
	Moves the body while keeping it attached to slopes. Similar to $(D moveAndSlide).
	As long as the `snap` vector is in contact with the ground, the body will remain attached to the surface. This means you must disable snap in order to jump, for example. You can do this by setting `snap` to `(0, 0)` or by using $(D moveAndSlide) instead.
	*/
	Vector2 moveAndSlideWithSnap(in Vector2 linear_velocity, in Vector2 snap, in Vector2 up_direction = Vector2(0, 0), in bool stop_on_slope = false, in long max_slides = 4, in double floor_max_angle = 0.785398, in bool infinite_inertia = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.moveAndSlideWithSnap, _godot_object, linear_velocity, snap, up_direction, stop_on_slope, max_slides, floor_max_angle, infinite_inertia);
	}
	/**
	
	*/
	void setSafeMargin(in double pixels)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSafeMargin, _godot_object, pixels);
	}
	/**
	
	*/
	void setSyncToPhysics(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSyncToPhysics, _godot_object, enable);
	}
	/**
	Checks for collisions without moving the body. Virtually sets the node's position, scale and rotation to that of the given $(D Transform2D), then tries to move the body along the vector `rel_vec`. Returns `true` if a collision would occur.
	*/
	bool testMove(in Transform2D from, in Vector2 rel_vec, in bool infinite_inertia = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.testMove, _godot_object, from, rel_vec, infinite_inertia);
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
	If `true`, the body's movement will be synchronized to the physics frame. This is useful when animating movement via $(D AnimationPlayer), for example on moving platforms. Do $(B not) use together with $(D moveAndSlide) or $(D moveAndCollide) functions.
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
