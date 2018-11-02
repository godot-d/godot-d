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
import godot.resource;
import godot.reference;
/**
Adds a Distortion audio effect to an Audio bus.
Modify the sound to make it dirty.

Modify the sound and make it dirty. Different types are available : clip, tan, lofi (bit crushing), overdrive, or waveshape.
By distorting the waveform the frequency content change, which will often make the sound "crunchy" or "abrasive". For games, it can simulate sound coming from some saturated device or speaker very efficiently.
*/
@GodotBaseClass struct AudioEffectDistortion
{
	enum string _GODOT_internal_name = "AudioEffectDistortion";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("get_mode") GodotMethod!(AudioEffectDistortion.Mode) getMode;
		@GodotName("set_pre_gain") GodotMethod!(void, double) setPreGain;
		@GodotName("get_pre_gain") GodotMethod!(double) getPreGain;
		@GodotName("set_keep_hf_hz") GodotMethod!(void, double) setKeepHfHz;
		@GodotName("get_keep_hf_hz") GodotMethod!(double) getKeepHfHz;
		@GodotName("set_drive") GodotMethod!(void, double) setDrive;
		@GodotName("get_drive") GodotMethod!(double) getDrive;
		@GodotName("set_post_gain") GodotMethod!(void, double) setPostGain;
		@GodotName("get_post_gain") GodotMethod!(double) getPostGain;
	}
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
	@disable new(size_t s);
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
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	AudioEffectDistortion.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioEffectDistortion.Mode)(_classBinding.getMode, _godot_object);
	}
	/**
	
	*/
	void setPreGain(in double pre_gain)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPreGain, _godot_object, pre_gain);
	}
	/**
	
	*/
	double getPreGain() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPreGain, _godot_object);
	}
	/**
	
	*/
	void setKeepHfHz(in double keep_hf_hz)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setKeepHfHz, _godot_object, keep_hf_hz);
	}
	/**
	
	*/
	double getKeepHfHz() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getKeepHfHz, _godot_object);
	}
	/**
	
	*/
	void setDrive(in double drive)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrive, _godot_object, drive);
	}
	/**
	
	*/
	double getDrive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDrive, _godot_object);
	}
	/**
	
	*/
	void setPostGain(in double post_gain)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPostGain, _godot_object, post_gain);
	}
	/**
	
	*/
	double getPostGain() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPostGain, _godot_object);
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
