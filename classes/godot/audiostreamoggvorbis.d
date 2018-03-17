/**
OGG Vorbis audio stream driver.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamoggvorbis;
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
OGG Vorbis audio stream driver.


*/
@GodotBaseClass struct AudioStreamOGGVorbis
{
	static immutable string _GODOT_internal_name = "AudioStreamOGGVorbis";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioStreamOGGVorbis other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamOGGVorbis opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamOGGVorbis _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStreamOGGVorbis");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamOGGVorbis)(constructor());
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
	package(godot) static GodotMethod!(void, bool) _GODOT_set_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop") = _GODOT_set_loop;
	/**
	
	*/
	void setLoop(in bool enable)
	{
		_GODOT_set_loop.bind("AudioStreamOGGVorbis", "set_loop");
		ptrcall!(void)(_GODOT_set_loop, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_loop") = _GODOT_has_loop;
	/**
	
	*/
	bool hasLoop() const
	{
		_GODOT_has_loop.bind("AudioStreamOGGVorbis", "has_loop");
		return ptrcall!(bool)(_GODOT_has_loop, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_loop_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop_offset") = _GODOT_set_loop_offset;
	/**
	
	*/
	void setLoopOffset(in double seconds)
	{
		_GODOT_set_loop_offset.bind("AudioStreamOGGVorbis", "set_loop_offset");
		ptrcall!(void)(_GODOT_set_loop_offset, _godot_object, seconds);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_loop_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_loop_offset") = _GODOT_get_loop_offset;
	/**
	
	*/
	double getLoopOffset() const
	{
		_GODOT_get_loop_offset.bind("AudioStreamOGGVorbis", "get_loop_offset");
		return ptrcall!(double)(_GODOT_get_loop_offset, _godot_object);
	}
	/**
	
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
	/**
	
	*/
	@property bool loop()
	{
		return hasLoop();
	}
	/// ditto
	@property void loop(bool v)
	{
		setLoop(v);
	}
	/**
	
	*/
	@property double loopOffset()
	{
		return getLoopOffset();
	}
	/// ditto
	@property void loopOffset(double v)
	{
		setLoopOffset(v);
	}
}
