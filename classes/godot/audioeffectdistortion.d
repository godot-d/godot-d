/**
Adds a distortion audio effect to an Audio bus.
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
/**
Adds a distortion audio effect to an Audio bus.
Modify the sound to make it dirty.

Modify the sound and make it dirty. Different types are available: clip, tan, lo-fi (bit crushing), overdrive, or waveshape.
By distorting the waveform the frequency content change, which will often make the sound "crunchy" or "abrasive". For games, it can simulate sound coming from some saturated device or speaker very efficiently.
*/
@GodotBaseClass struct AudioEffectDistortion
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectDistortion";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_drive") GodotMethod!(double) getDrive;
		@GodotName("get_keep_hf_hz") GodotMethod!(double) getKeepHfHz;
		@GodotName("get_mode") GodotMethod!(AudioEffectDistortion.Mode) getMode;
		@GodotName("get_post_gain") GodotMethod!(double) getPostGain;
		@GodotName("get_pre_gain") GodotMethod!(double) getPreGain;
		@GodotName("set_drive") GodotMethod!(void, double) setDrive;
		@GodotName("set_keep_hf_hz") GodotMethod!(void, double) setKeepHfHz;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("set_post_gain") GodotMethod!(void, double) setPostGain;
		@GodotName("set_pre_gain") GodotMethod!(void, double) setPreGain;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectDistortion other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) AudioEffectDistortion opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of AudioEffectDistortion.
	/// Note: use `memnew!AudioEffectDistortion` instead.
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
	double getDrive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDrive, _godot_object);
	}
	/**
	
	*/
	double getKeepHfHz() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getKeepHfHz, _godot_object);
	}
	/**
	
	*/
	AudioEffectDistortion.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioEffectDistortion.Mode)(GDNativeClassBinding.getMode, _godot_object);
	}
	/**
	
	*/
	double getPostGain() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPostGain, _godot_object);
	}
	/**
	
	*/
	double getPreGain() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPreGain, _godot_object);
	}
	/**
	
	*/
	void setDrive(in double drive)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDrive, _godot_object, drive);
	}
	/**
	
	*/
	void setKeepHfHz(in double keep_hf_hz)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setKeepHfHz, _godot_object, keep_hf_hz);
	}
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	void setPostGain(in double post_gain)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPostGain, _godot_object, post_gain);
	}
	/**
	
	*/
	void setPreGain(in double pre_gain)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPreGain, _godot_object, pre_gain);
	}
	/**
	Distortion power. Value can range from 0 to 1.
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
	High-pass filter, in Hz. Frequencies higher than this value will not be affected by the distortion. Value can range from 1 to 20000.
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
	Distortion type.
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
	Increases or decreases the volume after the effect. Value can range from -80 to 24.
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
	/**
	Increases or decreases the volume before the effect. Value can range from -60 to 60.
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
}
