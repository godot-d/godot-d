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
import godot.audiostreamplayback;
import godot.canvasitem;
import godot.node;
/**
Plays audio in 2D.

Plays audio that dampens with distance from screen center.
*/
@GodotBaseClass struct AudioStreamPlayer2D
{
	enum string _GODOT_internal_name = "AudioStreamPlayer2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
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
		@GodotName("_set_playing") GodotMethod!(void, bool) _setPlaying;
		@GodotName("_is_active") GodotMethod!(bool) _isActive;
		@GodotName("set_max_distance") GodotMethod!(void, double) setMaxDistance;
		@GodotName("get_max_distance") GodotMethod!(double) getMaxDistance;
		@GodotName("set_attenuation") GodotMethod!(void, double) setAttenuation;
		@GodotName("get_attenuation") GodotMethod!(double) getAttenuation;
		@GodotName("set_area_mask") GodotMethod!(void, long) setAreaMask;
		@GodotName("get_area_mask") GodotMethod!(long) getAreaMask;
		@GodotName("set_stream_paused") GodotMethod!(void, bool) setStreamPaused;
		@GodotName("get_stream_paused") GodotMethod!(bool) getStreamPaused;
		@GodotName("get_stream_playback") GodotMethod!(AudioStreamPlayback) getStreamPlayback;
		@GodotName("_bus_layout_changed") GodotMethod!(void) _busLayoutChanged;
	}
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
	Returns the position in the $(D AudioStream).
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
	void setMaxDistance(in double pixels)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxDistance, _godot_object, pixels);
	}
	/**
	
	*/
	double getMaxDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMaxDistance, _godot_object);
	}
	/**
	
	*/
	void setAttenuation(in double curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAttenuation, _godot_object, curve);
	}
	/**
	
	*/
	double getAttenuation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAttenuation, _godot_object);
	}
	/**
	
	*/
	void setAreaMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAreaMask, _godot_object, mask);
	}
	/**
	
	*/
	long getAreaMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAreaMask, _godot_object);
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
