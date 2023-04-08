/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.resource;
/**

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
		@GodotName("value_track_interpolate") GodotMethod!(Variant, long, double) valueTrackInterpolate;
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
	/// 
	enum TrackType : int
	{
		/** */
		typeValue = 0,
		/** */
		typeTransform = 1,
		/** */
		typeMethod = 2,
		/** */
		typeBezier = 3,
		/** */
		typeAudio = 4,
		/** */
		typeAnimation = 5,
	}
	/// 
	enum UpdateMode : int
	{
		/** */
		updateContinuous = 0,
		/** */
		updateDiscrete = 1,
		/** */
		updateTrigger = 2,
		/** */
		updateCapture = 3,
	}
	/// 
	enum InterpolationType : int
	{
		/** */
		interpolationNearest = 0,
		/** */
		interpolationLinear = 1,
		/** */
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
	
	*/
	long addTrack(in long type, in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.addTrack, _godot_object, type, at_position);
	}
	/**
	
	*/
	String animationTrackGetKeyAnimation(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.animationTrackGetKeyAnimation, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	long animationTrackInsertKey(in long track_idx, in double time, in String animation)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.animationTrackInsertKey, _godot_object, track_idx, time, animation);
	}
	/**
	
	*/
	void animationTrackSetKeyAnimation(in long track_idx, in long key_idx, in String animation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.animationTrackSetKeyAnimation, _godot_object, track_idx, key_idx, animation);
	}
	/**
	
	*/
	double audioTrackGetKeyEndOffset(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.audioTrackGetKeyEndOffset, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	double audioTrackGetKeyStartOffset(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.audioTrackGetKeyStartOffset, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	Ref!Resource audioTrackGetKeyStream(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(GDNativeClassBinding.audioTrackGetKeyStream, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	long audioTrackInsertKey(in long track_idx, in double time, Resource stream, in double start_offset = 0, in double end_offset = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.audioTrackInsertKey, _godot_object, track_idx, time, stream, start_offset, end_offset);
	}
	/**
	
	*/
	void audioTrackSetKeyEndOffset(in long track_idx, in long key_idx, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.audioTrackSetKeyEndOffset, _godot_object, track_idx, key_idx, offset);
	}
	/**
	
	*/
	void audioTrackSetKeyStartOffset(in long track_idx, in long key_idx, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.audioTrackSetKeyStartOffset, _godot_object, track_idx, key_idx, offset);
	}
	/**
	
	*/
	void audioTrackSetKeyStream(in long track_idx, in long key_idx, Resource stream)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.audioTrackSetKeyStream, _godot_object, track_idx, key_idx, stream);
	}
	/**
	
	*/
	Vector2 bezierTrackGetKeyInHandle(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.bezierTrackGetKeyInHandle, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	Vector2 bezierTrackGetKeyOutHandle(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.bezierTrackGetKeyOutHandle, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	double bezierTrackGetKeyValue(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.bezierTrackGetKeyValue, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	long bezierTrackInsertKey(in long track_idx, in double time, in double value, in Vector2 in_handle = Vector2(0, 0), in Vector2 out_handle = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.bezierTrackInsertKey, _godot_object, track_idx, time, value, in_handle, out_handle);
	}
	/**
	
	*/
	double bezierTrackInterpolate(in long track_idx, in double time) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.bezierTrackInterpolate, _godot_object, track_idx, time);
	}
	/**
	
	*/
	void bezierTrackSetKeyInHandle(in long track_idx, in long key_idx, in Vector2 in_handle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bezierTrackSetKeyInHandle, _godot_object, track_idx, key_idx, in_handle);
	}
	/**
	
	*/
	void bezierTrackSetKeyOutHandle(in long track_idx, in long key_idx, in Vector2 out_handle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bezierTrackSetKeyOutHandle, _godot_object, track_idx, key_idx, out_handle);
	}
	/**
	
	*/
	void bezierTrackSetKeyValue(in long track_idx, in long key_idx, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bezierTrackSetKeyValue, _godot_object, track_idx, key_idx, value);
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	void copyTrack(in long track_idx, Animation to_animation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.copyTrack, _godot_object, track_idx, to_animation);
	}
	/**
	
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
	
	*/
	PoolIntArray methodTrackGetKeyIndices(in long track_idx, in double time_sec, in double delta) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.methodTrackGetKeyIndices, _godot_object, track_idx, time_sec, delta);
	}
	/**
	
	*/
	String methodTrackGetName(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.methodTrackGetName, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	Array methodTrackGetParams(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.methodTrackGetParams, _godot_object, track_idx, key_idx);
	}
	/**
	
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
	
	*/
	long trackFindKey(in long track_idx, in double time, in bool exact = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.trackFindKey, _godot_object, track_idx, time, exact);
	}
	/**
	
	*/
	bool trackGetInterpolationLoopWrap(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.trackGetInterpolationLoopWrap, _godot_object, track_idx);
	}
	/**
	
	*/
	Animation.InterpolationType trackGetInterpolationType(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation.InterpolationType)(GDNativeClassBinding.trackGetInterpolationType, _godot_object, track_idx);
	}
	/**
	
	*/
	long trackGetKeyCount(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.trackGetKeyCount, _godot_object, track_idx);
	}
	/**
	
	*/
	double trackGetKeyTime(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.trackGetKeyTime, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	double trackGetKeyTransition(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.trackGetKeyTransition, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	Variant trackGetKeyValue(in long track_idx, in long key_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.trackGetKeyValue, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	NodePath trackGetPath(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.trackGetPath, _godot_object, track_idx);
	}
	/**
	
	*/
	Animation.TrackType trackGetType(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation.TrackType)(GDNativeClassBinding.trackGetType, _godot_object, track_idx);
	}
	/**
	
	*/
	void trackInsertKey(VariantArg2)(in long track_idx, in double time, in VariantArg2 key, in double transition = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackInsertKey, _godot_object, track_idx, time, key, transition);
	}
	/**
	
	*/
	bool trackIsEnabled(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.trackIsEnabled, _godot_object, track_idx);
	}
	/**
	
	*/
	bool trackIsImported(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.trackIsImported, _godot_object, track_idx);
	}
	/**
	
	*/
	void trackMoveDown(in long track_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackMoveDown, _godot_object, track_idx);
	}
	/**
	
	*/
	void trackMoveTo(in long track_idx, in long to_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackMoveTo, _godot_object, track_idx, to_idx);
	}
	/**
	
	*/
	void trackMoveUp(in long track_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackMoveUp, _godot_object, track_idx);
	}
	/**
	
	*/
	void trackRemoveKey(in long track_idx, in long key_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackRemoveKey, _godot_object, track_idx, key_idx);
	}
	/**
	
	*/
	void trackRemoveKeyAtPosition(in long track_idx, in double position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackRemoveKeyAtPosition, _godot_object, track_idx, position);
	}
	/**
	
	*/
	void trackSetEnabled(in long track_idx, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetEnabled, _godot_object, track_idx, enabled);
	}
	/**
	
	*/
	void trackSetImported(in long track_idx, in bool imported)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetImported, _godot_object, track_idx, imported);
	}
	/**
	
	*/
	void trackSetInterpolationLoopWrap(in long track_idx, in bool interpolation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetInterpolationLoopWrap, _godot_object, track_idx, interpolation);
	}
	/**
	
	*/
	void trackSetInterpolationType(in long track_idx, in long interpolation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetInterpolationType, _godot_object, track_idx, interpolation);
	}
	/**
	
	*/
	void trackSetKeyTime(in long track_idx, in long key_idx, in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetKeyTime, _godot_object, track_idx, key_idx, time);
	}
	/**
	
	*/
	void trackSetKeyTransition(in long track_idx, in long key_idx, in double transition)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetKeyTransition, _godot_object, track_idx, key_idx, transition);
	}
	/**
	
	*/
	void trackSetKeyValue(VariantArg2)(in long track_idx, in long key, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetKeyValue, _godot_object, track_idx, key, value);
	}
	/**
	
	*/
	void trackSetPath(NodePathArg1)(in long track_idx, in NodePathArg1 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSetPath, _godot_object, track_idx, path);
	}
	/**
	
	*/
	void trackSwap(in long track_idx, in long with_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.trackSwap, _godot_object, track_idx, with_idx);
	}
	/**
	
	*/
	long transformTrackInsertKey(in long track_idx, in double time, in Vector3 location, in Quat rotation, in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.transformTrackInsertKey, _godot_object, track_idx, time, location, rotation, scale);
	}
	/**
	
	*/
	Array transformTrackInterpolate(in long track_idx, in double time_sec) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.transformTrackInterpolate, _godot_object, track_idx, time_sec);
	}
	/**
	
	*/
	PoolIntArray valueTrackGetKeyIndices(in long track_idx, in double time_sec, in double delta) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.valueTrackGetKeyIndices, _godot_object, track_idx, time_sec, delta);
	}
	/**
	
	*/
	Animation.UpdateMode valueTrackGetUpdateMode(in long track_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation.UpdateMode)(GDNativeClassBinding.valueTrackGetUpdateMode, _godot_object, track_idx);
	}
	/**
	
	*/
	Variant valueTrackInterpolate(in long track_idx, in double time_sec) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.valueTrackInterpolate, _godot_object, track_idx, time_sec);
	}
	/**
	
	*/
	void valueTrackSetUpdateMode(in long track_idx, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.valueTrackSetUpdateMode, _godot_object, track_idx, mode);
	}
	/**
	
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
