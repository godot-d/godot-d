/**
Stores audio data loaded from WAV files.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamsample;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audiostream;
import godot.resource;
/**
Stores audio data loaded from WAV files.

AudioStreamSample stores sound samples loaded from WAV files. To play the stored sound, use an $(D AudioStreamPlayer) (for non-positional audio) or $(D AudioStreamPlayer2D)/$(D AudioStreamPlayer3D) (for positional audio). The sound can be looped.
This class can also be used to store dynamically-generated PCM audio data.
*/
@GodotBaseClass struct AudioStreamSample
{
	enum string _GODOT_internal_name = "AudioStreamSample";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_data") GodotMethod!(PoolByteArray) getData;
		@GodotName("get_format") GodotMethod!(AudioStreamSample.Format) getFormat;
		@GodotName("get_loop_begin") GodotMethod!(long) getLoopBegin;
		@GodotName("get_loop_end") GodotMethod!(long) getLoopEnd;
		@GodotName("get_loop_mode") GodotMethod!(AudioStreamSample.LoopMode) getLoopMode;
		@GodotName("get_mix_rate") GodotMethod!(long) getMixRate;
		@GodotName("is_stereo") GodotMethod!(bool) isStereo;
		@GodotName("save_to_wav") GodotMethod!(GodotError, String) saveToWav;
		@GodotName("set_data") GodotMethod!(void, PoolByteArray) setData;
		@GodotName("set_format") GodotMethod!(void, long) setFormat;
		@GodotName("set_loop_begin") GodotMethod!(void, long) setLoopBegin;
		@GodotName("set_loop_end") GodotMethod!(void, long) setLoopEnd;
		@GodotName("set_loop_mode") GodotMethod!(void, long) setLoopMode;
		@GodotName("set_mix_rate") GodotMethod!(void, long) setMixRate;
		@GodotName("set_stereo") GodotMethod!(void, bool) setStereo;
	}
	bool opEquals(in AudioStreamSample other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamSample opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamSample _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStreamSample");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamSample)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum LoopMode : int
	{
		/**
		Audio does not loop.
		*/
		loopDisabled = 0,
		/**
		Audio loops the data between $(D loopBegin) and $(D loopEnd) playing forward only.
		*/
		loopForward = 1,
		/**
		Audio loops the data between $(D loopBegin) and $(D loopEnd) playing back and forth.
		*/
		loopPingPong = 2,
		/**
		Audio loops the data between $(D loopBegin) and $(D loopEnd) playing backward only.
		*/
		loopBackward = 3,
	}
	/// 
	enum Format : int
	{
		/**
		8-bit audio codec.
		*/
		format8Bits = 0,
		/**
		16-bit audio codec.
		*/
		format16Bits = 1,
		/**
		Audio is compressed using IMA ADPCM.
		*/
		formatImaAdpcm = 2,
	}
	/// 
	enum Constants : int
	{
		format8Bits = 0,
		loopDisabled = 0,
		loopForward = 1,
		format16Bits = 1,
		loopPingPong = 2,
		formatImaAdpcm = 2,
		loopBackward = 3,
	}
	/**
	
	*/
	PoolByteArray getData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.getData, _godot_object);
	}
	/**
	
	*/
	AudioStreamSample.Format getFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamSample.Format)(_classBinding.getFormat, _godot_object);
	}
	/**
	
	*/
	long getLoopBegin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLoopBegin, _godot_object);
	}
	/**
	
	*/
	long getLoopEnd() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLoopEnd, _godot_object);
	}
	/**
	
	*/
	AudioStreamSample.LoopMode getLoopMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamSample.LoopMode)(_classBinding.getLoopMode, _godot_object);
	}
	/**
	
	*/
	long getMixRate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMixRate, _godot_object);
	}
	/**
	
	*/
	bool isStereo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isStereo, _godot_object);
	}
	/**
	Saves the AudioStreamSample as a WAV file to `path`. Samples with IMA ADPCM format can't be saved.
	$(B Note:) A `.wav` extension is automatically appended to `path` if it is missing.
	*/
	GodotError saveToWav(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.saveToWav, _godot_object, path);
	}
	/**
	
	*/
	void setData(in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setData, _godot_object, data);
	}
	/**
	
	*/
	void setFormat(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFormat, _godot_object, format);
	}
	/**
	
	*/
	void setLoopBegin(in long loop_begin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLoopBegin, _godot_object, loop_begin);
	}
	/**
	
	*/
	void setLoopEnd(in long loop_end)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLoopEnd, _godot_object, loop_end);
	}
	/**
	
	*/
	void setLoopMode(in long loop_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLoopMode, _godot_object, loop_mode);
	}
	/**
	
	*/
	void setMixRate(in long mix_rate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMixRate, _godot_object, mix_rate);
	}
	/**
	
	*/
	void setStereo(in bool stereo)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStereo, _godot_object, stereo);
	}
	/**
	Contains the audio data in bytes.
	$(B Note:) This property expects signed PCM8 data. To convert unsigned PCM8 to signed PCM8, subtract 128 from each byte.
	*/
	@property PoolByteArray data()
	{
		return getData();
	}
	/// ditto
	@property void data(PoolByteArray v)
	{
		setData(v);
	}
	/**
	Audio format. See $(D format) constants for values.
	*/
	@property AudioStreamSample.Format format()
	{
		return getFormat();
	}
	/// ditto
	@property void format(long v)
	{
		setFormat(v);
	}
	/**
	Loop start in bytes.
	*/
	@property long loopBegin()
	{
		return getLoopBegin();
	}
	/// ditto
	@property void loopBegin(long v)
	{
		setLoopBegin(v);
	}
	/**
	Loop end in bytes.
	*/
	@property long loopEnd()
	{
		return getLoopEnd();
	}
	/// ditto
	@property void loopEnd(long v)
	{
		setLoopEnd(v);
	}
	/**
	Loop mode. See $(D loopmode) constants for values.
	*/
	@property AudioStreamSample.LoopMode loopMode()
	{
		return getLoopMode();
	}
	/// ditto
	@property void loopMode(long v)
	{
		setLoopMode(v);
	}
	/**
	The sample rate for mixing this audio.
	*/
	@property long mixRate()
	{
		return getMixRate();
	}
	/// ditto
	@property void mixRate(long v)
	{
		setMixRate(v);
	}
	/**
	If `true`, audio is stereo.
	*/
	@property bool stereo()
	{
		return isStereo();
	}
	/// ditto
	@property void stereo(bool v)
	{
		setStereo(v);
	}
}
