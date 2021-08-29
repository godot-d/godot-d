/**
Proxy texture for simple frame-based animations.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animatedtexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.texture;
/**
Proxy texture for simple frame-based animations.

$(D AnimatedTexture) is a resource format for frame-based animations, where multiple textures can be chained automatically with a predefined delay for each frame. Unlike $(D AnimationPlayer) or $(D AnimatedSprite), it isn't a $(D Node), but has the advantage of being usable anywhere a $(D Texture) resource can be used, e.g. in a $(D TileSet).
The playback of the animation is controlled by the $(D fps) property as well as each frame's optional delay (see $(D setFrameDelay)). The animation loops, i.e. it will restart at frame 0 automatically after playing the last frame.
$(D AnimatedTexture) currently requires all frame textures to have the same size, otherwise the bigger ones will be cropped to match the smallest one.
$(B Note:) AnimatedTexture doesn't support using $(D AtlasTexture)s. Each frame needs to be a separate $(D Texture).
*/
@GodotBaseClass struct AnimatedTexture
{
	package(godot) enum string _GODOT_internal_name = "AnimatedTexture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_update_proxy") GodotMethod!(void) _updateProxy;
		@GodotName("get_current_frame") GodotMethod!(long) getCurrentFrame;
		@GodotName("get_fps") GodotMethod!(double) getFps;
		@GodotName("get_frame_delay") GodotMethod!(double, long) getFrameDelay;
		@GodotName("get_frame_texture") GodotMethod!(Texture, long) getFrameTexture;
		@GodotName("get_frames") GodotMethod!(long) getFrames;
		@GodotName("get_oneshot") GodotMethod!(bool) getOneshot;
		@GodotName("get_pause") GodotMethod!(bool) getPause;
		@GodotName("set_current_frame") GodotMethod!(void, long) setCurrentFrame;
		@GodotName("set_fps") GodotMethod!(void, double) setFps;
		@GodotName("set_frame_delay") GodotMethod!(void, long, double) setFrameDelay;
		@GodotName("set_frame_texture") GodotMethod!(void, long, Texture) setFrameTexture;
		@GodotName("set_frames") GodotMethod!(void, long) setFrames;
		@GodotName("set_oneshot") GodotMethod!(void, bool) setOneshot;
		@GodotName("set_pause") GodotMethod!(void, bool) setPause;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimatedTexture other) const
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
	/// Construct a new instance of AnimatedTexture.
	/// Note: use `memnew!AnimatedTexture` instead.
	static AnimatedTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimatedTexture");
		if(constructor is null) return typeof(this).init;
		return cast(AnimatedTexture)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/**
		The maximum number of frames supported by $(D AnimatedTexture). If you need more frames in your animation, use $(D AnimationPlayer) or $(D AnimatedSprite).
		*/
		maxFrames = 256,
	}
	/**
	
	*/
	void _updateProxy()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_proxy");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long getCurrentFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCurrentFrame, _godot_object);
	}
	/**
	
	*/
	double getFps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFps, _godot_object);
	}
	/**
	Returns the given frame's delay value.
	*/
	double getFrameDelay(in long frame) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFrameDelay, _godot_object, frame);
	}
	/**
	Returns the given frame's $(D Texture).
	*/
	Ref!Texture getFrameTexture(in long frame) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getFrameTexture, _godot_object, frame);
	}
	/**
	
	*/
	long getFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFrames, _godot_object);
	}
	/**
	
	*/
	bool getOneshot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getOneshot, _godot_object);
	}
	/**
	
	*/
	bool getPause() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getPause, _godot_object);
	}
	/**
	
	*/
	void setCurrentFrame(in long frame)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrentFrame, _godot_object, frame);
	}
	/**
	
	*/
	void setFps(in double fps)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFps, _godot_object, fps);
	}
	/**
	Sets an additional delay (in seconds) between this frame and the next one, that will be added to the time interval defined by $(D fps). By default, frames have no delay defined. If a delay value is defined, the final time interval between this frame and the next will be `1.0 / fps + delay`.
	For example, for an animation with 3 frames, 2 FPS and a frame delay on the second frame of 1.2, the resulting playback will be:
	
	
	Frame 0: 0.5 s (1 / fps)
	Frame 1: 1.7 s (1 / fps + 1.2)
	Frame 2: 0.5 s (1 / fps)
	Total duration: 2.7 s
	
	
	*/
	void setFrameDelay(in long frame, in double delay)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrameDelay, _godot_object, frame, delay);
	}
	/**
	Assigns a $(D Texture) to the given frame. Frame IDs start at 0, so the first frame has ID 0, and the last frame of the animation has ID $(D frames) - 1.
	You can define any number of textures up to $(D constant MAX_FRAMES), but keep in mind that only frames from 0 to $(D frames) - 1 will be part of the animation.
	*/
	void setFrameTexture(in long frame, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrameTexture, _godot_object, frame, texture);
	}
	/**
	
	*/
	void setFrames(in long frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrames, _godot_object, frames);
	}
	/**
	
	*/
	void setOneshot(in bool oneshot)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOneshot, _godot_object, oneshot);
	}
	/**
	
	*/
	void setPause(in bool pause)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPause, _godot_object, pause);
	}
	/**
	Sets the currently visible frame of the texture.
	*/
	@property long currentFrame()
	{
		return getCurrentFrame();
	}
	/// ditto
	@property void currentFrame(long v)
	{
		setCurrentFrame(v);
	}
	/**
	Animation speed in frames per second. This value defines the default time interval between two frames of the animation, and thus the overall duration of the animation loop based on the $(D frames) property. A value of 0 means no predefined number of frames per second, the animation will play according to each frame's frame delay (see $(D setFrameDelay)).
	For example, an animation with 8 frames, no frame delay and a `fps` value of 2 will run for 4 seconds, with each frame lasting 0.5 seconds.
	*/
	@property double fps()
	{
		return getFps();
	}
	/// ditto
	@property void fps(double v)
	{
		setFps(v);
	}
	/**
	
	*/
	@property double frame0DelaySec()
	{
		return getFrameDelay(0);
	}
	/// ditto
	@property void frame0DelaySec(double v)
	{
		setFrameDelay(0, v);
	}
	/**
	
	*/
	@property Texture frame0Texture()
	{
		return getFrameTexture(0);
	}
	/// ditto
	@property void frame0Texture(Texture v)
	{
		setFrameTexture(0, v);
	}
	/**
	
	*/
	@property double frame1DelaySec()
	{
		return getFrameDelay(1);
	}
	/// ditto
	@property void frame1DelaySec(double v)
	{
		setFrameDelay(1, v);
	}
	/**
	
	*/
	@property Texture frame1Texture()
	{
		return getFrameTexture(1);
	}
	/// ditto
	@property void frame1Texture(Texture v)
	{
		setFrameTexture(1, v);
	}
	/**
	
	*/
	@property double frame10DelaySec()
	{
		return getFrameDelay(10);
	}
	/// ditto
	@property void frame10DelaySec(double v)
	{
		setFrameDelay(10, v);
	}
	/**
	
	*/
	@property Texture frame10Texture()
	{
		return getFrameTexture(10);
	}
	/// ditto
	@property void frame10Texture(Texture v)
	{
		setFrameTexture(10, v);
	}
	/**
	
	*/
	@property double frame100DelaySec()
	{
		return getFrameDelay(100);
	}
	/// ditto
	@property void frame100DelaySec(double v)
	{
		setFrameDelay(100, v);
	}
	/**
	
	*/
	@property Texture frame100Texture()
	{
		return getFrameTexture(100);
	}
	/// ditto
	@property void frame100Texture(Texture v)
	{
		setFrameTexture(100, v);
	}
	/**
	
	*/
	@property double frame101DelaySec()
	{
		return getFrameDelay(101);
	}
	/// ditto
	@property void frame101DelaySec(double v)
	{
		setFrameDelay(101, v);
	}
	/**
	
	*/
	@property Texture frame101Texture()
	{
		return getFrameTexture(101);
	}
	/// ditto
	@property void frame101Texture(Texture v)
	{
		setFrameTexture(101, v);
	}
	/**
	
	*/
	@property double frame102DelaySec()
	{
		return getFrameDelay(102);
	}
	/// ditto
	@property void frame102DelaySec(double v)
	{
		setFrameDelay(102, v);
	}
	/**
	
	*/
	@property Texture frame102Texture()
	{
		return getFrameTexture(102);
	}
	/// ditto
	@property void frame102Texture(Texture v)
	{
		setFrameTexture(102, v);
	}
	/**
	
	*/
	@property double frame103DelaySec()
	{
		return getFrameDelay(103);
	}
	/// ditto
	@property void frame103DelaySec(double v)
	{
		setFrameDelay(103, v);
	}
	/**
	
	*/
	@property Texture frame103Texture()
	{
		return getFrameTexture(103);
	}
	/// ditto
	@property void frame103Texture(Texture v)
	{
		setFrameTexture(103, v);
	}
	/**
	
	*/
	@property double frame104DelaySec()
	{
		return getFrameDelay(104);
	}
	/// ditto
	@property void frame104DelaySec(double v)
	{
		setFrameDelay(104, v);
	}
	/**
	
	*/
	@property Texture frame104Texture()
	{
		return getFrameTexture(104);
	}
	/// ditto
	@property void frame104Texture(Texture v)
	{
		setFrameTexture(104, v);
	}
	/**
	
	*/
	@property double frame105DelaySec()
	{
		return getFrameDelay(105);
	}
	/// ditto
	@property void frame105DelaySec(double v)
	{
		setFrameDelay(105, v);
	}
	/**
	
	*/
	@property Texture frame105Texture()
	{
		return getFrameTexture(105);
	}
	/// ditto
	@property void frame105Texture(Texture v)
	{
		setFrameTexture(105, v);
	}
	/**
	
	*/
	@property double frame106DelaySec()
	{
		return getFrameDelay(106);
	}
	/// ditto
	@property void frame106DelaySec(double v)
	{
		setFrameDelay(106, v);
	}
	/**
	
	*/
	@property Texture frame106Texture()
	{
		return getFrameTexture(106);
	}
	/// ditto
	@property void frame106Texture(Texture v)
	{
		setFrameTexture(106, v);
	}
	/**
	
	*/
	@property double frame107DelaySec()
	{
		return getFrameDelay(107);
	}
	/// ditto
	@property void frame107DelaySec(double v)
	{
		setFrameDelay(107, v);
	}
	/**
	
	*/
	@property Texture frame107Texture()
	{
		return getFrameTexture(107);
	}
	/// ditto
	@property void frame107Texture(Texture v)
	{
		setFrameTexture(107, v);
	}
	/**
	
	*/
	@property double frame108DelaySec()
	{
		return getFrameDelay(108);
	}
	/// ditto
	@property void frame108DelaySec(double v)
	{
		setFrameDelay(108, v);
	}
	/**
	
	*/
	@property Texture frame108Texture()
	{
		return getFrameTexture(108);
	}
	/// ditto
	@property void frame108Texture(Texture v)
	{
		setFrameTexture(108, v);
	}
	/**
	
	*/
	@property double frame109DelaySec()
	{
		return getFrameDelay(109);
	}
	/// ditto
	@property void frame109DelaySec(double v)
	{
		setFrameDelay(109, v);
	}
	/**
	
	*/
	@property Texture frame109Texture()
	{
		return getFrameTexture(109);
	}
	/// ditto
	@property void frame109Texture(Texture v)
	{
		setFrameTexture(109, v);
	}
	/**
	
	*/
	@property double frame11DelaySec()
	{
		return getFrameDelay(11);
	}
	/// ditto
	@property void frame11DelaySec(double v)
	{
		setFrameDelay(11, v);
	}
	/**
	
	*/
	@property Texture frame11Texture()
	{
		return getFrameTexture(11);
	}
	/// ditto
	@property void frame11Texture(Texture v)
	{
		setFrameTexture(11, v);
	}
	/**
	
	*/
	@property double frame110DelaySec()
	{
		return getFrameDelay(110);
	}
	/// ditto
	@property void frame110DelaySec(double v)
	{
		setFrameDelay(110, v);
	}
	/**
	
	*/
	@property Texture frame110Texture()
	{
		return getFrameTexture(110);
	}
	/// ditto
	@property void frame110Texture(Texture v)
	{
		setFrameTexture(110, v);
	}
	/**
	
	*/
	@property double frame111DelaySec()
	{
		return getFrameDelay(111);
	}
	/// ditto
	@property void frame111DelaySec(double v)
	{
		setFrameDelay(111, v);
	}
	/**
	
	*/
	@property Texture frame111Texture()
	{
		return getFrameTexture(111);
	}
	/// ditto
	@property void frame111Texture(Texture v)
	{
		setFrameTexture(111, v);
	}
	/**
	
	*/
	@property double frame112DelaySec()
	{
		return getFrameDelay(112);
	}
	/// ditto
	@property void frame112DelaySec(double v)
	{
		setFrameDelay(112, v);
	}
	/**
	
	*/
	@property Texture frame112Texture()
	{
		return getFrameTexture(112);
	}
	/// ditto
	@property void frame112Texture(Texture v)
	{
		setFrameTexture(112, v);
	}
	/**
	
	*/
	@property double frame113DelaySec()
	{
		return getFrameDelay(113);
	}
	/// ditto
	@property void frame113DelaySec(double v)
	{
		setFrameDelay(113, v);
	}
	/**
	
	*/
	@property Texture frame113Texture()
	{
		return getFrameTexture(113);
	}
	/// ditto
	@property void frame113Texture(Texture v)
	{
		setFrameTexture(113, v);
	}
	/**
	
	*/
	@property double frame114DelaySec()
	{
		return getFrameDelay(114);
	}
	/// ditto
	@property void frame114DelaySec(double v)
	{
		setFrameDelay(114, v);
	}
	/**
	
	*/
	@property Texture frame114Texture()
	{
		return getFrameTexture(114);
	}
	/// ditto
	@property void frame114Texture(Texture v)
	{
		setFrameTexture(114, v);
	}
	/**
	
	*/
	@property double frame115DelaySec()
	{
		return getFrameDelay(115);
	}
	/// ditto
	@property void frame115DelaySec(double v)
	{
		setFrameDelay(115, v);
	}
	/**
	
	*/
	@property Texture frame115Texture()
	{
		return getFrameTexture(115);
	}
	/// ditto
	@property void frame115Texture(Texture v)
	{
		setFrameTexture(115, v);
	}
	/**
	
	*/
	@property double frame116DelaySec()
	{
		return getFrameDelay(116);
	}
	/// ditto
	@property void frame116DelaySec(double v)
	{
		setFrameDelay(116, v);
	}
	/**
	
	*/
	@property Texture frame116Texture()
	{
		return getFrameTexture(116);
	}
	/// ditto
	@property void frame116Texture(Texture v)
	{
		setFrameTexture(116, v);
	}
	/**
	
	*/
	@property double frame117DelaySec()
	{
		return getFrameDelay(117);
	}
	/// ditto
	@property void frame117DelaySec(double v)
	{
		setFrameDelay(117, v);
	}
	/**
	
	*/
	@property Texture frame117Texture()
	{
		return getFrameTexture(117);
	}
	/// ditto
	@property void frame117Texture(Texture v)
	{
		setFrameTexture(117, v);
	}
	/**
	
	*/
	@property double frame118DelaySec()
	{
		return getFrameDelay(118);
	}
	/// ditto
	@property void frame118DelaySec(double v)
	{
		setFrameDelay(118, v);
	}
	/**
	
	*/
	@property Texture frame118Texture()
	{
		return getFrameTexture(118);
	}
	/// ditto
	@property void frame118Texture(Texture v)
	{
		setFrameTexture(118, v);
	}
	/**
	
	*/
	@property double frame119DelaySec()
	{
		return getFrameDelay(119);
	}
	/// ditto
	@property void frame119DelaySec(double v)
	{
		setFrameDelay(119, v);
	}
	/**
	
	*/
	@property Texture frame119Texture()
	{
		return getFrameTexture(119);
	}
	/// ditto
	@property void frame119Texture(Texture v)
	{
		setFrameTexture(119, v);
	}
	/**
	
	*/
	@property double frame12DelaySec()
	{
		return getFrameDelay(12);
	}
	/// ditto
	@property void frame12DelaySec(double v)
	{
		setFrameDelay(12, v);
	}
	/**
	
	*/
	@property Texture frame12Texture()
	{
		return getFrameTexture(12);
	}
	/// ditto
	@property void frame12Texture(Texture v)
	{
		setFrameTexture(12, v);
	}
	/**
	
	*/
	@property double frame120DelaySec()
	{
		return getFrameDelay(120);
	}
	/// ditto
	@property void frame120DelaySec(double v)
	{
		setFrameDelay(120, v);
	}
	/**
	
	*/
	@property Texture frame120Texture()
	{
		return getFrameTexture(120);
	}
	/// ditto
	@property void frame120Texture(Texture v)
	{
		setFrameTexture(120, v);
	}
	/**
	
	*/
	@property double frame121DelaySec()
	{
		return getFrameDelay(121);
	}
	/// ditto
	@property void frame121DelaySec(double v)
	{
		setFrameDelay(121, v);
	}
	/**
	
	*/
	@property Texture frame121Texture()
	{
		return getFrameTexture(121);
	}
	/// ditto
	@property void frame121Texture(Texture v)
	{
		setFrameTexture(121, v);
	}
	/**
	
	*/
	@property double frame122DelaySec()
	{
		return getFrameDelay(122);
	}
	/// ditto
	@property void frame122DelaySec(double v)
	{
		setFrameDelay(122, v);
	}
	/**
	
	*/
	@property Texture frame122Texture()
	{
		return getFrameTexture(122);
	}
	/// ditto
	@property void frame122Texture(Texture v)
	{
		setFrameTexture(122, v);
	}
	/**
	
	*/
	@property double frame123DelaySec()
	{
		return getFrameDelay(123);
	}
	/// ditto
	@property void frame123DelaySec(double v)
	{
		setFrameDelay(123, v);
	}
	/**
	
	*/
	@property Texture frame123Texture()
	{
		return getFrameTexture(123);
	}
	/// ditto
	@property void frame123Texture(Texture v)
	{
		setFrameTexture(123, v);
	}
	/**
	
	*/
	@property double frame124DelaySec()
	{
		return getFrameDelay(124);
	}
	/// ditto
	@property void frame124DelaySec(double v)
	{
		setFrameDelay(124, v);
	}
	/**
	
	*/
	@property Texture frame124Texture()
	{
		return getFrameTexture(124);
	}
	/// ditto
	@property void frame124Texture(Texture v)
	{
		setFrameTexture(124, v);
	}
	/**
	
	*/
	@property double frame125DelaySec()
	{
		return getFrameDelay(125);
	}
	/// ditto
	@property void frame125DelaySec(double v)
	{
		setFrameDelay(125, v);
	}
	/**
	
	*/
	@property Texture frame125Texture()
	{
		return getFrameTexture(125);
	}
	/// ditto
	@property void frame125Texture(Texture v)
	{
		setFrameTexture(125, v);
	}
	/**
	
	*/
	@property double frame126DelaySec()
	{
		return getFrameDelay(126);
	}
	/// ditto
	@property void frame126DelaySec(double v)
	{
		setFrameDelay(126, v);
	}
	/**
	
	*/
	@property Texture frame126Texture()
	{
		return getFrameTexture(126);
	}
	/// ditto
	@property void frame126Texture(Texture v)
	{
		setFrameTexture(126, v);
	}
	/**
	
	*/
	@property double frame127DelaySec()
	{
		return getFrameDelay(127);
	}
	/// ditto
	@property void frame127DelaySec(double v)
	{
		setFrameDelay(127, v);
	}
	/**
	
	*/
	@property Texture frame127Texture()
	{
		return getFrameTexture(127);
	}
	/// ditto
	@property void frame127Texture(Texture v)
	{
		setFrameTexture(127, v);
	}
	/**
	
	*/
	@property double frame128DelaySec()
	{
		return getFrameDelay(128);
	}
	/// ditto
	@property void frame128DelaySec(double v)
	{
		setFrameDelay(128, v);
	}
	/**
	
	*/
	@property Texture frame128Texture()
	{
		return getFrameTexture(128);
	}
	/// ditto
	@property void frame128Texture(Texture v)
	{
		setFrameTexture(128, v);
	}
	/**
	
	*/
	@property double frame129DelaySec()
	{
		return getFrameDelay(129);
	}
	/// ditto
	@property void frame129DelaySec(double v)
	{
		setFrameDelay(129, v);
	}
	/**
	
	*/
	@property Texture frame129Texture()
	{
		return getFrameTexture(129);
	}
	/// ditto
	@property void frame129Texture(Texture v)
	{
		setFrameTexture(129, v);
	}
	/**
	
	*/
	@property double frame13DelaySec()
	{
		return getFrameDelay(13);
	}
	/// ditto
	@property void frame13DelaySec(double v)
	{
		setFrameDelay(13, v);
	}
	/**
	
	*/
	@property Texture frame13Texture()
	{
		return getFrameTexture(13);
	}
	/// ditto
	@property void frame13Texture(Texture v)
	{
		setFrameTexture(13, v);
	}
	/**
	
	*/
	@property double frame130DelaySec()
	{
		return getFrameDelay(130);
	}
	/// ditto
	@property void frame130DelaySec(double v)
	{
		setFrameDelay(130, v);
	}
	/**
	
	*/
	@property Texture frame130Texture()
	{
		return getFrameTexture(130);
	}
	/// ditto
	@property void frame130Texture(Texture v)
	{
		setFrameTexture(130, v);
	}
	/**
	
	*/
	@property double frame131DelaySec()
	{
		return getFrameDelay(131);
	}
	/// ditto
	@property void frame131DelaySec(double v)
	{
		setFrameDelay(131, v);
	}
	/**
	
	*/
	@property Texture frame131Texture()
	{
		return getFrameTexture(131);
	}
	/// ditto
	@property void frame131Texture(Texture v)
	{
		setFrameTexture(131, v);
	}
	/**
	
	*/
	@property double frame132DelaySec()
	{
		return getFrameDelay(132);
	}
	/// ditto
	@property void frame132DelaySec(double v)
	{
		setFrameDelay(132, v);
	}
	/**
	
	*/
	@property Texture frame132Texture()
	{
		return getFrameTexture(132);
	}
	/// ditto
	@property void frame132Texture(Texture v)
	{
		setFrameTexture(132, v);
	}
	/**
	
	*/
	@property double frame133DelaySec()
	{
		return getFrameDelay(133);
	}
	/// ditto
	@property void frame133DelaySec(double v)
	{
		setFrameDelay(133, v);
	}
	/**
	
	*/
	@property Texture frame133Texture()
	{
		return getFrameTexture(133);
	}
	/// ditto
	@property void frame133Texture(Texture v)
	{
		setFrameTexture(133, v);
	}
	/**
	
	*/
	@property double frame134DelaySec()
	{
		return getFrameDelay(134);
	}
	/// ditto
	@property void frame134DelaySec(double v)
	{
		setFrameDelay(134, v);
	}
	/**
	
	*/
	@property Texture frame134Texture()
	{
		return getFrameTexture(134);
	}
	/// ditto
	@property void frame134Texture(Texture v)
	{
		setFrameTexture(134, v);
	}
	/**
	
	*/
	@property double frame135DelaySec()
	{
		return getFrameDelay(135);
	}
	/// ditto
	@property void frame135DelaySec(double v)
	{
		setFrameDelay(135, v);
	}
	/**
	
	*/
	@property Texture frame135Texture()
	{
		return getFrameTexture(135);
	}
	/// ditto
	@property void frame135Texture(Texture v)
	{
		setFrameTexture(135, v);
	}
	/**
	
	*/
	@property double frame136DelaySec()
	{
		return getFrameDelay(136);
	}
	/// ditto
	@property void frame136DelaySec(double v)
	{
		setFrameDelay(136, v);
	}
	/**
	
	*/
	@property Texture frame136Texture()
	{
		return getFrameTexture(136);
	}
	/// ditto
	@property void frame136Texture(Texture v)
	{
		setFrameTexture(136, v);
	}
	/**
	
	*/
	@property double frame137DelaySec()
	{
		return getFrameDelay(137);
	}
	/// ditto
	@property void frame137DelaySec(double v)
	{
		setFrameDelay(137, v);
	}
	/**
	
	*/
	@property Texture frame137Texture()
	{
		return getFrameTexture(137);
	}
	/// ditto
	@property void frame137Texture(Texture v)
	{
		setFrameTexture(137, v);
	}
	/**
	
	*/
	@property double frame138DelaySec()
	{
		return getFrameDelay(138);
	}
	/// ditto
	@property void frame138DelaySec(double v)
	{
		setFrameDelay(138, v);
	}
	/**
	
	*/
	@property Texture frame138Texture()
	{
		return getFrameTexture(138);
	}
	/// ditto
	@property void frame138Texture(Texture v)
	{
		setFrameTexture(138, v);
	}
	/**
	
	*/
	@property double frame139DelaySec()
	{
		return getFrameDelay(139);
	}
	/// ditto
	@property void frame139DelaySec(double v)
	{
		setFrameDelay(139, v);
	}
	/**
	
	*/
	@property Texture frame139Texture()
	{
		return getFrameTexture(139);
	}
	/// ditto
	@property void frame139Texture(Texture v)
	{
		setFrameTexture(139, v);
	}
	/**
	
	*/
	@property double frame14DelaySec()
	{
		return getFrameDelay(14);
	}
	/// ditto
	@property void frame14DelaySec(double v)
	{
		setFrameDelay(14, v);
	}
	/**
	
	*/
	@property Texture frame14Texture()
	{
		return getFrameTexture(14);
	}
	/// ditto
	@property void frame14Texture(Texture v)
	{
		setFrameTexture(14, v);
	}
	/**
	
	*/
	@property double frame140DelaySec()
	{
		return getFrameDelay(140);
	}
	/// ditto
	@property void frame140DelaySec(double v)
	{
		setFrameDelay(140, v);
	}
	/**
	
	*/
	@property Texture frame140Texture()
	{
		return getFrameTexture(140);
	}
	/// ditto
	@property void frame140Texture(Texture v)
	{
		setFrameTexture(140, v);
	}
	/**
	
	*/
	@property double frame141DelaySec()
	{
		return getFrameDelay(141);
	}
	/// ditto
	@property void frame141DelaySec(double v)
	{
		setFrameDelay(141, v);
	}
	/**
	
	*/
	@property Texture frame141Texture()
	{
		return getFrameTexture(141);
	}
	/// ditto
	@property void frame141Texture(Texture v)
	{
		setFrameTexture(141, v);
	}
	/**
	
	*/
	@property double frame142DelaySec()
	{
		return getFrameDelay(142);
	}
	/// ditto
	@property void frame142DelaySec(double v)
	{
		setFrameDelay(142, v);
	}
	/**
	
	*/
	@property Texture frame142Texture()
	{
		return getFrameTexture(142);
	}
	/// ditto
	@property void frame142Texture(Texture v)
	{
		setFrameTexture(142, v);
	}
	/**
	
	*/
	@property double frame143DelaySec()
	{
		return getFrameDelay(143);
	}
	/// ditto
	@property void frame143DelaySec(double v)
	{
		setFrameDelay(143, v);
	}
	/**
	
	*/
	@property Texture frame143Texture()
	{
		return getFrameTexture(143);
	}
	/// ditto
	@property void frame143Texture(Texture v)
	{
		setFrameTexture(143, v);
	}
	/**
	
	*/
	@property double frame144DelaySec()
	{
		return getFrameDelay(144);
	}
	/// ditto
	@property void frame144DelaySec(double v)
	{
		setFrameDelay(144, v);
	}
	/**
	
	*/
	@property Texture frame144Texture()
	{
		return getFrameTexture(144);
	}
	/// ditto
	@property void frame144Texture(Texture v)
	{
		setFrameTexture(144, v);
	}
	/**
	
	*/
	@property double frame145DelaySec()
	{
		return getFrameDelay(145);
	}
	/// ditto
	@property void frame145DelaySec(double v)
	{
		setFrameDelay(145, v);
	}
	/**
	
	*/
	@property Texture frame145Texture()
	{
		return getFrameTexture(145);
	}
	/// ditto
	@property void frame145Texture(Texture v)
	{
		setFrameTexture(145, v);
	}
	/**
	
	*/
	@property double frame146DelaySec()
	{
		return getFrameDelay(146);
	}
	/// ditto
	@property void frame146DelaySec(double v)
	{
		setFrameDelay(146, v);
	}
	/**
	
	*/
	@property Texture frame146Texture()
	{
		return getFrameTexture(146);
	}
	/// ditto
	@property void frame146Texture(Texture v)
	{
		setFrameTexture(146, v);
	}
	/**
	
	*/
	@property double frame147DelaySec()
	{
		return getFrameDelay(147);
	}
	/// ditto
	@property void frame147DelaySec(double v)
	{
		setFrameDelay(147, v);
	}
	/**
	
	*/
	@property Texture frame147Texture()
	{
		return getFrameTexture(147);
	}
	/// ditto
	@property void frame147Texture(Texture v)
	{
		setFrameTexture(147, v);
	}
	/**
	
	*/
	@property double frame148DelaySec()
	{
		return getFrameDelay(148);
	}
	/// ditto
	@property void frame148DelaySec(double v)
	{
		setFrameDelay(148, v);
	}
	/**
	
	*/
	@property Texture frame148Texture()
	{
		return getFrameTexture(148);
	}
	/// ditto
	@property void frame148Texture(Texture v)
	{
		setFrameTexture(148, v);
	}
	/**
	
	*/
	@property double frame149DelaySec()
	{
		return getFrameDelay(149);
	}
	/// ditto
	@property void frame149DelaySec(double v)
	{
		setFrameDelay(149, v);
	}
	/**
	
	*/
	@property Texture frame149Texture()
	{
		return getFrameTexture(149);
	}
	/// ditto
	@property void frame149Texture(Texture v)
	{
		setFrameTexture(149, v);
	}
	/**
	
	*/
	@property double frame15DelaySec()
	{
		return getFrameDelay(15);
	}
	/// ditto
	@property void frame15DelaySec(double v)
	{
		setFrameDelay(15, v);
	}
	/**
	
	*/
	@property Texture frame15Texture()
	{
		return getFrameTexture(15);
	}
	/// ditto
	@property void frame15Texture(Texture v)
	{
		setFrameTexture(15, v);
	}
	/**
	
	*/
	@property double frame150DelaySec()
	{
		return getFrameDelay(150);
	}
	/// ditto
	@property void frame150DelaySec(double v)
	{
		setFrameDelay(150, v);
	}
	/**
	
	*/
	@property Texture frame150Texture()
	{
		return getFrameTexture(150);
	}
	/// ditto
	@property void frame150Texture(Texture v)
	{
		setFrameTexture(150, v);
	}
	/**
	
	*/
	@property double frame151DelaySec()
	{
		return getFrameDelay(151);
	}
	/// ditto
	@property void frame151DelaySec(double v)
	{
		setFrameDelay(151, v);
	}
	/**
	
	*/
	@property Texture frame151Texture()
	{
		return getFrameTexture(151);
	}
	/// ditto
	@property void frame151Texture(Texture v)
	{
		setFrameTexture(151, v);
	}
	/**
	
	*/
	@property double frame152DelaySec()
	{
		return getFrameDelay(152);
	}
	/// ditto
	@property void frame152DelaySec(double v)
	{
		setFrameDelay(152, v);
	}
	/**
	
	*/
	@property Texture frame152Texture()
	{
		return getFrameTexture(152);
	}
	/// ditto
	@property void frame152Texture(Texture v)
	{
		setFrameTexture(152, v);
	}
	/**
	
	*/
	@property double frame153DelaySec()
	{
		return getFrameDelay(153);
	}
	/// ditto
	@property void frame153DelaySec(double v)
	{
		setFrameDelay(153, v);
	}
	/**
	
	*/
	@property Texture frame153Texture()
	{
		return getFrameTexture(153);
	}
	/// ditto
	@property void frame153Texture(Texture v)
	{
		setFrameTexture(153, v);
	}
	/**
	
	*/
	@property double frame154DelaySec()
	{
		return getFrameDelay(154);
	}
	/// ditto
	@property void frame154DelaySec(double v)
	{
		setFrameDelay(154, v);
	}
	/**
	
	*/
	@property Texture frame154Texture()
	{
		return getFrameTexture(154);
	}
	/// ditto
	@property void frame154Texture(Texture v)
	{
		setFrameTexture(154, v);
	}
	/**
	
	*/
	@property double frame155DelaySec()
	{
		return getFrameDelay(155);
	}
	/// ditto
	@property void frame155DelaySec(double v)
	{
		setFrameDelay(155, v);
	}
	/**
	
	*/
	@property Texture frame155Texture()
	{
		return getFrameTexture(155);
	}
	/// ditto
	@property void frame155Texture(Texture v)
	{
		setFrameTexture(155, v);
	}
	/**
	
	*/
	@property double frame156DelaySec()
	{
		return getFrameDelay(156);
	}
	/// ditto
	@property void frame156DelaySec(double v)
	{
		setFrameDelay(156, v);
	}
	/**
	
	*/
	@property Texture frame156Texture()
	{
		return getFrameTexture(156);
	}
	/// ditto
	@property void frame156Texture(Texture v)
	{
		setFrameTexture(156, v);
	}
	/**
	
	*/
	@property double frame157DelaySec()
	{
		return getFrameDelay(157);
	}
	/// ditto
	@property void frame157DelaySec(double v)
	{
		setFrameDelay(157, v);
	}
	/**
	
	*/
	@property Texture frame157Texture()
	{
		return getFrameTexture(157);
	}
	/// ditto
	@property void frame157Texture(Texture v)
	{
		setFrameTexture(157, v);
	}
	/**
	
	*/
	@property double frame158DelaySec()
	{
		return getFrameDelay(158);
	}
	/// ditto
	@property void frame158DelaySec(double v)
	{
		setFrameDelay(158, v);
	}
	/**
	
	*/
	@property Texture frame158Texture()
	{
		return getFrameTexture(158);
	}
	/// ditto
	@property void frame158Texture(Texture v)
	{
		setFrameTexture(158, v);
	}
	/**
	
	*/
	@property double frame159DelaySec()
	{
		return getFrameDelay(159);
	}
	/// ditto
	@property void frame159DelaySec(double v)
	{
		setFrameDelay(159, v);
	}
	/**
	
	*/
	@property Texture frame159Texture()
	{
		return getFrameTexture(159);
	}
	/// ditto
	@property void frame159Texture(Texture v)
	{
		setFrameTexture(159, v);
	}
	/**
	
	*/
	@property double frame16DelaySec()
	{
		return getFrameDelay(16);
	}
	/// ditto
	@property void frame16DelaySec(double v)
	{
		setFrameDelay(16, v);
	}
	/**
	
	*/
	@property Texture frame16Texture()
	{
		return getFrameTexture(16);
	}
	/// ditto
	@property void frame16Texture(Texture v)
	{
		setFrameTexture(16, v);
	}
	/**
	
	*/
	@property double frame160DelaySec()
	{
		return getFrameDelay(160);
	}
	/// ditto
	@property void frame160DelaySec(double v)
	{
		setFrameDelay(160, v);
	}
	/**
	
	*/
	@property Texture frame160Texture()
	{
		return getFrameTexture(160);
	}
	/// ditto
	@property void frame160Texture(Texture v)
	{
		setFrameTexture(160, v);
	}
	/**
	
	*/
	@property double frame161DelaySec()
	{
		return getFrameDelay(161);
	}
	/// ditto
	@property void frame161DelaySec(double v)
	{
		setFrameDelay(161, v);
	}
	/**
	
	*/
	@property Texture frame161Texture()
	{
		return getFrameTexture(161);
	}
	/// ditto
	@property void frame161Texture(Texture v)
	{
		setFrameTexture(161, v);
	}
	/**
	
	*/
	@property double frame162DelaySec()
	{
		return getFrameDelay(162);
	}
	/// ditto
	@property void frame162DelaySec(double v)
	{
		setFrameDelay(162, v);
	}
	/**
	
	*/
	@property Texture frame162Texture()
	{
		return getFrameTexture(162);
	}
	/// ditto
	@property void frame162Texture(Texture v)
	{
		setFrameTexture(162, v);
	}
	/**
	
	*/
	@property double frame163DelaySec()
	{
		return getFrameDelay(163);
	}
	/// ditto
	@property void frame163DelaySec(double v)
	{
		setFrameDelay(163, v);
	}
	/**
	
	*/
	@property Texture frame163Texture()
	{
		return getFrameTexture(163);
	}
	/// ditto
	@property void frame163Texture(Texture v)
	{
		setFrameTexture(163, v);
	}
	/**
	
	*/
	@property double frame164DelaySec()
	{
		return getFrameDelay(164);
	}
	/// ditto
	@property void frame164DelaySec(double v)
	{
		setFrameDelay(164, v);
	}
	/**
	
	*/
	@property Texture frame164Texture()
	{
		return getFrameTexture(164);
	}
	/// ditto
	@property void frame164Texture(Texture v)
	{
		setFrameTexture(164, v);
	}
	/**
	
	*/
	@property double frame165DelaySec()
	{
		return getFrameDelay(165);
	}
	/// ditto
	@property void frame165DelaySec(double v)
	{
		setFrameDelay(165, v);
	}
	/**
	
	*/
	@property Texture frame165Texture()
	{
		return getFrameTexture(165);
	}
	/// ditto
	@property void frame165Texture(Texture v)
	{
		setFrameTexture(165, v);
	}
	/**
	
	*/
	@property double frame166DelaySec()
	{
		return getFrameDelay(166);
	}
	/// ditto
	@property void frame166DelaySec(double v)
	{
		setFrameDelay(166, v);
	}
	/**
	
	*/
	@property Texture frame166Texture()
	{
		return getFrameTexture(166);
	}
	/// ditto
	@property void frame166Texture(Texture v)
	{
		setFrameTexture(166, v);
	}
	/**
	
	*/
	@property double frame167DelaySec()
	{
		return getFrameDelay(167);
	}
	/// ditto
	@property void frame167DelaySec(double v)
	{
		setFrameDelay(167, v);
	}
	/**
	
	*/
	@property Texture frame167Texture()
	{
		return getFrameTexture(167);
	}
	/// ditto
	@property void frame167Texture(Texture v)
	{
		setFrameTexture(167, v);
	}
	/**
	
	*/
	@property double frame168DelaySec()
	{
		return getFrameDelay(168);
	}
	/// ditto
	@property void frame168DelaySec(double v)
	{
		setFrameDelay(168, v);
	}
	/**
	
	*/
	@property Texture frame168Texture()
	{
		return getFrameTexture(168);
	}
	/// ditto
	@property void frame168Texture(Texture v)
	{
		setFrameTexture(168, v);
	}
	/**
	
	*/
	@property double frame169DelaySec()
	{
		return getFrameDelay(169);
	}
	/// ditto
	@property void frame169DelaySec(double v)
	{
		setFrameDelay(169, v);
	}
	/**
	
	*/
	@property Texture frame169Texture()
	{
		return getFrameTexture(169);
	}
	/// ditto
	@property void frame169Texture(Texture v)
	{
		setFrameTexture(169, v);
	}
	/**
	
	*/
	@property double frame17DelaySec()
	{
		return getFrameDelay(17);
	}
	/// ditto
	@property void frame17DelaySec(double v)
	{
		setFrameDelay(17, v);
	}
	/**
	
	*/
	@property Texture frame17Texture()
	{
		return getFrameTexture(17);
	}
	/// ditto
	@property void frame17Texture(Texture v)
	{
		setFrameTexture(17, v);
	}
	/**
	
	*/
	@property double frame170DelaySec()
	{
		return getFrameDelay(170);
	}
	/// ditto
	@property void frame170DelaySec(double v)
	{
		setFrameDelay(170, v);
	}
	/**
	
	*/
	@property Texture frame170Texture()
	{
		return getFrameTexture(170);
	}
	/// ditto
	@property void frame170Texture(Texture v)
	{
		setFrameTexture(170, v);
	}
	/**
	
	*/
	@property double frame171DelaySec()
	{
		return getFrameDelay(171);
	}
	/// ditto
	@property void frame171DelaySec(double v)
	{
		setFrameDelay(171, v);
	}
	/**
	
	*/
	@property Texture frame171Texture()
	{
		return getFrameTexture(171);
	}
	/// ditto
	@property void frame171Texture(Texture v)
	{
		setFrameTexture(171, v);
	}
	/**
	
	*/
	@property double frame172DelaySec()
	{
		return getFrameDelay(172);
	}
	/// ditto
	@property void frame172DelaySec(double v)
	{
		setFrameDelay(172, v);
	}
	/**
	
	*/
	@property Texture frame172Texture()
	{
		return getFrameTexture(172);
	}
	/// ditto
	@property void frame172Texture(Texture v)
	{
		setFrameTexture(172, v);
	}
	/**
	
	*/
	@property double frame173DelaySec()
	{
		return getFrameDelay(173);
	}
	/// ditto
	@property void frame173DelaySec(double v)
	{
		setFrameDelay(173, v);
	}
	/**
	
	*/
	@property Texture frame173Texture()
	{
		return getFrameTexture(173);
	}
	/// ditto
	@property void frame173Texture(Texture v)
	{
		setFrameTexture(173, v);
	}
	/**
	
	*/
	@property double frame174DelaySec()
	{
		return getFrameDelay(174);
	}
	/// ditto
	@property void frame174DelaySec(double v)
	{
		setFrameDelay(174, v);
	}
	/**
	
	*/
	@property Texture frame174Texture()
	{
		return getFrameTexture(174);
	}
	/// ditto
	@property void frame174Texture(Texture v)
	{
		setFrameTexture(174, v);
	}
	/**
	
	*/
	@property double frame175DelaySec()
	{
		return getFrameDelay(175);
	}
	/// ditto
	@property void frame175DelaySec(double v)
	{
		setFrameDelay(175, v);
	}
	/**
	
	*/
	@property Texture frame175Texture()
	{
		return getFrameTexture(175);
	}
	/// ditto
	@property void frame175Texture(Texture v)
	{
		setFrameTexture(175, v);
	}
	/**
	
	*/
	@property double frame176DelaySec()
	{
		return getFrameDelay(176);
	}
	/// ditto
	@property void frame176DelaySec(double v)
	{
		setFrameDelay(176, v);
	}
	/**
	
	*/
	@property Texture frame176Texture()
	{
		return getFrameTexture(176);
	}
	/// ditto
	@property void frame176Texture(Texture v)
	{
		setFrameTexture(176, v);
	}
	/**
	
	*/
	@property double frame177DelaySec()
	{
		return getFrameDelay(177);
	}
	/// ditto
	@property void frame177DelaySec(double v)
	{
		setFrameDelay(177, v);
	}
	/**
	
	*/
	@property Texture frame177Texture()
	{
		return getFrameTexture(177);
	}
	/// ditto
	@property void frame177Texture(Texture v)
	{
		setFrameTexture(177, v);
	}
	/**
	
	*/
	@property double frame178DelaySec()
	{
		return getFrameDelay(178);
	}
	/// ditto
	@property void frame178DelaySec(double v)
	{
		setFrameDelay(178, v);
	}
	/**
	
	*/
	@property Texture frame178Texture()
	{
		return getFrameTexture(178);
	}
	/// ditto
	@property void frame178Texture(Texture v)
	{
		setFrameTexture(178, v);
	}
	/**
	
	*/
	@property double frame179DelaySec()
	{
		return getFrameDelay(179);
	}
	/// ditto
	@property void frame179DelaySec(double v)
	{
		setFrameDelay(179, v);
	}
	/**
	
	*/
	@property Texture frame179Texture()
	{
		return getFrameTexture(179);
	}
	/// ditto
	@property void frame179Texture(Texture v)
	{
		setFrameTexture(179, v);
	}
	/**
	
	*/
	@property double frame18DelaySec()
	{
		return getFrameDelay(18);
	}
	/// ditto
	@property void frame18DelaySec(double v)
	{
		setFrameDelay(18, v);
	}
	/**
	
	*/
	@property Texture frame18Texture()
	{
		return getFrameTexture(18);
	}
	/// ditto
	@property void frame18Texture(Texture v)
	{
		setFrameTexture(18, v);
	}
	/**
	
	*/
	@property double frame180DelaySec()
	{
		return getFrameDelay(180);
	}
	/// ditto
	@property void frame180DelaySec(double v)
	{
		setFrameDelay(180, v);
	}
	/**
	
	*/
	@property Texture frame180Texture()
	{
		return getFrameTexture(180);
	}
	/// ditto
	@property void frame180Texture(Texture v)
	{
		setFrameTexture(180, v);
	}
	/**
	
	*/
	@property double frame181DelaySec()
	{
		return getFrameDelay(181);
	}
	/// ditto
	@property void frame181DelaySec(double v)
	{
		setFrameDelay(181, v);
	}
	/**
	
	*/
	@property Texture frame181Texture()
	{
		return getFrameTexture(181);
	}
	/// ditto
	@property void frame181Texture(Texture v)
	{
		setFrameTexture(181, v);
	}
	/**
	
	*/
	@property double frame182DelaySec()
	{
		return getFrameDelay(182);
	}
	/// ditto
	@property void frame182DelaySec(double v)
	{
		setFrameDelay(182, v);
	}
	/**
	
	*/
	@property Texture frame182Texture()
	{
		return getFrameTexture(182);
	}
	/// ditto
	@property void frame182Texture(Texture v)
	{
		setFrameTexture(182, v);
	}
	/**
	
	*/
	@property double frame183DelaySec()
	{
		return getFrameDelay(183);
	}
	/// ditto
	@property void frame183DelaySec(double v)
	{
		setFrameDelay(183, v);
	}
	/**
	
	*/
	@property Texture frame183Texture()
	{
		return getFrameTexture(183);
	}
	/// ditto
	@property void frame183Texture(Texture v)
	{
		setFrameTexture(183, v);
	}
	/**
	
	*/
	@property double frame184DelaySec()
	{
		return getFrameDelay(184);
	}
	/// ditto
	@property void frame184DelaySec(double v)
	{
		setFrameDelay(184, v);
	}
	/**
	
	*/
	@property Texture frame184Texture()
	{
		return getFrameTexture(184);
	}
	/// ditto
	@property void frame184Texture(Texture v)
	{
		setFrameTexture(184, v);
	}
	/**
	
	*/
	@property double frame185DelaySec()
	{
		return getFrameDelay(185);
	}
	/// ditto
	@property void frame185DelaySec(double v)
	{
		setFrameDelay(185, v);
	}
	/**
	
	*/
	@property Texture frame185Texture()
	{
		return getFrameTexture(185);
	}
	/// ditto
	@property void frame185Texture(Texture v)
	{
		setFrameTexture(185, v);
	}
	/**
	
	*/
	@property double frame186DelaySec()
	{
		return getFrameDelay(186);
	}
	/// ditto
	@property void frame186DelaySec(double v)
	{
		setFrameDelay(186, v);
	}
	/**
	
	*/
	@property Texture frame186Texture()
	{
		return getFrameTexture(186);
	}
	/// ditto
	@property void frame186Texture(Texture v)
	{
		setFrameTexture(186, v);
	}
	/**
	
	*/
	@property double frame187DelaySec()
	{
		return getFrameDelay(187);
	}
	/// ditto
	@property void frame187DelaySec(double v)
	{
		setFrameDelay(187, v);
	}
	/**
	
	*/
	@property Texture frame187Texture()
	{
		return getFrameTexture(187);
	}
	/// ditto
	@property void frame187Texture(Texture v)
	{
		setFrameTexture(187, v);
	}
	/**
	
	*/
	@property double frame188DelaySec()
	{
		return getFrameDelay(188);
	}
	/// ditto
	@property void frame188DelaySec(double v)
	{
		setFrameDelay(188, v);
	}
	/**
	
	*/
	@property Texture frame188Texture()
	{
		return getFrameTexture(188);
	}
	/// ditto
	@property void frame188Texture(Texture v)
	{
		setFrameTexture(188, v);
	}
	/**
	
	*/
	@property double frame189DelaySec()
	{
		return getFrameDelay(189);
	}
	/// ditto
	@property void frame189DelaySec(double v)
	{
		setFrameDelay(189, v);
	}
	/**
	
	*/
	@property Texture frame189Texture()
	{
		return getFrameTexture(189);
	}
	/// ditto
	@property void frame189Texture(Texture v)
	{
		setFrameTexture(189, v);
	}
	/**
	
	*/
	@property double frame19DelaySec()
	{
		return getFrameDelay(19);
	}
	/// ditto
	@property void frame19DelaySec(double v)
	{
		setFrameDelay(19, v);
	}
	/**
	
	*/
	@property Texture frame19Texture()
	{
		return getFrameTexture(19);
	}
	/// ditto
	@property void frame19Texture(Texture v)
	{
		setFrameTexture(19, v);
	}
	/**
	
	*/
	@property double frame190DelaySec()
	{
		return getFrameDelay(190);
	}
	/// ditto
	@property void frame190DelaySec(double v)
	{
		setFrameDelay(190, v);
	}
	/**
	
	*/
	@property Texture frame190Texture()
	{
		return getFrameTexture(190);
	}
	/// ditto
	@property void frame190Texture(Texture v)
	{
		setFrameTexture(190, v);
	}
	/**
	
	*/
	@property double frame191DelaySec()
	{
		return getFrameDelay(191);
	}
	/// ditto
	@property void frame191DelaySec(double v)
	{
		setFrameDelay(191, v);
	}
	/**
	
	*/
	@property Texture frame191Texture()
	{
		return getFrameTexture(191);
	}
	/// ditto
	@property void frame191Texture(Texture v)
	{
		setFrameTexture(191, v);
	}
	/**
	
	*/
	@property double frame192DelaySec()
	{
		return getFrameDelay(192);
	}
	/// ditto
	@property void frame192DelaySec(double v)
	{
		setFrameDelay(192, v);
	}
	/**
	
	*/
	@property Texture frame192Texture()
	{
		return getFrameTexture(192);
	}
	/// ditto
	@property void frame192Texture(Texture v)
	{
		setFrameTexture(192, v);
	}
	/**
	
	*/
	@property double frame193DelaySec()
	{
		return getFrameDelay(193);
	}
	/// ditto
	@property void frame193DelaySec(double v)
	{
		setFrameDelay(193, v);
	}
	/**
	
	*/
	@property Texture frame193Texture()
	{
		return getFrameTexture(193);
	}
	/// ditto
	@property void frame193Texture(Texture v)
	{
		setFrameTexture(193, v);
	}
	/**
	
	*/
	@property double frame194DelaySec()
	{
		return getFrameDelay(194);
	}
	/// ditto
	@property void frame194DelaySec(double v)
	{
		setFrameDelay(194, v);
	}
	/**
	
	*/
	@property Texture frame194Texture()
	{
		return getFrameTexture(194);
	}
	/// ditto
	@property void frame194Texture(Texture v)
	{
		setFrameTexture(194, v);
	}
	/**
	
	*/
	@property double frame195DelaySec()
	{
		return getFrameDelay(195);
	}
	/// ditto
	@property void frame195DelaySec(double v)
	{
		setFrameDelay(195, v);
	}
	/**
	
	*/
	@property Texture frame195Texture()
	{
		return getFrameTexture(195);
	}
	/// ditto
	@property void frame195Texture(Texture v)
	{
		setFrameTexture(195, v);
	}
	/**
	
	*/
	@property double frame196DelaySec()
	{
		return getFrameDelay(196);
	}
	/// ditto
	@property void frame196DelaySec(double v)
	{
		setFrameDelay(196, v);
	}
	/**
	
	*/
	@property Texture frame196Texture()
	{
		return getFrameTexture(196);
	}
	/// ditto
	@property void frame196Texture(Texture v)
	{
		setFrameTexture(196, v);
	}
	/**
	
	*/
	@property double frame197DelaySec()
	{
		return getFrameDelay(197);
	}
	/// ditto
	@property void frame197DelaySec(double v)
	{
		setFrameDelay(197, v);
	}
	/**
	
	*/
	@property Texture frame197Texture()
	{
		return getFrameTexture(197);
	}
	/// ditto
	@property void frame197Texture(Texture v)
	{
		setFrameTexture(197, v);
	}
	/**
	
	*/
	@property double frame198DelaySec()
	{
		return getFrameDelay(198);
	}
	/// ditto
	@property void frame198DelaySec(double v)
	{
		setFrameDelay(198, v);
	}
	/**
	
	*/
	@property Texture frame198Texture()
	{
		return getFrameTexture(198);
	}
	/// ditto
	@property void frame198Texture(Texture v)
	{
		setFrameTexture(198, v);
	}
	/**
	
	*/
	@property double frame199DelaySec()
	{
		return getFrameDelay(199);
	}
	/// ditto
	@property void frame199DelaySec(double v)
	{
		setFrameDelay(199, v);
	}
	/**
	
	*/
	@property Texture frame199Texture()
	{
		return getFrameTexture(199);
	}
	/// ditto
	@property void frame199Texture(Texture v)
	{
		setFrameTexture(199, v);
	}
	/**
	
	*/
	@property double frame2DelaySec()
	{
		return getFrameDelay(2);
	}
	/// ditto
	@property void frame2DelaySec(double v)
	{
		setFrameDelay(2, v);
	}
	/**
	
	*/
	@property Texture frame2Texture()
	{
		return getFrameTexture(2);
	}
	/// ditto
	@property void frame2Texture(Texture v)
	{
		setFrameTexture(2, v);
	}
	/**
	
	*/
	@property double frame20DelaySec()
	{
		return getFrameDelay(20);
	}
	/// ditto
	@property void frame20DelaySec(double v)
	{
		setFrameDelay(20, v);
	}
	/**
	
	*/
	@property Texture frame20Texture()
	{
		return getFrameTexture(20);
	}
	/// ditto
	@property void frame20Texture(Texture v)
	{
		setFrameTexture(20, v);
	}
	/**
	
	*/
	@property double frame200DelaySec()
	{
		return getFrameDelay(200);
	}
	/// ditto
	@property void frame200DelaySec(double v)
	{
		setFrameDelay(200, v);
	}
	/**
	
	*/
	@property Texture frame200Texture()
	{
		return getFrameTexture(200);
	}
	/// ditto
	@property void frame200Texture(Texture v)
	{
		setFrameTexture(200, v);
	}
	/**
	
	*/
	@property double frame201DelaySec()
	{
		return getFrameDelay(201);
	}
	/// ditto
	@property void frame201DelaySec(double v)
	{
		setFrameDelay(201, v);
	}
	/**
	
	*/
	@property Texture frame201Texture()
	{
		return getFrameTexture(201);
	}
	/// ditto
	@property void frame201Texture(Texture v)
	{
		setFrameTexture(201, v);
	}
	/**
	
	*/
	@property double frame202DelaySec()
	{
		return getFrameDelay(202);
	}
	/// ditto
	@property void frame202DelaySec(double v)
	{
		setFrameDelay(202, v);
	}
	/**
	
	*/
	@property Texture frame202Texture()
	{
		return getFrameTexture(202);
	}
	/// ditto
	@property void frame202Texture(Texture v)
	{
		setFrameTexture(202, v);
	}
	/**
	
	*/
	@property double frame203DelaySec()
	{
		return getFrameDelay(203);
	}
	/// ditto
	@property void frame203DelaySec(double v)
	{
		setFrameDelay(203, v);
	}
	/**
	
	*/
	@property Texture frame203Texture()
	{
		return getFrameTexture(203);
	}
	/// ditto
	@property void frame203Texture(Texture v)
	{
		setFrameTexture(203, v);
	}
	/**
	
	*/
	@property double frame204DelaySec()
	{
		return getFrameDelay(204);
	}
	/// ditto
	@property void frame204DelaySec(double v)
	{
		setFrameDelay(204, v);
	}
	/**
	
	*/
	@property Texture frame204Texture()
	{
		return getFrameTexture(204);
	}
	/// ditto
	@property void frame204Texture(Texture v)
	{
		setFrameTexture(204, v);
	}
	/**
	
	*/
	@property double frame205DelaySec()
	{
		return getFrameDelay(205);
	}
	/// ditto
	@property void frame205DelaySec(double v)
	{
		setFrameDelay(205, v);
	}
	/**
	
	*/
	@property Texture frame205Texture()
	{
		return getFrameTexture(205);
	}
	/// ditto
	@property void frame205Texture(Texture v)
	{
		setFrameTexture(205, v);
	}
	/**
	
	*/
	@property double frame206DelaySec()
	{
		return getFrameDelay(206);
	}
	/// ditto
	@property void frame206DelaySec(double v)
	{
		setFrameDelay(206, v);
	}
	/**
	
	*/
	@property Texture frame206Texture()
	{
		return getFrameTexture(206);
	}
	/// ditto
	@property void frame206Texture(Texture v)
	{
		setFrameTexture(206, v);
	}
	/**
	
	*/
	@property double frame207DelaySec()
	{
		return getFrameDelay(207);
	}
	/// ditto
	@property void frame207DelaySec(double v)
	{
		setFrameDelay(207, v);
	}
	/**
	
	*/
	@property Texture frame207Texture()
	{
		return getFrameTexture(207);
	}
	/// ditto
	@property void frame207Texture(Texture v)
	{
		setFrameTexture(207, v);
	}
	/**
	
	*/
	@property double frame208DelaySec()
	{
		return getFrameDelay(208);
	}
	/// ditto
	@property void frame208DelaySec(double v)
	{
		setFrameDelay(208, v);
	}
	/**
	
	*/
	@property Texture frame208Texture()
	{
		return getFrameTexture(208);
	}
	/// ditto
	@property void frame208Texture(Texture v)
	{
		setFrameTexture(208, v);
	}
	/**
	
	*/
	@property double frame209DelaySec()
	{
		return getFrameDelay(209);
	}
	/// ditto
	@property void frame209DelaySec(double v)
	{
		setFrameDelay(209, v);
	}
	/**
	
	*/
	@property Texture frame209Texture()
	{
		return getFrameTexture(209);
	}
	/// ditto
	@property void frame209Texture(Texture v)
	{
		setFrameTexture(209, v);
	}
	/**
	
	*/
	@property double frame21DelaySec()
	{
		return getFrameDelay(21);
	}
	/// ditto
	@property void frame21DelaySec(double v)
	{
		setFrameDelay(21, v);
	}
	/**
	
	*/
	@property Texture frame21Texture()
	{
		return getFrameTexture(21);
	}
	/// ditto
	@property void frame21Texture(Texture v)
	{
		setFrameTexture(21, v);
	}
	/**
	
	*/
	@property double frame210DelaySec()
	{
		return getFrameDelay(210);
	}
	/// ditto
	@property void frame210DelaySec(double v)
	{
		setFrameDelay(210, v);
	}
	/**
	
	*/
	@property Texture frame210Texture()
	{
		return getFrameTexture(210);
	}
	/// ditto
	@property void frame210Texture(Texture v)
	{
		setFrameTexture(210, v);
	}
	/**
	
	*/
	@property double frame211DelaySec()
	{
		return getFrameDelay(211);
	}
	/// ditto
	@property void frame211DelaySec(double v)
	{
		setFrameDelay(211, v);
	}
	/**
	
	*/
	@property Texture frame211Texture()
	{
		return getFrameTexture(211);
	}
	/// ditto
	@property void frame211Texture(Texture v)
	{
		setFrameTexture(211, v);
	}
	/**
	
	*/
	@property double frame212DelaySec()
	{
		return getFrameDelay(212);
	}
	/// ditto
	@property void frame212DelaySec(double v)
	{
		setFrameDelay(212, v);
	}
	/**
	
	*/
	@property Texture frame212Texture()
	{
		return getFrameTexture(212);
	}
	/// ditto
	@property void frame212Texture(Texture v)
	{
		setFrameTexture(212, v);
	}
	/**
	
	*/
	@property double frame213DelaySec()
	{
		return getFrameDelay(213);
	}
	/// ditto
	@property void frame213DelaySec(double v)
	{
		setFrameDelay(213, v);
	}
	/**
	
	*/
	@property Texture frame213Texture()
	{
		return getFrameTexture(213);
	}
	/// ditto
	@property void frame213Texture(Texture v)
	{
		setFrameTexture(213, v);
	}
	/**
	
	*/
	@property double frame214DelaySec()
	{
		return getFrameDelay(214);
	}
	/// ditto
	@property void frame214DelaySec(double v)
	{
		setFrameDelay(214, v);
	}
	/**
	
	*/
	@property Texture frame214Texture()
	{
		return getFrameTexture(214);
	}
	/// ditto
	@property void frame214Texture(Texture v)
	{
		setFrameTexture(214, v);
	}
	/**
	
	*/
	@property double frame215DelaySec()
	{
		return getFrameDelay(215);
	}
	/// ditto
	@property void frame215DelaySec(double v)
	{
		setFrameDelay(215, v);
	}
	/**
	
	*/
	@property Texture frame215Texture()
	{
		return getFrameTexture(215);
	}
	/// ditto
	@property void frame215Texture(Texture v)
	{
		setFrameTexture(215, v);
	}
	/**
	
	*/
	@property double frame216DelaySec()
	{
		return getFrameDelay(216);
	}
	/// ditto
	@property void frame216DelaySec(double v)
	{
		setFrameDelay(216, v);
	}
	/**
	
	*/
	@property Texture frame216Texture()
	{
		return getFrameTexture(216);
	}
	/// ditto
	@property void frame216Texture(Texture v)
	{
		setFrameTexture(216, v);
	}
	/**
	
	*/
	@property double frame217DelaySec()
	{
		return getFrameDelay(217);
	}
	/// ditto
	@property void frame217DelaySec(double v)
	{
		setFrameDelay(217, v);
	}
	/**
	
	*/
	@property Texture frame217Texture()
	{
		return getFrameTexture(217);
	}
	/// ditto
	@property void frame217Texture(Texture v)
	{
		setFrameTexture(217, v);
	}
	/**
	
	*/
	@property double frame218DelaySec()
	{
		return getFrameDelay(218);
	}
	/// ditto
	@property void frame218DelaySec(double v)
	{
		setFrameDelay(218, v);
	}
	/**
	
	*/
	@property Texture frame218Texture()
	{
		return getFrameTexture(218);
	}
	/// ditto
	@property void frame218Texture(Texture v)
	{
		setFrameTexture(218, v);
	}
	/**
	
	*/
	@property double frame219DelaySec()
	{
		return getFrameDelay(219);
	}
	/// ditto
	@property void frame219DelaySec(double v)
	{
		setFrameDelay(219, v);
	}
	/**
	
	*/
	@property Texture frame219Texture()
	{
		return getFrameTexture(219);
	}
	/// ditto
	@property void frame219Texture(Texture v)
	{
		setFrameTexture(219, v);
	}
	/**
	
	*/
	@property double frame22DelaySec()
	{
		return getFrameDelay(22);
	}
	/// ditto
	@property void frame22DelaySec(double v)
	{
		setFrameDelay(22, v);
	}
	/**
	
	*/
	@property Texture frame22Texture()
	{
		return getFrameTexture(22);
	}
	/// ditto
	@property void frame22Texture(Texture v)
	{
		setFrameTexture(22, v);
	}
	/**
	
	*/
	@property double frame220DelaySec()
	{
		return getFrameDelay(220);
	}
	/// ditto
	@property void frame220DelaySec(double v)
	{
		setFrameDelay(220, v);
	}
	/**
	
	*/
	@property Texture frame220Texture()
	{
		return getFrameTexture(220);
	}
	/// ditto
	@property void frame220Texture(Texture v)
	{
		setFrameTexture(220, v);
	}
	/**
	
	*/
	@property double frame221DelaySec()
	{
		return getFrameDelay(221);
	}
	/// ditto
	@property void frame221DelaySec(double v)
	{
		setFrameDelay(221, v);
	}
	/**
	
	*/
	@property Texture frame221Texture()
	{
		return getFrameTexture(221);
	}
	/// ditto
	@property void frame221Texture(Texture v)
	{
		setFrameTexture(221, v);
	}
	/**
	
	*/
	@property double frame222DelaySec()
	{
		return getFrameDelay(222);
	}
	/// ditto
	@property void frame222DelaySec(double v)
	{
		setFrameDelay(222, v);
	}
	/**
	
	*/
	@property Texture frame222Texture()
	{
		return getFrameTexture(222);
	}
	/// ditto
	@property void frame222Texture(Texture v)
	{
		setFrameTexture(222, v);
	}
	/**
	
	*/
	@property double frame223DelaySec()
	{
		return getFrameDelay(223);
	}
	/// ditto
	@property void frame223DelaySec(double v)
	{
		setFrameDelay(223, v);
	}
	/**
	
	*/
	@property Texture frame223Texture()
	{
		return getFrameTexture(223);
	}
	/// ditto
	@property void frame223Texture(Texture v)
	{
		setFrameTexture(223, v);
	}
	/**
	
	*/
	@property double frame224DelaySec()
	{
		return getFrameDelay(224);
	}
	/// ditto
	@property void frame224DelaySec(double v)
	{
		setFrameDelay(224, v);
	}
	/**
	
	*/
	@property Texture frame224Texture()
	{
		return getFrameTexture(224);
	}
	/// ditto
	@property void frame224Texture(Texture v)
	{
		setFrameTexture(224, v);
	}
	/**
	
	*/
	@property double frame225DelaySec()
	{
		return getFrameDelay(225);
	}
	/// ditto
	@property void frame225DelaySec(double v)
	{
		setFrameDelay(225, v);
	}
	/**
	
	*/
	@property Texture frame225Texture()
	{
		return getFrameTexture(225);
	}
	/// ditto
	@property void frame225Texture(Texture v)
	{
		setFrameTexture(225, v);
	}
	/**
	
	*/
	@property double frame226DelaySec()
	{
		return getFrameDelay(226);
	}
	/// ditto
	@property void frame226DelaySec(double v)
	{
		setFrameDelay(226, v);
	}
	/**
	
	*/
	@property Texture frame226Texture()
	{
		return getFrameTexture(226);
	}
	/// ditto
	@property void frame226Texture(Texture v)
	{
		setFrameTexture(226, v);
	}
	/**
	
	*/
	@property double frame227DelaySec()
	{
		return getFrameDelay(227);
	}
	/// ditto
	@property void frame227DelaySec(double v)
	{
		setFrameDelay(227, v);
	}
	/**
	
	*/
	@property Texture frame227Texture()
	{
		return getFrameTexture(227);
	}
	/// ditto
	@property void frame227Texture(Texture v)
	{
		setFrameTexture(227, v);
	}
	/**
	
	*/
	@property double frame228DelaySec()
	{
		return getFrameDelay(228);
	}
	/// ditto
	@property void frame228DelaySec(double v)
	{
		setFrameDelay(228, v);
	}
	/**
	
	*/
	@property Texture frame228Texture()
	{
		return getFrameTexture(228);
	}
	/// ditto
	@property void frame228Texture(Texture v)
	{
		setFrameTexture(228, v);
	}
	/**
	
	*/
	@property double frame229DelaySec()
	{
		return getFrameDelay(229);
	}
	/// ditto
	@property void frame229DelaySec(double v)
	{
		setFrameDelay(229, v);
	}
	/**
	
	*/
	@property Texture frame229Texture()
	{
		return getFrameTexture(229);
	}
	/// ditto
	@property void frame229Texture(Texture v)
	{
		setFrameTexture(229, v);
	}
	/**
	
	*/
	@property double frame23DelaySec()
	{
		return getFrameDelay(23);
	}
	/// ditto
	@property void frame23DelaySec(double v)
	{
		setFrameDelay(23, v);
	}
	/**
	
	*/
	@property Texture frame23Texture()
	{
		return getFrameTexture(23);
	}
	/// ditto
	@property void frame23Texture(Texture v)
	{
		setFrameTexture(23, v);
	}
	/**
	
	*/
	@property double frame230DelaySec()
	{
		return getFrameDelay(230);
	}
	/// ditto
	@property void frame230DelaySec(double v)
	{
		setFrameDelay(230, v);
	}
	/**
	
	*/
	@property Texture frame230Texture()
	{
		return getFrameTexture(230);
	}
	/// ditto
	@property void frame230Texture(Texture v)
	{
		setFrameTexture(230, v);
	}
	/**
	
	*/
	@property double frame231DelaySec()
	{
		return getFrameDelay(231);
	}
	/// ditto
	@property void frame231DelaySec(double v)
	{
		setFrameDelay(231, v);
	}
	/**
	
	*/
	@property Texture frame231Texture()
	{
		return getFrameTexture(231);
	}
	/// ditto
	@property void frame231Texture(Texture v)
	{
		setFrameTexture(231, v);
	}
	/**
	
	*/
	@property double frame232DelaySec()
	{
		return getFrameDelay(232);
	}
	/// ditto
	@property void frame232DelaySec(double v)
	{
		setFrameDelay(232, v);
	}
	/**
	
	*/
	@property Texture frame232Texture()
	{
		return getFrameTexture(232);
	}
	/// ditto
	@property void frame232Texture(Texture v)
	{
		setFrameTexture(232, v);
	}
	/**
	
	*/
	@property double frame233DelaySec()
	{
		return getFrameDelay(233);
	}
	/// ditto
	@property void frame233DelaySec(double v)
	{
		setFrameDelay(233, v);
	}
	/**
	
	*/
	@property Texture frame233Texture()
	{
		return getFrameTexture(233);
	}
	/// ditto
	@property void frame233Texture(Texture v)
	{
		setFrameTexture(233, v);
	}
	/**
	
	*/
	@property double frame234DelaySec()
	{
		return getFrameDelay(234);
	}
	/// ditto
	@property void frame234DelaySec(double v)
	{
		setFrameDelay(234, v);
	}
	/**
	
	*/
	@property Texture frame234Texture()
	{
		return getFrameTexture(234);
	}
	/// ditto
	@property void frame234Texture(Texture v)
	{
		setFrameTexture(234, v);
	}
	/**
	
	*/
	@property double frame235DelaySec()
	{
		return getFrameDelay(235);
	}
	/// ditto
	@property void frame235DelaySec(double v)
	{
		setFrameDelay(235, v);
	}
	/**
	
	*/
	@property Texture frame235Texture()
	{
		return getFrameTexture(235);
	}
	/// ditto
	@property void frame235Texture(Texture v)
	{
		setFrameTexture(235, v);
	}
	/**
	
	*/
	@property double frame236DelaySec()
	{
		return getFrameDelay(236);
	}
	/// ditto
	@property void frame236DelaySec(double v)
	{
		setFrameDelay(236, v);
	}
	/**
	
	*/
	@property Texture frame236Texture()
	{
		return getFrameTexture(236);
	}
	/// ditto
	@property void frame236Texture(Texture v)
	{
		setFrameTexture(236, v);
	}
	/**
	
	*/
	@property double frame237DelaySec()
	{
		return getFrameDelay(237);
	}
	/// ditto
	@property void frame237DelaySec(double v)
	{
		setFrameDelay(237, v);
	}
	/**
	
	*/
	@property Texture frame237Texture()
	{
		return getFrameTexture(237);
	}
	/// ditto
	@property void frame237Texture(Texture v)
	{
		setFrameTexture(237, v);
	}
	/**
	
	*/
	@property double frame238DelaySec()
	{
		return getFrameDelay(238);
	}
	/// ditto
	@property void frame238DelaySec(double v)
	{
		setFrameDelay(238, v);
	}
	/**
	
	*/
	@property Texture frame238Texture()
	{
		return getFrameTexture(238);
	}
	/// ditto
	@property void frame238Texture(Texture v)
	{
		setFrameTexture(238, v);
	}
	/**
	
	*/
	@property double frame239DelaySec()
	{
		return getFrameDelay(239);
	}
	/// ditto
	@property void frame239DelaySec(double v)
	{
		setFrameDelay(239, v);
	}
	/**
	
	*/
	@property Texture frame239Texture()
	{
		return getFrameTexture(239);
	}
	/// ditto
	@property void frame239Texture(Texture v)
	{
		setFrameTexture(239, v);
	}
	/**
	
	*/
	@property double frame24DelaySec()
	{
		return getFrameDelay(24);
	}
	/// ditto
	@property void frame24DelaySec(double v)
	{
		setFrameDelay(24, v);
	}
	/**
	
	*/
	@property Texture frame24Texture()
	{
		return getFrameTexture(24);
	}
	/// ditto
	@property void frame24Texture(Texture v)
	{
		setFrameTexture(24, v);
	}
	/**
	
	*/
	@property double frame240DelaySec()
	{
		return getFrameDelay(240);
	}
	/// ditto
	@property void frame240DelaySec(double v)
	{
		setFrameDelay(240, v);
	}
	/**
	
	*/
	@property Texture frame240Texture()
	{
		return getFrameTexture(240);
	}
	/// ditto
	@property void frame240Texture(Texture v)
	{
		setFrameTexture(240, v);
	}
	/**
	
	*/
	@property double frame241DelaySec()
	{
		return getFrameDelay(241);
	}
	/// ditto
	@property void frame241DelaySec(double v)
	{
		setFrameDelay(241, v);
	}
	/**
	
	*/
	@property Texture frame241Texture()
	{
		return getFrameTexture(241);
	}
	/// ditto
	@property void frame241Texture(Texture v)
	{
		setFrameTexture(241, v);
	}
	/**
	
	*/
	@property double frame242DelaySec()
	{
		return getFrameDelay(242);
	}
	/// ditto
	@property void frame242DelaySec(double v)
	{
		setFrameDelay(242, v);
	}
	/**
	
	*/
	@property Texture frame242Texture()
	{
		return getFrameTexture(242);
	}
	/// ditto
	@property void frame242Texture(Texture v)
	{
		setFrameTexture(242, v);
	}
	/**
	
	*/
	@property double frame243DelaySec()
	{
		return getFrameDelay(243);
	}
	/// ditto
	@property void frame243DelaySec(double v)
	{
		setFrameDelay(243, v);
	}
	/**
	
	*/
	@property Texture frame243Texture()
	{
		return getFrameTexture(243);
	}
	/// ditto
	@property void frame243Texture(Texture v)
	{
		setFrameTexture(243, v);
	}
	/**
	
	*/
	@property double frame244DelaySec()
	{
		return getFrameDelay(244);
	}
	/// ditto
	@property void frame244DelaySec(double v)
	{
		setFrameDelay(244, v);
	}
	/**
	
	*/
	@property Texture frame244Texture()
	{
		return getFrameTexture(244);
	}
	/// ditto
	@property void frame244Texture(Texture v)
	{
		setFrameTexture(244, v);
	}
	/**
	
	*/
	@property double frame245DelaySec()
	{
		return getFrameDelay(245);
	}
	/// ditto
	@property void frame245DelaySec(double v)
	{
		setFrameDelay(245, v);
	}
	/**
	
	*/
	@property Texture frame245Texture()
	{
		return getFrameTexture(245);
	}
	/// ditto
	@property void frame245Texture(Texture v)
	{
		setFrameTexture(245, v);
	}
	/**
	
	*/
	@property double frame246DelaySec()
	{
		return getFrameDelay(246);
	}
	/// ditto
	@property void frame246DelaySec(double v)
	{
		setFrameDelay(246, v);
	}
	/**
	
	*/
	@property Texture frame246Texture()
	{
		return getFrameTexture(246);
	}
	/// ditto
	@property void frame246Texture(Texture v)
	{
		setFrameTexture(246, v);
	}
	/**
	
	*/
	@property double frame247DelaySec()
	{
		return getFrameDelay(247);
	}
	/// ditto
	@property void frame247DelaySec(double v)
	{
		setFrameDelay(247, v);
	}
	/**
	
	*/
	@property Texture frame247Texture()
	{
		return getFrameTexture(247);
	}
	/// ditto
	@property void frame247Texture(Texture v)
	{
		setFrameTexture(247, v);
	}
	/**
	
	*/
	@property double frame248DelaySec()
	{
		return getFrameDelay(248);
	}
	/// ditto
	@property void frame248DelaySec(double v)
	{
		setFrameDelay(248, v);
	}
	/**
	
	*/
	@property Texture frame248Texture()
	{
		return getFrameTexture(248);
	}
	/// ditto
	@property void frame248Texture(Texture v)
	{
		setFrameTexture(248, v);
	}
	/**
	
	*/
	@property double frame249DelaySec()
	{
		return getFrameDelay(249);
	}
	/// ditto
	@property void frame249DelaySec(double v)
	{
		setFrameDelay(249, v);
	}
	/**
	
	*/
	@property Texture frame249Texture()
	{
		return getFrameTexture(249);
	}
	/// ditto
	@property void frame249Texture(Texture v)
	{
		setFrameTexture(249, v);
	}
	/**
	
	*/
	@property double frame25DelaySec()
	{
		return getFrameDelay(25);
	}
	/// ditto
	@property void frame25DelaySec(double v)
	{
		setFrameDelay(25, v);
	}
	/**
	
	*/
	@property Texture frame25Texture()
	{
		return getFrameTexture(25);
	}
	/// ditto
	@property void frame25Texture(Texture v)
	{
		setFrameTexture(25, v);
	}
	/**
	
	*/
	@property double frame250DelaySec()
	{
		return getFrameDelay(250);
	}
	/// ditto
	@property void frame250DelaySec(double v)
	{
		setFrameDelay(250, v);
	}
	/**
	
	*/
	@property Texture frame250Texture()
	{
		return getFrameTexture(250);
	}
	/// ditto
	@property void frame250Texture(Texture v)
	{
		setFrameTexture(250, v);
	}
	/**
	
	*/
	@property double frame251DelaySec()
	{
		return getFrameDelay(251);
	}
	/// ditto
	@property void frame251DelaySec(double v)
	{
		setFrameDelay(251, v);
	}
	/**
	
	*/
	@property Texture frame251Texture()
	{
		return getFrameTexture(251);
	}
	/// ditto
	@property void frame251Texture(Texture v)
	{
		setFrameTexture(251, v);
	}
	/**
	
	*/
	@property double frame252DelaySec()
	{
		return getFrameDelay(252);
	}
	/// ditto
	@property void frame252DelaySec(double v)
	{
		setFrameDelay(252, v);
	}
	/**
	
	*/
	@property Texture frame252Texture()
	{
		return getFrameTexture(252);
	}
	/// ditto
	@property void frame252Texture(Texture v)
	{
		setFrameTexture(252, v);
	}
	/**
	
	*/
	@property double frame253DelaySec()
	{
		return getFrameDelay(253);
	}
	/// ditto
	@property void frame253DelaySec(double v)
	{
		setFrameDelay(253, v);
	}
	/**
	
	*/
	@property Texture frame253Texture()
	{
		return getFrameTexture(253);
	}
	/// ditto
	@property void frame253Texture(Texture v)
	{
		setFrameTexture(253, v);
	}
	/**
	
	*/
	@property double frame254DelaySec()
	{
		return getFrameDelay(254);
	}
	/// ditto
	@property void frame254DelaySec(double v)
	{
		setFrameDelay(254, v);
	}
	/**
	
	*/
	@property Texture frame254Texture()
	{
		return getFrameTexture(254);
	}
	/// ditto
	@property void frame254Texture(Texture v)
	{
		setFrameTexture(254, v);
	}
	/**
	
	*/
	@property double frame255DelaySec()
	{
		return getFrameDelay(255);
	}
	/// ditto
	@property void frame255DelaySec(double v)
	{
		setFrameDelay(255, v);
	}
	/**
	
	*/
	@property Texture frame255Texture()
	{
		return getFrameTexture(255);
	}
	/// ditto
	@property void frame255Texture(Texture v)
	{
		setFrameTexture(255, v);
	}
	/**
	
	*/
	@property double frame26DelaySec()
	{
		return getFrameDelay(26);
	}
	/// ditto
	@property void frame26DelaySec(double v)
	{
		setFrameDelay(26, v);
	}
	/**
	
	*/
	@property Texture frame26Texture()
	{
		return getFrameTexture(26);
	}
	/// ditto
	@property void frame26Texture(Texture v)
	{
		setFrameTexture(26, v);
	}
	/**
	
	*/
	@property double frame27DelaySec()
	{
		return getFrameDelay(27);
	}
	/// ditto
	@property void frame27DelaySec(double v)
	{
		setFrameDelay(27, v);
	}
	/**
	
	*/
	@property Texture frame27Texture()
	{
		return getFrameTexture(27);
	}
	/// ditto
	@property void frame27Texture(Texture v)
	{
		setFrameTexture(27, v);
	}
	/**
	
	*/
	@property double frame28DelaySec()
	{
		return getFrameDelay(28);
	}
	/// ditto
	@property void frame28DelaySec(double v)
	{
		setFrameDelay(28, v);
	}
	/**
	
	*/
	@property Texture frame28Texture()
	{
		return getFrameTexture(28);
	}
	/// ditto
	@property void frame28Texture(Texture v)
	{
		setFrameTexture(28, v);
	}
	/**
	
	*/
	@property double frame29DelaySec()
	{
		return getFrameDelay(29);
	}
	/// ditto
	@property void frame29DelaySec(double v)
	{
		setFrameDelay(29, v);
	}
	/**
	
	*/
	@property Texture frame29Texture()
	{
		return getFrameTexture(29);
	}
	/// ditto
	@property void frame29Texture(Texture v)
	{
		setFrameTexture(29, v);
	}
	/**
	
	*/
	@property double frame3DelaySec()
	{
		return getFrameDelay(3);
	}
	/// ditto
	@property void frame3DelaySec(double v)
	{
		setFrameDelay(3, v);
	}
	/**
	
	*/
	@property Texture frame3Texture()
	{
		return getFrameTexture(3);
	}
	/// ditto
	@property void frame3Texture(Texture v)
	{
		setFrameTexture(3, v);
	}
	/**
	
	*/
	@property double frame30DelaySec()
	{
		return getFrameDelay(30);
	}
	/// ditto
	@property void frame30DelaySec(double v)
	{
		setFrameDelay(30, v);
	}
	/**
	
	*/
	@property Texture frame30Texture()
	{
		return getFrameTexture(30);
	}
	/// ditto
	@property void frame30Texture(Texture v)
	{
		setFrameTexture(30, v);
	}
	/**
	
	*/
	@property double frame31DelaySec()
	{
		return getFrameDelay(31);
	}
	/// ditto
	@property void frame31DelaySec(double v)
	{
		setFrameDelay(31, v);
	}
	/**
	
	*/
	@property Texture frame31Texture()
	{
		return getFrameTexture(31);
	}
	/// ditto
	@property void frame31Texture(Texture v)
	{
		setFrameTexture(31, v);
	}
	/**
	
	*/
	@property double frame32DelaySec()
	{
		return getFrameDelay(32);
	}
	/// ditto
	@property void frame32DelaySec(double v)
	{
		setFrameDelay(32, v);
	}
	/**
	
	*/
	@property Texture frame32Texture()
	{
		return getFrameTexture(32);
	}
	/// ditto
	@property void frame32Texture(Texture v)
	{
		setFrameTexture(32, v);
	}
	/**
	
	*/
	@property double frame33DelaySec()
	{
		return getFrameDelay(33);
	}
	/// ditto
	@property void frame33DelaySec(double v)
	{
		setFrameDelay(33, v);
	}
	/**
	
	*/
	@property Texture frame33Texture()
	{
		return getFrameTexture(33);
	}
	/// ditto
	@property void frame33Texture(Texture v)
	{
		setFrameTexture(33, v);
	}
	/**
	
	*/
	@property double frame34DelaySec()
	{
		return getFrameDelay(34);
	}
	/// ditto
	@property void frame34DelaySec(double v)
	{
		setFrameDelay(34, v);
	}
	/**
	
	*/
	@property Texture frame34Texture()
	{
		return getFrameTexture(34);
	}
	/// ditto
	@property void frame34Texture(Texture v)
	{
		setFrameTexture(34, v);
	}
	/**
	
	*/
	@property double frame35DelaySec()
	{
		return getFrameDelay(35);
	}
	/// ditto
	@property void frame35DelaySec(double v)
	{
		setFrameDelay(35, v);
	}
	/**
	
	*/
	@property Texture frame35Texture()
	{
		return getFrameTexture(35);
	}
	/// ditto
	@property void frame35Texture(Texture v)
	{
		setFrameTexture(35, v);
	}
	/**
	
	*/
	@property double frame36DelaySec()
	{
		return getFrameDelay(36);
	}
	/// ditto
	@property void frame36DelaySec(double v)
	{
		setFrameDelay(36, v);
	}
	/**
	
	*/
	@property Texture frame36Texture()
	{
		return getFrameTexture(36);
	}
	/// ditto
	@property void frame36Texture(Texture v)
	{
		setFrameTexture(36, v);
	}
	/**
	
	*/
	@property double frame37DelaySec()
	{
		return getFrameDelay(37);
	}
	/// ditto
	@property void frame37DelaySec(double v)
	{
		setFrameDelay(37, v);
	}
	/**
	
	*/
	@property Texture frame37Texture()
	{
		return getFrameTexture(37);
	}
	/// ditto
	@property void frame37Texture(Texture v)
	{
		setFrameTexture(37, v);
	}
	/**
	
	*/
	@property double frame38DelaySec()
	{
		return getFrameDelay(38);
	}
	/// ditto
	@property void frame38DelaySec(double v)
	{
		setFrameDelay(38, v);
	}
	/**
	
	*/
	@property Texture frame38Texture()
	{
		return getFrameTexture(38);
	}
	/// ditto
	@property void frame38Texture(Texture v)
	{
		setFrameTexture(38, v);
	}
	/**
	
	*/
	@property double frame39DelaySec()
	{
		return getFrameDelay(39);
	}
	/// ditto
	@property void frame39DelaySec(double v)
	{
		setFrameDelay(39, v);
	}
	/**
	
	*/
	@property Texture frame39Texture()
	{
		return getFrameTexture(39);
	}
	/// ditto
	@property void frame39Texture(Texture v)
	{
		setFrameTexture(39, v);
	}
	/**
	
	*/
	@property double frame4DelaySec()
	{
		return getFrameDelay(4);
	}
	/// ditto
	@property void frame4DelaySec(double v)
	{
		setFrameDelay(4, v);
	}
	/**
	
	*/
	@property Texture frame4Texture()
	{
		return getFrameTexture(4);
	}
	/// ditto
	@property void frame4Texture(Texture v)
	{
		setFrameTexture(4, v);
	}
	/**
	
	*/
	@property double frame40DelaySec()
	{
		return getFrameDelay(40);
	}
	/// ditto
	@property void frame40DelaySec(double v)
	{
		setFrameDelay(40, v);
	}
	/**
	
	*/
	@property Texture frame40Texture()
	{
		return getFrameTexture(40);
	}
	/// ditto
	@property void frame40Texture(Texture v)
	{
		setFrameTexture(40, v);
	}
	/**
	
	*/
	@property double frame41DelaySec()
	{
		return getFrameDelay(41);
	}
	/// ditto
	@property void frame41DelaySec(double v)
	{
		setFrameDelay(41, v);
	}
	/**
	
	*/
	@property Texture frame41Texture()
	{
		return getFrameTexture(41);
	}
	/// ditto
	@property void frame41Texture(Texture v)
	{
		setFrameTexture(41, v);
	}
	/**
	
	*/
	@property double frame42DelaySec()
	{
		return getFrameDelay(42);
	}
	/// ditto
	@property void frame42DelaySec(double v)
	{
		setFrameDelay(42, v);
	}
	/**
	
	*/
	@property Texture frame42Texture()
	{
		return getFrameTexture(42);
	}
	/// ditto
	@property void frame42Texture(Texture v)
	{
		setFrameTexture(42, v);
	}
	/**
	
	*/
	@property double frame43DelaySec()
	{
		return getFrameDelay(43);
	}
	/// ditto
	@property void frame43DelaySec(double v)
	{
		setFrameDelay(43, v);
	}
	/**
	
	*/
	@property Texture frame43Texture()
	{
		return getFrameTexture(43);
	}
	/// ditto
	@property void frame43Texture(Texture v)
	{
		setFrameTexture(43, v);
	}
	/**
	
	*/
	@property double frame44DelaySec()
	{
		return getFrameDelay(44);
	}
	/// ditto
	@property void frame44DelaySec(double v)
	{
		setFrameDelay(44, v);
	}
	/**
	
	*/
	@property Texture frame44Texture()
	{
		return getFrameTexture(44);
	}
	/// ditto
	@property void frame44Texture(Texture v)
	{
		setFrameTexture(44, v);
	}
	/**
	
	*/
	@property double frame45DelaySec()
	{
		return getFrameDelay(45);
	}
	/// ditto
	@property void frame45DelaySec(double v)
	{
		setFrameDelay(45, v);
	}
	/**
	
	*/
	@property Texture frame45Texture()
	{
		return getFrameTexture(45);
	}
	/// ditto
	@property void frame45Texture(Texture v)
	{
		setFrameTexture(45, v);
	}
	/**
	
	*/
	@property double frame46DelaySec()
	{
		return getFrameDelay(46);
	}
	/// ditto
	@property void frame46DelaySec(double v)
	{
		setFrameDelay(46, v);
	}
	/**
	
	*/
	@property Texture frame46Texture()
	{
		return getFrameTexture(46);
	}
	/// ditto
	@property void frame46Texture(Texture v)
	{
		setFrameTexture(46, v);
	}
	/**
	
	*/
	@property double frame47DelaySec()
	{
		return getFrameDelay(47);
	}
	/// ditto
	@property void frame47DelaySec(double v)
	{
		setFrameDelay(47, v);
	}
	/**
	
	*/
	@property Texture frame47Texture()
	{
		return getFrameTexture(47);
	}
	/// ditto
	@property void frame47Texture(Texture v)
	{
		setFrameTexture(47, v);
	}
	/**
	
	*/
	@property double frame48DelaySec()
	{
		return getFrameDelay(48);
	}
	/// ditto
	@property void frame48DelaySec(double v)
	{
		setFrameDelay(48, v);
	}
	/**
	
	*/
	@property Texture frame48Texture()
	{
		return getFrameTexture(48);
	}
	/// ditto
	@property void frame48Texture(Texture v)
	{
		setFrameTexture(48, v);
	}
	/**
	
	*/
	@property double frame49DelaySec()
	{
		return getFrameDelay(49);
	}
	/// ditto
	@property void frame49DelaySec(double v)
	{
		setFrameDelay(49, v);
	}
	/**
	
	*/
	@property Texture frame49Texture()
	{
		return getFrameTexture(49);
	}
	/// ditto
	@property void frame49Texture(Texture v)
	{
		setFrameTexture(49, v);
	}
	/**
	
	*/
	@property double frame5DelaySec()
	{
		return getFrameDelay(5);
	}
	/// ditto
	@property void frame5DelaySec(double v)
	{
		setFrameDelay(5, v);
	}
	/**
	
	*/
	@property Texture frame5Texture()
	{
		return getFrameTexture(5);
	}
	/// ditto
	@property void frame5Texture(Texture v)
	{
		setFrameTexture(5, v);
	}
	/**
	
	*/
	@property double frame50DelaySec()
	{
		return getFrameDelay(50);
	}
	/// ditto
	@property void frame50DelaySec(double v)
	{
		setFrameDelay(50, v);
	}
	/**
	
	*/
	@property Texture frame50Texture()
	{
		return getFrameTexture(50);
	}
	/// ditto
	@property void frame50Texture(Texture v)
	{
		setFrameTexture(50, v);
	}
	/**
	
	*/
	@property double frame51DelaySec()
	{
		return getFrameDelay(51);
	}
	/// ditto
	@property void frame51DelaySec(double v)
	{
		setFrameDelay(51, v);
	}
	/**
	
	*/
	@property Texture frame51Texture()
	{
		return getFrameTexture(51);
	}
	/// ditto
	@property void frame51Texture(Texture v)
	{
		setFrameTexture(51, v);
	}
	/**
	
	*/
	@property double frame52DelaySec()
	{
		return getFrameDelay(52);
	}
	/// ditto
	@property void frame52DelaySec(double v)
	{
		setFrameDelay(52, v);
	}
	/**
	
	*/
	@property Texture frame52Texture()
	{
		return getFrameTexture(52);
	}
	/// ditto
	@property void frame52Texture(Texture v)
	{
		setFrameTexture(52, v);
	}
	/**
	
	*/
	@property double frame53DelaySec()
	{
		return getFrameDelay(53);
	}
	/// ditto
	@property void frame53DelaySec(double v)
	{
		setFrameDelay(53, v);
	}
	/**
	
	*/
	@property Texture frame53Texture()
	{
		return getFrameTexture(53);
	}
	/// ditto
	@property void frame53Texture(Texture v)
	{
		setFrameTexture(53, v);
	}
	/**
	
	*/
	@property double frame54DelaySec()
	{
		return getFrameDelay(54);
	}
	/// ditto
	@property void frame54DelaySec(double v)
	{
		setFrameDelay(54, v);
	}
	/**
	
	*/
	@property Texture frame54Texture()
	{
		return getFrameTexture(54);
	}
	/// ditto
	@property void frame54Texture(Texture v)
	{
		setFrameTexture(54, v);
	}
	/**
	
	*/
	@property double frame55DelaySec()
	{
		return getFrameDelay(55);
	}
	/// ditto
	@property void frame55DelaySec(double v)
	{
		setFrameDelay(55, v);
	}
	/**
	
	*/
	@property Texture frame55Texture()
	{
		return getFrameTexture(55);
	}
	/// ditto
	@property void frame55Texture(Texture v)
	{
		setFrameTexture(55, v);
	}
	/**
	
	*/
	@property double frame56DelaySec()
	{
		return getFrameDelay(56);
	}
	/// ditto
	@property void frame56DelaySec(double v)
	{
		setFrameDelay(56, v);
	}
	/**
	
	*/
	@property Texture frame56Texture()
	{
		return getFrameTexture(56);
	}
	/// ditto
	@property void frame56Texture(Texture v)
	{
		setFrameTexture(56, v);
	}
	/**
	
	*/
	@property double frame57DelaySec()
	{
		return getFrameDelay(57);
	}
	/// ditto
	@property void frame57DelaySec(double v)
	{
		setFrameDelay(57, v);
	}
	/**
	
	*/
	@property Texture frame57Texture()
	{
		return getFrameTexture(57);
	}
	/// ditto
	@property void frame57Texture(Texture v)
	{
		setFrameTexture(57, v);
	}
	/**
	
	*/
	@property double frame58DelaySec()
	{
		return getFrameDelay(58);
	}
	/// ditto
	@property void frame58DelaySec(double v)
	{
		setFrameDelay(58, v);
	}
	/**
	
	*/
	@property Texture frame58Texture()
	{
		return getFrameTexture(58);
	}
	/// ditto
	@property void frame58Texture(Texture v)
	{
		setFrameTexture(58, v);
	}
	/**
	
	*/
	@property double frame59DelaySec()
	{
		return getFrameDelay(59);
	}
	/// ditto
	@property void frame59DelaySec(double v)
	{
		setFrameDelay(59, v);
	}
	/**
	
	*/
	@property Texture frame59Texture()
	{
		return getFrameTexture(59);
	}
	/// ditto
	@property void frame59Texture(Texture v)
	{
		setFrameTexture(59, v);
	}
	/**
	
	*/
	@property double frame6DelaySec()
	{
		return getFrameDelay(6);
	}
	/// ditto
	@property void frame6DelaySec(double v)
	{
		setFrameDelay(6, v);
	}
	/**
	
	*/
	@property Texture frame6Texture()
	{
		return getFrameTexture(6);
	}
	/// ditto
	@property void frame6Texture(Texture v)
	{
		setFrameTexture(6, v);
	}
	/**
	
	*/
	@property double frame60DelaySec()
	{
		return getFrameDelay(60);
	}
	/// ditto
	@property void frame60DelaySec(double v)
	{
		setFrameDelay(60, v);
	}
	/**
	
	*/
	@property Texture frame60Texture()
	{
		return getFrameTexture(60);
	}
	/// ditto
	@property void frame60Texture(Texture v)
	{
		setFrameTexture(60, v);
	}
	/**
	
	*/
	@property double frame61DelaySec()
	{
		return getFrameDelay(61);
	}
	/// ditto
	@property void frame61DelaySec(double v)
	{
		setFrameDelay(61, v);
	}
	/**
	
	*/
	@property Texture frame61Texture()
	{
		return getFrameTexture(61);
	}
	/// ditto
	@property void frame61Texture(Texture v)
	{
		setFrameTexture(61, v);
	}
	/**
	
	*/
	@property double frame62DelaySec()
	{
		return getFrameDelay(62);
	}
	/// ditto
	@property void frame62DelaySec(double v)
	{
		setFrameDelay(62, v);
	}
	/**
	
	*/
	@property Texture frame62Texture()
	{
		return getFrameTexture(62);
	}
	/// ditto
	@property void frame62Texture(Texture v)
	{
		setFrameTexture(62, v);
	}
	/**
	
	*/
	@property double frame63DelaySec()
	{
		return getFrameDelay(63);
	}
	/// ditto
	@property void frame63DelaySec(double v)
	{
		setFrameDelay(63, v);
	}
	/**
	
	*/
	@property Texture frame63Texture()
	{
		return getFrameTexture(63);
	}
	/// ditto
	@property void frame63Texture(Texture v)
	{
		setFrameTexture(63, v);
	}
	/**
	
	*/
	@property double frame64DelaySec()
	{
		return getFrameDelay(64);
	}
	/// ditto
	@property void frame64DelaySec(double v)
	{
		setFrameDelay(64, v);
	}
	/**
	
	*/
	@property Texture frame64Texture()
	{
		return getFrameTexture(64);
	}
	/// ditto
	@property void frame64Texture(Texture v)
	{
		setFrameTexture(64, v);
	}
	/**
	
	*/
	@property double frame65DelaySec()
	{
		return getFrameDelay(65);
	}
	/// ditto
	@property void frame65DelaySec(double v)
	{
		setFrameDelay(65, v);
	}
	/**
	
	*/
	@property Texture frame65Texture()
	{
		return getFrameTexture(65);
	}
	/// ditto
	@property void frame65Texture(Texture v)
	{
		setFrameTexture(65, v);
	}
	/**
	
	*/
	@property double frame66DelaySec()
	{
		return getFrameDelay(66);
	}
	/// ditto
	@property void frame66DelaySec(double v)
	{
		setFrameDelay(66, v);
	}
	/**
	
	*/
	@property Texture frame66Texture()
	{
		return getFrameTexture(66);
	}
	/// ditto
	@property void frame66Texture(Texture v)
	{
		setFrameTexture(66, v);
	}
	/**
	
	*/
	@property double frame67DelaySec()
	{
		return getFrameDelay(67);
	}
	/// ditto
	@property void frame67DelaySec(double v)
	{
		setFrameDelay(67, v);
	}
	/**
	
	*/
	@property Texture frame67Texture()
	{
		return getFrameTexture(67);
	}
	/// ditto
	@property void frame67Texture(Texture v)
	{
		setFrameTexture(67, v);
	}
	/**
	
	*/
	@property double frame68DelaySec()
	{
		return getFrameDelay(68);
	}
	/// ditto
	@property void frame68DelaySec(double v)
	{
		setFrameDelay(68, v);
	}
	/**
	
	*/
	@property Texture frame68Texture()
	{
		return getFrameTexture(68);
	}
	/// ditto
	@property void frame68Texture(Texture v)
	{
		setFrameTexture(68, v);
	}
	/**
	
	*/
	@property double frame69DelaySec()
	{
		return getFrameDelay(69);
	}
	/// ditto
	@property void frame69DelaySec(double v)
	{
		setFrameDelay(69, v);
	}
	/**
	
	*/
	@property Texture frame69Texture()
	{
		return getFrameTexture(69);
	}
	/// ditto
	@property void frame69Texture(Texture v)
	{
		setFrameTexture(69, v);
	}
	/**
	
	*/
	@property double frame7DelaySec()
	{
		return getFrameDelay(7);
	}
	/// ditto
	@property void frame7DelaySec(double v)
	{
		setFrameDelay(7, v);
	}
	/**
	
	*/
	@property Texture frame7Texture()
	{
		return getFrameTexture(7);
	}
	/// ditto
	@property void frame7Texture(Texture v)
	{
		setFrameTexture(7, v);
	}
	/**
	
	*/
	@property double frame70DelaySec()
	{
		return getFrameDelay(70);
	}
	/// ditto
	@property void frame70DelaySec(double v)
	{
		setFrameDelay(70, v);
	}
	/**
	
	*/
	@property Texture frame70Texture()
	{
		return getFrameTexture(70);
	}
	/// ditto
	@property void frame70Texture(Texture v)
	{
		setFrameTexture(70, v);
	}
	/**
	
	*/
	@property double frame71DelaySec()
	{
		return getFrameDelay(71);
	}
	/// ditto
	@property void frame71DelaySec(double v)
	{
		setFrameDelay(71, v);
	}
	/**
	
	*/
	@property Texture frame71Texture()
	{
		return getFrameTexture(71);
	}
	/// ditto
	@property void frame71Texture(Texture v)
	{
		setFrameTexture(71, v);
	}
	/**
	
	*/
	@property double frame72DelaySec()
	{
		return getFrameDelay(72);
	}
	/// ditto
	@property void frame72DelaySec(double v)
	{
		setFrameDelay(72, v);
	}
	/**
	
	*/
	@property Texture frame72Texture()
	{
		return getFrameTexture(72);
	}
	/// ditto
	@property void frame72Texture(Texture v)
	{
		setFrameTexture(72, v);
	}
	/**
	
	*/
	@property double frame73DelaySec()
	{
		return getFrameDelay(73);
	}
	/// ditto
	@property void frame73DelaySec(double v)
	{
		setFrameDelay(73, v);
	}
	/**
	
	*/
	@property Texture frame73Texture()
	{
		return getFrameTexture(73);
	}
	/// ditto
	@property void frame73Texture(Texture v)
	{
		setFrameTexture(73, v);
	}
	/**
	
	*/
	@property double frame74DelaySec()
	{
		return getFrameDelay(74);
	}
	/// ditto
	@property void frame74DelaySec(double v)
	{
		setFrameDelay(74, v);
	}
	/**
	
	*/
	@property Texture frame74Texture()
	{
		return getFrameTexture(74);
	}
	/// ditto
	@property void frame74Texture(Texture v)
	{
		setFrameTexture(74, v);
	}
	/**
	
	*/
	@property double frame75DelaySec()
	{
		return getFrameDelay(75);
	}
	/// ditto
	@property void frame75DelaySec(double v)
	{
		setFrameDelay(75, v);
	}
	/**
	
	*/
	@property Texture frame75Texture()
	{
		return getFrameTexture(75);
	}
	/// ditto
	@property void frame75Texture(Texture v)
	{
		setFrameTexture(75, v);
	}
	/**
	
	*/
	@property double frame76DelaySec()
	{
		return getFrameDelay(76);
	}
	/// ditto
	@property void frame76DelaySec(double v)
	{
		setFrameDelay(76, v);
	}
	/**
	
	*/
	@property Texture frame76Texture()
	{
		return getFrameTexture(76);
	}
	/// ditto
	@property void frame76Texture(Texture v)
	{
		setFrameTexture(76, v);
	}
	/**
	
	*/
	@property double frame77DelaySec()
	{
		return getFrameDelay(77);
	}
	/// ditto
	@property void frame77DelaySec(double v)
	{
		setFrameDelay(77, v);
	}
	/**
	
	*/
	@property Texture frame77Texture()
	{
		return getFrameTexture(77);
	}
	/// ditto
	@property void frame77Texture(Texture v)
	{
		setFrameTexture(77, v);
	}
	/**
	
	*/
	@property double frame78DelaySec()
	{
		return getFrameDelay(78);
	}
	/// ditto
	@property void frame78DelaySec(double v)
	{
		setFrameDelay(78, v);
	}
	/**
	
	*/
	@property Texture frame78Texture()
	{
		return getFrameTexture(78);
	}
	/// ditto
	@property void frame78Texture(Texture v)
	{
		setFrameTexture(78, v);
	}
	/**
	
	*/
	@property double frame79DelaySec()
	{
		return getFrameDelay(79);
	}
	/// ditto
	@property void frame79DelaySec(double v)
	{
		setFrameDelay(79, v);
	}
	/**
	
	*/
	@property Texture frame79Texture()
	{
		return getFrameTexture(79);
	}
	/// ditto
	@property void frame79Texture(Texture v)
	{
		setFrameTexture(79, v);
	}
	/**
	
	*/
	@property double frame8DelaySec()
	{
		return getFrameDelay(8);
	}
	/// ditto
	@property void frame8DelaySec(double v)
	{
		setFrameDelay(8, v);
	}
	/**
	
	*/
	@property Texture frame8Texture()
	{
		return getFrameTexture(8);
	}
	/// ditto
	@property void frame8Texture(Texture v)
	{
		setFrameTexture(8, v);
	}
	/**
	
	*/
	@property double frame80DelaySec()
	{
		return getFrameDelay(80);
	}
	/// ditto
	@property void frame80DelaySec(double v)
	{
		setFrameDelay(80, v);
	}
	/**
	
	*/
	@property Texture frame80Texture()
	{
		return getFrameTexture(80);
	}
	/// ditto
	@property void frame80Texture(Texture v)
	{
		setFrameTexture(80, v);
	}
	/**
	
	*/
	@property double frame81DelaySec()
	{
		return getFrameDelay(81);
	}
	/// ditto
	@property void frame81DelaySec(double v)
	{
		setFrameDelay(81, v);
	}
	/**
	
	*/
	@property Texture frame81Texture()
	{
		return getFrameTexture(81);
	}
	/// ditto
	@property void frame81Texture(Texture v)
	{
		setFrameTexture(81, v);
	}
	/**
	
	*/
	@property double frame82DelaySec()
	{
		return getFrameDelay(82);
	}
	/// ditto
	@property void frame82DelaySec(double v)
	{
		setFrameDelay(82, v);
	}
	/**
	
	*/
	@property Texture frame82Texture()
	{
		return getFrameTexture(82);
	}
	/// ditto
	@property void frame82Texture(Texture v)
	{
		setFrameTexture(82, v);
	}
	/**
	
	*/
	@property double frame83DelaySec()
	{
		return getFrameDelay(83);
	}
	/// ditto
	@property void frame83DelaySec(double v)
	{
		setFrameDelay(83, v);
	}
	/**
	
	*/
	@property Texture frame83Texture()
	{
		return getFrameTexture(83);
	}
	/// ditto
	@property void frame83Texture(Texture v)
	{
		setFrameTexture(83, v);
	}
	/**
	
	*/
	@property double frame84DelaySec()
	{
		return getFrameDelay(84);
	}
	/// ditto
	@property void frame84DelaySec(double v)
	{
		setFrameDelay(84, v);
	}
	/**
	
	*/
	@property Texture frame84Texture()
	{
		return getFrameTexture(84);
	}
	/// ditto
	@property void frame84Texture(Texture v)
	{
		setFrameTexture(84, v);
	}
	/**
	
	*/
	@property double frame85DelaySec()
	{
		return getFrameDelay(85);
	}
	/// ditto
	@property void frame85DelaySec(double v)
	{
		setFrameDelay(85, v);
	}
	/**
	
	*/
	@property Texture frame85Texture()
	{
		return getFrameTexture(85);
	}
	/// ditto
	@property void frame85Texture(Texture v)
	{
		setFrameTexture(85, v);
	}
	/**
	
	*/
	@property double frame86DelaySec()
	{
		return getFrameDelay(86);
	}
	/// ditto
	@property void frame86DelaySec(double v)
	{
		setFrameDelay(86, v);
	}
	/**
	
	*/
	@property Texture frame86Texture()
	{
		return getFrameTexture(86);
	}
	/// ditto
	@property void frame86Texture(Texture v)
	{
		setFrameTexture(86, v);
	}
	/**
	
	*/
	@property double frame87DelaySec()
	{
		return getFrameDelay(87);
	}
	/// ditto
	@property void frame87DelaySec(double v)
	{
		setFrameDelay(87, v);
	}
	/**
	
	*/
	@property Texture frame87Texture()
	{
		return getFrameTexture(87);
	}
	/// ditto
	@property void frame87Texture(Texture v)
	{
		setFrameTexture(87, v);
	}
	/**
	
	*/
	@property double frame88DelaySec()
	{
		return getFrameDelay(88);
	}
	/// ditto
	@property void frame88DelaySec(double v)
	{
		setFrameDelay(88, v);
	}
	/**
	
	*/
	@property Texture frame88Texture()
	{
		return getFrameTexture(88);
	}
	/// ditto
	@property void frame88Texture(Texture v)
	{
		setFrameTexture(88, v);
	}
	/**
	
	*/
	@property double frame89DelaySec()
	{
		return getFrameDelay(89);
	}
	/// ditto
	@property void frame89DelaySec(double v)
	{
		setFrameDelay(89, v);
	}
	/**
	
	*/
	@property Texture frame89Texture()
	{
		return getFrameTexture(89);
	}
	/// ditto
	@property void frame89Texture(Texture v)
	{
		setFrameTexture(89, v);
	}
	/**
	
	*/
	@property double frame9DelaySec()
	{
		return getFrameDelay(9);
	}
	/// ditto
	@property void frame9DelaySec(double v)
	{
		setFrameDelay(9, v);
	}
	/**
	
	*/
	@property Texture frame9Texture()
	{
		return getFrameTexture(9);
	}
	/// ditto
	@property void frame9Texture(Texture v)
	{
		setFrameTexture(9, v);
	}
	/**
	
	*/
	@property double frame90DelaySec()
	{
		return getFrameDelay(90);
	}
	/// ditto
	@property void frame90DelaySec(double v)
	{
		setFrameDelay(90, v);
	}
	/**
	
	*/
	@property Texture frame90Texture()
	{
		return getFrameTexture(90);
	}
	/// ditto
	@property void frame90Texture(Texture v)
	{
		setFrameTexture(90, v);
	}
	/**
	
	*/
	@property double frame91DelaySec()
	{
		return getFrameDelay(91);
	}
	/// ditto
	@property void frame91DelaySec(double v)
	{
		setFrameDelay(91, v);
	}
	/**
	
	*/
	@property Texture frame91Texture()
	{
		return getFrameTexture(91);
	}
	/// ditto
	@property void frame91Texture(Texture v)
	{
		setFrameTexture(91, v);
	}
	/**
	
	*/
	@property double frame92DelaySec()
	{
		return getFrameDelay(92);
	}
	/// ditto
	@property void frame92DelaySec(double v)
	{
		setFrameDelay(92, v);
	}
	/**
	
	*/
	@property Texture frame92Texture()
	{
		return getFrameTexture(92);
	}
	/// ditto
	@property void frame92Texture(Texture v)
	{
		setFrameTexture(92, v);
	}
	/**
	
	*/
	@property double frame93DelaySec()
	{
		return getFrameDelay(93);
	}
	/// ditto
	@property void frame93DelaySec(double v)
	{
		setFrameDelay(93, v);
	}
	/**
	
	*/
	@property Texture frame93Texture()
	{
		return getFrameTexture(93);
	}
	/// ditto
	@property void frame93Texture(Texture v)
	{
		setFrameTexture(93, v);
	}
	/**
	
	*/
	@property double frame94DelaySec()
	{
		return getFrameDelay(94);
	}
	/// ditto
	@property void frame94DelaySec(double v)
	{
		setFrameDelay(94, v);
	}
	/**
	
	*/
	@property Texture frame94Texture()
	{
		return getFrameTexture(94);
	}
	/// ditto
	@property void frame94Texture(Texture v)
	{
		setFrameTexture(94, v);
	}
	/**
	
	*/
	@property double frame95DelaySec()
	{
		return getFrameDelay(95);
	}
	/// ditto
	@property void frame95DelaySec(double v)
	{
		setFrameDelay(95, v);
	}
	/**
	
	*/
	@property Texture frame95Texture()
	{
		return getFrameTexture(95);
	}
	/// ditto
	@property void frame95Texture(Texture v)
	{
		setFrameTexture(95, v);
	}
	/**
	
	*/
	@property double frame96DelaySec()
	{
		return getFrameDelay(96);
	}
	/// ditto
	@property void frame96DelaySec(double v)
	{
		setFrameDelay(96, v);
	}
	/**
	
	*/
	@property Texture frame96Texture()
	{
		return getFrameTexture(96);
	}
	/// ditto
	@property void frame96Texture(Texture v)
	{
		setFrameTexture(96, v);
	}
	/**
	
	*/
	@property double frame97DelaySec()
	{
		return getFrameDelay(97);
	}
	/// ditto
	@property void frame97DelaySec(double v)
	{
		setFrameDelay(97, v);
	}
	/**
	
	*/
	@property Texture frame97Texture()
	{
		return getFrameTexture(97);
	}
	/// ditto
	@property void frame97Texture(Texture v)
	{
		setFrameTexture(97, v);
	}
	/**
	
	*/
	@property double frame98DelaySec()
	{
		return getFrameDelay(98);
	}
	/// ditto
	@property void frame98DelaySec(double v)
	{
		setFrameDelay(98, v);
	}
	/**
	
	*/
	@property Texture frame98Texture()
	{
		return getFrameTexture(98);
	}
	/// ditto
	@property void frame98Texture(Texture v)
	{
		setFrameTexture(98, v);
	}
	/**
	
	*/
	@property double frame99DelaySec()
	{
		return getFrameDelay(99);
	}
	/// ditto
	@property void frame99DelaySec(double v)
	{
		setFrameDelay(99, v);
	}
	/**
	
	*/
	@property Texture frame99Texture()
	{
		return getFrameTexture(99);
	}
	/// ditto
	@property void frame99Texture(Texture v)
	{
		setFrameTexture(99, v);
	}
	/**
	Number of frames to use in the animation. While you can create the frames independently with $(D setFrameTexture), you need to set this value for the animation to take new frames into account. The maximum number of frames is $(D constant MAX_FRAMES).
	*/
	@property long frames()
	{
		return getFrames();
	}
	/// ditto
	@property void frames(long v)
	{
		setFrames(v);
	}
	/**
	If `true`, the animation will only play once and will not loop back to the first frame after reaching the end. Note that reaching the end will not set $(D pause) to `true`.
	*/
	@property bool oneshot()
	{
		return getOneshot();
	}
	/// ditto
	@property void oneshot(bool v)
	{
		setOneshot(v);
	}
	/**
	If `true`, the animation will pause where it currently is (i.e. at $(D currentFrame)). The animation will continue from where it was paused when changing this property to `false`.
	*/
	@property bool pause()
	{
		return getPause();
	}
	/// ditto
	@property void pause(bool v)
	{
		setPause(v);
	}
}
