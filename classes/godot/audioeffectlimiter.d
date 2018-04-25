/**
Adds a soft clip Limiter audio effect to an Audio bus.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectlimiter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audioeffect;
/**
Adds a soft clip Limiter audio effect to an Audio bus.

A limiter is similar to a compressor, but it’s less flexible and designed to disallow sound going over a given dB threshold. Adding one in the Master Bus is always recommended to reduce the effects of clipping.
Soft clipping starts to reduce the peaks a little below the threshold level and progressively increases its effect as the input level increases such that the threshold is never exceeded.
*/
@GodotBaseClass struct AudioEffectLimiter
{
	static immutable string _GODOT_internal_name = "AudioEffectLimiter";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioEffectLimiter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectLimiter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectLimiter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectLimiter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectLimiter)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, double) _GODOT_set_ceiling_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ceiling_db") = _GODOT_set_ceiling_db;
	/**
	
	*/
	void setCeilingDb(in double ceiling)
	{
		_GODOT_set_ceiling_db.bind("AudioEffectLimiter", "set_ceiling_db");
		ptrcall!(void)(_GODOT_set_ceiling_db, _godot_object, ceiling);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ceiling_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ceiling_db") = _GODOT_get_ceiling_db;
	/**
	
	*/
	double getCeilingDb() const
	{
		_GODOT_get_ceiling_db.bind("AudioEffectLimiter", "get_ceiling_db");
		return ptrcall!(double)(_GODOT_get_ceiling_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_threshold_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_threshold_db") = _GODOT_set_threshold_db;
	/**
	
	*/
	void setThresholdDb(in double threshold)
	{
		_GODOT_set_threshold_db.bind("AudioEffectLimiter", "set_threshold_db");
		ptrcall!(void)(_GODOT_set_threshold_db, _godot_object, threshold);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_threshold_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_threshold_db") = _GODOT_get_threshold_db;
	/**
	
	*/
	double getThresholdDb() const
	{
		_GODOT_get_threshold_db.bind("AudioEffectLimiter", "get_threshold_db");
		return ptrcall!(double)(_GODOT_get_threshold_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_soft_clip_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_soft_clip_db") = _GODOT_set_soft_clip_db;
	/**
	
	*/
	void setSoftClipDb(in double soft_clip)
	{
		_GODOT_set_soft_clip_db.bind("AudioEffectLimiter", "set_soft_clip_db");
		ptrcall!(void)(_GODOT_set_soft_clip_db, _godot_object, soft_clip);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_soft_clip_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_soft_clip_db") = _GODOT_get_soft_clip_db;
	/**
	
	*/
	double getSoftClipDb() const
	{
		_GODOT_get_soft_clip_db.bind("AudioEffectLimiter", "get_soft_clip_db");
		return ptrcall!(double)(_GODOT_get_soft_clip_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_soft_clip_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_soft_clip_ratio") = _GODOT_set_soft_clip_ratio;
	/**
	
	*/
	void setSoftClipRatio(in double soft_clip)
	{
		_GODOT_set_soft_clip_ratio.bind("AudioEffectLimiter", "set_soft_clip_ratio");
		ptrcall!(void)(_GODOT_set_soft_clip_ratio, _godot_object, soft_clip);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_soft_clip_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_soft_clip_ratio") = _GODOT_get_soft_clip_ratio;
	/**
	
	*/
	double getSoftClipRatio() const
	{
		_GODOT_get_soft_clip_ratio.bind("AudioEffectLimiter", "get_soft_clip_ratio");
		return ptrcall!(double)(_GODOT_get_soft_clip_ratio, _godot_object);
	}
	/**
	The waveform's maximum allowed value. Value can range from -20 to -0.1. Default value: `-0.1dB`.
	*/
	@property double ceilingDb()
	{
		return getCeilingDb();
	}
	/// ditto
	@property void ceilingDb(double v)
	{
		setCeilingDb(v);
	}
	/**
	Threshold from which the limiter begins to be active. Value can range from -30 to 0. Default value: `0dB`.
	*/
	@property double thresholdDb()
	{
		return getThresholdDb();
	}
	/// ditto
	@property void thresholdDb(double v)
	{
		setThresholdDb(v);
	}
	/**
	Applies a gain to the limited waves. Value can range from 0 to 6. Default value: `2dB`.
	*/
	@property double softClipDb()
	{
		return getSoftClipDb();
	}
	/// ditto
	@property void softClipDb(double v)
	{
		setSoftClipDb(v);
	}
	/**
	
	*/
	@property double softClipRatio()
	{
		return getSoftClipRatio();
	}
	/// ditto
	@property void softClipRatio(double v)
	{
		setSoftClipRatio(v);
	}
}
