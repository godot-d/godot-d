/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spatialvelocitytracker;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**

*/
@GodotBaseClass struct SpatialVelocityTracker
{
	enum string _GODOT_internal_name = "SpatialVelocityTracker";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_track_physics_step") GodotMethod!(void, bool) setTrackPhysicsStep;
		@GodotName("is_tracking_physics_step") GodotMethod!(bool) isTrackingPhysicsStep;
		@GodotName("update_position") GodotMethod!(void, Vector3) updatePosition;
		@GodotName("get_tracked_linear_velocity") GodotMethod!(Vector3) getTrackedLinearVelocity;
		@GodotName("reset") GodotMethod!(void, Vector3) reset;
	}
	bool opEquals(in SpatialVelocityTracker other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpatialVelocityTracker opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SpatialVelocityTracker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpatialVelocityTracker");
		if(constructor is null) return typeof(this).init;
		return cast(SpatialVelocityTracker)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setTrackPhysicsStep(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTrackPhysicsStep, _godot_object, enable);
	}
	/**
	
	*/
	bool isTrackingPhysicsStep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isTrackingPhysicsStep, _godot_object);
	}
	/**
	
	*/
	void updatePosition(in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.updatePosition, _godot_object, position);
	}
	/**
	
	*/
	Vector3 getTrackedLinearVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getTrackedLinearVelocity, _godot_object);
	}
	/**
	
	*/
	void reset(in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reset, _godot_object, position);
	}
	/**
	
	*/
	@property bool trackPhysicsStep()
	{
		return isTrackingPhysicsStep();
	}
	/// ditto
	@property void trackPhysicsStep(bool v)
	{
		setTrackPhysicsStep(v);
	}
}
