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
	static immutable string _GODOT_internal_name = "AnimatedSprite";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, SpriteFrames) _GODOT_set_sprite_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sprite_frames") = _GODOT_set_sprite_frames;
	/**
	
	*/
	void setSpriteFrames(SpriteFrames sprite_frames)
	{
		_GODOT_set_sprite_frames.bind("AnimatedSprite", "set_sprite_frames");
		ptrcall!(void)(_GODOT_set_sprite_frames, _godot_object, sprite_frames);
	}
	package(godot) static GodotMethod!(SpriteFrames) _GODOT_get_sprite_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sprite_frames") = _GODOT_get_sprite_frames;
	/**
	
	*/
	Ref!SpriteFrames getSpriteFrames() const
	{
		_GODOT_get_sprite_frames.bind("AnimatedSprite", "get_sprite_frames");
		return ptrcall!(SpriteFrames)(_GODOT_get_sprite_frames, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_animation") = _GODOT_set_animation;
	/**
	
	*/
	void setAnimation(StringArg0)(in StringArg0 animation)
	{
		_GODOT_set_animation.bind("AnimatedSprite", "set_animation");
		ptrcall!(void)(_GODOT_set_animation, _godot_object, animation);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation") = _GODOT_get_animation;
	/**
	
	*/
	String getAnimation() const
	{
		_GODOT_get_animation.bind("AnimatedSprite", "get_animation");
		return ptrcall!(String)(_GODOT_get_animation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__set_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_playing") = _GODOT__set_playing;
	/**
	
	*/
	void _setPlaying(in bool playing)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(playing);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT__is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "_is_playing") = _GODOT__is_playing;
	/**
	
	*/
	bool _isPlaying() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_playing");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	/**
	Play the animation set in parameter. If no parameter is provided, the current animation is played.
	*/
	void play(StringArg0)(in StringArg0 anim = "")
	{
		_GODOT_play.bind("AnimatedSprite", "play");
		ptrcall!(void)(_GODOT_play, _godot_object, anim);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	/**
	Stop the current animation (does not reset the frame counter).
	*/
	void stop()
	{
		_GODOT_stop.bind("AnimatedSprite", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	/**
	Return true if an animation if currently being played.
	*/
	bool isPlaying() const
	{
		_GODOT_is_playing.bind("AnimatedSprite", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_centered") = _GODOT_set_centered;
	/**
	
	*/
	void setCentered(in bool centered)
	{
		_GODOT_set_centered.bind("AnimatedSprite", "set_centered");
		ptrcall!(void)(_GODOT_set_centered, _godot_object, centered);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_centered") = _GODOT_is_centered;
	/**
	
	*/
	bool isCentered() const
	{
		_GODOT_is_centered.bind("AnimatedSprite", "is_centered");
		return ptrcall!(bool)(_GODOT_is_centered, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("AnimatedSprite", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	/**
	
	*/
	Vector2 getOffset() const
	{
		_GODOT_get_offset.bind("AnimatedSprite", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flip_h;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flip_h") = _GODOT_set_flip_h;
	/**
	
	*/
	void setFlipH(in bool flip_h)
	{
		_GODOT_set_flip_h.bind("AnimatedSprite", "set_flip_h");
		ptrcall!(void)(_GODOT_set_flip_h, _godot_object, flip_h);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flipped_h;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flipped_h") = _GODOT_is_flipped_h;
	/**
	
	*/
	bool isFlippedH() const
	{
		_GODOT_is_flipped_h.bind("AnimatedSprite", "is_flipped_h");
		return ptrcall!(bool)(_GODOT_is_flipped_h, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flip_v;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flip_v") = _GODOT_set_flip_v;
	/**
	
	*/
	void setFlipV(in bool flip_v)
	{
		_GODOT_set_flip_v.bind("AnimatedSprite", "set_flip_v");
		ptrcall!(void)(_GODOT_set_flip_v, _godot_object, flip_v);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flipped_v;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flipped_v") = _GODOT_is_flipped_v;
	/**
	
	*/
	bool isFlippedV() const
	{
		_GODOT_is_flipped_v.bind("AnimatedSprite", "is_flipped_v");
		return ptrcall!(bool)(_GODOT_is_flipped_v, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_frame") = _GODOT_set_frame;
	/**
	
	*/
	void setFrame(in long frame)
	{
		_GODOT_set_frame.bind("AnimatedSprite", "set_frame");
		ptrcall!(void)(_GODOT_set_frame, _godot_object, frame);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame") = _GODOT_get_frame;
	/**
	
	*/
	long getFrame() const
	{
		_GODOT_get_frame.bind("AnimatedSprite", "get_frame");
		return ptrcall!(long)(_GODOT_get_frame, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__res_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_res_changed") = _GODOT__res_changed;
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
