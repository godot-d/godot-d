/**
Sprite node that can use multiple textures for animation.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animatedsprite;
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
import godot.spriteframes;
/**
Sprite node that can use multiple textures for animation.

Animations are created using a $(D SpriteFrames) resource, which can be configured in the editor via the SpriteFrames panel.
*/
@GodotBaseClass struct AnimatedSprite
{
	enum string _GODOT_internal_name = "AnimatedSprite";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_is_playing") GodotMethod!(bool) _isPlaying;
		@GodotName("_res_changed") GodotMethod!(void) _resChanged;
		@GodotName("_set_playing") GodotMethod!(void, bool) _setPlaying;
		@GodotName("get_animation") GodotMethod!(String) getAnimation;
		@GodotName("get_frame") GodotMethod!(long) getFrame;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("get_sprite_frames") GodotMethod!(SpriteFrames) getSpriteFrames;
		@GodotName("is_centered") GodotMethod!(bool) isCentered;
		@GodotName("is_flipped_h") GodotMethod!(bool) isFlippedH;
		@GodotName("is_flipped_v") GodotMethod!(bool) isFlippedV;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("play") GodotMethod!(void, String, bool) play;
		@GodotName("set_animation") GodotMethod!(void, String) setAnimation;
		@GodotName("set_centered") GodotMethod!(void, bool) setCentered;
		@GodotName("set_flip_h") GodotMethod!(void, bool) setFlipH;
		@GodotName("set_flip_v") GodotMethod!(void, bool) setFlipV;
		@GodotName("set_frame") GodotMethod!(void, long) setFrame;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("set_sprite_frames") GodotMethod!(void, SpriteFrames) setSpriteFrames;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	bool opEquals(in AnimatedSprite other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimatedSprite opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimatedSprite _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimatedSprite");
		if(constructor is null) return typeof(this).init;
		return cast(AnimatedSprite)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool _isPlaying() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_is_playing");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _resChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_res_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setPlaying(in bool playing)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(playing);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	String getAnimation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getAnimation, _godot_object);
	}
	/**
	
	*/
	long getFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFrame, _godot_object);
	}
	/**
	
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	double getSpeedScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSpeedScale, _godot_object);
	}
	/**
	
	*/
	Ref!SpriteFrames getSpriteFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpriteFrames)(_classBinding.getSpriteFrames, _godot_object);
	}
	/**
	
	*/
	bool isCentered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCentered, _godot_object);
	}
	/**
	
	*/
	bool isFlippedH() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFlippedH, _godot_object);
	}
	/**
	
	*/
	bool isFlippedV() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFlippedV, _godot_object);
	}
	/**
	Returns `true` if an animation is currently being played.
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPlaying, _godot_object);
	}
	/**
	Plays the animation named `anim`. If no `anim` is provided, the current animation is played. If `backwards` is `true`, the animation will be played in reverse.
	*/
	void play(in String anim = gs!"", in bool backwards = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.play, _godot_object, anim, backwards);
	}
	/**
	
	*/
	void setAnimation(in String animation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnimation, _godot_object, animation);
	}
	/**
	
	*/
	void setCentered(in bool centered)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCentered, _godot_object, centered);
	}
	/**
	
	*/
	void setFlipH(in bool flip_h)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlipH, _godot_object, flip_h);
	}
	/**
	
	*/
	void setFlipV(in bool flip_v)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlipV, _godot_object, flip_v);
	}
	/**
	
	*/
	void setFrame(in long frame)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFrame, _godot_object, frame);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setSpeedScale(in double speed_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpeedScale, _godot_object, speed_scale);
	}
	/**
	
	*/
	void setSpriteFrames(SpriteFrames sprite_frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpriteFrames, _godot_object, sprite_frames);
	}
	/**
	Stops the current animation (does not reset the frame counter).
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stop, _godot_object);
	}
	/**
	The current animation from the `frames` resource. If this value changes, the `frame` counter is reset.
	*/
	@property String animation()
	{
		return getAnimation();
	}
	/// ditto
	@property void animation(String v)
	{
		setAnimation(v);
	}
	/**
	If `true`, texture will be centered.
	*/
	@property bool centered()
	{
		return isCentered();
	}
	/// ditto
	@property void centered(bool v)
	{
		setCentered(v);
	}
	/**
	If `true`, texture is flipped horizontally.
	*/
	@property bool flipH()
	{
		return isFlippedH();
	}
	/// ditto
	@property void flipH(bool v)
	{
		setFlipH(v);
	}
	/**
	If `true`, texture is flipped vertically.
	*/
	@property bool flipV()
	{
		return isFlippedV();
	}
	/// ditto
	@property void flipV(bool v)
	{
		setFlipV(v);
	}
	/**
	The displayed animation frame's index.
	*/
	@property long frame()
	{
		return getFrame();
	}
	/// ditto
	@property void frame(long v)
	{
		setFrame(v);
	}
	/**
	The $(D SpriteFrames) resource containing the animation(s).
	*/
	@property SpriteFrames frames()
	{
		return getSpriteFrames();
	}
	/// ditto
	@property void frames(SpriteFrames v)
	{
		setSpriteFrames(v);
	}
	/**
	The texture's drawing offset.
	*/
	@property Vector2 offset()
	{
		return getOffset();
	}
	/// ditto
	@property void offset(Vector2 v)
	{
		setOffset(v);
	}
	/**
	If `true`, the $(D animation) is currently playing.
	*/
	@property bool playing()
	{
		return _isPlaying();
	}
	/// ditto
	@property void playing(bool v)
	{
		_setPlaying(v);
	}
	/**
	The animation speed is multiplied by this value.
	*/
	@property double speedScale()
	{
		return getSpeedScale();
	}
	/// ditto
	@property void speedScale(double v)
	{
		setSpeedScale(v);
	}
}
