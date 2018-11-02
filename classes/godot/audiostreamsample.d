/**
Plays audio.

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
import godot.reference;
/**
Plays audio.

Plays audio, can loop.
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
		@GodotName("set_data") GodotMethod!(void, PoolByteArray) setData;
		@GodotName("get_data") GodotMethod!(PoolByteArray) getData;
		@GodotName("set_format") GodotMethod!(void, long) setFormat;
		@GodotName("get_format") GodotMethod!(AudioStreamSample.Format) getFormat;
		@GodotName("set_loop_mode") GodotMethod!(void, long) setLoopMode;
		@GodotName("get_loop_mode") GodotMethod!(AudioStreamSample.LoopMode) getLoopMode;
		@GodotName("set_loop_begin") GodotMethod!(void, long) setLoopBegin;
		@GodotName("get_loop_begin") GodotMethod!(long) getLoopBegin;
		@GodotName("set_loop_end") GodotMethod!(void, long) setLoopEnd;
		@GodotName("get_loop_end") GodotMethod!(long) getLoopEnd;
		@GodotName("set_mix_rate") GodotMethod!(void, long) setMixRate;
		@GodotName("get_mix_rate") GodotMethod!(long) getMixRate;
		@GodotName("set_stereo") GodotMethod!(void, bool) setStereo;
		@GodotName("is_stereo") GodotMethod!(bool) isStereo;
		@GodotName("save_to_wav") GodotMethod!(void, String) saveToWav;
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
		Audio loops the data between loop_begin and loop_end playing forward only.
		*/
		loopForward = 1,
		/**
		Audio loops the data between loop_begin and loop_end playing back and forth.
		*/
		loopPingPong = 2,
	}
	/// 
	enum Format : int
	{
		/**
		Audio codec 8 bit.
		*/
		format8Bits = 0,
		/**
		Audio codec 16 bit.
		*/
		format16Bits = 1,
		/**
		Audio codec IMA ADPCM.
		*/
		formatImaAdpcm = 2,
	}
	/// 
	enum Constants : int
	{
		loopDisabled = 0,
		format8Bits = 0,
		loopForward = 1,
		format16Bits = 1,
		formatImaAdpcm = 2,
		loopPingPong = 2,
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
	PoolByteArray getData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.getData, _godot_object);
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
	AudioStreamSample.Format getFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamSample.Format)(_classBinding.getFormat, _godot_object);
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
	AudioStreamSample.LoopMode getLoopMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamSample.LoopMode)(_classBinding.getLoopMode, _godot_object);
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
	long getLoopBegin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLoopBegin, _godot_object);
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
	long getLoopEnd() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLoopEnd, _godot_object);
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
	long getMixRate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMixRate, _godot_object);
	}
	/**
	
	*/
	void setStereo(in bool stereo)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStereo, _godot_object, stereo);
	}
	/**
	
	*/
	bool isStereo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isStereo, _godot_object);
	}
	/**
	
	*/
	void saveToWav(StringArg0)(in StringArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.saveToWav, _godot_object, path);
	}
	/**
	Contains the audio data in bytes.
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
	Audio format. See FORMAT_* constants for values.
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
	Loop mode. See LOOP_* constants for values.
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
	If `true`, audio is stereo. Default value: `false`.
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
