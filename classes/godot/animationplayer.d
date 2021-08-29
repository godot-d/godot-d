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
Container and player of $(D Animation) resources.

An animation player is used for general-purpose playback of $(D Animation) resources. It contains a dictionary of animations (referenced by name) and custom blend times between their transitions. Additionally, animations can be played and blended in different channels.
$(D AnimationPlayer) is more suited than $(D Tween) for animations where you know the final values in advance. For example, fading a screen in and out is more easily done with an $(D AnimationPlayer) node thanks to the animation tools provided by the editor. That particular example can also be implemented with a $(D Tween) node, but it requires doing everything by code.
Updating the target properties of animations occurs at process time.
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
		Do not process animation. Use $(D advance) to process the animation manually.
		*/
		animationProcessManual = 2,
	}
	/// 
	enum AnimationMethodCallMode : int
	{
		/**
		Batch method calls during the animation process, then do the calls after events are processed. This avoids bugs involving deleting nodes or modifying the AnimationPlayer while playing.
		*/
		animationMethodCallDeferred = 0,
		/**
		Make method calls immediately when reached in the animation.
		*/
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
	Adds `animation` to the player accessible with the key `name`.
	*/
	GodotError addAnimation(in String name, Animation animation)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.addAnimation, _godot_object, name, animation);
	}
	/**
	Shifts position in the animation timeline and immediately updates the animation. `delta` is the time in seconds to shift. Events between the current frame and `delta` are handled.
	*/
	void advance(in double delta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.advance, _godot_object, delta);
	}
	/**
	Returns the name of the next animation in the queue.
	*/
	String animationGetNext(in String anim_from) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.animationGetNext, _godot_object, anim_from);
	}
	/**
	Triggers the `anim_to` animation when the `anim_from` animation completes.
	*/
	void animationSetNext(in String anim_from, in String anim_to)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.animationSetNext, _godot_object, anim_from, anim_to);
	}
	/**
	$(D AnimationPlayer) caches animated nodes. It may not notice if a node disappears; $(D clearCaches) forces it to update the cache again.
	*/
	void clearCaches()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearCaches, _godot_object);
	}
	/**
	Clears all queued, unplayed animations.
	*/
	void clearQueue()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearQueue, _godot_object);
	}
	/**
	Returns the name of `animation` or an empty string if not found.
	*/
	String findAnimation(Animation animation) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.findAnimation, _godot_object, animation);
	}
	/**
	Returns the $(D Animation) with key `name` or `null` if not found.
	*/
	Ref!Animation getAnimation(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation)(GDNativeClassBinding.getAnimation, _godot_object, name);
	}
	/**
	Returns the list of stored animation names.
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
	Gets the blend time (in seconds) between two animations, referenced by their names.
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
	Gets the actual playing speed of current animation or 0 if not playing. This speed is the $(D playbackSpeed) property multiplied by `custom_speed` argument specified when calling the $(D play) method.
	*/
	double getPlayingSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPlayingSpeed, _godot_object);
	}
	/**
	Returns a list of the animation names that are currently queued to play.
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
	Returns `true` if the $(D AnimationPlayer) stores an $(D Animation) with key `name`.
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
	Returns `true` if playing an animation.
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPlaying, _godot_object);
	}
	/**
	Plays the animation with key `name`. Custom blend times and speed can be set. If `custom_speed` is negative and `from_end` is `true`, the animation will play backwards (which is equivalent to calling $(D playBackwards)).
	The $(D AnimationPlayer) keeps track of its current or last played animation with $(D assignedAnimation). If this method is called with that same animation `name`, or with no `name` parameter, the assigned animation will resume playing if it was paused, or restart if it was stopped (see $(D stop) for both pause and stop). If the animation was already playing, it will keep playing.
	$(B Note:) The animation will be updated the next time the $(D AnimationPlayer) is processed. If other variables are updated at the same time this is called, they may be updated too early. To perform the update immediately, call `advance(0)`.
	*/
	void play(in String name = gs!"", in double custom_blend = -1, in double custom_speed = 1, in bool from_end = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.play, _godot_object, name, custom_blend, custom_speed, from_end);
	}
	/**
	Plays the animation with key `name` in reverse.
	This method is a shorthand for $(D play) with `custom_speed = -1.0` and `from_end = true`, so see its description for more information.
	*/
	void playBackwards(in String name = gs!"", in double custom_blend = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.playBackwards, _godot_object, name, custom_blend);
	}
	/**
	Queues an animation for playback once the current one is done.
	$(B Note:) If a looped animation is currently playing, the queued animation will never play unless the looped animation is stopped somehow.
	*/
	void queue(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.queue, _godot_object, name);
	}
	/**
	Removes the animation with key `name`.
	*/
	void removeAnimation(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeAnimation, _godot_object, name);
	}
	/**
	Renames an existing animation with key `name` to `newname`.
	*/
	void renameAnimation(in String name, in String newname)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameAnimation, _godot_object, name, newname);
	}
	/**
	Seeks the animation to the `seconds` point in time (in seconds). If `update` is `true`, the animation updates too, otherwise it updates at process time. Events between the current frame and `seconds` are skipped.
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
	Specifies a blend time (in seconds) between two animations, referenced by their names.
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
	Stops or pauses the currently playing animation. If `reset` is `true`, the animation position is reset to `0` and the playback speed is reset to `1.0`.
	If `reset` is `false`, the $(D currentAnimationPosition) will be kept and calling $(D play) or $(D playBackwards) without arguments or with the same animation name as $(D assignedAnimation) will resume the animation.
	*/
	void stop(in bool reset = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object, reset);
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
	The name of the animation to play when the scene loads.
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
	The name of the currently playing animation. If no animation is playing, the property's value is an empty string. Changing this value does not restart the animation. See $(D play) for more information on playing animations.
	$(B Note): while this property appears in the inspector, it's not meant to be edited, and it's not saved in the scene. This property is mainly used to get the currently playing animation, and internally for animation playback tracks. For more information, see $(D Animation).
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
	The call mode to use for Call Method tracks.
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
	If `true`, updates animations in response to process-related notifications.
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
	The default time in which to blend animations. Ranges from 0 to 4096 with 0.01 precision.
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
	The process notification in which to update animations.
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
	The speed scaling ratio. For instance, if this value is 1, then the animation plays at normal speed. If it's 0.5, then it plays at half speed. If it's 2, then it plays at double speed.
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
	The node from which node path references will travel.
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
