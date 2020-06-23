/**
Adds a compressor audio effect to an audio bus.
Reduces sounds that exceed a certain threshold level, smooths out the dynamics and increases the overall volume.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectcompressor;
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
import godot.resource;
/**
Adds a compressor audio effect to an audio bus.
Reduces sounds that exceed a certain threshold level, smooths out the dynamics and increases the overall volume.

Dynamic range compressor reduces the level of the sound when the amplitude goes over a certain threshold in Decibels. One of the main uses of a compressor is to increase the dynamic range by clipping as little as possible (when sound goes over 0dB).
Compressor has many uses in the mix:
- In the Master bus to compress the whole output (although an $(D AudioEffectLimiter) is probably better).
- In voice channels to ensure they sound as balanced as possible.
- Sidechained. This can reduce the sound level sidechained with another audio bus for threshold detection. This technique is common in video game mixing to the level of music and SFX while voices are being heard.
- Accentuates transients by using a wider attack, making effects sound more punchy.
*/
@GodotBaseClass struct AudioEffectCompressor
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectCompressor";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_attack_us") GodotMethod!(double) getAttackUs;
		@GodotName("get_gain") GodotMethod!(double) getGain;
		@GodotName("get_mix") GodotMethod!(double) getMix;
		@GodotName("get_ratio") GodotMethod!(double) getRatio;
		@GodotName("get_release_ms") GodotMethod!(double) getReleaseMs;
		@GodotName("get_sidechain") GodotMethod!(String) getSidechain;
		@GodotName("get_threshold") GodotMethod!(double) getThreshold;
		@GodotName("set_attack_us") GodotMethod!(void, double) setAttackUs;
		@GodotName("set_gain") GodotMethod!(void, double) setGain;
		@GodotName("set_mix") GodotMethod!(void, double) setMix;
		@GodotName("set_ratio") GodotMethod!(void, double) setRatio;
		@GodotName("set_release_ms") GodotMethod!(void, double) setReleaseMs;
		@GodotName("set_sidechain") GodotMethod!(void, String) setSidechain;
		@GodotName("set_threshold") GodotMethod!(void, double) setThreshold;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectCompressor other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) AudioEffectCompressor opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of AudioEffectCompressor.
	/// Note: use `memnew!AudioEffectCompressor` instead.
	static AudioEffectCompressor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectCompressor");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectCompressor)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getAttackUs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAttackUs, _godot_object);
	}
	/**
	
	*/
	double getGain() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGain, _godot_object);
	}
	/**
	
	*/
	double getMix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMix, _godot_object);
	}
	/**
	
	*/
	double getRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRatio, _godot_object);
	}
	/**
	
	*/
	double getReleaseMs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getReleaseMs, _godot_object);
	}
	/**
	
	*/
	String getSidechain() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSidechain, _godot_object);
	}
	/**
	
	*/
	double getThreshold() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getThreshold, _godot_object);
	}
	/**
	
	*/
	void setAttackUs(in double attack_us)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAttackUs, _godot_object, attack_us);
	}
	/**
	
	*/
	void setGain(in double gain)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGain, _godot_object, gain);
	}
	/**
	
	*/
	void setMix(in double mix)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMix, _godot_object, mix);
	}
	/**
	
	*/
	void setRatio(in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRatio, _godot_object, ratio);
	}
	/**
	
	*/
	void setReleaseMs(in double release_ms)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setReleaseMs, _godot_object, release_ms);
	}
	/**
	
	*/
	void setSidechain(in String sidechain)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSidechain, _godot_object, sidechain);
	}
	/**
	
	*/
	void setThreshold(in double threshold)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setThreshold, _godot_object, threshold);
	}
	/**
	Compressor's reaction time when the signal exceeds the threshold, in microseconds. Value can range from 20 to 2000.
	*/
	@property double attackUs()
	{
		return getAttackUs();
	}
	/// ditto
	@property void attackUs(double v)
	{
		setAttackUs(v);
	}
	/**
	Gain applied to the output signal.
	*/
	@property double gain()
	{
		return getGain();
	}
	/// ditto
	@property void gain(double v)
	{
		setGain(v);
	}
	/**
	Balance between original signal and effect signal. Value can range from 0 (totally dry) to 1 (totally wet).
	*/
	@property double mix()
	{
		return getMix();
	}
	/// ditto
	@property void mix(double v)
	{
		setMix(v);
	}
	/**
	Amount of compression applied to the audio once it passes the threshold level. The higher the ratio, the more the loud parts of the audio will be compressed. Value can range from 1 to 48.
	*/
	@property double ratio()
	{
		return getRatio();
	}
	/// ditto
	@property void ratio(double v)
	{
		setRatio(v);
	}
	/**
	Compressor's delay time to stop reducing the signal after the signal level falls below the threshold, in milliseconds. Value can range from 20 to 2000.
	*/
	@property double releaseMs()
	{
		return getReleaseMs();
	}
	/// ditto
	@property void releaseMs(double v)
	{
		setReleaseMs(v);
	}
	/**
	Reduce the sound level using another audio bus for threshold detection.
	*/
	@property String sidechain()
	{
		return getSidechain();
	}
	/// ditto
	@property void sidechain(String v)
	{
		setSidechain(v);
	}
	/**
	The level above which compression is applied to the audio. Value can range from -60 to 0.
	*/
	@property double threshold()
	{
		return getThreshold();
	}
	/// ditto
	@property void threshold(double v)
	{
		setThreshold(v);
	}
}
