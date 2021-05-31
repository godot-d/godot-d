/**
Plays back audio non-positionally.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamplayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
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
Plays back audio non-positionally.

Plays an audio stream non-positionally.
To play audio positionally, use $(D AudioStreamPlayer2D) or $(D AudioStreamPlayer3D) instead of $(D AudioStreamPlayer).
*/
@GodotBaseClass struct AudioStreamPlayer
{
	package(godot) enum string _GODOT_internal_name = "AudioStreamPlayer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_bus_layout_changed") GodotMethod!(void) _busLayoutChanged;
		@GodotName("_is_active") GodotMethod!(bool) _isActive;
		@GodotName("_set_playing") GodotMethod!(void, bool) _setPlaying;
		@GodotName("get_bus") GodotMethod!(String) getBus;
		@GodotName("get_mix_target") GodotMethod!(AudioStreamPlayer.MixTarget) getMixTarget;
		@GodotName("get_pitch_scale") GodotMethod!(double) getPitchScale;
		@GodotName("get_playback_position") GodotMethod!(double) getPlaybackPosition;
		@GodotName("get_stream") GodotMethod!(AudioStream) getStream;
		@GodotName("get_stream_paused") GodotMethod!(bool) getStreamPaused;
		@GodotName("get_stream_playback") GodotMethod!(AudioStreamPlayback) getStreamPlayback;
		@GodotName("get_volume_db") GodotMethod!(double) getVolumeDb;
		@GodotName("is_autoplay_enabled") GodotMethod!(bool) isAutoplayEnabled;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("play") GodotMethod!(void, double) play;
		@GodotName("seek") GodotMethod!(void, double) seek;
		@GodotName("set_autoplay") GodotMethod!(void, bool) setAutoplay;
		@GodotName("set_bus") GodotMethod!(void, String) setBus;
		@GodotName("set_mix_target") GodotMethod!(void, long) setMixTarget;
		@GodotName("set_pitch_scale") GodotMethod!(void, double) setPitchScale;
		@GodotName("set_stream") GodotMethod!(void, AudioStream) setStream;
		@GodotName("set_stream_paused") GodotMethod!(void, bool) setStreamPaused;
		@GodotName("set_volume_db") GodotMethod!(void, double) setVolumeDb;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioStreamPlayer other) const
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
	/// Construct a new instance of AudioStreamPlayer.
	/// Note: use `memnew!AudioStreamPlayer` instead.
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
	void _busLayoutChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_bus_layout_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool _isActive() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_is_active");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _setPlaying(in bool enable)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(enable);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	String getBus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBus, _godot_object);
	}
	/**
	
	*/
	AudioStreamPlayer.MixTarget getMixTarget() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayer.MixTarget)(GDNativeClassBinding.getMixTarget, _godot_object);
	}
	/**
	
	*/
	double getPitchScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPitchScale, _godot_object);
	}
	/**
	Returns the position in the $(D AudioStream) in seconds.
	*/
	double getPlaybackPosition()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPlaybackPosition, _godot_object);
	}
	/**
	
	*/
	Ref!AudioStream getStream() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStream)(GDNativeClassBinding.getStream, _godot_object);
	}
	/**
	
	*/
	bool getStreamPaused() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getStreamPaused, _godot_object);
	}
	/**
	Returns the $(D AudioStreamPlayback) object associated with this $(D AudioStreamPlayer).
	*/
	Ref!AudioStreamPlayback getStreamPlayback()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayback)(GDNativeClassBinding.getStreamPlayback, _godot_object);
	}
	/**
	
	*/
	double getVolumeDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVolumeDb, _godot_object);
	}
	/**
	
	*/
	bool isAutoplayEnabled()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAutoplayEnabled, _godot_object);
	}
	/**
	
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPlaying, _godot_object);
	}
	/**
	Plays the audio from the given `from_position`, in seconds.
	*/
	void play(in double from_position = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.play, _godot_object, from_position);
	}
	/**
	Sets the position from which audio will be played, in seconds.
	*/
	void seek(in double to_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.seek, _godot_object, to_position);
	}
	/**
	
	*/
	void setAutoplay(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutoplay, _godot_object, enable);
	}
	/**
	
	*/
	void setBus(in String bus)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBus, _godot_object, bus);
	}
	/**
	
	*/
	void setMixTarget(in long mix_target)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMixTarget, _godot_object, mix_target);
	}
	/**
	
	*/
	void setPitchScale(in double pitch_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPitchScale, _godot_object, pitch_scale);
	}
	/**
	
	*/
	void setStream(AudioStream stream)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStream, _godot_object, stream);
	}
	/**
	
	*/
	void setStreamPaused(in bool pause)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStreamPaused, _godot_object, pause);
	}
	/**
	
	*/
	void setVolumeDb(in double volume_db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVolumeDb, _godot_object, volume_db);
	}
	/**
	Stops the audio.
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
	}
	/**
	If `true`, audio plays when added to scene tree.
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
	If the audio configuration has more than two speakers, this sets the target channels. See $(D mixtarget) constants.
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
	The pitch and the tempo of the audio, as a multiplier of the audio sample's sample rate.
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
	If `true`, the playback is paused. You can resume it by setting `stream_paused` to `false`.
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
}
