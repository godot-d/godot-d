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
	static immutable string _GODOT_internal_name = "SpatialVelocityTracker";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, bool) _GODOT_set_track_physics_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_track_physics_step") = _GODOT_set_track_physics_step;
	/**
	
	*/
	void setTrackPhysicsStep(in bool enable)
	{
		_GODOT_set_track_physics_step.bind("SpatialVelocityTracker", "set_track_physics_step");
		ptrcall!(void)(_GODOT_set_track_physics_step, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_tracking_physics_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_tracking_physics_step") = _GODOT_is_tracking_physics_step;
	/**
	
	*/
	bool isTrackingPhysicsStep() const
	{
		_GODOT_is_tracking_physics_step.bind("SpatialVelocityTracker", "is_tracking_physics_step");
		return ptrcall!(bool)(_GODOT_is_tracking_physics_step, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_update_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_position") = _GODOT_update_position;
	/**
	
	*/
	void updatePosition(in Vector3 position)
	{
		_GODOT_update_position.bind("SpatialVelocityTracker", "update_position");
		ptrcall!(void)(_GODOT_update_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_tracked_linear_velocity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tracked_linear_velocity") = _GODOT_get_tracked_linear_velocity;
	/**
	
	*/
	Vector3 getTrackedLinearVelocity() const
	{
		_GODOT_get_tracked_linear_velocity.bind("SpatialVelocityTracker", "get_tracked_linear_velocity");
		return ptrcall!(Vector3)(_GODOT_get_tracked_linear_velocity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_reset;
	package(godot) alias _GODOT_methodBindInfo(string name : "reset") = _GODOT_reset;
	/**
	
	*/
	void reset(in Vector3 position)
	{
		_GODOT_reset.bind("SpatialVelocityTracker", "reset");
		ptrcall!(void)(_GODOT_reset, _godot_object, position);
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
