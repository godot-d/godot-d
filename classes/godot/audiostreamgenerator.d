/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamgenerator;
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

*/
@GodotBaseClass struct AudioStreamGenerator
{
	enum string _GODOT_internal_name = "AudioStreamGenerator";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_buffer_length") GodotMethod!(double) getBufferLength;
		@GodotName("get_mix_rate") GodotMethod!(double) getMixRate;
		@GodotName("set_buffer_length") GodotMethod!(void, double) setBufferLength;
		@GodotName("set_mix_rate") GodotMethod!(void, double) setMixRate;
	}
	bool opEquals(in AudioStreamGenerator other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamGenerator opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamGenerator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStreamGenerator");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamGenerator)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getBufferLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBufferLength, _godot_object);
	}
	/**
	
	*/
	double getMixRate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMixRate, _godot_object);
	}
	/**
	
	*/
	void setBufferLength(in double seconds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBufferLength, _godot_object, seconds);
	}
	/**
	
	*/
	void setMixRate(in double hz)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMixRate, _godot_object, hz);
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
	@property double mixRate()
	{
		return getMixRate();
	}
	/// ditto
	@property void mixRate(double v)
	{
		setMixRate(v);
	}
}
