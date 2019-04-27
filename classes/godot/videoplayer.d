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
import godot.canvasitem;
import godot.node;
/**
Control for playing video streams.

Control node for playing video streams. Supported formats are WebM and OGV Theora.
*/
@GodotBaseClass struct VideoPlayer
{
	enum string _GODOT_internal_name = "VideoPlayer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_stream") GodotMethod!(void, VideoStream) setStream;
		@GodotName("get_stream") GodotMethod!(VideoStream) getStream;
		@GodotName("play") GodotMethod!(void) play;
		@GodotName("stop") GodotMethod!(void) stop;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("set_paused") GodotMethod!(void, bool) setPaused;
		@GodotName("is_paused") GodotMethod!(bool) isPaused;
		@GodotName("set_volume") GodotMethod!(void, double) setVolume;
		@GodotName("get_volume") GodotMethod!(double) getVolume;
		@GodotName("set_volume_db") GodotMethod!(void, double) setVolumeDb;
		@GodotName("get_volume_db") GodotMethod!(double) getVolumeDb;
		@GodotName("set_audio_track") GodotMethod!(void, long) setAudioTrack;
		@GodotName("get_audio_track") GodotMethod!(long) getAudioTrack;
		@GodotName("get_stream_name") GodotMethod!(String) getStreamName;
		@GodotName("set_stream_position") GodotMethod!(void, double) setStreamPosition;
		@GodotName("get_stream_position") GodotMethod!(double) getStreamPosition;
		@GodotName("set_autoplay") GodotMethod!(void, bool) setAutoplay;
		@GodotName("has_autoplay") GodotMethod!(bool) hasAutoplay;
		@GodotName("set_expand") GodotMethod!(void, bool) setExpand;
		@GodotName("has_expand") GodotMethod!(bool) hasExpand;
		@GodotName("set_buffering_msec") GodotMethod!(void, long) setBufferingMsec;
		@GodotName("get_buffering_msec") GodotMethod!(long) getBufferingMsec;
		@GodotName("set_bus") GodotMethod!(void, String) setBus;
		@GodotName("get_bus") GodotMethod!(String) getBus;
		@GodotName("get_video_texture") GodotMethod!(Texture) getVideoTexture;
	}
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
	/**
	
	*/
	void setStream(VideoStream stream)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStream, _godot_object, stream);
	}
	/**
	
	*/
	Ref!VideoStream getStream() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VideoStream)(_classBinding.getStream, _godot_object);
	}
	/**
	Starts the video playback.
	*/
	void play()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.play, _godot_object);
	}
	/**
	Stops the video playback.
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stop, _godot_object);
	}
	/**
	Returns `true` if the video is playing.
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPlaying, _godot_object);
	}
	/**
	
	*/
	void setPaused(in bool paused)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPaused, _godot_object, paused);
	}
	/**
	
	*/
	bool isPaused() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPaused, _godot_object);
	}
	/**
	
	*/
	void setVolume(in double volume)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVolume, _godot_object, volume);
	}
	/**
	
	*/
	double getVolume() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getVolume, _godot_object);
	}
	/**
	
	*/
	void setVolumeDb(in double db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVolumeDb, _godot_object, db);
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
	void setAudioTrack(in long track)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAudioTrack, _godot_object, track);
	}
	/**
	
	*/
	long getAudioTrack() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAudioTrack, _godot_object);
	}
	/**
	Returns the video stream's name.
	*/
	String getStreamName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getStreamName, _godot_object);
	}
	/**
	
	*/
	void setStreamPosition(in double position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStreamPosition, _godot_object, position);
	}
	/**
	
	*/
	double getStreamPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getStreamPosition, _godot_object);
	}
	/**
	
	*/
	void setAutoplay(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutoplay, _godot_object, enabled);
	}
	/**
	
	*/
	bool hasAutoplay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasAutoplay, _godot_object);
	}
	/**
	
	*/
	void setExpand(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExpand, _godot_object, enable);
	}
	/**
	
	*/
	bool hasExpand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasExpand, _godot_object);
	}
	/**
	
	*/
	void setBufferingMsec(in long msec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBufferingMsec, _godot_object, msec);
	}
	/**
	
	*/
	long getBufferingMsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBufferingMsec, _godot_object);
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
	Returns the current frame as a $(D Texture).
	*/
	Ref!Texture getVideoTexture()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getVideoTexture, _godot_object);
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
	If `true`, playback starts when the scene loads. Default value: `false`.
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
	If `true`, the video is paused.
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
	If `true`, the video scales to the control size. Default value: `true`.
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
