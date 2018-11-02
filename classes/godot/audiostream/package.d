/**
Base class for audio streams.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostream;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
import godot.reference;
/**
Base class for audio streams.

Audio streams are used for music playback, or other types of streamed sounds that don't fit or require more flexibility than a $(D Sample).
*/
@GodotBaseClass struct AudioStream
{
	enum string _GODOT_internal_name = "AudioStream";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_length") GodotMethod!(double) getLength;
	}
	bool opEquals(in AudioStream other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStream opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStream _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStream");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStream)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the length of the audio stream in seconds.
	*/
	double getLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLength, _godot_object);
	}
}
