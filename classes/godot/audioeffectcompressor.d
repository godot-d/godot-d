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
	static immutable string _GODOT_internal_name = "AudioEffectCompressor";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, double) _GODOT_set_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_threshold") = _GODOT_set_threshold;
	/**
	
	*/
	void setThreshold(in double threshold)
	{
		_GODOT_set_threshold.bind("AudioEffectCompressor", "set_threshold");
		ptrcall!(void)(_GODOT_set_threshold, _godot_object, threshold);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_threshold") = _GODOT_get_threshold;
	/**
	
	*/
	double getThreshold() const
	{
		_GODOT_get_threshold.bind("AudioEffectCompressor", "get_threshold");
		return ptrcall!(double)(_GODOT_get_threshold, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ratio") = _GODOT_set_ratio;
	/**
	
	*/
	void setRatio(in double ratio)
	{
		_GODOT_set_ratio.bind("AudioEffectCompressor", "set_ratio");
		ptrcall!(void)(_GODOT_set_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ratio") = _GODOT_get_ratio;
	/**
	
	*/
	double getRatio() const
	{
		_GODOT_get_ratio.bind("AudioEffectCompressor", "get_ratio");
		return ptrcall!(double)(_GODOT_get_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gain") = _GODOT_set_gain;
	/**
	
	*/
	void setGain(in double gain)
	{
		_GODOT_set_gain.bind("AudioEffectCompressor", "set_gain");
		ptrcall!(void)(_GODOT_set_gain, _godot_object, gain);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gain") = _GODOT_get_gain;
	/**
	
	*/
	double getGain() const
	{
		_GODOT_get_gain.bind("AudioEffectCompressor", "get_gain");
		return ptrcall!(double)(_GODOT_get_gain, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_attack_us;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attack_us") = _GODOT_set_attack_us;
	/**
	
	*/
	void setAttackUs(in double attack_us)
	{
		_GODOT_set_attack_us.bind("AudioEffectCompressor", "set_attack_us");
		ptrcall!(void)(_GODOT_set_attack_us, _godot_object, attack_us);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_attack_us;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attack_us") = _GODOT_get_attack_us;
	/**
	
	*/
	double getAttackUs() const
	{
		_GODOT_get_attack_us.bind("AudioEffectCompressor", "get_attack_us");
		return ptrcall!(double)(_GODOT_get_attack_us, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_release_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_release_ms") = _GODOT_set_release_ms;
	/**
	
	*/
	void setReleaseMs(in double release_ms)
	{
		_GODOT_set_release_ms.bind("AudioEffectCompressor", "set_release_ms");
		ptrcall!(void)(_GODOT_set_release_ms, _godot_object, release_ms);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_release_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_release_ms") = _GODOT_get_release_ms;
	/**
	
	*/
	double getReleaseMs() const
	{
		_GODOT_get_release_ms.bind("AudioEffectCompressor", "get_release_ms");
		return ptrcall!(double)(_GODOT_get_release_ms, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_mix;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mix") = _GODOT_set_mix;
	/**
	
	*/
	void setMix(in double mix)
	{
		_GODOT_set_mix.bind("AudioEffectCompressor", "set_mix");
		ptrcall!(void)(_GODOT_set_mix, _godot_object, mix);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_mix;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mix") = _GODOT_get_mix;
	/**
	
	*/
	double getMix() const
	{
		_GODOT_get_mix.bind("AudioEffectCompressor", "get_mix");
		return ptrcall!(double)(_GODOT_get_mix, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_sidechain;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sidechain") = _GODOT_set_sidechain;
	/**
	
	*/
	void setSidechain(StringArg0)(in StringArg0 sidechain)
	{
		_GODOT_set_sidechain.bind("AudioEffectCompressor", "set_sidechain");
		ptrcall!(void)(_GODOT_set_sidechain, _godot_object, sidechain);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_sidechain;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sidechain") = _GODOT_get_sidechain;
	/**
	
	*/
	String getSidechain() const
	{
		_GODOT_get_sidechain.bind("AudioEffectCompressor", "get_sidechain");
		return ptrcall!(String)(_GODOT_get_sidechain, _godot_object);
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
