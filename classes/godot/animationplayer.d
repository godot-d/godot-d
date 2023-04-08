/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationplayer;
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
import godot.node;
import godot.animation;
/**

*/
@GodotBaseClass struct AnimationPlayer
{
	package(godot) enum string _GODOT_internal_name = "AnimationPlayer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_animation_changed") GodotMethod!(void) _animationChanged;
		@GodotName("_node_removed") GodotMethod!(void, Node) _nodeRemoved;
		@GodotName("add_animation") GodotMethod!(GodotError, String, Animation) addAnimation;
		@GodotName("advance") GodotMethod!(void, double) advance;
		@GodotName("animation_get_next") GodotMethod!(String, String) animationGetNext;
		@GodotName("animation_set_next") GodotMethod!(void, String, String) animationSetNext;
		@GodotName("clear_caches") GodotMethod!(void) clearCaches;
		@GodotName("clear_queue") GodotMethod!(void) clearQueue;
		@GodotName("find_animation") GodotMethod!(String, Animation) findAnimation;
		@GodotName("get_animation") GodotMethod!(Animation, String) getAnimation;
		@GodotName("get_animation_list") GodotMethod!(PoolStringArray) getAnimationList;
		@GodotName("get_animation_process_mode") GodotMethod!(AnimationPlayer.AnimationProcessMode) getAnimationProcessMode;
		@GodotName("get_assigned_animation") GodotMethod!(String) getAssignedAnimation;
		@GodotName("get_autoplay") GodotMethod!(String) getAutoplay;
		@GodotName("get_blend_time") GodotMethod!(double, String, String) getBlendTime;
		@GodotName("get_current_animation") GodotMethod!(String) getCurrentAnimation;
		@GodotName("get_current_animation_length") GodotMethod!(double) getCurrentAnimationLength;
		@GodotName("get_current_animation_position") GodotMethod!(double) getCurrentAnimationPosition;
		@GodotName("get_default_blend_time") GodotMethod!(double) getDefaultBlendTime;
		@GodotName("get_method_call_mode") GodotMethod!(AnimationPlayer.AnimationMethodCallMode) getMethodCallMode;
		@GodotName("get_playing_speed") GodotMethod!(double) getPlayingSpeed;
		@GodotName("get_queue") GodotMethod!(PoolStringArray) getQueue;
		@GodotName("get_root") GodotMethod!(NodePath) getRoot;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("has_animation") GodotMethod!(bool, String) hasAnimation;
		@GodotName("is_active") GodotMethod!(bool) isActive;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("is_reset_on_save_enabled") GodotMethod!(bool) isResetOnSaveEnabled;
		@GodotName("play") GodotMethod!(void, String, double, double, bool) play;
		@GodotName("play_backwards") GodotMethod!(void, String, double) playBackwards;
		@GodotName("queue") GodotMethod!(void, String) queue;
		@GodotName("remove_animation") GodotMethod!(void, String) removeAnimation;
		@GodotName("rename_animation") GodotMethod!(void, String, String) renameAnimation;
		@GodotName("seek") GodotMethod!(void, double, bool) seek;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("set_animation_process_mode") GodotMethod!(void, long) setAnimationProcessMode;
		@GodotName("set_assigned_animation") GodotMethod!(void, String) setAssignedAnimation;
		@GodotName("set_autoplay") GodotMethod!(void, String) setAutoplay;
		@GodotName("set_blend_time") GodotMethod!(void, String, String, double) setBlendTime;
		@GodotName("set_current_animation") GodotMethod!(void, String) setCurrentAnimation;
		@GodotName("set_default_blend_time") GodotMethod!(void, double) setDefaultBlendTime;
		@GodotName("set_method_call_mode") GodotMethod!(void, long) setMethodCallMode;
		@GodotName("set_reset_on_save_enabled") GodotMethod!(void, bool) setResetOnSaveEnabled;
		@GodotName("set_root") GodotMethod!(void, NodePath) setRoot;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("stop") GodotMethod!(void, bool) stop;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationPlayer other) const
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
	/// Construct a new instance of AnimationPlayer.
	/// Note: use `memnew!AnimationPlayer` instead.
	static AnimationPlayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationPlayer");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationPlayer)(constructor());
	}
	/// 
	enum AnimationProcessMode : int
	{
		/** */
		animationProcessPhysics = 0,
		/** */
		animationProcessIdle = 1,
		/** */
		animationProcessManual = 2,
	}
	/// 
	enum AnimationMethodCallMode : int
	{
		/** */
		animationMethodCallDeferred = 0,
		/** */
		animationMethodCallImmediate = 1,
	}
	/// 
	enum Constants : int
	{
		animationProcessPhysics = 0,
		animationMethodCallDeferred = 0,
		animationProcessIdle = 1,
		animationMethodCallImmediate = 1,
		animationProcessManual = 2,
	}
	/**
	
	*/
	void _animationChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_animation_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _nodeRemoved(Node arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	GodotError addAnimation(in String name, Animation animation)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.addAnimation, _godot_object, name, animation);
	}
	/**
	
	*/
	void advance(in double delta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.advance, _godot_object, delta);
	}
	/**
	
	*/
	String animationGetNext(in String anim_from) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.animationGetNext, _godot_object, anim_from);
	}
	/**
	
	*/
	void animationSetNext(in String anim_from, in String anim_to)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.animationSetNext, _godot_object, anim_from, anim_to);
	}
	/**
	
	*/
	void clearCaches()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearCaches, _godot_object);
	}
	/**
	
	*/
	void clearQueue()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearQueue, _godot_object);
	}
	/**
	
	*/
	String findAnimation(Animation animation) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.findAnimation, _godot_object, animation);
	}
	/**
	
	*/
	Ref!Animation getAnimation(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation)(GDNativeClassBinding.getAnimation, _godot_object, name);
	}
	/**
	
	*/
	PoolStringArray getAnimationList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getAnimationList, _godot_object);
	}
	/**
	
	*/
	AnimationPlayer.AnimationProcessMode getAnimationProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationPlayer.AnimationProcessMode)(GDNativeClassBinding.getAnimationProcessMode, _godot_object);
	}
	/**
	
	*/
	String getAssignedAnimation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAssignedAnimation, _godot_object);
	}
	/**
	
	*/
	String getAutoplay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAutoplay, _godot_object);
	}
	/**
	
	*/
	double getBlendTime(in String anim_from, in String anim_to) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBlendTime, _godot_object, anim_from, anim_to);
	}
	/**
	
	*/
	String getCurrentAnimation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCurrentAnimation, _godot_object);
	}
	/**
	
	*/
	double getCurrentAnimationLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCurrentAnimationLength, _godot_object);
	}
	/**
	
	*/
	double getCurrentAnimationPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCurrentAnimationPosition, _godot_object);
	}
	/**
	
	*/
	double getDefaultBlendTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDefaultBlendTime, _godot_object);
	}
	/**
	
	*/
	AnimationPlayer.AnimationMethodCallMode getMethodCallMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationPlayer.AnimationMethodCallMode)(GDNativeClassBinding.getMethodCallMode, _godot_object);
	}
	/**
	
	*/
	double getPlayingSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPlayingSpeed, _godot_object);
	}
	/**
	
	*/
	PoolStringArray getQueue()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getQueue, _godot_object);
	}
	/**
	
	*/
	NodePath getRoot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getRoot, _godot_object);
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
	bool hasAnimation(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAnimation, _godot_object, name);
	}
	/**
	
	*/
	bool isActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActive, _godot_object);
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
	bool isResetOnSaveEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isResetOnSaveEnabled, _godot_object);
	}
	/**
	
	*/
	void play(in String name = gs!"", in double custom_blend = -1, in double custom_speed = 1, in bool from_end = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.play, _godot_object, name, custom_blend, custom_speed, from_end);
	}
	/**
	
	*/
	void playBackwards(in String name = gs!"", in double custom_blend = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.playBackwards, _godot_object, name, custom_blend);
	}
	/**
	
	*/
	void queue(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.queue, _godot_object, name);
	}
	/**
	
	*/
	void removeAnimation(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeAnimation, _godot_object, name);
	}
	/**
	
	*/
	void renameAnimation(in String name, in String newname)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameAnimation, _godot_object, name, newname);
	}
	/**
	
	*/
	void seek(in double seconds, in bool update = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.seek, _godot_object, seconds, update);
	}
	/**
	
	*/
	void setActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setActive, _godot_object, active);
	}
	/**
	
	*/
	void setAnimationProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnimationProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	void setAssignedAnimation(in String anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAssignedAnimation, _godot_object, anim);
	}
	/**
	
	*/
	void setAutoplay(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutoplay, _godot_object, name);
	}
	/**
	
	*/
	void setBlendTime(in String anim_from, in String anim_to, in double sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlendTime, _godot_object, anim_from, anim_to, sec);
	}
	/**
	
	*/
	void setCurrentAnimation(in String anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrentAnimation, _godot_object, anim);
	}
	/**
	
	*/
	void setDefaultBlendTime(in double sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultBlendTime, _godot_object, sec);
	}
	/**
	
	*/
	void setMethodCallMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMethodCallMode, _godot_object, mode);
	}
	/**
	
	*/
	void setResetOnSaveEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setResetOnSaveEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setRoot(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRoot, _godot_object, path);
	}
	/**
	
	*/
	void setSpeedScale(in double speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpeedScale, _godot_object, speed);
	}
	/**
	
	*/
	void stop(in bool reset = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object, reset);
	}
	/**
	
	*/
	@property String assignedAnimation()
	{
		return getAssignedAnimation();
	}
	/// ditto
	@property void assignedAnimation(String v)
	{
		setAssignedAnimation(v);
	}
	/**
	
	*/
	@property String autoplay()
	{
		return getAutoplay();
	}
	/// ditto
	@property void autoplay(String v)
	{
		setAutoplay(v);
	}
	/**
	
	*/
	@property String currentAnimation()
	{
		return getCurrentAnimation();
	}
	/// ditto
	@property void currentAnimation(String v)
	{
		setCurrentAnimation(v);
	}
	/**
	
	*/
	@property double currentAnimationLength()
	{
		return getCurrentAnimationLength();
	}
	/**
	
	*/
	@property double currentAnimationPosition()
	{
		return getCurrentAnimationPosition();
	}
	/**
	
	*/
	@property AnimationPlayer.AnimationMethodCallMode methodCallMode()
	{
		return getMethodCallMode();
	}
	/// ditto
	@property void methodCallMode(long v)
	{
		setMethodCallMode(v);
	}
	/**
	
	*/
	@property bool playbackActive()
	{
		return isActive();
	}
	/// ditto
	@property void playbackActive(bool v)
	{
		setActive(v);
	}
	/**
	
	*/
	@property double playbackDefaultBlendTime()
	{
		return getDefaultBlendTime();
	}
	/// ditto
	@property void playbackDefaultBlendTime(double v)
	{
		setDefaultBlendTime(v);
	}
	/**
	
	*/
	@property AnimationPlayer.AnimationProcessMode playbackProcessMode()
	{
		return getAnimationProcessMode();
	}
	/// ditto
	@property void playbackProcessMode(long v)
	{
		setAnimationProcessMode(v);
	}
	/**
	
	*/
	@property double playbackSpeed()
	{
		return getSpeedScale();
	}
	/// ditto
	@property void playbackSpeed(double v)
	{
		setSpeedScale(v);
	}
	/**
	
	*/
	@property bool resetOnSave()
	{
		return isResetOnSaveEnabled();
	}
	/// ditto
	@property void resetOnSave(bool v)
	{
		setResetOnSaveEnabled(v);
	}
	/**
	
	*/
	@property NodePath rootNode()
	{
		return getRoot();
	}
	/// ditto
	@property void rootNode(NodePath v)
	{
		setRoot(v);
	}
}
