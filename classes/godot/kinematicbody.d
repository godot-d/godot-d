/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.kinematicbody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.physicsbody;
import godot.kinematiccollision;
/**

*/
@GodotBaseClass struct KinematicBody
{
	package(godot) enum string _GODOT_internal_name = "KinematicBody";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PhysicsBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_direct_state_changed") GodotMethod!(void, GodotObject) _directStateChanged;
		@GodotName("get_axis_lock") GodotMethod!(bool, long) getAxisLock;
		@GodotName("get_floor_angle") GodotMethod!(double, Vector3) getFloorAngle;
		@GodotName("get_floor_normal") GodotMethod!(Vector3) getFloorNormal;
		@GodotName("get_floor_velocity") GodotMethod!(Vector3) getFloorVelocity;
		@GodotName("get_last_slide_collision") GodotMethod!(KinematicCollision) getLastSlideCollision;
		@GodotName("get_moving_platform_apply_velocity_on_leave") GodotMethod!(KinematicBody.MovingPlatformApplyVelocityOnLeave) getMovingPlatformApplyVelocityOnLeave;
		@GodotName("get_safe_margin") GodotMethod!(double) getSafeMargin;
		@GodotName("get_slide_collision") GodotMethod!(KinematicCollision, long) getSlideCollision;
		@GodotName("get_slide_count") GodotMethod!(long) getSlideCount;
		@GodotName("is_on_ceiling") GodotMethod!(bool) isOnCeiling;
		@GodotName("is_on_floor") GodotMethod!(bool) isOnFloor;
		@GodotName("is_on_wall") GodotMethod!(bool) isOnWall;
		@GodotName("is_sync_to_physics_enabled") GodotMethod!(bool) isSyncToPhysicsEnabled;
		@GodotName("move_and_collide") GodotMethod!(KinematicCollision, Vector3, bool, bool, bool) moveAndCollide;
		@GodotName("move_and_slide") GodotMethod!(Vector3, Vector3, Vector3, bool, long, double, bool) moveAndSlide;
		@GodotName("move_and_slide_with_snap") GodotMethod!(Vector3, Vector3, Vector3, Vector3, bool, long, double, bool) moveAndSlideWithSnap;
		@GodotName("set_axis_lock") GodotMethod!(void, long, bool) setAxisLock;
		@GodotName("set_moving_platform_apply_velocity_on_leave") GodotMethod!(void, long) setMovingPlatformApplyVelocityOnLeave;
		@GodotName("set_safe_margin") GodotMethod!(void, double) setSafeMargin;
		@GodotName("set_sync_to_physics") GodotMethod!(void, bool) setSyncToPhysics;
		@GodotName("test_move") GodotMethod!(bool, Transform, Vector3, bool) testMove;
	}
	/// 
	pragma(inline, true) bool opEquals(in KinematicBody other) const
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
	/// Construct a new instance of KinematicBody.
	/// Note: use `memnew!KinematicBody` instead.
	static KinematicBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("KinematicBody");
		if(constructor is null) return typeof(this).init;
		return cast(KinematicBody)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum MovingPlatformApplyVelocityOnLeave : int
	{
		/** */
		platformVelOnLeaveAlways = 0,
		/** */
		platformVelOnLeaveUpwardOnly = 1,
		/** */
		platformVelOnLeaveNever = 2,
	}
	/// 
	enum Constants : int
	{
		platformVelOnLeaveAlways = 0,
		platformVelOnLeaveUpwardOnly = 1,
		platformVelOnLeaveNever = 2,
	}
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
	
	*/
	bool getAxisLock(in long axis) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAxisLock, _godot_object, axis);
	}
	/**
	
	*/
	double getFloorAngle(in Vector3 up_direction = Vector3(0, 1, 0)) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFloorAngle, _godot_object, up_direction);
	}
	/**
	
	*/
	Vector3 getFloorNormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getFloorNormal, _godot_object);
	}
	/**
	
	*/
	Vector3 getFloorVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getFloorVelocity, _godot_object);
	}
	/**
	
	*/
	Ref!KinematicCollision getLastSlideCollision()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(KinematicCollision)(GDNativeClassBinding.getLastSlideCollision, _godot_object);
	}
	/**
	
	*/
	KinematicBody.MovingPlatformApplyVelocityOnLeave getMovingPlatformApplyVelocityOnLeave() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(KinematicBody.MovingPlatformApplyVelocityOnLeave)(GDNativeClassBinding.getMovingPlatformApplyVelocityOnLeave, _godot_object);
	}
	/**
	
	*/
	double getSafeMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSafeMargin, _godot_object);
	}
	/**
	
	*/
	Ref!KinematicCollision getSlideCollision(in long slide_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(KinematicCollision)(GDNativeClassBinding.getSlideCollision, _godot_object, slide_idx);
	}
	/**
	
	*/
	long getSlideCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSlideCount, _godot_object);
	}
	/**
	
	*/
	bool isOnCeiling() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOnCeiling, _godot_object);
	}
	/**
	
	*/
	bool isOnFloor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOnFloor, _godot_object);
	}
	/**
	
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
	
	*/
	Ref!KinematicCollision moveAndCollide(in Vector3 rel_vec, in bool infinite_inertia = true, in bool exclude_raycast_shapes = true, in bool test_only = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(KinematicCollision)(GDNativeClassBinding.moveAndCollide, _godot_object, rel_vec, infinite_inertia, exclude_raycast_shapes, test_only);
	}
	/**
	
	*/
	Vector3 moveAndSlide(in Vector3 linear_velocity, in Vector3 up_direction = Vector3(0, 0, 0), in bool stop_on_slope = false, in long max_slides = 4, in double floor_max_angle = 0.785398, in bool infinite_inertia = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.moveAndSlide, _godot_object, linear_velocity, up_direction, stop_on_slope, max_slides, floor_max_angle, infinite_inertia);
	}
	/**
	
	*/
	Vector3 moveAndSlideWithSnap(in Vector3 linear_velocity, in Vector3 snap, in Vector3 up_direction = Vector3(0, 0, 0), in bool stop_on_slope = false, in long max_slides = 4, in double floor_max_angle = 0.785398, in bool infinite_inertia = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.moveAndSlideWithSnap, _godot_object, linear_velocity, snap, up_direction, stop_on_slope, max_slides, floor_max_angle, infinite_inertia);
	}
	/**
	
	*/
	void setAxisLock(in long axis, in bool lock)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAxisLock, _godot_object, axis, lock);
	}
	/**
	
	*/
	void setMovingPlatformApplyVelocityOnLeave(in long on_leave_apply_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMovingPlatformApplyVelocityOnLeave, _godot_object, on_leave_apply_velocity);
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
	
	*/
	bool testMove(in Transform from, in Vector3 rel_vec, in bool infinite_inertia = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.testMove, _godot_object, from, rel_vec, infinite_inertia);
	}
	/**
	
	*/
	@property bool axisLockMotionX()
	{
		return getAxisLock(1);
	}
	/// ditto
	@property void axisLockMotionX(bool v)
	{
		setAxisLock(1, v);
	}
	/**
	
	*/
	@property bool axisLockMotionY()
	{
		return getAxisLock(2);
	}
	/// ditto
	@property void axisLockMotionY(bool v)
	{
		setAxisLock(2, v);
	}
	/**
	
	*/
	@property bool axisLockMotionZ()
	{
		return getAxisLock(4);
	}
	/// ditto
	@property void axisLockMotionZ(bool v)
	{
		setAxisLock(4, v);
	}
	/**
	
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
	/**
	
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
	
	*/
	@property KinematicBody.MovingPlatformApplyVelocityOnLeave movingPlatformApplyVelocityOnLeave()
	{
		return getMovingPlatformApplyVelocityOnLeave();
	}
	/// ditto
	@property void movingPlatformApplyVelocityOnLeave(long v)
	{
		setMovingPlatformApplyVelocityOnLeave(v);
	}
}
