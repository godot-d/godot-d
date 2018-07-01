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
/**
Plays audio.

Plays audio, can loop.
*/
@GodotBaseClass struct AudioStreamSample
{
	static immutable string _GODOT_internal_name = "AudioStreamSample";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		format8Bits = 0,
		loopDisabled = 0,
		format16Bits = 1,
		loopForward = 1,
		formatImaAdpcm = 2,
		loopPingPong = 2,
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_format") = _GODOT_set_format;
	/**
	
	*/
	void setFormat(in long format)
	{
		_GODOT_set_format.bind("AudioStreamSample", "set_format");
		ptrcall!(void)(_GODOT_set_format, _godot_object, format);
	}
	package(godot) static GodotMethod!(AudioStreamSample.Format) _GODOT_get_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_format") = _GODOT_get_format;
	/**
	
	*/
	AudioStreamSample.Format getFormat() const
	{
		_GODOT_get_format.bind("AudioStreamSample", "get_format");
		return ptrcall!(AudioStreamSample.Format)(_GODOT_get_format, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_loop_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop_mode") = _GODOT_set_loop_mode;
	/**
	
	*/
	void setLoopMode(in long loop_mode)
	{
		_GODOT_set_loop_mode.bind("AudioStreamSample", "set_loop_mode");
		ptrcall!(void)(_GODOT_set_loop_mode, _godot_object, loop_mode);
	}
	package(godot) static GodotMethod!(AudioStreamSample.LoopMode) _GODOT_get_loop_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_loop_mode") = _GODOT_get_loop_mode;
	/**
	
	*/
	AudioStreamSample.LoopMode getLoopMode() const
	{
		_GODOT_get_loop_mode.bind("AudioStreamSample", "get_loop_mode");
		return ptrcall!(AudioStreamSample.LoopMode)(_GODOT_get_loop_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_loop_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop_begin") = _GODOT_set_loop_begin;
	/**
	
	*/
	void setLoopBegin(in long loop_begin)
	{
		_GODOT_set_loop_begin.bind("AudioStreamSample", "set_loop_begin");
		ptrcall!(void)(_GODOT_set_loop_begin, _godot_object, loop_begin);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_loop_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_loop_begin") = _GODOT_get_loop_begin;
	/**
	
	*/
	long getLoopBegin() const
	{
		_GODOT_get_loop_begin.bind("AudioStreamSample", "get_loop_begin");
		return ptrcall!(long)(_GODOT_get_loop_begin, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_loop_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop_end") = _GODOT_set_loop_end;
	/**
	
	*/
	void setLoopEnd(in long loop_end)
	{
		_GODOT_set_loop_end.bind("AudioStreamSample", "set_loop_end");
		ptrcall!(void)(_GODOT_set_loop_end, _godot_object, loop_end);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_loop_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_loop_end") = _GODOT_get_loop_end;
	/**
	
	*/
	long getLoopEnd() const
	{
		_GODOT_get_loop_end.bind("AudioStreamSample", "get_loop_end");
		return ptrcall!(long)(_GODOT_get_loop_end, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_mix_rate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mix_rate") = _GODOT_set_mix_rate;
	/**
	
	*/
	void setMixRate(in long mix_rate)
	{
		_GODOT_set_mix_rate.bind("AudioStreamSample", "set_mix_rate");
		ptrcall!(void)(_GODOT_set_mix_rate, _godot_object, mix_rate);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_mix_rate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mix_rate") = _GODOT_get_mix_rate;
	/**
	
	*/
	long getMixRate() const
	{
		_GODOT_get_mix_rate.bind("AudioStreamSample", "get_mix_rate");
		return ptrcall!(long)(_GODOT_get_mix_rate, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_stereo;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stereo") = _GODOT_set_stereo;
	/**
	
	*/
	void setStereo(in bool stereo)
	{
		_GODOT_set_stereo.bind("AudioStreamSample", "set_stereo");
		ptrcall!(void)(_GODOT_set_stereo, _godot_object, stereo);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_stereo;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_stereo") = _GODOT_is_stereo;
	/**
	
	*/
	bool isStereo() const
	{
		_GODOT_is_stereo.bind("AudioStreamSample", "is_stereo");
		return ptrcall!(bool)(_GODOT_is_stereo, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolByteArray) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	/**
	
	*/
	void _setData(in PoolByteArray data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	/**
	
	*/
	PoolByteArray _getData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolByteArray);
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
	/**
	Contains the audio data in bytes.
	*/
	@property PoolByteArray data()
	{
		return _getData();
	}
	/// ditto
	@property void data(PoolByteArray v)
	{
		_setData(v);
	}
}
