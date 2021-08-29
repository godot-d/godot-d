/**
Adds a chorus audio effect.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectchorus;
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
import godot.audioeffect;
import godot.resource;
/**
Adds a chorus audio effect.

The effect applies a filter with voices to duplicate the audio source and manipulate it through the filter.
*/
@GodotBaseClass struct AudioEffectChorus
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectChorus";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_dry") GodotMethod!(double) getDry;
		@GodotName("get_voice_count") GodotMethod!(long) getVoiceCount;
		@GodotName("get_voice_cutoff_hz") GodotMethod!(double, long) getVoiceCutoffHz;
		@GodotName("get_voice_delay_ms") GodotMethod!(double, long) getVoiceDelayMs;
		@GodotName("get_voice_depth_ms") GodotMethod!(double, long) getVoiceDepthMs;
		@GodotName("get_voice_level_db") GodotMethod!(double, long) getVoiceLevelDb;
		@GodotName("get_voice_pan") GodotMethod!(double, long) getVoicePan;
		@GodotName("get_voice_rate_hz") GodotMethod!(double, long) getVoiceRateHz;
		@GodotName("get_wet") GodotMethod!(double) getWet;
		@GodotName("set_dry") GodotMethod!(void, double) setDry;
		@GodotName("set_voice_count") GodotMethod!(void, long) setVoiceCount;
		@GodotName("set_voice_cutoff_hz") GodotMethod!(void, long, double) setVoiceCutoffHz;
		@GodotName("set_voice_delay_ms") GodotMethod!(void, long, double) setVoiceDelayMs;
		@GodotName("set_voice_depth_ms") GodotMethod!(void, long, double) setVoiceDepthMs;
		@GodotName("set_voice_level_db") GodotMethod!(void, long, double) setVoiceLevelDb;
		@GodotName("set_voice_pan") GodotMethod!(void, long, double) setVoicePan;
		@GodotName("set_voice_rate_hz") GodotMethod!(void, long, double) setVoiceRateHz;
		@GodotName("set_wet") GodotMethod!(void, double) setWet;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectChorus other) const
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
	/// Construct a new instance of AudioEffectChorus.
	/// Note: use `memnew!AudioEffectChorus` instead.
	static AudioEffectChorus _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectChorus");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectChorus)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getDry() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDry, _godot_object);
	}
	/**
	
	*/
	long getVoiceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVoiceCount, _godot_object);
	}
	/**
	
	*/
	double getVoiceCutoffHz(in long voice_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVoiceCutoffHz, _godot_object, voice_idx);
	}
	/**
	
	*/
	double getVoiceDelayMs(in long voice_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVoiceDelayMs, _godot_object, voice_idx);
	}
	/**
	
	*/
	double getVoiceDepthMs(in long voice_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVoiceDepthMs, _godot_object, voice_idx);
	}
	/**
	
	*/
	double getVoiceLevelDb(in long voice_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVoiceLevelDb, _godot_object, voice_idx);
	}
	/**
	
	*/
	double getVoicePan(in long voice_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVoicePan, _godot_object, voice_idx);
	}
	/**
	
	*/
	double getVoiceRateHz(in long voice_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVoiceRateHz, _godot_object, voice_idx);
	}
	/**
	
	*/
	double getWet() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getWet, _godot_object);
	}
	/**
	
	*/
	void setDry(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDry, _godot_object, amount);
	}
	/**
	
	*/
	void setVoiceCount(in long voices)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVoiceCount, _godot_object, voices);
	}
	/**
	
	*/
	void setVoiceCutoffHz(in long voice_idx, in double cutoff_hz)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVoiceCutoffHz, _godot_object, voice_idx, cutoff_hz);
	}
	/**
	
	*/
	void setVoiceDelayMs(in long voice_idx, in double delay_ms)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVoiceDelayMs, _godot_object, voice_idx, delay_ms);
	}
	/**
	
	*/
	void setVoiceDepthMs(in long voice_idx, in double depth_ms)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVoiceDepthMs, _godot_object, voice_idx, depth_ms);
	}
	/**
	
	*/
	void setVoiceLevelDb(in long voice_idx, in double level_db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVoiceLevelDb, _godot_object, voice_idx, level_db);
	}
	/**
	
	*/
	void setVoicePan(in long voice_idx, in double pan)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVoicePan, _godot_object, voice_idx, pan);
	}
	/**
	
	*/
	void setVoiceRateHz(in long voice_idx, in double rate_hz)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVoiceRateHz, _godot_object, voice_idx, rate_hz);
	}
	/**
	
	*/
	void setWet(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWet, _godot_object, amount);
	}
	/**
	The effect's raw signal.
	*/
	@property double dry()
	{
		return getDry();
	}
	/// ditto
	@property void dry(double v)
	{
		setDry(v);
	}
	/**
	The voice's cutoff frequency.
	*/
	@property double voice1CutoffHz()
	{
		return getVoiceCutoffHz(0);
	}
	/// ditto
	@property void voice1CutoffHz(double v)
	{
		setVoiceCutoffHz(0, v);
	}
	/**
	The voice's signal delay.
	*/
	@property double voice1DelayMs()
	{
		return getVoiceDelayMs(0);
	}
	/// ditto
	@property void voice1DelayMs(double v)
	{
		setVoiceDelayMs(0, v);
	}
	/**
	The voice filter's depth.
	*/
	@property double voice1DepthMs()
	{
		return getVoiceDepthMs(0);
	}
	/// ditto
	@property void voice1DepthMs(double v)
	{
		setVoiceDepthMs(0, v);
	}
	/**
	The voice's volume.
	*/
	@property double voice1LevelDb()
	{
		return getVoiceLevelDb(0);
	}
	/// ditto
	@property void voice1LevelDb(double v)
	{
		setVoiceLevelDb(0, v);
	}
	/**
	The voice's pan level.
	*/
	@property double voice1Pan()
	{
		return getVoicePan(0);
	}
	/// ditto
	@property void voice1Pan(double v)
	{
		setVoicePan(0, v);
	}
	/**
	The voice's filter rate.
	*/
	@property double voice1RateHz()
	{
		return getVoiceRateHz(0);
	}
	/// ditto
	@property void voice1RateHz(double v)
	{
		setVoiceRateHz(0, v);
	}
	/**
	The voice's cutoff frequency.
	*/
	@property double voice2CutoffHz()
	{
		return getVoiceCutoffHz(1);
	}
	/// ditto
	@property void voice2CutoffHz(double v)
	{
		setVoiceCutoffHz(1, v);
	}
	/**
	The voice's signal delay.
	*/
	@property double voice2DelayMs()
	{
		return getVoiceDelayMs(1);
	}
	/// ditto
	@property void voice2DelayMs(double v)
	{
		setVoiceDelayMs(1, v);
	}
	/**
	The voice filter's depth.
	*/
	@property double voice2DepthMs()
	{
		return getVoiceDepthMs(1);
	}
	/// ditto
	@property void voice2DepthMs(double v)
	{
		setVoiceDepthMs(1, v);
	}
	/**
	The voice's volume.
	*/
	@property double voice2LevelDb()
	{
		return getVoiceLevelDb(1);
	}
	/// ditto
	@property void voice2LevelDb(double v)
	{
		setVoiceLevelDb(1, v);
	}
	/**
	The voice's pan level.
	*/
	@property double voice2Pan()
	{
		return getVoicePan(1);
	}
	/// ditto
	@property void voice2Pan(double v)
	{
		setVoicePan(1, v);
	}
	/**
	The voice's filter rate.
	*/
	@property double voice2RateHz()
	{
		return getVoiceRateHz(1);
	}
	/// ditto
	@property void voice2RateHz(double v)
	{
		setVoiceRateHz(1, v);
	}
	/**
	The voice's cutoff frequency.
	*/
	@property double voice3CutoffHz()
	{
		return getVoiceCutoffHz(2);
	}
	/// ditto
	@property void voice3CutoffHz(double v)
	{
		setVoiceCutoffHz(2, v);
	}
	/**
	The voice's signal delay.
	*/
	@property double voice3DelayMs()
	{
		return getVoiceDelayMs(2);
	}
	/// ditto
	@property void voice3DelayMs(double v)
	{
		setVoiceDelayMs(2, v);
	}
	/**
	The voice filter's depth.
	*/
	@property double voice3DepthMs()
	{
		return getVoiceDepthMs(2);
	}
	/// ditto
	@property void voice3DepthMs(double v)
	{
		setVoiceDepthMs(2, v);
	}
	/**
	The voice's volume.
	*/
	@property double voice3LevelDb()
	{
		return getVoiceLevelDb(2);
	}
	/// ditto
	@property void voice3LevelDb(double v)
	{
		setVoiceLevelDb(2, v);
	}
	/**
	The voice's pan level.
	*/
	@property double voice3Pan()
	{
		return getVoicePan(2);
	}
	/// ditto
	@property void voice3Pan(double v)
	{
		setVoicePan(2, v);
	}
	/**
	The voice's filter rate.
	*/
	@property double voice3RateHz()
	{
		return getVoiceRateHz(2);
	}
	/// ditto
	@property void voice3RateHz(double v)
	{
		setVoiceRateHz(2, v);
	}
	/**
	The voice's cutoff frequency.
	*/
	@property double voice4CutoffHz()
	{
		return getVoiceCutoffHz(3);
	}
	/// ditto
	@property void voice4CutoffHz(double v)
	{
		setVoiceCutoffHz(3, v);
	}
	/**
	The voice's signal delay.
	*/
	@property double voice4DelayMs()
	{
		return getVoiceDelayMs(3);
	}
	/// ditto
	@property void voice4DelayMs(double v)
	{
		setVoiceDelayMs(3, v);
	}
	/**
	The voice filter's depth.
	*/
	@property double voice4DepthMs()
	{
		return getVoiceDepthMs(3);
	}
	/// ditto
	@property void voice4DepthMs(double v)
	{
		setVoiceDepthMs(3, v);
	}
	/**
	The voice's volume.
	*/
	@property double voice4LevelDb()
	{
		return getVoiceLevelDb(3);
	}
	/// ditto
	@property void voice4LevelDb(double v)
	{
		setVoiceLevelDb(3, v);
	}
	/**
	The voice's pan level.
	*/
	@property double voice4Pan()
	{
		return getVoicePan(3);
	}
	/// ditto
	@property void voice4Pan(double v)
	{
		setVoicePan(3, v);
	}
	/**
	The voice's filter rate.
	*/
	@property double voice4RateHz()
	{
		return getVoiceRateHz(3);
	}
	/// ditto
	@property void voice4RateHz(double v)
	{
		setVoiceRateHz(3, v);
	}
	/**
	The amount of voices in the effect.
	*/
	@property long voiceCount()
	{
		return getVoiceCount();
	}
	/// ditto
	@property void voiceCount(long v)
	{
		setVoiceCount(v);
	}
	/**
	The effect's processed signal.
	*/
	@property double wet()
	{
		return getWet();
	}
	/// ditto
	@property void wet(double v)
	{
		setWet(v);
	}
}
