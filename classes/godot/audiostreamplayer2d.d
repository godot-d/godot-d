/**
Plays audio in 2D.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamplayer2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.audiostream;
/**
Plays audio in 2D.

Plays audio that dampens with distance from screen center.
*/
@GodotBaseClass struct AudioStreamPlayer2D
{
	static immutable string _GODOT_internal_name = "AudioStreamPlayer2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioStreamPlayer2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamPlayer2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamPlayer2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStreamPlayer2D");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamPlayer2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, AudioStream) _GODOT_set_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stream") = _GODOT_set_stream;
	/**
	
	*/
	void setStream(AudioStream stream)
	{
		_GODOT_set_stream.bind("AudioStreamPlayer2D", "set_stream");
		ptrcall!(void)(_GODOT_set_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(AudioStream) _GODOT_get_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream") = _GODOT_get_stream;
	/**
	
	*/
	Ref!AudioStream getStream() const
	{
		_GODOT_get_stream.bind("AudioStreamPlayer2D", "get_stream");
		return ptrcall!(AudioStream)(_GODOT_get_stream, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_volume_db") = _GODOT_set_volume_db;
	/**
	
	*/
	void setVolumeDb(in double volume_db)
	{
		_GODOT_set_volume_db.bind("AudioStreamPlayer2D", "set_volume_db");
		ptrcall!(void)(_GODOT_set_volume_db, _godot_object, volume_db);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_volume_db") = _GODOT_get_volume_db;
	/**
	
	*/
	double getVolumeDb() const
	{
		_GODOT_get_volume_db.bind("AudioStreamPlayer2D", "get_volume_db");
		return ptrcall!(double)(_GODOT_get_volume_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_pitch_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pitch_scale") = _GODOT_set_pitch_scale;
	/**
	
	*/
	void setPitchScale(in double pitch_scale)
	{
		_GODOT_set_pitch_scale.bind("AudioStreamPlayer2D", "set_pitch_scale");
		ptrcall!(void)(_GODOT_set_pitch_scale, _godot_object, pitch_scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_pitch_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pitch_scale") = _GODOT_get_pitch_scale;
	/**
	
	*/
	double getPitchScale() const
	{
		_GODOT_get_pitch_scale.bind("AudioStreamPlayer2D", "get_pitch_scale");
		return ptrcall!(double)(_GODOT_get_pitch_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	/**
	Plays the audio from the given position 'from_position', in seconds.
	*/
	void play(in double from_position = 0)
	{
		_GODOT_play.bind("AudioStreamPlayer2D", "play");
		ptrcall!(void)(_GODOT_play, _godot_object, from_position);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	/**
	Sets the position from which audio will be played, in seconds.
	*/
	void seek(in double to_position)
	{
		_GODOT_seek.bind("AudioStreamPlayer2D", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	/**
	Stops the audio.
	*/
	void stop()
	{
		_GODOT_stop.bind("AudioStreamPlayer2D", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	/**
	
	*/
	bool isPlaying() const
	{
		_GODOT_is_playing.bind("AudioStreamPlayer2D", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_playback_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_playback_position") = _GODOT_get_playback_position;
	/**
	Returns the position in the $(D AudioStream).
	*/
	double getPlaybackPosition()
	{
		_GODOT_get_playback_position.bind("AudioStreamPlayer2D", "get_playback_position");
		return ptrcall!(double)(_GODOT_get_playback_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus") = _GODOT_set_bus;
	/**
	
	*/
	void setBus(StringArg0)(in StringArg0 bus)
	{
		_GODOT_set_bus.bind("AudioStreamPlayer2D", "set_bus");
		ptrcall!(void)(_GODOT_set_bus, _godot_object, bus);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus") = _GODOT_get_bus;
	/**
	
	*/
	String getBus() const
	{
		_GODOT_get_bus.bind("AudioStreamPlayer2D", "get_bus");
		return ptrcall!(String)(_GODOT_get_bus, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autoplay") = _GODOT_set_autoplay;
	/**
	
	*/
	void setAutoplay(in bool enable)
	{
		_GODOT_set_autoplay.bind("AudioStreamPlayer2D", "set_autoplay");
		ptrcall!(void)(_GODOT_set_autoplay, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_autoplay_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_autoplay_enabled") = _GODOT_is_autoplay_enabled;
	/**
	
	*/
	bool isAutoplayEnabled()
	{
		_GODOT_is_autoplay_enabled.bind("AudioStreamPlayer2D", "is_autoplay_enabled");
		return ptrcall!(bool)(_GODOT_is_autoplay_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__set_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_playing") = _GODOT__set_playing;
	/**
	
	*/
	void _setPlaying(in bool enable)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(enable);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT__is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "_is_active") = _GODOT__is_active;
	/**
	
	*/
	bool _isActive() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_active");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_distance") = _GODOT_set_max_distance;
	/**
	
	*/
	void setMaxDistance(in double pixels)
	{
		_GODOT_set_max_distance.bind("AudioStreamPlayer2D", "set_max_distance");
		ptrcall!(void)(_GODOT_set_max_distance, _godot_object, pixels);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_distance") = _GODOT_get_max_distance;
	/**
	
	*/
	double getMaxDistance() const
	{
		_GODOT_get_max_distance.bind("AudioStreamPlayer2D", "get_max_distance");
		return ptrcall!(double)(_GODOT_get_max_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_attenuation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attenuation") = _GODOT_set_attenuation;
	/**
	
	*/
	void setAttenuation(in double curve)
	{
		_GODOT_set_attenuation.bind("AudioStreamPlayer2D", "set_attenuation");
		ptrcall!(void)(_GODOT_set_attenuation, _godot_object, curve);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_attenuation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attenuation") = _GODOT_get_attenuation;
	/**
	
	*/
	double getAttenuation() const
	{
		_GODOT_get_attenuation.bind("AudioStreamPlayer2D", "get_attenuation");
		return ptrcall!(double)(_GODOT_get_attenuation, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_area_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_area_mask") = _GODOT_set_area_mask;
	/**
	
	*/
	void setAreaMask(in long mask)
	{
		_GODOT_set_area_mask.bind("AudioStreamPlayer2D", "set_area_mask");
		ptrcall!(void)(_GODOT_set_area_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_area_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_area_mask") = _GODOT_get_area_mask;
	/**
	
	*/
	long getAreaMask() const
	{
		_GODOT_get_area_mask.bind("AudioStreamPlayer2D", "get_area_mask");
		return ptrcall!(long)(_GODOT_get_area_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__bus_layout_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_bus_layout_changed") = _GODOT__bus_layout_changed;
	/**
	
	*/
	void _busLayoutChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_bus_layout_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The $(D AudioStream) object to be played.
	*/
	@property AudioStream stream()
	{
		return getStream();
	}
	/// ditto
	@property void stream(AudioStream v)
	{
		setStream(v);
	}
	/**
	Base volume without dampening.
	*/
	@property double volumeDb()
	{
		return getVolumeDb();
	}
	/// ditto
	@property void volumeDb(double v)
	{
		setVolumeDb(v);
	}
	/**
	
	*/
	@property double pitchScale()
	{
		return getPitchScale();
	}
	/// ditto
	@property void pitchScale(double v)
	{
		setPitchScale(v);
	}
	/**
	If `true` audio is playing.
	*/
	@property bool playing()
	{
		return isPlaying();
	}
	/// ditto
	@property void playing(bool v)
	{
		_setPlaying(v);
	}
	/**
	If `true` audio plays when added to scene tree. Default value: `false`.
	*/
	@property bool autoplay()
	{
		return isAutoplayEnabled();
	}
	/// ditto
	@property void autoplay(bool v)
	{
		setAutoplay(v);
	}
	/**
	Maximum distance from which audio is still hearable.
	*/
	@property double maxDistance()
	{
		return getMaxDistance();
	}
	/// ditto
	@property void maxDistance(double v)
	{
		setMaxDistance(v);
	}
	/**
	Dampens audio over distance with this as an exponent.
	*/
	@property double attenuation()
	{
		return getAttenuation();
	}
	/// ditto
	@property void attenuation(double v)
	{
		setAttenuation(v);
	}
	/**
	Bus on which this audio is playing.
	*/
	@property String bus()
	{
		return getBus();
	}
	/// ditto
	@property void bus(String v)
	{
		setBus(v);
	}
	/**
	Areas in which this sound plays.
	*/
	@property long areaMask()
	{
		return getAreaMask();
	}
	/// ditto
	@property void areaMask(long v)
	{
		setAreaMask(v);
	}
}
