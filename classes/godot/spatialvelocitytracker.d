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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.reference;
/**

*/
@GodotBaseClass struct SpatialVelocityTracker
{
	package(godot) enum string _GODOT_internal_name = "SpatialVelocityTracker";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_tracked_linear_velocity") GodotMethod!(Vector3) getTrackedLinearVelocity;
		@GodotName("is_tracking_physics_step") GodotMethod!(bool) isTrackingPhysicsStep;
		@GodotName("reset") GodotMethod!(void, Vector3) reset;
		@GodotName("set_track_physics_step") GodotMethod!(void, bool) setTrackPhysicsStep;
		@GodotName("update_position") GodotMethod!(void, Vector3) updatePosition;
	}
	/// 
	pragma(inline, true) bool opEquals(in SpatialVelocityTracker other) const
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
	/// Construct a new instance of SpatialVelocityTracker.
	/// Note: use `memnew!SpatialVelocityTracker` instead.
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
	Vector3 getTrackedLinearVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getTrackedLinearVelocity, _godot_object);
	}
	/**
	
	*/
	bool isTrackingPhysicsStep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isTrackingPhysicsStep, _godot_object);
	}
	/**
	
	*/
	void reset(in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reset, _godot_object, position);
	}
	/**
	
	*/
	void setTrackPhysicsStep(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTrackPhysicsStep, _godot_object, enable);
	}
	/**
	
	*/
	void updatePosition(in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updatePosition, _godot_object, position);
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
