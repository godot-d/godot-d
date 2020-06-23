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
	package(godot) enum string _GODOT_internal_name = "AudioStreamGenerator";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_buffer_length") GodotMethod!(double) getBufferLength;
		@GodotName("get_mix_rate") GodotMethod!(double) getMixRate;
		@GodotName("set_buffer_length") GodotMethod!(void, double) setBufferLength;
		@GodotName("set_mix_rate") GodotMethod!(void, double) setMixRate;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioStreamGenerator other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) AudioStreamGenerator opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of AudioStreamGenerator.
	/// Note: use `memnew!AudioStreamGenerator` instead.
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
		return ptrcall!(double)(GDNativeClassBinding.getBufferLength, _godot_object);
	}
	/**
	
	*/
	double getMixRate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMixRate, _godot_object);
	}
	/**
	
	*/
	void setBufferLength(in double seconds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBufferLength, _godot_object, seconds);
	}
	/**
	
	*/
	void setMixRate(in double hz)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMixRate, _godot_object, hz);
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
