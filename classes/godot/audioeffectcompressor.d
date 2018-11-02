/**
Adds a Compressor audio effect to an Audio bus.
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
import godot.reference;
/**
Adds a Compressor audio effect to an Audio bus.
Reduces sounds that exceed a certain threshold level, smooths out the dynamics and increases the overall volume.

Dynamic range compressor reduces the level of the sound when the amplitude goes over a certain threshold in Decibels. One of the main uses of a compressor is to increase the dynamic range by clipping as little as possible (when sound goes over 0dB).
Compressor has many uses in the mix:
- In the Master bus to compress the whole output (Although a $(D AudioEffectLimiter) is probably better)
- In voice channels to ensure they sound as balanced as possible.
- Sidechained. Sidechained, which can reduce the sound level sidechained with another audio bus for threshold detection.. This technique is very common in video game mixing to download the level of Music/SFX while voices are being heard.
- Accentuates transients by using a wider attack, making effects sound more punchy.
*/
@GodotBaseClass struct AudioEffectCompressor
{
	enum string _GODOT_internal_name = "AudioEffectCompressor";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_threshold") GodotMethod!(void, double) setThreshold;
		@GodotName("get_threshold") GodotMethod!(double) getThreshold;
		@GodotName("set_ratio") GodotMethod!(void, double) setRatio;
		@GodotName("get_ratio") GodotMethod!(double) getRatio;
		@GodotName("set_gain") GodotMethod!(void, double) setGain;
		@GodotName("get_gain") GodotMethod!(double) getGain;
		@GodotName("set_attack_us") GodotMethod!(void, double) setAttackUs;
		@GodotName("get_attack_us") GodotMethod!(double) getAttackUs;
		@GodotName("set_release_ms") GodotMethod!(void, double) setReleaseMs;
		@GodotName("get_release_ms") GodotMethod!(double) getReleaseMs;
		@GodotName("set_mix") GodotMethod!(void, double) setMix;
		@GodotName("get_mix") GodotMethod!(double) getMix;
		@GodotName("set_sidechain") GodotMethod!(void, String) setSidechain;
		@GodotName("get_sidechain") GodotMethod!(String) getSidechain;
	}
	bool opEquals(in AudioEffectCompressor other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectCompressor opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setThreshold(in double threshold)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setThreshold, _godot_object, threshold);
	}
	/**
	
	*/
	double getThreshold() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getThreshold, _godot_object);
	}
	/**
	
	*/
	void setRatio(in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRatio, _godot_object, ratio);
	}
	/**
	
	*/
	double getRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRatio, _godot_object);
	}
	/**
	
	*/
	void setGain(in double gain)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGain, _godot_object, gain);
	}
	/**
	
	*/
	double getGain() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGain, _godot_object);
	}
	/**
	
	*/
	void setAttackUs(in double attack_us)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAttackUs, _godot_object, attack_us);
	}
	/**
	
	*/
	double getAttackUs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAttackUs, _godot_object);
	}
	/**
	
	*/
	void setReleaseMs(in double release_ms)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setReleaseMs, _godot_object, release_ms);
	}
	/**
	
	*/
	double getReleaseMs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getReleaseMs, _godot_object);
	}
	/**
	
	*/
	void setMix(in double mix)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMix, _godot_object, mix);
	}
	/**
	
	*/
	double getMix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMix, _godot_object);
	}
	/**
	
	*/
	void setSidechain(StringArg0)(in StringArg0 sidechain)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSidechain, _godot_object, sidechain);
	}
	/**
	
	*/
	String getSidechain() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSidechain, _godot_object);
	}
	/**
	The level above which compression is applied to the audio. Value can range from -60 to 0. Default value: `0`.
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
	/**
	Amount of compression applied to the audio once it passes the threshold level. The higher the ratio the more the loud parts of the audio will be compressed. Value can range from 1 to 48. Default value: `4`.
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
	Compressor's reaction time when the signal exceeds the threshold. Value can range from 20 to 2000. Default value: `20ms`.
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
	Compressor's delay time to stop reducing the signal after the signal level falls below the threshold. Value can range from 20 to 2000. Default value: `250ms`.
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
	Balance between original signal and effect signal. Value can range from 0 (totally dry) to 1 (totally wet). Default value: `1`.
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
}
