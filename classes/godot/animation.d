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
import godot.reference;
/**
Contains data used to animate everything in the engine.

An Animation resource contains data used to animate everything in the engine. Animations are divided into tracks, and each track must be linked to a node. The state of that node can be changed through time, by adding timed keys (events) to the track.


# This creates an animation that makes the node "Enemy" move to the right by
# 100 pixels in 1 second.
var animation = Animation.new()
var track_index = animation.add_track(Animation.TYPE_VALUE)
animation.track_set_path(track_index, "Enemy:position.x")
animation.track_insert_key(track_index, 0.0, 0)
animation.track_insert_key(track_index, 0.5, 100)


Animations are just data containers, and must be added to nodes such as an $(D AnimationPlayer) or $(D AnimationTreePlayer) to be played back.
*/
@GodotBaseClass struct Animation
{
	enum string _GODOT_internal_name = "Animation";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_track") GodotMethod!(long, long, long) addTrack;
		@GodotName("remove_track") GodotMethod!(void, long) removeTrack;
		@GodotName("get_track_count") GodotMethod!(long) getTrackCount;
		@GodotName("track_get_type") GodotMethod!(Animation.TrackType, long) trackGetType;
		@GodotName("track_get_path") GodotMethod!(NodePath, long) trackGetPath;
		@GodotName("track_set_path") GodotMethod!(void, long, NodePath) trackSetPath;
		@GodotName("find_track") GodotMethod!(long, NodePath) findTrack;
		@GodotName("track_move_up") GodotMethod!(void, long) trackMoveUp;
		@GodotName("track_move_down") GodotMethod!(void, long) trackMoveDown;
		@GodotName("track_swap") GodotMethod!(void, long, long) trackSwap;
		@GodotName("track_set_imported") GodotMethod!(void, long, bool) trackSetImported;
		@GodotName("track_is_imported") GodotMethod!(bool, long) trackIsImported;
		@GodotName("track_set_enabled") GodotMethod!(void, long, bool) trackSetEnabled;
		@GodotName("track_is_enabled") GodotMethod!(bool, long) trackIsEnabled;
		@GodotName("transform_track_insert_key") GodotMethod!(long, long, double, Vector3, Quat, Vector3) transformTrackInsertKey;
		@GodotName("track_insert_key") GodotMethod!(void, long, double, Variant, double) trackInsertKey;
		@GodotName("track_remove_key") GodotMethod!(void, long, long) trackRemoveKey;
		@GodotName("track_remove_key_at_position") GodotMethod!(void, long, double) trackRemoveKeyAtPosition;
		@GodotName("track_set_key_value") GodotMethod!(void, long, long, Variant) trackSetKeyValue;
		@GodotName("track_set_key_transition") GodotMethod!(void, long, long, double) trackSetKeyTransition;
		@GodotName("track_get_key_transition") GodotMethod!(double, long, long) trackGetKeyTransition;
		@GodotName("track_get_key_count") GodotMethod!(long, long) trackGetKeyCount;
		@GodotName("track_get_key_value") GodotMethod!(Variant, long, long) trackGetKeyValue;
		@GodotName("track_get_key_time") GodotMethod!(double, long, long) trackGetKeyTime;
		@GodotName("track_find_key") GodotMethod!(long, long, double, bool) trackFindKey;
		@GodotName("track_set_interpolation_type") GodotMethod!(void, long, long) trackSetInterpolationType;
		@GodotName("track_get_interpolation_type") GodotMethod!(Animation.InterpolationType, long) trackGetInterpolationType;
		@GodotName("track_set_interpolation_loop_wrap") GodotMethod!(void, long, bool) trackSetInterpolationLoopWrap;
		@GodotName("track_get_interpolation_loop_wrap") GodotMethod!(bool, long) trackGetInterpolationLoopWrap;
		@GodotName("transform_track_interpolate") GodotMethod!(Array, long, double) transformTrackInterpolate;
		@GodotName("value_track_set_update_mode") GodotMethod!(void, long, long) valueTrackSetUpdateMode;
		@GodotName("value_track_get_update_mode") GodotMethod!(Animation.UpdateMode, long) valueTrackGetUpdateMode;
		@GodotName("value_track_get_key_indices") GodotMethod!(PoolIntArray, long, double, double) valueTrackGetKeyIndices;
		@GodotName("method_track_get_key_indices") GodotMethod!(PoolIntArray, long, double, double) methodTrackGetKeyIndices;
		@GodotName("method_track_get_name") GodotMethod!(String, long, long) methodTrackGetName;
		@GodotName("method_track_get_params") GodotMethod!(Array, long, long) methodTrackGetParams;
		@GodotName("bezier_track_insert_key") GodotMethod!(long, long, double, double, Vector2, Vector2) bezierTrackInsertKey;
		@GodotName("bezier_track_set_key_value") GodotMethod!(void, long, long, double) bezierTrackSetKeyValue;
		@GodotName("bezier_track_set_key_in_handle") GodotMethod!(void, long, long, Vector2) bezierTrackSetKeyInHandle;
		@GodotName("bezier_track_set_key_out_handle") GodotMethod!(void, long, long, Vector2) bezierTrackSetKeyOutHandle;
		@GodotName("bezier_track_get_key_value") GodotMethod!(double, long, long) bezierTrackGetKeyValue;
		@GodotName("bezier_track_get_key_in_handle") GodotMethod!(Vector2, long, long) bezierTrackGetKeyInHandle;
		@GodotName("bezier_track_get_key_out_handle") GodotMethod!(Vector2, long, long) bezierTrackGetKeyOutHandle;
		@GodotName("bezier_track_interpolate") GodotMethod!(double, long, double) bezierTrackInterpolate;
		@GodotName("audio_track_insert_key") GodotMethod!(long, long, double, Resource, double, double) audioTrackInsertKey;
		@GodotName("audio_track_set_key_stream") GodotMethod!(void, long, long, Resource) audioTrackSetKeyStream;
		@GodotName("audio_track_set_key_start_offset") GodotMethod!(void, long, long, double) audioTrackSetKeyStartOffset;
		@GodotName("audio_track_set_key_end_offset") GodotMethod!(void, long, long, double) audioTrackSetKeyEndOffset;
		@GodotName("audio_track_get_key_stream") GodotMethod!(Resource, long, long) audioTrackGetKeyStream;
		@GodotName("audio_track_get_key_start_offset") GodotMethod!(double, long, long) audioTrackGetKeyStartOffset;
		@GodotName("audio_track_get_key_end_offset") GodotMethod!(double, long, long) audioTrackGetKeyEndOffset;
		@GodotName("animation_track_insert_key") GodotMethod!(long, long, double, String) animationTrackInsertKey;
		@GodotName("animation_track_set_key_animation") GodotMethod!(void, long, long, String) animationTrackSetKeyAnimation;
		@GodotName("animation_track_get_key_animation") GodotMethod!(String, long, long) animationTrackGetKeyAnimation;
		@GodotName("set_length") GodotMethod!(void, double) setLength;
		@GodotName("get_length") GodotMethod!(double) getLength;
		@GodotName("set_loop") GodotMethod!(void, bool) setLoop;
		@GodotName("has_loop") GodotMethod!(bool) hasLoop;
		@GodotName("set_step") GodotMethod!(void, double) setStep;
		@GodotName("get_step") GodotMethod!(double) getStep;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("copy_track") GodotMethod!(void, long, Animation) copyTrack;
	}
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
	@disable new(size_t s);
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
		/**
		
		*/
		typeBezier = 3,
		/**
		
		*/
		typeAudio = 4,
		/**
		
		*/
		typeAnimation = 5,
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
		/**
		
		*/
		updateCapture = 3,
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
		typeValue = 0,
		interpolationNearest = 0,
		updateContinuous = 0,
		interpolationLinear = 1,
		updateDiscrete = 1,
		typeTransform = 1,
		updateTrigger = 2,
		interpolationCubic = 2,
		typeMethod = 2,
		typeBezier = 3,
		updateCapture = 3,
		typeAudio = 4,
		typeAnimation = 5,
	}
	/**
	Add a track to the Animation. The track type must be specified as any of the values in the TYPE_* enumeration.
	*/
	long addTrack(in long type, in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.addTrack, _godot_object, type, at_position);
	}
	/**
	Remove a track by specifying the track index.
	*/
	void removeTrack(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeTrack, _godot_object, idx);
	}
	/**
	Return the amount of tracks in the animation.
	*/
	long getTrackCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTrackCount, _godot_object);
	}
	/**
	Get the type of a track.
	*/
	Animation.TrackType trackGetType(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation.TrackType)(_classBinding.trackGetType, _godot_object, idx);
	}
	/**
	Get the path of a track. for more information on the path format, see $(D trackSetPath)
	*/
	NodePath trackGetPath(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.trackGetPath, _godot_object, idx);
	}
	/**
	Set the path of a track. Paths must be valid scene-tree paths to a node, and must be specified starting from the parent node of the node that will reproduce the animation. Tracks that control properties or bones must append their name after the path, separated by ":".
	$(B Example:) "character/skeleton:ankle" or "character/mesh:transform/local".
	*/
	void trackSetPath(NodePathArg1)(in long idx, in NodePathArg1 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackSetPath, _godot_object, idx, path);
	}
	/**
	Return the index of the specified track. If the track is not found, return -1.
	*/
	long findTrack(NodePathArg0)(in NodePathArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.findTrack, _godot_object, path);
	}
	/**
	Move a track up.
	*/
	void trackMoveUp(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackMoveUp, _godot_object, idx);
	}
	/**
	Move a track down.
	*/
	void trackMoveDown(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackMoveDown, _godot_object, idx);
	}
	/**
	
	*/
	void trackSwap(in long idx, in long with_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackSwap, _godot_object, idx, with_idx);
	}
	/**
	Set the given track as imported or not.
	*/
	void trackSetImported(in long idx, in bool imported)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackSetImported, _godot_object, idx, imported);
	}
	/**
	Return `true` if the given track is imported. Else, return `false`.
	*/
	bool trackIsImported(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.trackIsImported, _godot_object, idx);
	}
	/**
	Enables/disables the given track. Tracks are enabled by default.
	*/
	void trackSetEnabled(in long idx, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackSetEnabled, _godot_object, idx, enabled);
	}
	/**
	Returns `true` if the track at index `idx` is enabled.
	*/
	bool trackIsEnabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.trackIsEnabled, _godot_object, idx);
	}
	/**
	Insert a transform key for a transform track.
	*/
	long transformTrackInsertKey(in long idx, in double time, in Vector3 location, in Quat rotation, in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.transformTrackInsertKey, _godot_object, idx, time, location, rotation, scale);
	}
	/**
	Insert a generic key in a given track.
	*/
	void trackInsertKey(VariantArg2)(in long idx, in double time, in VariantArg2 key, in double transition = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackInsertKey, _godot_object, idx, time, key, transition);
	}
	/**
	Remove a key by index in a given track.
	*/
	void trackRemoveKey(in long idx, in long key_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackRemoveKey, _godot_object, idx, key_idx);
	}
	/**
	Remove a key by position (seconds) in a given track.
	*/
	void trackRemoveKeyAtPosition(in long idx, in double position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackRemoveKeyAtPosition, _godot_object, idx, position);
	}
	/**
	Set the value of an existing key.
	*/
	void trackSetKeyValue(VariantArg2)(in long idx, in long key, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackSetKeyValue, _godot_object, idx, key, value);
	}
	/**
	Set the transition curve (easing) for a specific key (see built-in math function "ease").
	*/
	void trackSetKeyTransition(in long idx, in long key_idx, in double transition)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackSetKeyTransition, _godot_object, idx, key_idx, transition);
	}
	/**
	Return the transition curve (easing) for a specific key (see built-in math function "ease").
	*/
	double trackGetKeyTransition(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.trackGetKeyTransition, _godot_object, idx, key_idx);
	}
	/**
	Return the amount of keys in a given track.
	*/
	long trackGetKeyCount(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.trackGetKeyCount, _godot_object, idx);
	}
	/**
	Return the value of a given key in a given track.
	*/
	Variant trackGetKeyValue(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.trackGetKeyValue, _godot_object, idx, key_idx);
	}
	/**
	Return the time at which the key is located.
	*/
	double trackGetKeyTime(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.trackGetKeyTime, _godot_object, idx, key_idx);
	}
	/**
	Find the key index by time in a given track. Optionally, only find it if the exact time is given.
	*/
	long trackFindKey(in long idx, in double time, in bool exact = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.trackFindKey, _godot_object, idx, time, exact);
	}
	/**
	Set the interpolation type of a given track, from the INTERPOLATION_* enum.
	*/
	void trackSetInterpolationType(in long idx, in long interpolation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackSetInterpolationType, _godot_object, idx, interpolation);
	}
	/**
	Return the interpolation type of a given track, from the INTERPOLATION_* enum.
	*/
	Animation.InterpolationType trackGetInterpolationType(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation.InterpolationType)(_classBinding.trackGetInterpolationType, _godot_object, idx);
	}
	/**
	If `true`, the track at `idx` wraps the interpolation loop.
	*/
	void trackSetInterpolationLoopWrap(in long idx, in bool interpolation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.trackSetInterpolationLoopWrap, _godot_object, idx, interpolation);
	}
	/**
	Returns `true` if the track at `idx` wraps the interpolation loop. Default value: `true`.
	*/
	bool trackGetInterpolationLoopWrap(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.trackGetInterpolationLoopWrap, _godot_object, idx);
	}
	/**
	Return the interpolated value of a transform track at a given time (in seconds). An array consisting of 3 elements: position ($(D Vector3)), rotation ($(D Quat)) and scale ($(D Vector3)).
	*/
	Array transformTrackInterpolate(in long idx, in double time_sec) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.transformTrackInterpolate, _godot_object, idx, time_sec);
	}
	/**
	Set the update mode (UPDATE_*) of a value track.
	*/
	void valueTrackSetUpdateMode(in long idx, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.valueTrackSetUpdateMode, _godot_object, idx, mode);
	}
	/**
	Return the update mode of a value track.
	*/
	Animation.UpdateMode valueTrackGetUpdateMode(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation.UpdateMode)(_classBinding.valueTrackGetUpdateMode, _godot_object, idx);
	}
	/**
	Return all the key indices of a value track, given a position and delta time.
	*/
	PoolIntArray valueTrackGetKeyIndices(in long idx, in double time_sec, in double delta) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.valueTrackGetKeyIndices, _godot_object, idx, time_sec, delta);
	}
	/**
	Return all the key indices of a method track, given a position and delta time.
	*/
	PoolIntArray methodTrackGetKeyIndices(in long idx, in double time_sec, in double delta) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.methodTrackGetKeyIndices, _godot_object, idx, time_sec, delta);
	}
	/**
	Return the method name of a method track.
	*/
	String methodTrackGetName(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.methodTrackGetName, _godot_object, idx, key_idx);
	}
	/**
	Return the arguments values to be called on a method track for a given key in a given track.
	*/
	Array methodTrackGetParams(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.methodTrackGetParams, _godot_object, idx, key_idx);
	}
	/**
	
	*/
	long bezierTrackInsertKey(in long track, in double time, in double value, in Vector2 in_handle = Vector2(0, 0), in Vector2 out_handle = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.bezierTrackInsertKey, _godot_object, track, time, value, in_handle, out_handle);
	}
	/**
	
	*/
	void bezierTrackSetKeyValue(in long idx, in long key_idx, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bezierTrackSetKeyValue, _godot_object, idx, key_idx, value);
	}
	/**
	
	*/
	void bezierTrackSetKeyInHandle(in long idx, in long key_idx, in Vector2 in_handle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bezierTrackSetKeyInHandle, _godot_object, idx, key_idx, in_handle);
	}
	/**
	
	*/
	void bezierTrackSetKeyOutHandle(in long idx, in long key_idx, in Vector2 out_handle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bezierTrackSetKeyOutHandle, _godot_object, idx, key_idx, out_handle);
	}
	/**
	
	*/
	double bezierTrackGetKeyValue(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.bezierTrackGetKeyValue, _godot_object, idx, key_idx);
	}
	/**
	
	*/
	Vector2 bezierTrackGetKeyInHandle(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.bezierTrackGetKeyInHandle, _godot_object, idx, key_idx);
	}
	/**
	
	*/
	Vector2 bezierTrackGetKeyOutHandle(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.bezierTrackGetKeyOutHandle, _godot_object, idx, key_idx);
	}
	/**
	
	*/
	double bezierTrackInterpolate(in long track, in double time) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.bezierTrackInterpolate, _godot_object, track, time);
	}
	/**
	
	*/
	long audioTrackInsertKey(in long track, in double time, Resource stream, in double start_offset = 0, in double end_offset = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.audioTrackInsertKey, _godot_object, track, time, stream, start_offset, end_offset);
	}
	/**
	
	*/
	void audioTrackSetKeyStream(in long idx, in long key_idx, Resource stream)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.audioTrackSetKeyStream, _godot_object, idx, key_idx, stream);
	}
	/**
	
	*/
	void audioTrackSetKeyStartOffset(in long idx, in long key_idx, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.audioTrackSetKeyStartOffset, _godot_object, idx, key_idx, offset);
	}
	/**
	
	*/
	void audioTrackSetKeyEndOffset(in long idx, in long key_idx, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.audioTrackSetKeyEndOffset, _godot_object, idx, key_idx, offset);
	}
	/**
	
	*/
	Ref!Resource audioTrackGetKeyStream(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(_classBinding.audioTrackGetKeyStream, _godot_object, idx, key_idx);
	}
	/**
	
	*/
	double audioTrackGetKeyStartOffset(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.audioTrackGetKeyStartOffset, _godot_object, idx, key_idx);
	}
	/**
	
	*/
	double audioTrackGetKeyEndOffset(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.audioTrackGetKeyEndOffset, _godot_object, idx, key_idx);
	}
	/**
	
	*/
	long animationTrackInsertKey(in long track, in double time, in String animation)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.animationTrackInsertKey, _godot_object, track, time, animation);
	}
	/**
	
	*/
	void animationTrackSetKeyAnimation(in long idx, in long key_idx, in String animation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.animationTrackSetKeyAnimation, _godot_object, idx, key_idx, animation);
	}
	/**
	
	*/
	String animationTrackGetKeyAnimation(in long idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.animationTrackGetKeyAnimation, _godot_object, idx, key_idx);
	}
	/**
	
	*/
	void setLength(in double time_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLength, _godot_object, time_sec);
	}
	/**
	
	*/
	double getLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLength, _godot_object);
	}
	/**
	
	*/
	void setLoop(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLoop, _godot_object, enabled);
	}
	/**
	
	*/
	bool hasLoop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasLoop, _godot_object);
	}
	/**
	
	*/
	void setStep(in double size_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStep, _godot_object, size_sec);
	}
	/**
	
	*/
	double getStep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getStep, _godot_object);
	}
	/**
	Clear the animation (clear all tracks and reset all).
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Adds a new track that is a copy of the given track from `to_animation`.
	*/
	void copyTrack(in long track, Animation to_animation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.copyTrack, _godot_object, track, to_animation);
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
