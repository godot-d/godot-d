/**
Contains data used to animate everything in the engine.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animation;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
/**
Contains data used to animate everything in the engine.

An Animation resource contains data used to animate everything in the engine. Animations are divided into tracks, and each track must be linked to a node. The state of that node can be changed through time, by adding timed keys (events) to the track.
Animations are just data containers, and must be added to odes such as an $(D AnimationPlayer) or $(D AnimationTreePlayer) to be played back.
*/
@GodotBaseClass struct Animation
{
	static immutable string _GODOT_internal_name = "Animation";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Animation other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Animation opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Animation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Animation");
		if(constructor is null) return typeof(this).init;
		return cast(Animation)(constructor());
	}
	/// 
	enum TrackType : int
	{
		/**
		Value tracks set values in node properties, but only those which can be Interpolated.
		*/
		typeValue = 0,
		/**
		Transform tracks are used to change node local transforms or skeleton pose bones. Transitions are Interpolated.
		*/
		typeTransform = 1,
		/**
		Method tracks call functions with given arguments per key.
		*/
		typeMethod = 2,
	}
	/// 
	enum UpdateMode : int
	{
		/**
		Update between keyframes.
		*/
		updateContinuous = 0,
		/**
		Update at the keyframes and hold the value.
		*/
		updateDiscrete = 1,
		/**
		Update at the keyframes.
		*/
		updateTrigger = 2,
	}
	/// 
	enum InterpolationType : int
	{
		/**
		No interpolation (nearest value).
		*/
		interpolationNearest = 0,
		/**
		Linear interpolation.
		*/
		interpolationLinear = 1,
		/**
		Cubic interpolation.
		*/
		interpolationCubic = 2,
	}
	/// 
	enum Constants : int
	{
		interpolationNearest = 0,
		updateContinuous = 0,
		typeValue = 0,
		typeTransform = 1,
		updateDiscrete = 1,
		interpolationLinear = 1,
		updateTrigger = 2,
		typeMethod = 2,
		interpolationCubic = 2,
	}
	package(godot) static GodotMethod!(long, long, long) _GODOT_add_track;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_track") = _GODOT_add_track;
	/**
	Add a track to the Animation. The track type must be specified as any of the values in the TYPE_* enumeration.
	*/
	long addTrack(in long type, in long at_position = -1)
	{
		_GODOT_add_track.bind("Animation", "add_track");
		return ptrcall!(long)(_GODOT_add_track, _godot_object, type, at_position);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_track;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_track") = _GODOT_remove_track;
	/**
	Remove a track by specifying the track index.
	*/
	void removeTrack(in long idx)
	{
		_GODOT_remove_track.bind("Animation", "remove_track");
		ptrcall!(void)(_GODOT_remove_track, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_track_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_track_count") = _GODOT_get_track_count;
	/**
	Return the amount of tracks in the animation.
	*/
	long getTrackCount() const
	{
		_GODOT_get_track_count.bind("Animation", "get_track_count");
		return ptrcall!(long)(_GODOT_get_track_count, _godot_object);
	}
	package(godot) static GodotMethod!(Animation.TrackType, long) _GODOT_track_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_type") = _GODOT_track_get_type;
	/**
	Get the type of a track.
	*/
	Animation.TrackType trackGetType(in long idx) const
	{
		_GODOT_track_get_type.bind("Animation", "track_get_type");
		return ptrcall!(Animation.TrackType)(_GODOT_track_get_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(NodePath, long) _GODOT_track_get_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_path") = _GODOT_track_get_path;
	/**
	Get the path of a track. for more information on the path format, see $(D trackSetPath)
	*/
	NodePath trackGetPath(in long idx) const
	{
		_GODOT_track_get_path.bind("Animation", "track_get_path");
		return ptrcall!(NodePath)(_GODOT_track_get_path, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, NodePath) _GODOT_track_set_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_path") = _GODOT_track_set_path;
	/**
	Set the path of a track. Paths must be valid scene-tree paths to a node, and must be specified starting from the parent node of the node that will reproduce the animation. Tracks that control properties or bones must append their name after the path, separated by ":". Example: "character/skeleton:ankle" or "character/mesh:transform/local"
	*/
	void trackSetPath(NodePathArg1)(in long idx, in NodePathArg1 path)
	{
		_GODOT_track_set_path.bind("Animation", "track_set_path");
		ptrcall!(void)(_GODOT_track_set_path, _godot_object, idx, path);
	}
	package(godot) static GodotMethod!(long, NodePath) _GODOT_find_track;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_track") = _GODOT_find_track;
	/**
	Return the index of the specified track. If the track is not found, return -1.
	*/
	long findTrack(NodePathArg0)(in NodePathArg0 path) const
	{
		_GODOT_find_track.bind("Animation", "find_track");
		return ptrcall!(long)(_GODOT_find_track, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_track_move_up;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_move_up") = _GODOT_track_move_up;
	/**
	Move a track up.
	*/
	void trackMoveUp(in long idx)
	{
		_GODOT_track_move_up.bind("Animation", "track_move_up");
		ptrcall!(void)(_GODOT_track_move_up, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_track_move_down;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_move_down") = _GODOT_track_move_down;
	/**
	Move a track down.
	*/
	void trackMoveDown(in long idx)
	{
		_GODOT_track_move_down.bind("Animation", "track_move_down");
		ptrcall!(void)(_GODOT_track_move_down, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_track_set_imported;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_imported") = _GODOT_track_set_imported;
	/**
	Set the given track as imported or not.
	*/
	void trackSetImported(in long idx, in bool imported)
	{
		_GODOT_track_set_imported.bind("Animation", "track_set_imported");
		ptrcall!(void)(_GODOT_track_set_imported, _godot_object, idx, imported);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_track_is_imported;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_is_imported") = _GODOT_track_is_imported;
	/**
	Return true if the given track is imported. Else, return false.
	*/
	bool trackIsImported(in long idx) const
	{
		_GODOT_track_is_imported.bind("Animation", "track_is_imported");
		return ptrcall!(bool)(_GODOT_track_is_imported, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_track_set_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_enabled") = _GODOT_track_set_enabled;
	/**
	Enables/disables the given track. Tracks are enabled by default.
	*/
	void trackSetEnabled(in long idx, in bool enabled)
	{
		_GODOT_track_set_enabled.bind("Animation", "track_set_enabled");
		ptrcall!(void)(_GODOT_track_set_enabled, _godot_object, idx, enabled);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_track_is_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_is_enabled") = _GODOT_track_is_enabled;
	/**
	Returns `true` if the track at index `idx` is enabled.
	*/
	bool trackIsEnabled(in long idx) const
	{
		_GODOT_track_is_enabled.bind("Animation", "track_is_enabled");
		return ptrcall!(bool)(_GODOT_track_is_enabled, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long, double, Vector3, Quat, Vector3) _GODOT_transform_track_insert_key;
	package(godot) alias _GODOT_methodBindInfo(string name : "transform_track_insert_key") = _GODOT_transform_track_insert_key;
	/**
	Insert a transform key for a transform track.
	*/
	long transformTrackInsertKey(in long idx, in double time, in Vector3 location, in Quat rotation, in Vector3 scale)
	{
		_GODOT_transform_track_insert_key.bind("Animation", "transform_track_insert_key");
		return ptrcall!(long)(_GODOT_transform_track_insert_key, _godot_object, idx, time, location, rotation, scale);
	}
	package(godot) static GodotMethod!(void, long, double, Variant, double) _GODOT_track_insert_key;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_insert_key") = _GODOT_track_insert_key;
	/**
	Insert a generic key in a given track.
	*/
	void trackInsertKey(VariantArg2)(in long idx, in double time, in VariantArg2 key, in double transition = 1)
	{
		_GODOT_track_insert_key.bind("Animation", "track_insert_key");
		ptrcall!(void)(_GODOT_track_insert_key, _godot_object, idx, time, key, transition);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_track_remove_key;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_remove_key") = _GODOT_track_remove_key;
	/**
	Remove a key by index in a given track.
	*/
	void trackRemoveKey(in long idx, in long key_idx)
	{
		_GODOT_track_remove_key.bind("Animation", "track_remove_key");
		ptrcall!(void)(_GODOT_track_remove_key, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_track_remove_key_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_remove_key_at_position") = _GODOT_track_remove_key_at_position;
	/**
	Remove a key by position (seconds) in a given track.
	*/
	void trackRemoveKeyAtPosition(in long idx, in double position)
	{
		_GODOT_track_remove_key_at_position.bind("Animation", "track_remove_key_at_position");
		ptrcall!(void)(_GODOT_track_remove_key_at_position, _godot_object, idx, position);
	}
	package(godot) static GodotMethod!(void, long, long, Variant) _GODOT_track_set_key_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_key_value") = _GODOT_track_set_key_value;
	/**
	Set the value of an existing key.
	*/
	void trackSetKeyValue(VariantArg2)(in long idx, in long key, in VariantArg2 value)
	{
		_GODOT_track_set_key_value.bind("Animation", "track_set_key_value");
		ptrcall!(void)(_GODOT_track_set_key_value, _godot_object, idx, key, value);
	}
	package(godot) static GodotMethod!(void, long, long, double) _GODOT_track_set_key_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_key_transition") = _GODOT_track_set_key_transition;
	/**
	Set the transition curve (easing) for a specific key (see built-in math function "ease").
	*/
	void trackSetKeyTransition(in long idx, in long key_idx, in double transition)
	{
		_GODOT_track_set_key_transition.bind("Animation", "track_set_key_transition");
		ptrcall!(void)(_GODOT_track_set_key_transition, _godot_object, idx, key_idx, transition);
	}
	package(godot) static GodotMethod!(double, long, long) _GODOT_track_get_key_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_key_transition") = _GODOT_track_get_key_transition;
	/**
	Return the transition curve (easing) for a specific key (see built-in math function "ease").
	*/
	double trackGetKeyTransition(in long idx, in long key_idx) const
	{
		_GODOT_track_get_key_transition.bind("Animation", "track_get_key_transition");
		return ptrcall!(double)(_GODOT_track_get_key_transition, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_track_get_key_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_key_count") = _GODOT_track_get_key_count;
	/**
	Return the amount of keys in a given track.
	*/
	long trackGetKeyCount(in long idx) const
	{
		_GODOT_track_get_key_count.bind("Animation", "track_get_key_count");
		return ptrcall!(long)(_GODOT_track_get_key_count, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Variant, long, long) _GODOT_track_get_key_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_key_value") = _GODOT_track_get_key_value;
	/**
	Return the value of a given key in a given track.
	*/
	Variant trackGetKeyValue(in long idx, in long key_idx) const
	{
		_GODOT_track_get_key_value.bind("Animation", "track_get_key_value");
		return ptrcall!(Variant)(_GODOT_track_get_key_value, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(double, long, long) _GODOT_track_get_key_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_key_time") = _GODOT_track_get_key_time;
	/**
	Return the time at which the key is located.
	*/
	double trackGetKeyTime(in long idx, in long key_idx) const
	{
		_GODOT_track_get_key_time.bind("Animation", "track_get_key_time");
		return ptrcall!(double)(_GODOT_track_get_key_time, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(long, long, double, bool) _GODOT_track_find_key;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_find_key") = _GODOT_track_find_key;
	/**
	Find the key index by time in a given track. Optionally, only find it if the exact time is given.
	*/
	long trackFindKey(in long idx, in double time, in bool exact = false) const
	{
		_GODOT_track_find_key.bind("Animation", "track_find_key");
		return ptrcall!(long)(_GODOT_track_find_key, _godot_object, idx, time, exact);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_track_set_interpolation_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_interpolation_type") = _GODOT_track_set_interpolation_type;
	/**
	Set the interpolation type of a given track, from the INTERPOLATION_* enum.
	*/
	void trackSetInterpolationType(in long idx, in long interpolation)
	{
		_GODOT_track_set_interpolation_type.bind("Animation", "track_set_interpolation_type");
		ptrcall!(void)(_GODOT_track_set_interpolation_type, _godot_object, idx, interpolation);
	}
	package(godot) static GodotMethod!(Animation.InterpolationType, long) _GODOT_track_get_interpolation_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_interpolation_type") = _GODOT_track_get_interpolation_type;
	/**
	Return the interpolation type of a given track, from the INTERPOLATION_* enum.
	*/
	Animation.InterpolationType trackGetInterpolationType(in long idx) const
	{
		_GODOT_track_get_interpolation_type.bind("Animation", "track_get_interpolation_type");
		return ptrcall!(Animation.InterpolationType)(_GODOT_track_get_interpolation_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_track_set_interpolation_loop_wrap;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_set_interpolation_loop_wrap") = _GODOT_track_set_interpolation_loop_wrap;
	/**
	If `true` the track at `idx` wraps the interpolation loop.
	*/
	void trackSetInterpolationLoopWrap(in long idx, in bool interpolation)
	{
		_GODOT_track_set_interpolation_loop_wrap.bind("Animation", "track_set_interpolation_loop_wrap");
		ptrcall!(void)(_GODOT_track_set_interpolation_loop_wrap, _godot_object, idx, interpolation);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_track_get_interpolation_loop_wrap;
	package(godot) alias _GODOT_methodBindInfo(string name : "track_get_interpolation_loop_wrap") = _GODOT_track_get_interpolation_loop_wrap;
	/**
	Returns `true` if the track at `idx` wraps the interpolation loop. Default value: `true`.
	*/
	bool trackGetInterpolationLoopWrap(in long idx) const
	{
		_GODOT_track_get_interpolation_loop_wrap.bind("Animation", "track_get_interpolation_loop_wrap");
		return ptrcall!(bool)(_GODOT_track_get_interpolation_loop_wrap, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Array, long, double) _GODOT_transform_track_interpolate;
	package(godot) alias _GODOT_methodBindInfo(string name : "transform_track_interpolate") = _GODOT_transform_track_interpolate;
	/**
	Return the interpolated value of a transform track at a given time (in seconds). An array consisting of 3 elements: position ($(D Vector3)), rotation ($(D Quat)) and scale ($(D Vector3)).
	*/
	Array transformTrackInterpolate(in long idx, in double time_sec) const
	{
		_GODOT_transform_track_interpolate.bind("Animation", "transform_track_interpolate");
		return ptrcall!(Array)(_GODOT_transform_track_interpolate, _godot_object, idx, time_sec);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_value_track_set_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "value_track_set_update_mode") = _GODOT_value_track_set_update_mode;
	/**
	Set the update mode (UPDATE_*) of a value track.
	*/
	void valueTrackSetUpdateMode(in long idx, in long mode)
	{
		_GODOT_value_track_set_update_mode.bind("Animation", "value_track_set_update_mode");
		ptrcall!(void)(_GODOT_value_track_set_update_mode, _godot_object, idx, mode);
	}
	package(godot) static GodotMethod!(Animation.UpdateMode, long) _GODOT_value_track_get_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "value_track_get_update_mode") = _GODOT_value_track_get_update_mode;
	/**
	Return the update mode of a value track.
	*/
	Animation.UpdateMode valueTrackGetUpdateMode(in long idx) const
	{
		_GODOT_value_track_get_update_mode.bind("Animation", "value_track_get_update_mode");
		return ptrcall!(Animation.UpdateMode)(_GODOT_value_track_get_update_mode, _godot_object, idx);
	}
	package(godot) static GodotMethod!(PoolIntArray, long, double, double) _GODOT_value_track_get_key_indices;
	package(godot) alias _GODOT_methodBindInfo(string name : "value_track_get_key_indices") = _GODOT_value_track_get_key_indices;
	/**
	Return all the key indices of a value track, given a position and delta time.
	*/
	PoolIntArray valueTrackGetKeyIndices(in long idx, in double time_sec, in double delta) const
	{
		_GODOT_value_track_get_key_indices.bind("Animation", "value_track_get_key_indices");
		return ptrcall!(PoolIntArray)(_GODOT_value_track_get_key_indices, _godot_object, idx, time_sec, delta);
	}
	package(godot) static GodotMethod!(PoolIntArray, long, double, double) _GODOT_method_track_get_key_indices;
	package(godot) alias _GODOT_methodBindInfo(string name : "method_track_get_key_indices") = _GODOT_method_track_get_key_indices;
	/**
	Return all the key indices of a method track, given a position and delta time.
	*/
	PoolIntArray methodTrackGetKeyIndices(in long idx, in double time_sec, in double delta) const
	{
		_GODOT_method_track_get_key_indices.bind("Animation", "method_track_get_key_indices");
		return ptrcall!(PoolIntArray)(_GODOT_method_track_get_key_indices, _godot_object, idx, time_sec, delta);
	}
	package(godot) static GodotMethod!(String, long, long) _GODOT_method_track_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "method_track_get_name") = _GODOT_method_track_get_name;
	/**
	Return the method name of a method track.
	*/
	String methodTrackGetName(in long idx, in long key_idx) const
	{
		_GODOT_method_track_get_name.bind("Animation", "method_track_get_name");
		return ptrcall!(String)(_GODOT_method_track_get_name, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(Array, long, long) _GODOT_method_track_get_params;
	package(godot) alias _GODOT_methodBindInfo(string name : "method_track_get_params") = _GODOT_method_track_get_params;
	/**
	Return the arguments values to be called on a method track for a given key in a given track.
	*/
	Array methodTrackGetParams(in long idx, in long key_idx) const
	{
		_GODOT_method_track_get_params.bind("Animation", "method_track_get_params");
		return ptrcall!(Array)(_GODOT_method_track_get_params, _godot_object, idx, key_idx);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_length") = _GODOT_set_length;
	/**
	
	*/
	void setLength(in double time_sec)
	{
		_GODOT_set_length.bind("Animation", "set_length");
		ptrcall!(void)(_GODOT_set_length, _godot_object, time_sec);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_length") = _GODOT_get_length;
	/**
	
	*/
	double getLength() const
	{
		_GODOT_get_length.bind("Animation", "get_length");
		return ptrcall!(double)(_GODOT_get_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop") = _GODOT_set_loop;
	/**
	
	*/
	void setLoop(in bool enabled)
	{
		_GODOT_set_loop.bind("Animation", "set_loop");
		ptrcall!(void)(_GODOT_set_loop, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_loop") = _GODOT_has_loop;
	/**
	
	*/
	bool hasLoop() const
	{
		_GODOT_has_loop.bind("Animation", "has_loop");
		return ptrcall!(bool)(_GODOT_has_loop, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_step") = _GODOT_set_step;
	/**
	
	*/
	void setStep(in double size_sec)
	{
		_GODOT_set_step.bind("Animation", "set_step");
		ptrcall!(void)(_GODOT_set_step, _godot_object, size_sec);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_step") = _GODOT_get_step;
	/**
	
	*/
	double getStep() const
	{
		_GODOT_get_step.bind("Animation", "get_step");
		return ptrcall!(double)(_GODOT_get_step, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clear the animation (clear all tracks and reset all).
	*/
	void clear()
	{
		_GODOT_clear.bind("Animation", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, Animation) _GODOT_copy_track;
	package(godot) alias _GODOT_methodBindInfo(string name : "copy_track") = _GODOT_copy_track;
	/**
	Adds a new track that is a copy of the given track from `to_animation`.
	*/
	void copyTrack(in long track, Animation to_animation)
	{
		_GODOT_copy_track.bind("Animation", "copy_track");
		ptrcall!(void)(_GODOT_copy_track, _godot_object, track, to_animation);
	}
	/**
	The total length of the animation (in seconds). Note that length is not delimited by the last key, as this one may be before or after the end to ensure correct interpolation and looping.
	*/
	@property double length()
	{
		return getLength();
	}
	/// ditto
	@property void length(double v)
	{
		setLength(v);
	}
	/**
	A flag indicating that the animation must loop. This is uses for correct interpolation of animation cycles, and for hinting the player that it must restart the animation.
	*/
	@property bool loop()
	{
		return hasLoop();
	}
	/// ditto
	@property void loop(bool v)
	{
		setLoop(v);
	}
	/**
	The animation step value.
	*/
	@property double step()
	{
		return getStep();
	}
	/// ditto
	@property void step(double v)
	{
		setStep(v);
	}
}
