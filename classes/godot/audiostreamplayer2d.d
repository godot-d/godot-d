/**
Plays positional sound in 2D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamplayer2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.audiostream;
import godot.audiostreamplayback;
/**
Plays positional sound in 2D space.

Plays audio that dampens with distance from screen center.
See also $(D AudioStreamPlayer) to play a sound non-positionally.
$(B Note:) Hiding an $(D AudioStreamPlayer2D) node does not disable its audio output. To temporarily disable an $(D AudioStreamPlayer2D)'s audio output, set $(D volumeDb) to a very low value like `-100` (which isn't audible to human hearing).
*/
@GodotBaseClass struct AudioStreamPlayer2D
{
	package(godot) enum string _GODOT_internal_name = "AudioStreamPlayer2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_bus_layout_changed") GodotMethod!(void) _busLayoutChanged;
		@GodotName("_is_active") GodotMethod!(bool) _isActive;
		@GodotName("_set_playing") GodotMethod!(void, bool) _setPlaying;
		@GodotName("get_area_mask") GodotMethod!(long) getAreaMask;
		@GodotName("get_attenuation") GodotMethod!(double) getAttenuation;
		@GodotName("get_bus") GodotMethod!(String) getBus;
		@GodotName("get_max_distance") GodotMethod!(double) getMaxDistance;
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
		@GodotName("set_area_mask") GodotMethod!(void, long) setAreaMask;
		@GodotName("set_attenuation") GodotMethod!(void, double) setAttenuation;
		@GodotName("set_autoplay") GodotMethod!(void, bool) setAutoplay;
		@GodotName("set_bus") GodotMethod!(void, String) setBus;
		@GodotName("set_max_distance") GodotMethod!(void, double) setMaxDistance;
		@GodotName("set_pitch_scale") GodotMethod!(void, double) setPitchScale;
		@GodotName("set_stream") GodotMethod!(void, AudioStream) setStream;
		@GodotName("set_stream_paused") GodotMethod!(void, bool) setStreamPaused;
		@GodotName("set_volume_db") GodotMethod!(void, double) setVolumeDb;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioStreamPlayer2D other) const
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
	/// Construct a new instance of AudioStreamPlayer2D.
	/// Note: use `memnew!AudioStreamPlayer2D` instead.
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
	long getAreaMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAreaMask, _godot_object);
	}
	/**
	
	*/
	double getAttenuation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAttenuation, _godot_object);
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
	double getMaxDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMaxDistance, _godot_object);
	}
	/**
	
	*/
	double getPitchScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPitchScale, _godot_object);
	}
	/**
	Returns the position in the $(D AudioStream).
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
	Returns the $(D AudioStreamPlayback) object associated with this $(D AudioStreamPlayer2D).
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
	Plays the audio from the given position `from_position`, in seconds.
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
	void setAreaMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAreaMask, _godot_object, mask);
	}
	/**
	
	*/
	void setAttenuation(in double curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAttenuation, _godot_object, curve);
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
	void setMaxDistance(in double pixels)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxDistance, _godot_object, pixels);
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
}
