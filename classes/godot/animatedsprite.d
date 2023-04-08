/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animatedsprite;
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
import godot.node2d;
import godot.spriteframes;
/**

*/
@GodotBaseClass struct AnimatedSprite
{
	package(godot) enum string _GODOT_internal_name = "AnimatedSprite";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_res_changed") GodotMethod!(void) _resChanged;
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
		@GodotName("set_playing") GodotMethod!(void, bool) setPlaying;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("set_sprite_frames") GodotMethod!(void, SpriteFrames) setSpriteFrames;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimatedSprite other) const
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
	/// Construct a new instance of AnimatedSprite.
	/// Note: use `memnew!AnimatedSprite` instead.
	static AnimatedSprite _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimatedSprite");
		if(constructor is null) return typeof(this).init;
		return cast(AnimatedSprite)(constructor());
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
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	double getSpeedScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSpeedScale, _godot_object);
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
	bool isCentered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCentered, _godot_object);
	}
	/**
	
	*/
	bool isFlippedH() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFlippedH, _godot_object);
	}
	/**
	
	*/
	bool isFlippedV() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFlippedV, _godot_object);
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
	void play(in String anim = gs!"", in bool backwards = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.play, _godot_object, anim, backwards);
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
	void setCentered(in bool centered)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCentered, _godot_object, centered);
	}
	/**
	
	*/
	void setFlipH(in bool flip_h)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlipH, _godot_object, flip_h);
	}
	/**
	
	*/
	void setFlipV(in bool flip_v)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlipV, _godot_object, flip_v);
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
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setPlaying(in bool playing)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPlaying, _godot_object, playing);
	}
	/**
	
	*/
	void setSpeedScale(in double speed_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpeedScale, _godot_object, speed_scale);
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
	
	*/
	@property bool playing()
	{
		return isPlaying();
	}
	/// ditto
	@property void playing(bool v)
	{
		setPlaying(v);
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
}
