/**
Adds a Distortion audio effect to an Audio bus.
Modify the sound to make it dirty.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectdistortion;
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
Adds a Distortion audio effect to an Audio bus.
Modify the sound to make it dirty.

Modify the sound and make it dirty. Different types are available : clip, tan, lofi (bit crushing), overdrive, or waveshape.
By distorting the waveform the frequency content change, which will often make the sound "crunchy" or "abrasive". For games, it can simulate sound coming from some saturated device or speaker very efficiently.
*/
@GodotBaseClass struct AudioEffectDistortion
{
	static immutable string _GODOT_internal_name = "AudioEffectDistortion";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioEffectDistortion other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectDistortion opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectDistortion _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectDistortion");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectDistortion)(constructor());
	}
	/// 
	enum Mode : int
	{
		/**
		Digital distortion effect which cuts off peaks at the top and bottom of the waveform.
		*/
		modeClip = 0,
		/**
		
		*/
		modeAtan = 1,
		/**
		Low-resolution digital distortion effect. You can use it to emulate the sound of early digital audio devices.
		*/
		modeLofi = 2,
		/**
		Emulates the warm distortion produced by a field effect transistor, which is commonly used in solid-state musical instrument amplifiers.
		*/
		modeOverdrive = 3,
		/**
		Waveshaper distortions are used mainly by electronic musicians to achieve an extra-abrasive sound.
		*/
		modeWaveshape = 4,
	}
	/// 
	enum Constants : int
	{
		modeClip = 0,
		modeAtan = 1,
		modeLofi = 2,
		modeOverdrive = 3,
		modeWaveshape = 4,
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode") = _GODOT_set_mode;
	/**
	
	*/
	void setMode(in long mode)
	{
		_GODOT_set_mode.bind("AudioEffectDistortion", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(AudioEffectDistortion.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	/**
	
	*/
	AudioEffectDistortion.Mode getMode() const
	{
		_GODOT_get_mode.bind("AudioEffectDistortion", "get_mode");
		return ptrcall!(AudioEffectDistortion.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_pre_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pre_gain") = _GODOT_set_pre_gain;
	/**
	
	*/
	void setPreGain(in double pre_gain)
	{
		_GODOT_set_pre_gain.bind("AudioEffectDistortion", "set_pre_gain");
		ptrcall!(void)(_GODOT_set_pre_gain, _godot_object, pre_gain);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_pre_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pre_gain") = _GODOT_get_pre_gain;
	/**
	
	*/
	double getPreGain() const
	{
		_GODOT_get_pre_gain.bind("AudioEffectDistortion", "get_pre_gain");
		return ptrcall!(double)(_GODOT_get_pre_gain, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_keep_hf_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_keep_hf_hz") = _GODOT_set_keep_hf_hz;
	/**
	
	*/
	void setKeepHfHz(in double keep_hf_hz)
	{
		_GODOT_set_keep_hf_hz.bind("AudioEffectDistortion", "set_keep_hf_hz");
		ptrcall!(void)(_GODOT_set_keep_hf_hz, _godot_object, keep_hf_hz);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_keep_hf_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_keep_hf_hz") = _GODOT_get_keep_hf_hz;
	/**
	
	*/
	double getKeepHfHz() const
	{
		_GODOT_get_keep_hf_hz.bind("AudioEffectDistortion", "get_keep_hf_hz");
		return ptrcall!(double)(_GODOT_get_keep_hf_hz, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_drive;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drive") = _GODOT_set_drive;
	/**
	
	*/
	void setDrive(in double drive)
	{
		_GODOT_set_drive.bind("AudioEffectDistortion", "set_drive");
		ptrcall!(void)(_GODOT_set_drive, _godot_object, drive);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_drive;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drive") = _GODOT_get_drive;
	/**
	
	*/
	double getDrive() const
	{
		_GODOT_get_drive.bind("AudioEffectDistortion", "get_drive");
		return ptrcall!(double)(_GODOT_get_drive, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_post_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_post_gain") = _GODOT_set_post_gain;
	/**
	
	*/
	void setPostGain(in double post_gain)
	{
		_GODOT_set_post_gain.bind("AudioEffectDistortion", "set_post_gain");
		ptrcall!(void)(_GODOT_set_post_gain, _godot_object, post_gain);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_post_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_post_gain") = _GODOT_get_post_gain;
	/**
	
	*/
	double getPostGain() const
	{
		_GODOT_get_post_gain.bind("AudioEffectDistortion", "get_post_gain");
		return ptrcall!(double)(_GODOT_get_post_gain, _godot_object);
	}
	/**
	Distortion type. Default value: `MODE_CLIP`.
	*/
	@property AudioEffectDistortion.Mode mode()
	{
		return getMode();
	}
	/// ditto
	@property void mode(long v)
	{
		setMode(v);
	}
	/**
	Increases or decreases the volume before the effect. Value can range from -60 to 60. Default value: `0`.
	*/
	@property double preGain()
	{
		return getPreGain();
	}
	/// ditto
	@property void preGain(double v)
	{
		setPreGain(v);
	}
	/**
	High-pass filter. Frequencies higher than this value will not be affected by the distortion. Value can range from 1 to 20000. Default value: `16000`.
	*/
	@property double keepHfHz()
	{
		return getKeepHfHz();
	}
	/// ditto
	@property void keepHfHz(double v)
	{
		setKeepHfHz(v);
	}
	/**
	Distortion power. Value can range from 0 to 1. Default value: `0`.
	*/
	@property double drive()
	{
		return getDrive();
	}
	/// ditto
	@property void drive(double v)
	{
		setDrive(v);
	}
	/**
	Increases or decreases the volume after the effect. Value can range from -80 to 24. Default value: `0`.
	*/
	@property double postGain()
	{
		return getPostGain();
	}
	/// ditto
	@property void postGain(double v)
	{
		setPostGain(v);
	}
}
