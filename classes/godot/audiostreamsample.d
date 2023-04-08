/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamsample;
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
import godot.audiostream;
import godot.resource;
/**

*/
@GodotBaseClass struct AudioStreamSample
{
	package(godot) enum string _GODOT_internal_name = "AudioStreamSample";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in AudioStreamSample other) const
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
	/// Construct a new instance of AudioStreamSample.
	/// Note: use `memnew!AudioStreamSample` instead.
	static AudioStreamSample _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStreamSample");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamSample)(constructor());
	}
	/// 
	enum LoopMode : int
	{
		/** */
		loopDisabled = 0,
		/** */
		loopForward = 1,
		/** */
		loopPingPong = 2,
		/** */
		loopBackward = 3,
	}
	/// 
	enum Format : int
	{
		/** */
		format8Bits = 0,
		/** */
		format16Bits = 1,
		/** */
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
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.getData, _godot_object);
	}
	/**
	
	*/
	AudioStreamSample.Format getFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamSample.Format)(GDNativeClassBinding.getFormat, _godot_object);
	}
	/**
	
	*/
	long getLoopBegin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLoopBegin, _godot_object);
	}
	/**
	
	*/
	long getLoopEnd() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLoopEnd, _godot_object);
	}
	/**
	
	*/
	AudioStreamSample.LoopMode getLoopMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamSample.LoopMode)(GDNativeClassBinding.getLoopMode, _godot_object);
	}
	/**
	
	*/
	long getMixRate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMixRate, _godot_object);
	}
	/**
	
	*/
	bool isStereo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isStereo, _godot_object);
	}
	/**
	
	*/
	GodotError saveToWav(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.saveToWav, _godot_object, path);
	}
	/**
	
	*/
	void setData(in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setData, _godot_object, data);
	}
	/**
	
	*/
	void setFormat(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFormat, _godot_object, format);
	}
	/**
	
	*/
	void setLoopBegin(in long loop_begin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLoopBegin, _godot_object, loop_begin);
	}
	/**
	
	*/
	void setLoopEnd(in long loop_end)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLoopEnd, _godot_object, loop_end);
	}
	/**
	
	*/
	void setLoopMode(in long loop_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLoopMode, _godot_object, loop_mode);
	}
	/**
	
	*/
	void setMixRate(in long mix_rate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMixRate, _godot_object, mix_rate);
	}
	/**
	
	*/
	void setStereo(in bool stereo)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStereo, _godot_object, stereo);
	}
	/**
	
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
