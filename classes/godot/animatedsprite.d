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
import godot.canvasitem;
import godot.node;
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
		@GodotName("set_sprite_frames") GodotMethod!(void, SpriteFrames) setSpriteFrames;
		@GodotName("get_sprite_frames") GodotMethod!(SpriteFrames) getSpriteFrames;
		@GodotName("set_animation") GodotMethod!(void, String) setAnimation;
		@GodotName("get_animation") GodotMethod!(String) getAnimation;
		@GodotName("_set_playing") GodotMethod!(void, bool) _setPlaying;
		@GodotName("_is_playing") GodotMethod!(bool) _isPlaying;
		@GodotName("play") GodotMethod!(void, String) play;
		@GodotName("stop") GodotMethod!(void) stop;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("set_centered") GodotMethod!(void, bool) setCentered;
		@GodotName("is_centered") GodotMethod!(bool) isCentered;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("set_flip_h") GodotMethod!(void, bool) setFlipH;
		@GodotName("is_flipped_h") GodotMethod!(bool) isFlippedH;
		@GodotName("set_flip_v") GodotMethod!(void, bool) setFlipV;
		@GodotName("is_flipped_v") GodotMethod!(bool) isFlippedV;
		@GodotName("set_frame") GodotMethod!(void, long) setFrame;
		@GodotName("get_frame") GodotMethod!(long) getFrame;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("_res_changed") GodotMethod!(void) _resChanged;
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
	void setSpriteFrames(SpriteFrames sprite_frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpriteFrames, _godot_object, sprite_frames);
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
	void setAnimation(StringArg0)(in StringArg0 animation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnimation, _godot_object, animation);
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
	void _setPlaying(in bool playing)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(playing);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool _isPlaying() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_playing");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Play the animation set in parameter. If no parameter is provided, the current animation is played.
	*/
	void play(StringArg0)(in StringArg0 anim = "")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.play, _godot_object, anim);
	}
	/**
	Stop the current animation (does not reset the frame counter).
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stop, _godot_object);
	}
	/**
	Return true if an animation if currently being played.
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPlaying, _godot_object);
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
	bool isCentered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCentered, _godot_object);
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
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getOffset, _godot_object);
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
	bool isFlippedH() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFlippedH, _godot_object);
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
	bool isFlippedV() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFlippedV, _godot_object);
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
	long getFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFrame, _godot_object);
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
	double getSpeedScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSpeedScale, _godot_object);
	}
	/**
	
	*/
	void _resChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_res_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	/**
	If `true` the $(D animation) is currently playing.
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
	If `true` texture will be centered. Default value: `true`.
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
	If `true` texture is flipped horizontally. Default value: `false`.
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
	If `true` texture is flipped vertically. Default value: `false`.
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
}
