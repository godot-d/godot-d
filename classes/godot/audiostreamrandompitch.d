/**
Plays audio with random pitch shifting.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamrandompitch;
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
Plays audio with random pitch shifting.

Randomly varies pitch on each start.
*/
@GodotBaseClass struct AudioStreamRandomPitch
{
	package(godot) enum string _GODOT_internal_name = "AudioStreamRandomPitch";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_audio_stream") GodotMethod!(AudioStream) getAudioStream;
		@GodotName("get_random_pitch") GodotMethod!(double) getRandomPitch;
		@GodotName("set_audio_stream") GodotMethod!(void, AudioStream) setAudioStream;
		@GodotName("set_random_pitch") GodotMethod!(void, double) setRandomPitch;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioStreamRandomPitch other) const
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
	/// Construct a new instance of AudioStreamRandomPitch.
	/// Note: use `memnew!AudioStreamRandomPitch` instead.
	static AudioStreamRandomPitch _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStreamRandomPitch");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamRandomPitch)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!AudioStream getAudioStream() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStream)(GDNativeClassBinding.getAudioStream, _godot_object);
	}
	/**
	
	*/
	double getRandomPitch() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRandomPitch, _godot_object);
	}
	/**
	
	*/
	void setAudioStream(AudioStream stream)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAudioStream, _godot_object, stream);
	}
	/**
	
	*/
	void setRandomPitch(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRandomPitch, _godot_object, scale);
	}
	/**
	The current $(D AudioStream).
	*/
	@property AudioStream audioStream()
	{
		return getAudioStream();
	}
	/// ditto
	@property void audioStream(AudioStream v)
	{
		setAudioStream(v);
	}
	/**
	The intensity of random pitch variation.
	*/
	@property double randomPitch()
	{
		return getRandomPitch();
	}
	/// ditto
	@property void randomPitch(double v)
	{
		setRandomPitch(v);
	}
}
