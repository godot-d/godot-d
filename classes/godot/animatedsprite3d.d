/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animatedsprite3d;
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
import godot.spritebase3d;
import godot.spriteframes;
/**

*/
@GodotBaseClass struct AnimatedSprite3D
{
	package(godot) enum string _GODOT_internal_name = "AnimatedSprite3D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ SpriteBase3D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in AnimatedSprite3D other) const
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
	/// Construct a new instance of AnimatedSprite3D.
	/// Note: use `memnew!AnimatedSprite3D` instead.
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
		return ptrcall!(String)(GDNativeClassBinding.getAnimation, _godot_object);
	}
	/**
	
	*/
	long getFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFrame, _godot_object);
	}
	/**
	
	*/
	Ref!SpriteFrames getSpriteFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpriteFrames)(GDNativeClassBinding.getSpriteFrames, _godot_object);
	}
	/**
	
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPlaying, _godot_object);
	}
	/**
	
	*/
	void play(in String anim = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.play, _godot_object, anim);
	}
	/**
	
	*/
	void setAnimation(in String animation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnimation, _godot_object, animation);
	}
	/**
	
	*/
	void setFrame(in long frame)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrame, _godot_object, frame);
	}
	/**
	
	*/
	void setSpriteFrames(SpriteFrames sprite_frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpriteFrames, _godot_object, sprite_frames);
	}
	/**
	
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
	}
	/**
	
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
