/**
Adds a pitch-shifting audio effect to an Audio bus.
Raises or lowers the pitch of original sound.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectpitchshift;
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
Adds a pitch-shifting audio effect to an Audio bus.
Raises or lowers the pitch of original sound.

Allows modulation of pitch independently of tempo. All frequencies can be increased/decreased with minimal effect on transients.
*/
@GodotBaseClass struct AudioEffectPitchShift
{
	enum string _GODOT_internal_name = "AudioEffectPitchShift";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_fft_size") GodotMethod!(AudioEffectPitchShift.FFT_Size) getFftSize;
		@GodotName("get_oversampling") GodotMethod!(long) getOversampling;
		@GodotName("get_pitch_scale") GodotMethod!(double) getPitchScale;
		@GodotName("set_fft_size") GodotMethod!(void, long) setFftSize;
		@GodotName("set_oversampling") GodotMethod!(void, long) setOversampling;
		@GodotName("set_pitch_scale") GodotMethod!(void, double) setPitchScale;
	}
	bool opEquals(in AudioEffectPitchShift other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectPitchShift opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectPitchShift _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectPitchShift");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectPitchShift)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum FFT_Size : int
	{
		/**
		
		*/
		fftSize256 = 0,
		/**
		
		*/
		fftSize512 = 1,
		/**
		
		*/
		fftSize1024 = 2,
		/**
		
		*/
		fftSize2048 = 3,
		/**
		
		*/
		fftSize4096 = 4,
		/**
		Represents the size of the $(D fftSize) enum.
		*/
		fftSizeMax = 5,
	}
	/// 
	enum Constants : int
	{
		fftSize256 = 0,
		fftSize512 = 1,
		fftSize1024 = 2,
		fftSize2048 = 3,
		fftSize4096 = 4,
		fftSizeMax = 5,
	}
	/**
	
	*/
	AudioEffectPitchShift.FFT_Size getFftSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioEffectPitchShift.FFT_Size)(_classBinding.getFftSize, _godot_object);
	}
	/**
	
	*/
	long getOversampling() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOversampling, _godot_object);
	}
	/**
	
	*/
	double getPitchScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPitchScale, _godot_object);
	}
	/**
	
	*/
	void setFftSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFftSize, _godot_object, size);
	}
	/**
	
	*/
	void setOversampling(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOversampling, _godot_object, amount);
	}
	/**
	
	*/
	void setPitchScale(in double rate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPitchScale, _godot_object, rate);
	}
	/**
	
	*/
	@property AudioEffectPitchShift.FFT_Size fftSize()
	{
		return getFftSize();
	}
	/// ditto
	@property void fftSize(long v)
	{
		setFftSize(v);
	}
	/**
	
	*/
	@property long oversampling()
	{
		return getOversampling();
	}
	/// ditto
	@property void oversampling(long v)
	{
		setOversampling(v);
	}
	/**
	Pitch value. Can range from 0 (-1 octave) to 16 (+16 octaves).
	*/
	@property double pitchScale()
	{
		return getPitchScale();
	}
	/// ditto
	@property void pitchScale(double v)
	{
		setPitchScale(v);
	}
}
