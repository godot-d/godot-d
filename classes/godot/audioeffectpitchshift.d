/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectpitchshift;
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

*/
@GodotBaseClass struct AudioEffectPitchShift
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectPitchShift";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_fft_size") GodotMethod!(AudioEffectPitchShift.FFT_Size) getFftSize;
		@GodotName("get_oversampling") GodotMethod!(long) getOversampling;
		@GodotName("get_pitch_scale") GodotMethod!(double) getPitchScale;
		@GodotName("set_fft_size") GodotMethod!(void, long) setFftSize;
		@GodotName("set_oversampling") GodotMethod!(void, long) setOversampling;
		@GodotName("set_pitch_scale") GodotMethod!(void, double) setPitchScale;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectPitchShift other) const
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
	/// Construct a new instance of AudioEffectPitchShift.
	/// Note: use `memnew!AudioEffectPitchShift` instead.
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
		/** */
		fftSize256 = 0,
		/** */
		fftSize512 = 1,
		/** */
		fftSize1024 = 2,
		/** */
		fftSize2048 = 3,
		/** */
		fftSize4096 = 4,
		/** */
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
		return ptrcall!(AudioEffectPitchShift.FFT_Size)(GDNativeClassBinding.getFftSize, _godot_object);
	}
	/**
	
	*/
	long getOversampling() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOversampling, _godot_object);
	}
	/**
	
	*/
	double getPitchScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPitchScale, _godot_object);
	}
	/**
	
	*/
	void setFftSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFftSize, _godot_object, size);
	}
	/**
	
	*/
	void setOversampling(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOversampling, _godot_object, amount);
	}
	/**
	
	*/
	void setPitchScale(in double rate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPitchScale, _godot_object, rate);
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
