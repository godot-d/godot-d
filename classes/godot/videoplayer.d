/**
Control for playing video streams.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.videoplayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
import godot.videostream;
import godot.texture;
/**
Control for playing video streams.

Control node for playing video streams. Supported formats are WebM and OGV Theora.
*/
@GodotBaseClass struct VideoPlayer
{
	static immutable string _GODOT_internal_name = "VideoPlayer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VideoPlayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VideoPlayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VideoPlayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VideoPlayer");
		if(constructor is null) return typeof(this).init;
		return cast(VideoPlayer)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, VideoStream) _GODOT_set_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stream") = _GODOT_set_stream;
	/**
	
	*/
	void setStream(VideoStream stream)
	{
		_GODOT_set_stream.bind("VideoPlayer", "set_stream");
		ptrcall!(void)(_GODOT_set_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(VideoStream) _GODOT_get_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream") = _GODOT_get_stream;
	/**
	
	*/
	Ref!VideoStream getStream() const
	{
		_GODOT_get_stream.bind("VideoPlayer", "get_stream");
		return ptrcall!(VideoStream)(_GODOT_get_stream, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	/**
	Starts the video playback.
	*/
	void play()
	{
		_GODOT_play.bind("VideoPlayer", "play");
		ptrcall!(void)(_GODOT_play, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	/**
	Stops the video playback.
	*/
	void stop()
	{
		_GODOT_stop.bind("VideoPlayer", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	/**
	Returns `true` if the video is playing.
	*/
	bool isPlaying() const
	{
		_GODOT_is_playing.bind("VideoPlayer", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_paused;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_paused") = _GODOT_set_paused;
	/**
	
	*/
	void setPaused(in bool paused)
	{
		_GODOT_set_paused.bind("VideoPlayer", "set_paused");
		ptrcall!(void)(_GODOT_set_paused, _godot_object, paused);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_paused;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_paused") = _GODOT_is_paused;
	/**
	
	*/
	bool isPaused() const
	{
		_GODOT_is_paused.bind("VideoPlayer", "is_paused");
		return ptrcall!(bool)(_GODOT_is_paused, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_volume;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_volume") = _GODOT_set_volume;
	/**
	
	*/
	void setVolume(in double volume)
	{
		_GODOT_set_volume.bind("VideoPlayer", "set_volume");
		ptrcall!(void)(_GODOT_set_volume, _godot_object, volume);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_volume;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_volume") = _GODOT_get_volume;
	/**
	
	*/
	double getVolume() const
	{
		_GODOT_get_volume.bind("VideoPlayer", "get_volume");
		return ptrcall!(double)(_GODOT_get_volume, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_volume_db") = _GODOT_set_volume_db;
	/**
	
	*/
	void setVolumeDb(in double db)
	{
		_GODOT_set_volume_db.bind("VideoPlayer", "set_volume_db");
		ptrcall!(void)(_GODOT_set_volume_db, _godot_object, db);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_volume_db") = _GODOT_get_volume_db;
	/**
	
	*/
	double getVolumeDb() const
	{
		_GODOT_get_volume_db.bind("VideoPlayer", "get_volume_db");
		return ptrcall!(double)(_GODOT_get_volume_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_audio_track;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_audio_track") = _GODOT_set_audio_track;
	/**
	
	*/
	void setAudioTrack(in long track)
	{
		_GODOT_set_audio_track.bind("VideoPlayer", "set_audio_track");
		ptrcall!(void)(_GODOT_set_audio_track, _godot_object, track);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_audio_track;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_audio_track") = _GODOT_get_audio_track;
	/**
	
	*/
	long getAudioTrack() const
	{
		_GODOT_get_audio_track.bind("VideoPlayer", "get_audio_track");
		return ptrcall!(long)(_GODOT_get_audio_track, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_stream_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream_name") = _GODOT_get_stream_name;
	/**
	Returns the video stream's name.
	*/
	String getStreamName() const
	{
		_GODOT_get_stream_name.bind("VideoPlayer", "get_stream_name");
		return ptrcall!(String)(_GODOT_get_stream_name, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_stream_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stream_position") = _GODOT_set_stream_position;
	/**
	
	*/
	void setStreamPosition(in double position)
	{
		_GODOT_set_stream_position.bind("VideoPlayer", "set_stream_position");
		ptrcall!(void)(_GODOT_set_stream_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_stream_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream_position") = _GODOT_get_stream_position;
	/**
	
	*/
	double getStreamPosition() const
	{
		_GODOT_get_stream_position.bind("VideoPlayer", "get_stream_position");
		return ptrcall!(double)(_GODOT_get_stream_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autoplay") = _GODOT_set_autoplay;
	/**
	
	*/
	void setAutoplay(in bool enabled)
	{
		_GODOT_set_autoplay.bind("VideoPlayer", "set_autoplay");
		ptrcall!(void)(_GODOT_set_autoplay, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_autoplay") = _GODOT_has_autoplay;
	/**
	
	*/
	bool hasAutoplay() const
	{
		_GODOT_has_autoplay.bind("VideoPlayer", "has_autoplay");
		return ptrcall!(bool)(_GODOT_has_autoplay, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand") = _GODOT_set_expand;
	/**
	
	*/
	void setExpand(in bool enable)
	{
		_GODOT_set_expand.bind("VideoPlayer", "set_expand");
		ptrcall!(void)(_GODOT_set_expand, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_expand") = _GODOT_has_expand;
	/**
	
	*/
	bool hasExpand() const
	{
		_GODOT_has_expand.bind("VideoPlayer", "has_expand");
		return ptrcall!(bool)(_GODOT_has_expand, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_buffering_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_buffering_msec") = _GODOT_set_buffering_msec;
	/**
	
	*/
	void setBufferingMsec(in long msec)
	{
		_GODOT_set_buffering_msec.bind("VideoPlayer", "set_buffering_msec");
		ptrcall!(void)(_GODOT_set_buffering_msec, _godot_object, msec);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_buffering_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_buffering_msec") = _GODOT_get_buffering_msec;
	/**
	
	*/
	long getBufferingMsec() const
	{
		_GODOT_get_buffering_msec.bind("VideoPlayer", "get_buffering_msec");
		return ptrcall!(long)(_GODOT_get_buffering_msec, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus") = _GODOT_set_bus;
	/**
	
	*/
	void setBus(StringArg0)(in StringArg0 bus)
	{
		_GODOT_set_bus.bind("VideoPlayer", "set_bus");
		ptrcall!(void)(_GODOT_set_bus, _godot_object, bus);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus") = _GODOT_get_bus;
	/**
	
	*/
	String getBus() const
	{
		_GODOT_get_bus.bind("VideoPlayer", "get_bus");
		return ptrcall!(String)(_GODOT_get_bus, _godot_object);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_video_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_video_texture") = _GODOT_get_video_texture;
	/**
	Returns the current frame as a $(D Texture).
	*/
	Ref!Texture getVideoTexture()
	{
		_GODOT_get_video_texture.bind("VideoPlayer", "get_video_texture");
		return ptrcall!(Texture)(_GODOT_get_video_texture, _godot_object);
	}
	/**
	The embedded audio track to play.
	*/
	@property long audioTrack()
	{
		return getAudioTrack();
	}
	/// ditto
	@property void audioTrack(long v)
	{
		setAudioTrack(v);
	}
	/**
	
	*/
	@property VideoStream stream()
	{
		return getStream();
	}
	/// ditto
	@property void stream(VideoStream v)
	{
		setStream(v);
	}
	/**
	Audio volume in dB.
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
	Audio volume as a linear value.
	*/
	@property double volume()
	{
		return getVolume();
	}
	/// ditto
	@property void volume(double v)
	{
		setVolume(v);
	}
	/**
	If `true` playback starts when the scene loads. Default value: `false`.
	*/
	@property bool autoplay()
	{
		return hasAutoplay();
	}
	/// ditto
	@property void autoplay(bool v)
	{
		setAutoplay(v);
	}
	/**
	If `true` the video is paused.
	*/
	@property bool paused()
	{
		return isPaused();
	}
	/// ditto
	@property void paused(bool v)
	{
		setPaused(v);
	}
	/**
	If `true` the video scales to the control size. Default value: `true`.
	*/
	@property bool expand()
	{
		return hasExpand();
	}
	/// ditto
	@property void expand(bool v)
	{
		setExpand(v);
	}
	/**
	Amount of time in milliseconds to store in buffer while playing.
	*/
	@property long bufferingMsec()
	{
		return getBufferingMsec();
	}
	/// ditto
	@property void bufferingMsec(long v)
	{
		setBufferingMsec(v);
	}
	/**
	The current position of the stream, in seconds.
	*/
	@property double streamPosition()
	{
		return getStreamPosition();
	}
	/// ditto
	@property void streamPosition(double v)
	{
		setStreamPosition(v);
	}
	/**
	Audio bus to use for sound playback.
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
