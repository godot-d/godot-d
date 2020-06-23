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
import godot.canvasitem;
import godot.node;
import godot.videostream;
import godot.texture;
/**
Control for playing video streams.

Control node for playing video streams using $(D VideoStream) resources.
Supported video formats are $(D url=https://www.webmproject.org/)WebM$(D /url) ($(D VideoStreamWebm)), $(D url=https://www.theora.org/)Ogg Theora$(D /url) ($(D VideoStreamTheora)), and any format exposed via a GDNative plugin using $(D VideoStreamGDNative).
*/
@GodotBaseClass struct VideoPlayer
{
	package(godot) enum string _GODOT_internal_name = "VideoPlayer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_audio_track") GodotMethod!(long) getAudioTrack;
		@GodotName("get_buffering_msec") GodotMethod!(long) getBufferingMsec;
		@GodotName("get_bus") GodotMethod!(String) getBus;
		@GodotName("get_stream") GodotMethod!(VideoStream) getStream;
		@GodotName("get_stream_name") GodotMethod!(String) getStreamName;
		@GodotName("get_stream_position") GodotMethod!(double) getStreamPosition;
		@GodotName("get_video_texture") GodotMethod!(Texture) getVideoTexture;
		@GodotName("get_volume") GodotMethod!(double) getVolume;
		@GodotName("get_volume_db") GodotMethod!(double) getVolumeDb;
		@GodotName("has_autoplay") GodotMethod!(bool) hasAutoplay;
		@GodotName("has_expand") GodotMethod!(bool) hasExpand;
		@GodotName("is_paused") GodotMethod!(bool) isPaused;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("play") GodotMethod!(void) play;
		@GodotName("set_audio_track") GodotMethod!(void, long) setAudioTrack;
		@GodotName("set_autoplay") GodotMethod!(void, bool) setAutoplay;
		@GodotName("set_buffering_msec") GodotMethod!(void, long) setBufferingMsec;
		@GodotName("set_bus") GodotMethod!(void, String) setBus;
		@GodotName("set_expand") GodotMethod!(void, bool) setExpand;
		@GodotName("set_paused") GodotMethod!(void, bool) setPaused;
		@GodotName("set_stream") GodotMethod!(void, VideoStream) setStream;
		@GodotName("set_stream_position") GodotMethod!(void, double) setStreamPosition;
		@GodotName("set_volume") GodotMethod!(void, double) setVolume;
		@GodotName("set_volume_db") GodotMethod!(void, double) setVolumeDb;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	/// 
	pragma(inline, true) bool opEquals(in VideoPlayer other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VideoPlayer opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VideoPlayer.
	/// Note: use `memnew!VideoPlayer` instead.
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
	long getAudioTrack() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAudioTrack, _godot_object);
	}
	/**
	
	*/
	long getBufferingMsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBufferingMsec, _godot_object);
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
	Ref!VideoStream getStream() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VideoStream)(GDNativeClassBinding.getStream, _godot_object);
	}
	/**
	Returns the video stream's name, or `"&lt;No Stream&gt;"` if no video stream is assigned.
	*/
	String getStreamName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getStreamName, _godot_object);
	}
	/**
	
	*/
	double getStreamPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getStreamPosition, _godot_object);
	}
	/**
	Returns the current frame as a $(D Texture).
	*/
	Ref!Texture getVideoTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getVideoTexture, _godot_object);
	}
	/**
	
	*/
	double getVolume() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVolume, _godot_object);
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
	bool hasAutoplay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAutoplay, _godot_object);
	}
	/**
	
	*/
	bool hasExpand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasExpand, _godot_object);
	}
	/**
	
	*/
	bool isPaused() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPaused, _godot_object);
	}
	/**
	Returns `true` if the video is playing.
	$(B Note:) The video is still considered playing if paused during playback.
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPlaying, _godot_object);
	}
	/**
	Starts the video playback from the beginning. If the video is paused, this will not unpause the video.
	*/
	void play()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.play, _godot_object);
	}
	/**
	
	*/
	void setAudioTrack(in long track)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAudioTrack, _godot_object, track);
	}
	/**
	
	*/
	void setAutoplay(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutoplay, _godot_object, enabled);
	}
	/**
	
	*/
	void setBufferingMsec(in long msec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBufferingMsec, _godot_object, msec);
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
	void setExpand(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpand, _godot_object, enable);
	}
	/**
	
	*/
	void setPaused(in bool paused)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPaused, _godot_object, paused);
	}
	/**
	
	*/
	void setStream(VideoStream stream)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStream, _godot_object, stream);
	}
	/**
	
	*/
	void setStreamPosition(in double position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStreamPosition, _godot_object, position);
	}
	/**
	
	*/
	void setVolume(in double volume)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVolume, _godot_object, volume);
	}
	/**
	
	*/
	void setVolumeDb(in double db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVolumeDb, _godot_object, db);
	}
	/**
	Stops the video playback and sets the stream position to 0.
	$(B Note:) Although the stream position will be set to 0, the first frame of the video stream won't become the current frame.
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
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
	If `true`, playback starts when the scene loads.
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
	/**
	If `true`, the video scales to the control size. Otherwise, the control minimum size will be automatically adjusted to match the video stream's dimensions.
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
	The assigned video stream. See description for supported formats.
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
}
