/**
Plays audio with random pitch tweaking.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamrandompitch;
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
Plays audio with random pitch tweaking.

Randomly varies pitch on each start.
*/
@GodotBaseClass struct AudioStreamRandomPitch
{
	static immutable string _GODOT_internal_name = "AudioStreamRandomPitch";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioStreamRandomPitch other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamRandomPitch opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamRandomPitch _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStreamRandomPitch");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamRandomPitch)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, AudioStream) _GODOT_set_audio_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_audio_stream") = _GODOT_set_audio_stream;
	/**
	
	*/
	void setAudioStream(AudioStream stream)
	{
		_GODOT_set_audio_stream.bind("AudioStreamRandomPitch", "set_audio_stream");
		ptrcall!(void)(_GODOT_set_audio_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(AudioStream) _GODOT_get_audio_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_audio_stream") = _GODOT_get_audio_stream;
	/**
	
	*/
	Ref!AudioStream getAudioStream() const
	{
		_GODOT_get_audio_stream.bind("AudioStreamRandomPitch", "get_audio_stream");
		return ptrcall!(AudioStream)(_GODOT_get_audio_stream, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_random_pitch;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_random_pitch") = _GODOT_set_random_pitch;
	/**
	
	*/
	void setRandomPitch(in double scale)
	{
		_GODOT_set_random_pitch.bind("AudioStreamRandomPitch", "set_random_pitch");
		ptrcall!(void)(_GODOT_set_random_pitch, _godot_object, scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_random_pitch;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_random_pitch") = _GODOT_get_random_pitch;
	/**
	
	*/
	double getRandomPitch() const
	{
		_GODOT_get_random_pitch.bind("AudioStreamRandomPitch", "get_random_pitch");
		return ptrcall!(double)(_GODOT_get_random_pitch, _godot_object);
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
