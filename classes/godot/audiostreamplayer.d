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
import godot.audiostreamplayback;
/**
Plays back audio.

Plays background audio.
*/
@GodotBaseClass struct AudioStreamPlayer
{
	enum string _GODOT_internal_name = "AudioStreamPlayer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_stream") GodotMethod!(void, AudioStream) setStream;
		@GodotName("get_stream") GodotMethod!(AudioStream) getStream;
		@GodotName("set_volume_db") GodotMethod!(void, double) setVolumeDb;
		@GodotName("get_volume_db") GodotMethod!(double) getVolumeDb;
		@GodotName("set_pitch_scale") GodotMethod!(void, double) setPitchScale;
		@GodotName("get_pitch_scale") GodotMethod!(double) getPitchScale;
		@GodotName("play") GodotMethod!(void, double) play;
		@GodotName("seek") GodotMethod!(void, double) seek;
		@GodotName("stop") GodotMethod!(void) stop;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("get_playback_position") GodotMethod!(double) getPlaybackPosition;
		@GodotName("set_bus") GodotMethod!(void, String) setBus;
		@GodotName("get_bus") GodotMethod!(String) getBus;
		@GodotName("set_autoplay") GodotMethod!(void, bool) setAutoplay;
		@GodotName("is_autoplay_enabled") GodotMethod!(bool) isAutoplayEnabled;
		@GodotName("set_mix_target") GodotMethod!(void, long) setMixTarget;
		@GodotName("get_mix_target") GodotMethod!(AudioStreamPlayer.MixTarget) getMixTarget;
		@GodotName("_set_playing") GodotMethod!(void, bool) _setPlaying;
		@GodotName("_is_active") GodotMethod!(bool) _isActive;
		@GodotName("_bus_layout_changed") GodotMethod!(void) _busLayoutChanged;
		@GodotName("set_stream_paused") GodotMethod!(void, bool) setStreamPaused;
		@GodotName("get_stream_paused") GodotMethod!(bool) getStreamPaused;
		@GodotName("get_stream_playback") GodotMethod!(AudioStreamPlayback) getStreamPlayback;
	}
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
	/**
	
	*/
	void setStream(AudioStream stream)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStream, _godot_object, stream);
	}
	/**
	
	*/
	Ref!AudioStream getStream() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStream)(_classBinding.getStream, _godot_object);
	}
	/**
	
	*/
	void setVolumeDb(in double volume_db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVolumeDb, _godot_object, volume_db);
	}
	/**
	
	*/
	double getVolumeDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getVolumeDb, _godot_object);
	}
	/**
	
	*/
	void setPitchScale(in double pitch_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPitchScale, _godot_object, pitch_scale);
	}
	/**
	
	*/
	double getPitchScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPitchScale, _godot_object);
	}
	/**
	Plays the audio from the given position 'from_position', in seconds.
	*/
	void play(in double from_position = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.play, _godot_object, from_position);
	}
	/**
	Sets the position from which audio will be played, in seconds.
	*/
	void seek(in double to_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.seek, _godot_object, to_position);
	}
	/**
	Stops the audio.
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stop, _godot_object);
	}
	/**
	
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPlaying, _godot_object);
	}
	/**
	Returns the position in the $(D AudioStream) in seconds.
	*/
	double getPlaybackPosition()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPlaybackPosition, _godot_object);
	}
	/**
	
	*/
	void setBus(in String bus)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBus, _godot_object, bus);
	}
	/**
	
	*/
	String getBus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBus, _godot_object);
	}
	/**
	
	*/
	void setAutoplay(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutoplay, _godot_object, enable);
	}
	/**
	
	*/
	bool isAutoplayEnabled()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAutoplayEnabled, _godot_object);
	}
	/**
	
	*/
	void setMixTarget(in long mix_target)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMixTarget, _godot_object, mix_target);
	}
	/**
	
	*/
	AudioStreamPlayer.MixTarget getMixTarget() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayer.MixTarget)(_classBinding.getMixTarget, _godot_object);
	}
	/**
	
	*/
	void _setPlaying(in bool enable)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(enable);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool _isActive() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_active");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _busLayoutChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_bus_layout_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setStreamPaused(in bool pause)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStreamPaused, _godot_object, pause);
	}
	/**
	
	*/
	bool getStreamPaused() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getStreamPaused, _godot_object);
	}
	/**
	
	*/
	Ref!AudioStreamPlayback getStreamPlayback()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayback)(_classBinding.getStreamPlayback, _godot_object);
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
	Changes the pitch and the tempo of the audio.
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
	If `true`, audio is playing.
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
	If `true`, audio plays when added to scene tree. Default value: `false`.
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
	
	*/
	@property bool streamPaused()
	{
		return getStreamPaused();
	}
	/// ditto
	@property void streamPaused(bool v)
	{
		setStreamPaused(v);
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
