/**
2D sprite node in 3D world, that can use multiple 2D textures for animation.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animatedsprite3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spritebase3d;
import godot.spriteframes;
/**
2D sprite node in 3D world, that can use multiple 2D textures for animation.

Animations are created using a $(D SpriteFrames) resource, which can be configured in the editor via the SpriteFrames panel.
*/
@GodotBaseClass struct AnimatedSprite3D
{
	static immutable string _GODOT_internal_name = "AnimatedSprite3D";
public:
@nogc nothrow:
	union { godot_object _godot_object; SpriteBase3D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AnimatedSprite3D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimatedSprite3D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimatedSprite3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimatedSprite3D");
		if(constructor is null) return typeof(this).init;
		return cast(AnimatedSprite3D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, SpriteFrames) _GODOT_set_sprite_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sprite_frames") = _GODOT_set_sprite_frames;
	/**
	
	*/
	void setSpriteFrames(SpriteFrames sprite_frames)
	{
		_GODOT_set_sprite_frames.bind("AnimatedSprite3D", "set_sprite_frames");
		ptrcall!(void)(_GODOT_set_sprite_frames, _godot_object, sprite_frames);
	}
	package(godot) static GodotMethod!(SpriteFrames) _GODOT_get_sprite_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sprite_frames") = _GODOT_get_sprite_frames;
	/**
	
	*/
	Ref!SpriteFrames getSpriteFrames() const
	{
		_GODOT_get_sprite_frames.bind("AnimatedSprite3D", "get_sprite_frames");
		return ptrcall!(SpriteFrames)(_GODOT_get_sprite_frames, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_animation") = _GODOT_set_animation;
	/**
	
	*/
	void setAnimation(StringArg0)(in StringArg0 animation)
	{
		_GODOT_set_animation.bind("AnimatedSprite3D", "set_animation");
		ptrcall!(void)(_GODOT_set_animation, _godot_object, animation);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation") = _GODOT_get_animation;
	/**
	
	*/
	String getAnimation() const
	{
		_GODOT_get_animation.bind("AnimatedSprite3D", "get_animation");
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
		_GODOT_play.bind("AnimatedSprite3D", "play");
		ptrcall!(void)(_GODOT_play, _godot_object, anim);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	/**
	Stop the current animation (does not reset the frame counter).
	*/
	void stop()
	{
		_GODOT_stop.bind("AnimatedSprite3D", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	/**
	Return true if an animation if currently being played.
	*/
	bool isPlaying() const
	{
		_GODOT_is_playing.bind("AnimatedSprite3D", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_frame") = _GODOT_set_frame;
	/**
	
	*/
	void setFrame(in long frame)
	{
		_GODOT_set_frame.bind("AnimatedSprite3D", "set_frame");
		ptrcall!(void)(_GODOT_set_frame, _godot_object, frame);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame") = _GODOT_get_frame;
	/**
	
	*/
	long getFrame() const
	{
		_GODOT_get_frame.bind("AnimatedSprite3D", "get_frame");
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
}
