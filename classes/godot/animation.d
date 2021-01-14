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
import godot.d.traits;
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


# This creates an animation that makes the node "Enemy" move to the right by
# 100 pixels in 0.5 seconds.
var animation = Animation.new()
var track_index = animation.add_track(Animation.TYPE_VALUE)
animation.track_set_path(track_index, "Enemy:position:x")
animation.track_insert_key(track_index, 0.0, 0)
animation.track_insert_key(track_index, 0.5, 100)


Animations are just data containers, and must be added to nodes such as an $(D AnimationPlayer) or $(D AnimationTreePlayer) to be played back. Animation tracks have different types, each with its own set of dedicated methods. Check $(D tracktype) to see available types.
*/
@GodotBaseClass struct Animation
{
	package(godot) enum string _GODOT_internal_name = "Animation";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_track") GodotMethod!(long, long, long) addTrack;
		@GodotName("animation_track_get_key_animation") GodotMethod!(String, long, long) animationTrackGetKeyAnimation;
		@GodotName("animation_track_insert_key") GodotMethod!(long, long, double, String) animationTrackInsertKey;
		@GodotName("animation_track_set_key_animation") GodotMethod!(void, long, long, String) animationTrackSetKeyAnimation;
		@GodotName("audio_track_get_key_end_offset") GodotMethod!(double, long, long) audioTrackGetKeyEndOffset;
		@GodotName("audio_track_get_key_start_offset") GodotMethod!(double, long, long) audioTrackGetKeyStartOffset;
		@GodotName("audio_track_get_key_stream") GodotMethod!(Resource, long, long) audioTrackGetKeyStream;
		@GodotName("audio_track_insert_key") GodotMethod!(long, long, double, Resource, double, double) audioTrackInsertKey;
		@GodotName("audio_track_set_key_end_offset") GodotMethod!(void, long, long, double) audioTrackSetKeyEndOffset;
		@GodotName("audio_track_set_key_start_offset") GodotMethod!(void, long, long, double) audioTrackSetKeyStartOffset;
		@GodotName("audio_track_set_key_stream") GodotMethod!(void, long, long, Resource) audioTrackSetKeyStream;
		@GodotName("bezier_track_get_key_in_handle") GodotMethod!(Vector2, long, long) bezierTrackGetKeyInHandle;
		@GodotName("bezier_track_get_key_out_handle") GodotMethod!(Vector2, long, long) bezierTrackGetKeyOutHandle;
		@GodotName("bezier_track_get_key_value") GodotMethod!(double, long, long) bezierTrackGetKeyValue;
		@GodotName("bezier_track_insert_key") GodotMethod!(long, long, double, double, Vector2, Vector2) bezierTrackInsertKey;
		@GodotName("bezier_track_interpolate") GodotMethod!(double, long, double) bezierTrackInterpolate;
		@GodotName("bezier_track_set_key_in_handle") GodotMethod!(void, long, long, Vector2) bezierTrackSetKeyInHandle;
		@GodotName("bezier_track_set_key_out_handle") GodotMethod!(void, long, long, Vector2) bezierTrackSetKeyOutHandle;
		@GodotName("bezier_track_set_key_value") GodotMethod!(void, long, long, double) bezierTrackSetKeyValue;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("copy_track") GodotMethod!(void, long, Animation) copyTrack;
		@GodotName("find_track") GodotMethod!(long, NodePath) findTrack;
		@GodotName("get_length") GodotMethod!(double) getLength;
		@GodotName("get_step") GodotMethod!(double) getStep;
		@GodotName("get_track_count") GodotMethod!(long) getTrackCount;
		@GodotName("has_loop") GodotMethod!(bool) hasLoop;
		@GodotName("method_track_get_key_indices") GodotMethod!(PoolIntArray, long, double, double) methodTrackGetKeyIndices;
		@GodotName("method_track_get_name") GodotMethod!(String, long, long) methodTrackGetName;
		@GodotName("method_track_get_params") GodotMethod!(Array, long, long) methodTrackGetParams;
		@GodotName("remove_track") GodotMethod!(void, long) removeTrack;
		@GodotName("set_length") GodotMethod!(void, double) setLength;
		@GodotName("set_loop") GodotMethod!(void, bool) setLoop;
		@GodotName("set_step") GodotMethod!(void, double) setStep;
		@GodotName("track_find_key") GodotMethod!(long, long, double, bool) trackFindKey;
		@GodotName("track_get_interpolation_loop_wrap") GodotMethod!(bool, long) trackGetInterpolationLoopWrap;
		@GodotName("track_get_interpolation_type") GodotMethod!(Animation.InterpolationType, long) trackGetInterpolationType;
		@GodotName("track_get_key_count") GodotMethod!(long, long) trackGetKeyCount;
		@GodotName("track_get_key_time") GodotMethod!(double, long, long) trackGetKeyTime;
		@GodotName("track_get_key_transition") GodotMethod!(double, long, long) trackGetKeyTransition;
		@GodotName("track_get_key_value") GodotMethod!(Variant, long, long) trackGetKeyValue;
		@GodotName("track_get_path") GodotMethod!(NodePath, long) trackGetPath;
		@GodotName("track_get_type") GodotMethod!(Animation.TrackType, long) trackGetType;
		@GodotName("track_insert_key") GodotMethod!(void, long, double, Variant, double) trackInsertKey;
		@GodotName("track_is_enabled") GodotMethod!(bool, long) trackIsEnabled;
		@GodotName("track_is_imported") GodotMethod!(bool, long) trackIsImported;
		@GodotName("track_move_down") GodotMethod!(void, long) trackMoveDown;
		@GodotName("track_move_to") GodotMethod!(void, long, long) trackMoveTo;
		@GodotName("track_move_up") GodotMethod!(void, long) trackMoveUp;
		@GodotName("track_remove_key") GodotMethod!(void, long, long) trackRemoveKey;
		@GodotName("track_remove_key_at_position") GodotMethod!(void, long, double) trackRemoveKeyAtPosition;
		@GodotName("track_set_enabled") GodotMethod!(void, long, bool) trackSetEnabled;
		@GodotName("track_set_imported") GodotMethod!(void, long, bool) trackSetImported;
		@GodotName("track_set_interpolation_loop_wrap") GodotMethod!(void, long, bool) trackSetInterpolationLoopWrap;
		@GodotName("track_set_interpolation_type") GodotMethod!(void, long, long) trackSetInterpolationType;
		@GodotName("track_set_key_time") GodotMethod!(void, long, long, double) trackSetKeyTime;
		@GodotName("track_set_key_transition") GodotMethod!(void, long, long, double) trackSetKeyTransition;
		@GodotName("track_set_key_value") GodotMethod!(void, long, long, Variant) trackSetKeyValue;
		@GodotName("track_set_path") GodotMethod!(void, long, NodePath) trackSetPath;
		@GodotName("track_swap") GodotMethod!(void, long, long) trackSwap;
		@GodotName("transform_track_insert_key") GodotMethod!(long, long, double, Vector3, Quat, Vector3) transformTrackInsertKey;
		@GodotName("transform_track_interpolate") GodotMethod!(Array, long, double) transformTrackInterpolate;
		@GodotName("value_track_get_key_indices") GodotMethod!(PoolIntArray, long, double, double) valueTrackGetKeyIndices;
		@GodotName("value_track_get_update_mode") GodotMethod!(Animation.UpdateMode, long) valueTrackGetUpdateMode;
		@GodotName("value_track_set_update_mode") GodotMethod!(void, long, long) valueTrackSetUpdateMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in Animation other) const
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
	/// Construct a new instance of Animation.
	/// Note: use `memnew!Animation` instead.
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
		Transform tracks are used to change node local transforms or skeleton pose bones. Transitions are interpolated.
		*/
		typeTransform = 1,
		/**
		Method tracks call functions with given arguments per key.
		*/
		typeMethod = 2,
		/**
		Bezier tracks are used to interpolate a value using custom curves. They can also be used to animate sub-properties of vectors and colors (e.g. alpha value of a $(D Color)).
		*/
		typeBezier = 3,
		/**
		Audio tracks are used to play an audio stream with either type of $(D AudioStreamPlayer). The stream can be trimmed and previewed in the animation.
		*/
		typeAudio = 4,
		/**
		Animation tracks play animations in other $(D AnimationPlayer) nodes.
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
		Same as linear interpolation, but also interpolates from the current value (i.e. dynamically at runtime) if the first key isn't at 0 seconds.
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
	Adds a track to the Animation.
	*/
	long addTrack(in long type, in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.addTrack, _godot_object, type, at_position);
	}
	/**
	Returns the animation name at the key identified by `key_idx`. The `track_idx` must be the index of an Animation Track.
	*/
	String animationTrackGetKeyAnimation(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.animationTrackGetKeyAnimation, _godot_object, track_idx, key_idx);
	}
	/**
	Inserts a key with value `animation` at the given `time` (in seconds). The `track_idx` must be the index of an Animation Track.
	*/
	long animationTrackInsertKey(in long track_idx, in double time, in String animation)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.animationTrackInsertKey, _godot_object, track_idx, time, animation);
	}
	/**
	Sets the key identified by `key_idx` to value `animation`. The `track_idx` must be the index of an Animation Track.
	*/
	void animationTrackSetKeyAnimation(in long track_idx, in long key_idx, in String animation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.animationTrackSetKeyAnimation, _godot_object, track_idx, key_idx, animation);
	}
	/**
	Returns the end offset of the key identified by `key_idx`. The `track_idx` must be the index of an Audio Track.
	End offset is the number of seconds cut off at the ending of the audio stream.
	*/
	double audioTrackGetKeyEndOffset(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.audioTrackGetKeyEndOffset, _godot_object, track_idx, key_idx);
	}
	/**
	Returns the start offset of the key identified by `key_idx`. The `track_idx` must be the index of an Audio Track.
	Start offset is the number of seconds cut off at the beginning of the audio stream.
	*/
	double audioTrackGetKeyStartOffset(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.audioTrackGetKeyStartOffset, _godot_object, track_idx, key_idx);
	}
	/**
	Returns the audio stream of the key identified by `key_idx`. The `track_idx` must be the index of an Audio Track.
	*/
	Ref!Resource audioTrackGetKeyStream(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(GDNativeClassBinding.audioTrackGetKeyStream, _godot_object, track_idx, key_idx);
	}
	/**
	Inserts an Audio Track key at the given `time` in seconds. The `track_idx` must be the index of an Audio Track.
	`stream` is the $(D AudioStream) resource to play. `start_offset` is the number of seconds cut off at the beginning of the audio stream, while `end_offset` is at the ending.
	*/
	long audioTrackInsertKey(in long track_idx, in double time, Resource stream, in double start_offset = 0, in double end_offset = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.audioTrackInsertKey, _godot_object, track_idx, time, stream, start_offset, end_offset);
	}
	/**
	Sets the end offset of the key identified by `key_idx` to value `offset`. The `track_idx` must be the index of an Audio Track.
	*/
	void audioTrackSetKeyEndOffset(in long track_idx, in long key_idx, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.audioTrackSetKeyEndOffset, _godot_object, track_idx, key_idx, offset);
	}
	/**
	Sets the start offset of the key identified by `key_idx` to value `offset`. The `track_idx` must be the index of an Audio Track.
	*/
	void audioTrackSetKeyStartOffset(in long track_idx, in long key_idx, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.audioTrackSetKeyStartOffset, _godot_object, track_idx, key_idx, offset);
	}
	/**
	Sets the stream of the key identified by `key_idx` to value `stream`. The `track_idx` must be the index of an Audio Track.
	*/
	void audioTrackSetKeyStream(in long track_idx, in long key_idx, Resource stream)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.audioTrackSetKeyStream, _godot_object, track_idx, key_idx, stream);
	}
	/**
	Returns the in handle of the key identified by `key_idx`. The `track_idx` must be the index of a Bezier Track.
	*/
	Vector2 bezierTrackGetKeyInHandle(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.bezierTrackGetKeyInHandle, _godot_object, track_idx, key_idx);
	}
	/**
	Returns the out handle of the key identified by `key_idx`. The `track_idx` must be the index of a Bezier Track.
	*/
	Vector2 bezierTrackGetKeyOutHandle(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.bezierTrackGetKeyOutHandle, _godot_object, track_idx, key_idx);
	}
	/**
	Returns the value of the key identified by `key_idx`. The `track_idx` must be the index of a Bezier Track.
	*/
	double bezierTrackGetKeyValue(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.bezierTrackGetKeyValue, _godot_object, track_idx, key_idx);
	}
	/**
	Inserts a Bezier Track key at the given `time` in seconds. The `track_idx` must be the index of a Bezier Track.
	`in_handle` is the left-side weight of the added Bezier curve point, `out_handle` is the right-side one, while `value` is the actual value at this point.
	*/
	long bezierTrackInsertKey(in long track_idx, in double time, in double value, in Vector2 in_handle = Vector2(0, 0), in Vector2 out_handle = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bezierTrackInsertKey, _godot_object, track_idx, time, value, in_handle, out_handle);
	}
	/**
	Returns the interpolated value at the given `time` (in seconds). The `track_idx` must be the index of a Bezier Track.
	*/
	double bezierTrackInterpolate(in long track_idx, in double time) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.bezierTrackInterpolate, _godot_object, track_idx, time);
	}
	/**
	Sets the in handle of the key identified by `key_idx` to value `in_handle`. The `track_idx` must be the index of a Bezier Track.
	*/
	void bezierTrackSetKeyInHandle(in long track_idx, in long key_idx, in Vector2 in_handle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bezierTrackSetKeyInHandle, _godot_object, track_idx, key_idx, in_handle);
	}
	/**
	Sets the out handle of the key identified by `key_idx` to value `out_handle`. The `track_idx` must be the index of a Bezier Track.
	*/
	void bezierTrackSetKeyOutHandle(in long track_idx, in long key_idx, in Vector2 out_handle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bezierTrackSetKeyOutHandle, _godot_object, track_idx, key_idx, out_handle);
	}
	/**
	Sets the value of the key identified by `key_idx` to the given value. The `track_idx` must be the index of a Bezier Track.
	*/
	void bezierTrackSetKeyValue(in long track_idx, in long key_idx, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bezierTrackSetKeyValue, _godot_object, track_idx, key_idx, value);
	}
	/**
	Clear the animation (clear all tracks and reset all).
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	Adds a new track that is a copy of the given track from `to_animation`.
	*/
	void copyTrack(in long track_idx, Animation to_animation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.copyTrack, _godot_object, track_idx, to_animation);
	}
	/**
	Returns the index of the specified track. If the track is not found, return -1.
	*/
	long findTrack(NodePathArg0)(in NodePathArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.findTrack, _godot_object, path);
	}
	/**
	
	*/
	double getLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLength, _godot_object);
	}
	/**
	
	*/
	double getStep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getStep, _godot_object);
	}
	/**
	Returns the amount of tracks in the animation.
	*/
	long getTrackCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTrackCount, _godot_object);
	}
	/**
	
	*/
	bool hasLoop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasLoop, _godot_object);
	}
	/**
	Returns all the key indices of a method track, given a position and delta time.
	*/
	PoolIntArray methodTrackGetKeyIndices(in long track_idx, in double time_sec, in double delta) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.methodTrackGetKeyIndices, _godot_object, track_idx, time_sec, delta);
	}
	/**
	Returns the method name of a method track.
	*/
	String methodTrackGetName(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.methodTrackGetName, _godot_object, track_idx, key_idx);
	}
	/**
	Returns the arguments values to be called on a method track for a given key in a given track.
	*/
	Array methodTrackGetParams(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.methodTrackGetParams, _godot_object, track_idx, key_idx);
	}
	/**
	Removes a track by specifying the track index.
	*/
	void removeTrack(in long track_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeTrack, _godot_object, track_idx);
	}
	/**
	
	*/
	void setLength(in double time_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLength, _godot_object, time_sec);
	}
	/**
	
	*/
	void setLoop(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLoop, _godot_object, enabled);
	}
	/**
	
	*/
	void setStep(in double size_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStep, _godot_object, size_sec);
	}
	/**
	Finds the key index by time in a given track. Optionally, only find it if the exact time is given.
	*/
	long trackFindKey(in long track_idx, in double time, in bool exact = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.trackFindKey, _godot_object, track_idx, time, exact);
	}
	/**
	Returns `true` if the track at `idx` wraps the interpolation loop. New tracks wrap the interpolation loop by default.
	*/
	bool trackGetInterpolationLoopWrap(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.trackGetInterpolationLoopWrap, _godot_object, track_idx);
	}
	/**
	Returns the interpolation type of a given track.
	*/
	Animation.InterpolationType trackGetInterpolationType(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation.InterpolationType)(GDNativeClassBinding.trackGetInterpolationType, _godot_object, track_idx);
	}
	/**
	Returns the amount of keys in a given track.
	*/
	long trackGetKeyCount(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.trackGetKeyCount, _godot_object, track_idx);
	}
	/**
	Returns the time at which the key is located.
	*/
	double trackGetKeyTime(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.trackGetKeyTime, _godot_object, track_idx, key_idx);
	}
	/**
	Returns the transition curve (easing) for a specific key (see the built-in math function $(D @GDScript.ease)).
	*/
	double trackGetKeyTransition(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.trackGetKeyTransition, _godot_object, track_idx, key_idx);
	}
	/**
	Returns the value of a given key in a given track.
	*/
	Variant trackGetKeyValue(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.trackGetKeyValue, _godot_object, track_idx, key_idx);
	}
	/**
	Gets the path of a track. For more information on the path format, see $(D trackSetPath).
	*/
	NodePath trackGetPath(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.trackGetPath, _godot_object, track_idx);
	}
	/**
	Gets the type of a track.
	*/
	Animation.TrackType trackGetType(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation.TrackType)(GDNativeClassBinding.trackGetType, _godot_object, track_idx);
	}
	/**
	Insert a generic key in a given track.
	*/
	void trackInsertKey(VariantArg2)(in long track_idx, in double time, in VariantArg2 key, in double transition = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackInsertKey, _godot_object, track_idx, time, key, transition);
	}
	/**
	Returns `true` if the track at index `idx` is enabled.
	*/
	bool trackIsEnabled(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.trackIsEnabled, _godot_object, track_idx);
	}
	/**
	Returns `true` if the given track is imported. Else, return `false`.
	*/
	bool trackIsImported(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.trackIsImported, _godot_object, track_idx);
	}
	/**
	Moves a track down.
	*/
	void trackMoveDown(in long track_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackMoveDown, _godot_object, track_idx);
	}
	/**
	Changes the index position of track `idx` to the one defined in `to_idx`.
	*/
	void trackMoveTo(in long track_idx, in long to_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackMoveTo, _godot_object, track_idx, to_idx);
	}
	/**
	Moves a track up.
	*/
	void trackMoveUp(in long track_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackMoveUp, _godot_object, track_idx);
	}
	/**
	Removes a key by index in a given track.
	*/
	void trackRemoveKey(in long track_idx, in long key_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackRemoveKey, _godot_object, track_idx, key_idx);
	}
	/**
	Removes a key by position (seconds) in a given track.
	*/
	void trackRemoveKeyAtPosition(in long track_idx, in double position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackRemoveKeyAtPosition, _godot_object, track_idx, position);
	}
	/**
	Enables/disables the given track. Tracks are enabled by default.
	*/
	void trackSetEnabled(in long track_idx, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetEnabled, _godot_object, track_idx, enabled);
	}
	/**
	Sets the given track as imported or not.
	*/
	void trackSetImported(in long track_idx, in bool imported)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetImported, _godot_object, track_idx, imported);
	}
	/**
	If `true`, the track at `idx` wraps the interpolation loop.
	*/
	void trackSetInterpolationLoopWrap(in long track_idx, in bool interpolation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetInterpolationLoopWrap, _godot_object, track_idx, interpolation);
	}
	/**
	Sets the interpolation type of a given track.
	*/
	void trackSetInterpolationType(in long track_idx, in long interpolation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetInterpolationType, _godot_object, track_idx, interpolation);
	}
	/**
	Sets the time of an existing key.
	*/
	void trackSetKeyTime(in long track_idx, in long key_idx, in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetKeyTime, _godot_object, track_idx, key_idx, time);
	}
	/**
	Sets the transition curve (easing) for a specific key (see the built-in math function $(D @GDScript.ease)).
	*/
	void trackSetKeyTransition(in long track_idx, in long key_idx, in double transition)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetKeyTransition, _godot_object, track_idx, key_idx, transition);
	}
	/**
	Sets the value of an existing key.
	*/
	void trackSetKeyValue(VariantArg2)(in long track_idx, in long key, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetKeyValue, _godot_object, track_idx, key, value);
	}
	/**
	Sets the path of a track. Paths must be valid scene-tree paths to a node, and must be specified starting from the parent node of the node that will reproduce the animation. Tracks that control properties or bones must append their name after the path, separated by `":"`.
	For example, `"character/skeleton:ankle"` or `"character/mesh:transform/local"`.
	*/
	void trackSetPath(NodePathArg1)(in long track_idx, in NodePathArg1 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetPath, _godot_object, track_idx, path);
	}
	/**
	Swaps the track `idx`'s index position with the track `with_idx`.
	*/
	void trackSwap(in long track_idx, in long with_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSwap, _godot_object, track_idx, with_idx);
	}
	/**
	Insert a transform key for a transform track.
	*/
	long transformTrackInsertKey(in long track_idx, in double time, in Vector3 location, in Quat rotation, in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.transformTrackInsertKey, _godot_object, track_idx, time, location, rotation, scale);
	}
	/**
	Returns the interpolated value of a transform track at a given time (in seconds). An array consisting of 3 elements: position ($(D Vector3)), rotation ($(D Quat)) and scale ($(D Vector3)).
	*/
	Array transformTrackInterpolate(in long track_idx, in double time_sec) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.transformTrackInterpolate, _godot_object, track_idx, time_sec);
	}
	/**
	Returns all the key indices of a value track, given a position and delta time.
	*/
	PoolIntArray valueTrackGetKeyIndices(in long track_idx, in double time_sec, in double delta) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.valueTrackGetKeyIndices, _godot_object, track_idx, time_sec, delta);
	}
	/**
	Returns the update mode of a value track.
	*/
	Animation.UpdateMode valueTrackGetUpdateMode(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation.UpdateMode)(GDNativeClassBinding.valueTrackGetUpdateMode, _godot_object, track_idx);
	}
	/**
	Sets the update mode (see $(D updatemode)) of a value track.
	*/
	void valueTrackSetUpdateMode(in long track_idx, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.valueTrackSetUpdateMode, _godot_object, track_idx, mode);
	}
	/**
	The total length of the animation (in seconds).
	$(B Note:) Length is not delimited by the last key, as this one may be before or after the end to ensure correct interpolation and looping.
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
