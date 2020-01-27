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
	enum string _GODOT_internal_name = "AnimatedSprite3D";
public:
@nogc nothrow:
	union { godot_object _godot_object; SpriteBase3D _GODOT_base; }
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
		@GodotName("get_sprite_frames") GodotMethod!(SpriteFrames) getSpriteFrames;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("play") GodotMethod!(void, String) play;
		@GodotName("set_animation") GodotMethod!(void, String) setAnimation;
		@GodotName("set_frame") GodotMethod!(void, long) setFrame;
		@GodotName("set_sprite_frames") GodotMethod!(void, SpriteFrames) setSpriteFrames;
		@GodotName("stop") GodotMethod!(void) stop;
	}
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
	Ref!SpriteFrames getSpriteFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpriteFrames)(_classBinding.getSpriteFrames, _godot_object);
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
	Plays the animation named `anim`. If no `anim` is provided, the current animation is played.
	*/
	void play(in String anim = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.play, _godot_object, anim);
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
	void setFrame(in long frame)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFrame, _godot_object, frame);
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
}
