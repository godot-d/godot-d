/**
Container and player of $(D Animation) resources.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationplayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node;
import godot.animation;
/**
Container and player of $(D Animation) resources.

An animation player is used for general purpose playback of $(D Animation) resources. It contains a dictionary of animations (referenced by name) and custom blend times between their transitions. Additionally, animations can be played and blended in different channels.
*/
@GodotBaseClass struct AnimationPlayer
{
	enum string _GODOT_internal_name = "AnimationPlayer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_node_removed") GodotMethod!(void, GodotObject) _nodeRemoved;
		@GodotName("_animation_changed") GodotMethod!(void) _animationChanged;
		@GodotName("add_animation") GodotMethod!(GodotError, String, Animation) addAnimation;
		@GodotName("remove_animation") GodotMethod!(void, String) removeAnimation;
		@GodotName("rename_animation") GodotMethod!(void, String, String) renameAnimation;
		@GodotName("has_animation") GodotMethod!(bool, String) hasAnimation;
		@GodotName("get_animation") GodotMethod!(Animation, String) getAnimation;
		@GodotName("get_animation_list") GodotMethod!(PoolStringArray) getAnimationList;
		@GodotName("animation_set_next") GodotMethod!(void, String, String) animationSetNext;
		@GodotName("animation_get_next") GodotMethod!(String, String) animationGetNext;
		@GodotName("set_blend_time") GodotMethod!(void, String, String, double) setBlendTime;
		@GodotName("get_blend_time") GodotMethod!(double, String, String) getBlendTime;
		@GodotName("set_default_blend_time") GodotMethod!(void, double) setDefaultBlendTime;
		@GodotName("get_default_blend_time") GodotMethod!(double) getDefaultBlendTime;
		@GodotName("play") GodotMethod!(void, String, double, double, bool) play;
		@GodotName("play_backwards") GodotMethod!(void, String, double) playBackwards;
		@GodotName("stop") GodotMethod!(void, bool) stop;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("set_current_animation") GodotMethod!(void, String) setCurrentAnimation;
		@GodotName("get_current_animation") GodotMethod!(String) getCurrentAnimation;
		@GodotName("set_assigned_animation") GodotMethod!(void, String) setAssignedAnimation;
		@GodotName("get_assigned_animation") GodotMethod!(String) getAssignedAnimation;
		@GodotName("queue") GodotMethod!(void, String) queue;
		@GodotName("clear_queue") GodotMethod!(void) clearQueue;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("is_active") GodotMethod!(bool) isActive;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("get_playing_speed") GodotMethod!(double) getPlayingSpeed;
		@GodotName("set_autoplay") GodotMethod!(void, String) setAutoplay;
		@GodotName("get_autoplay") GodotMethod!(String) getAutoplay;
		@GodotName("set_root") GodotMethod!(void, NodePath) setRoot;
		@GodotName("get_root") GodotMethod!(NodePath) getRoot;
		@GodotName("find_animation") GodotMethod!(String, Animation) findAnimation;
		@GodotName("clear_caches") GodotMethod!(void) clearCaches;
		@GodotName("set_animation_process_mode") GodotMethod!(void, long) setAnimationProcessMode;
		@GodotName("get_animation_process_mode") GodotMethod!(AnimationPlayer.AnimationProcessMode) getAnimationProcessMode;
		@GodotName("get_current_animation_position") GodotMethod!(double) getCurrentAnimationPosition;
		@GodotName("get_current_animation_length") GodotMethod!(double) getCurrentAnimationLength;
		@GodotName("seek") GodotMethod!(void, double, bool) seek;
		@GodotName("advance") GodotMethod!(void, double) advance;
	}
	bool opEquals(in AnimationPlayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationPlayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimationPlayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationPlayer");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationPlayer)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum AnimationProcessMode : int
	{
		/**
		Process animation during the physics process. This is especially useful when animating physics bodies.
		*/
		animationProcessPhysics = 0,
		/**
		Process animation during the idle process.
		*/
		animationProcessIdle = 1,
		/**
		Do not process animation. Use the 'advance' method to process the animation manually.
		*/
		animationProcessManual = 2,
	}
	/// 
	enum Constants : int
	{
		animationProcessPhysics = 0,
		animationProcessIdle = 1,
		animationProcessManual = 2,
	}
	/**
	
	*/
	void _nodeRemoved(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _animationChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_animation_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds `animation` to the player accessible with the key `name`.
	*/
	GodotError addAnimation(StringArg0)(in StringArg0 name, Animation animation)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.addAnimation, _godot_object, name, animation);
	}
	/**
	Remove the animation with key `name`.
	*/
	void removeAnimation(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeAnimation, _godot_object, name);
	}
	/**
	Rename an existing animation with key `name` to `newname`.
	*/
	void renameAnimation(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 newname)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameAnimation, _godot_object, name, newname);
	}
	/**
	Returns `true` if the `AnimationPlayer` stores an $(D Animation) with key `name`.
	*/
	bool hasAnimation(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasAnimation, _godot_object, name);
	}
	/**
	Returns the $(D Animation) with key `name` or `null` if not found.
	*/
	Ref!Animation getAnimation(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation)(_classBinding.getAnimation, _godot_object, name);
	}
	/**
	Returns the list of stored animation names.
	*/
	PoolStringArray getAnimationList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getAnimationList, _godot_object);
	}
	/**
	Triggers the `anim_to` animation when the `anim_from` animation completes.
	*/
	void animationSetNext(StringArg0, StringArg1)(in StringArg0 anim_from, in StringArg1 anim_to)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.animationSetNext, _godot_object, anim_from, anim_to);
	}
	/**
	Returns the name of the next animation in the queue.
	*/
	String animationGetNext(StringArg0)(in StringArg0 anim_from) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.animationGetNext, _godot_object, anim_from);
	}
	/**
	Specify a blend time (in seconds) between two animations, referenced by their names.
	*/
	void setBlendTime(StringArg0, StringArg1)(in StringArg0 anim_from, in StringArg1 anim_to, in double sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBlendTime, _godot_object, anim_from, anim_to, sec);
	}
	/**
	Get the blend time (in seconds) between two animations, referenced by their names.
	*/
	double getBlendTime(StringArg0, StringArg1)(in StringArg0 anim_from, in StringArg1 anim_to) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBlendTime, _godot_object, anim_from, anim_to);
	}
	/**
	
	*/
	void setDefaultBlendTime(in double sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultBlendTime, _godot_object, sec);
	}
	/**
	
	*/
	double getDefaultBlendTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDefaultBlendTime, _godot_object);
	}
	/**
	Play the animation with key `name`. Custom speed and blend times can be set. If custom speed is negative (-1), 'from_end' being true can play the animation backwards.
	*/
	void play(StringArg0)(in StringArg0 name = "", in double custom_blend = -1, in double custom_speed = 1, in bool from_end = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.play, _godot_object, name, custom_blend, custom_speed, from_end);
	}
	/**
	Play the animation with key `name` in reverse.
	*/
	void playBackwards(StringArg0)(in StringArg0 name = "", in double custom_blend = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.playBackwards, _godot_object, name, custom_blend);
	}
	/**
	Stop the currently playing animation. If `reset` is `true`, the anim position is reset to `0`.
	*/
	void stop(in bool reset = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stop, _godot_object, reset);
	}
	/**
	Returns `true` if playing an animation.
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPlaying, _godot_object);
	}
	/**
	
	*/
	void setCurrentAnimation(StringArg0)(in StringArg0 anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCurrentAnimation, _godot_object, anim);
	}
	/**
	
	*/
	String getCurrentAnimation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getCurrentAnimation, _godot_object);
	}
	/**
	
	*/
	void setAssignedAnimation(StringArg0)(in StringArg0 anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAssignedAnimation, _godot_object, anim);
	}
	/**
	
	*/
	String getAssignedAnimation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getAssignedAnimation, _godot_object);
	}
	/**
	Queue an animation for playback once the current one is done.
	*/
	void queue(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.queue, _godot_object, name);
	}
	/**
	Clears all queued, unplayed animations.
	*/
	void clearQueue()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearQueue, _godot_object);
	}
	/**
	
	*/
	void setActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setActive, _godot_object, active);
	}
	/**
	
	*/
	bool isActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isActive, _godot_object);
	}
	/**
	
	*/
	void setSpeedScale(in double speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpeedScale, _godot_object, speed);
	}
	/**
	
	*/
	double getSpeedScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSpeedScale, _godot_object);
	}
	/**
	Get the actual playing speed of current animation or 0 if not playing. This speed is the `playback_speed` property multiplied by `custom_speed` argument specified when calling the `play` method.
	*/
	double getPlayingSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPlayingSpeed, _godot_object);
	}
	/**
	
	*/
	void setAutoplay(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutoplay, _godot_object, name);
	}
	/**
	
	*/
	String getAutoplay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getAutoplay, _godot_object);
	}
	/**
	
	*/
	void setRoot(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRoot, _godot_object, path);
	}
	/**
	
	*/
	NodePath getRoot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getRoot, _godot_object);
	}
	/**
	Returns the name of `animation` or empty string if not found.
	*/
	String findAnimation(Animation animation) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.findAnimation, _godot_object, animation);
	}
	/**
	`AnimationPlayer` caches animated nodes. It may not notice if a node disappears, so clear_caches forces it to update the cache again.
	*/
	void clearCaches()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearCaches, _godot_object);
	}
	/**
	
	*/
	void setAnimationProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnimationProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	AnimationPlayer.AnimationProcessMode getAnimationProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationPlayer.AnimationProcessMode)(_classBinding.getAnimationProcessMode, _godot_object);
	}
	/**
	
	*/
	double getCurrentAnimationPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getCurrentAnimationPosition, _godot_object);
	}
	/**
	
	*/
	double getCurrentAnimationLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getCurrentAnimationLength, _godot_object);
	}
	/**
	Seek the animation to the `seconds` point in time (in seconds). If `update` is `true`, the animation updates too, otherwise it updates at process time.
	*/
	void seek(in double seconds, in bool update = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.seek, _godot_object, seconds, update);
	}
	/**
	Shifts position in the animation timeline. Delta is the time in seconds to shift.
	*/
	void advance(in double delta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.advance, _godot_object, delta);
	}
	/**
	The node from which node path references will travel. Default value: `".."`.
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
	/**
	The name of the current animation, "" if not playing anything. When being set, does not restart the animation. See also $(D play). Default value: `""`.
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
	If playing, the current animation; otherwise, the animation last played. When set, would change the animation, but would not play it unless currently playing. See also $(D currentAnimation).
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
	The name of the animation to play when the scene loads. Default value: `""`.
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
	The length (in seconds) of the currently being played animation.
	*/
	@property double currentAnimationLength()
	{
		return getCurrentAnimationLength();
	}
	/**
	The position (in seconds) of the currently playing animation.
	*/
	@property double currentAnimationPosition()
	{
		return getCurrentAnimationPosition();
	}
	/**
	The process notification in which to update animations. Default value: `ANIMATION_PROCESS_IDLE`.
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
	The default time in which to blend animations. Ranges from 0 to 4096 with 0.01 precision. Default value: `0`.
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
	If `true`, updates animations in response to process-related notifications. Default value: `true`.
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
	The speed scaling ratio. For instance, if this value is 1 then the animation plays at normal speed. If it's 0.5 then it plays at half speed. If it's 2 then it plays at double speed. Default value: `1`.
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
}
