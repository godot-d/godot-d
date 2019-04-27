/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectspectrumanalyzer;
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

*/
@GodotBaseClass struct AudioEffectSpectrumAnalyzer
{
	enum string _GODOT_internal_name = "AudioEffectSpectrumAnalyzer";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_buffer_length") GodotMethod!(void, double) setBufferLength;
		@GodotName("get_buffer_length") GodotMethod!(double) getBufferLength;
		@GodotName("set_tap_back_pos") GodotMethod!(void, double) setTapBackPos;
		@GodotName("get_tap_back_pos") GodotMethod!(double) getTapBackPos;
		@GodotName("set_fft_size") GodotMethod!(void, long) setFftSize;
		@GodotName("get_fft_size") GodotMethod!(AudioEffectSpectrumAnalyzer.FFT_Size) getFftSize;
	}
	bool opEquals(in AudioEffectSpectrumAnalyzer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectSpectrumAnalyzer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectSpectrumAnalyzer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectSpectrumAnalyzer");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectSpectrumAnalyzer)(constructor());
	}
	@disable new(size_t s);
	/// Warning: The enum AudioEffectSpectrumAnalyzer.FFT_Size is missing from Godot's script API; using a non-typesafe int instead.
	deprecated("The enum AudioEffectSpectrumAnalyzer.FFT_Size is missing from Godot's script API; using a non-typesafe int instead.")
	alias FFT_Size = int;
	/**
	
	*/
	void setBufferLength(in double seconds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBufferLength, _godot_object, seconds);
	}
	/**
	
	*/
	double getBufferLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBufferLength, _godot_object);
	}
	/**
	
	*/
	void setTapBackPos(in double seconds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTapBackPos, _godot_object, seconds);
	}
	/**
	
	*/
	double getTapBackPos() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTapBackPos, _godot_object);
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
	AudioEffectSpectrumAnalyzer.FFT_Size getFftSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioEffectSpectrumAnalyzer.FFT_Size)(_classBinding.getFftSize, _godot_object);
	}
	/**
	
	*/
	@property double bufferLength()
	{
		return getBufferLength();
	}
	/// ditto
	@property void bufferLength(double v)
	{
		setBufferLength(v);
	}
	/**
	
	*/
	@property double tapBackPos()
	{
		return getTapBackPos();
	}
	/// ditto
	@property void tapBackPos(double v)
	{
		setTapBackPos(v);
	}
	/**
	
	*/
	@property AudioEffectSpectrumAnalyzer.FFT_Size fftSize()
	{
		return getFftSize();
	}
	/// ditto
	@property void fftSize(long v)
	{
		setFftSize(v);
	}
}
