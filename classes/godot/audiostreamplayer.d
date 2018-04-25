/**
Plays back audio.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamplayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node;
import godot.audiostream;
/**
Plays back audio.

Plays background audio.
*/
@GodotBaseClass struct AudioStreamPlayer
{
	static immutable string _GODOT_internal_name = "AudioStreamPlayer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioStreamPlayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamPlayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamPlayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStreamPlayer");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamPlayer)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum MixTarget : int
	{
		/**
		The audio will be played only on the first channel.
		*/
		mixTargetStereo = 0,
		/**
		The audio will be played on all surround channels.
		*/
		mixTargetSurround = 1,
		/**
		The audio will be played on the second channel, which is usually the center.
		*/
		mixTargetCenter = 2,
	}
	/// 
	enum Constants : int
	{
		mixTargetStereo = 0,
		mixTargetSurround = 1,
		mixTargetCenter = 2,
	}
	package(godot) static GodotMethod!(void, AudioStream) _GODOT_set_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stream") = _GODOT_set_stream;
	/**
	
	*/
	void setStream(AudioStream stream)
	{
		_GODOT_set_stream.bind("AudioStreamPlayer", "set_stream");
		ptrcall!(void)(_GODOT_set_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(AudioStream) _GODOT_get_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream") = _GODOT_get_stream;
	/**
	
	*/
	Ref!AudioStream getStream() const
	{
		_GODOT_get_stream.bind("AudioStreamPlayer", "get_stream");
		return ptrcall!(AudioStream)(_GODOT_get_stream, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_volume_db") = _GODOT_set_volume_db;
	/**
	
	*/
	void setVolumeDb(in double volume_db)
	{
		_GODOT_set_volume_db.bind("AudioStreamPlayer", "set_volume_db");
		ptrcall!(void)(_GODOT_set_volume_db, _godot_object, volume_db);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_volume_db") = _GODOT_get_volume_db;
	/**
	
	*/
	double getVolumeDb() const
	{
		_GODOT_get_volume_db.bind("AudioStreamPlayer", "get_volume_db");
		return ptrcall!(double)(_GODOT_get_volume_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_pitch_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pitch_scale") = _GODOT_set_pitch_scale;
	/**
	
	*/
	void setPitchScale(in double pitch_scale)
	{
		_GODOT_set_pitch_scale.bind("AudioStreamPlayer", "set_pitch_scale");
		ptrcall!(void)(_GODOT_set_pitch_scale, _godot_object, pitch_scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_pitch_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pitch_scale") = _GODOT_get_pitch_scale;
	/**
	
	*/
	double getPitchScale() const
	{
		_GODOT_get_pitch_scale.bind("AudioStreamPlayer", "get_pitch_scale");
		return ptrcall!(double)(_GODOT_get_pitch_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	/**
	Plays the audio from the given position 'from_position', in seconds.
	*/
	void play(in double from_position = 0)
	{
		_GODOT_play.bind("AudioStreamPlayer", "play");
		ptrcall!(void)(_GODOT_play, _godot_object, from_position);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	/**
	Sets the position from which audio will be played, in seconds.
	*/
	void seek(in double to_position)
	{
		_GODOT_seek.bind("AudioStreamPlayer", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	/**
	Stops the audio.
	*/
	void stop()
	{
		_GODOT_stop.bind("AudioStreamPlayer", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	/**
	
	*/
	bool isPlaying() const
	{
		_GODOT_is_playing.bind("AudioStreamPlayer", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_playback_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_playback_position") = _GODOT_get_playback_position;
	/**
	Returns the position in the $(D AudioStream).
	*/
	double getPlaybackPosition()
	{
		_GODOT_get_playback_position.bind("AudioStreamPlayer", "get_playback_position");
		return ptrcall!(double)(_GODOT_get_playback_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus") = _GODOT_set_bus;
	/**
	
	*/
	void setBus(StringArg0)(in StringArg0 bus)
	{
		_GODOT_set_bus.bind("AudioStreamPlayer", "set_bus");
		ptrcall!(void)(_GODOT_set_bus, _godot_object, bus);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus") = _GODOT_get_bus;
	/**
	
	*/
	String getBus() const
	{
		_GODOT_get_bus.bind("AudioStreamPlayer", "get_bus");
		return ptrcall!(String)(_GODOT_get_bus, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autoplay") = _GODOT_set_autoplay;
	/**
	
	*/
	void setAutoplay(in bool enable)
	{
		_GODOT_set_autoplay.bind("AudioStreamPlayer", "set_autoplay");
		ptrcall!(void)(_GODOT_set_autoplay, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_autoplay_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_autoplay_enabled") = _GODOT_is_autoplay_enabled;
	/**
	
	*/
	bool isAutoplayEnabled()
	{
		_GODOT_is_autoplay_enabled.bind("AudioStreamPlayer", "is_autoplay_enabled");
		return ptrcall!(bool)(_GODOT_is_autoplay_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_mix_target;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mix_target") = _GODOT_set_mix_target;
	/**
	
	*/
	void setMixTarget(in long mix_target)
	{
		_GODOT_set_mix_target.bind("AudioStreamPlayer", "set_mix_target");
		ptrcall!(void)(_GODOT_set_mix_target, _godot_object, mix_target);
	}
	package(godot) static GodotMethod!(AudioStreamPlayer.MixTarget) _GODOT_get_mix_target;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mix_target") = _GODOT_get_mix_target;
	/**
	
	*/
	AudioStreamPlayer.MixTarget getMixTarget() const
	{
		_GODOT_get_mix_target.bind("AudioStreamPlayer", "get_mix_target");
		return ptrcall!(AudioStreamPlayer.MixTarget)(_GODOT_get_mix_target, _godot_object);
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
	Volume of sound, in dB.
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
	If the audio configuration has more than two speakers, this sets the target channels. See `MIX_TARGET_*` constants.
	*/
	@property AudioStreamPlayer.MixTarget mixTarget()
	{
		return getMixTarget();
	}
	/// ditto
	@property void mixTarget(long v)
	{
		setMixTarget(v);
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
}
