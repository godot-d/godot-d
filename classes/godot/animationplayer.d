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
	static immutable string _GODOT_internal_name = "AnimationPlayer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	}
	/// 
	enum Constants : int
	{
		animationProcessPhysics = 0,
		animationProcessIdle = 1,
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__node_removed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_node_removed") = _GODOT__node_removed;
	/**
	
	*/
	void _nodeRemoved(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__animation_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_animation_changed") = _GODOT__animation_changed;
	/**
	
	*/
	void _animationChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_animation_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(GodotError, String, Animation) _GODOT_add_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_animation") = _GODOT_add_animation;
	/**
	Adds `animation` to the player accessible with the key `name`.
	*/
	GodotError addAnimation(StringArg0)(in StringArg0 name, Animation animation)
	{
		_GODOT_add_animation.bind("AnimationPlayer", "add_animation");
		return ptrcall!(GodotError)(_GODOT_add_animation, _godot_object, name, animation);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_animation") = _GODOT_remove_animation;
	/**
	Remove the animation with key `name`.
	*/
	void removeAnimation(StringArg0)(in StringArg0 name)
	{
		_GODOT_remove_animation.bind("AnimationPlayer", "remove_animation");
		ptrcall!(void)(_GODOT_remove_animation, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_rename_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename_animation") = _GODOT_rename_animation;
	/**
	Rename an existing animation with key `name` to `newname`.
	*/
	void renameAnimation(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 newname)
	{
		_GODOT_rename_animation.bind("AnimationPlayer", "rename_animation");
		ptrcall!(void)(_GODOT_rename_animation, _godot_object, name, newname);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_animation") = _GODOT_has_animation;
	/**
	Returns `true` if the `AnimationPlayer` stores an $(D Animation) with key `name`.
	*/
	bool hasAnimation(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_animation.bind("AnimationPlayer", "has_animation");
		return ptrcall!(bool)(_GODOT_has_animation, _godot_object, name);
	}
	package(godot) static GodotMethod!(Animation, String) _GODOT_get_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation") = _GODOT_get_animation;
	/**
	Returns the $(D Animation) with key `name` or `null` if not found.
	*/
	Ref!Animation getAnimation(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_animation.bind("AnimationPlayer", "get_animation");
		return ptrcall!(Animation)(_GODOT_get_animation, _godot_object, name);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_animation_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation_list") = _GODOT_get_animation_list;
	/**
	Returns the list of stored animation names.
	*/
	PoolStringArray getAnimationList() const
	{
		_GODOT_get_animation_list.bind("AnimationPlayer", "get_animation_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_animation_list, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_animation_set_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_set_next") = _GODOT_animation_set_next;
	/**
	Triggers the `anim_to` animation when the `anim_from` animation completes.
	*/
	void animationSetNext(StringArg0, StringArg1)(in StringArg0 anim_from, in StringArg1 anim_to)
	{
		_GODOT_animation_set_next.bind("AnimationPlayer", "animation_set_next");
		ptrcall!(void)(_GODOT_animation_set_next, _godot_object, anim_from, anim_to);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_animation_get_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_get_next") = _GODOT_animation_get_next;
	/**
	Returns the name of the next animation in the queue.
	*/
	String animationGetNext(StringArg0)(in StringArg0 anim_from) const
	{
		_GODOT_animation_get_next.bind("AnimationPlayer", "animation_get_next");
		return ptrcall!(String)(_GODOT_animation_get_next, _godot_object, anim_from);
	}
	package(godot) static GodotMethod!(void, String, String, double) _GODOT_set_blend_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_blend_time") = _GODOT_set_blend_time;
	/**
	Specify a blend time (in seconds) between two animations, referenced by their names.
	*/
	void setBlendTime(StringArg0, StringArg1)(in StringArg0 anim_from, in StringArg1 anim_to, in double sec)
	{
		_GODOT_set_blend_time.bind("AnimationPlayer", "set_blend_time");
		ptrcall!(void)(_GODOT_set_blend_time, _godot_object, anim_from, anim_to, sec);
	}
	package(godot) static GodotMethod!(double, String, String) _GODOT_get_blend_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_blend_time") = _GODOT_get_blend_time;
	/**
	Get the blend time (in seconds) between two animations, referenced by their names.
	*/
	double getBlendTime(StringArg0, StringArg1)(in StringArg0 anim_from, in StringArg1 anim_to) const
	{
		_GODOT_get_blend_time.bind("AnimationPlayer", "get_blend_time");
		return ptrcall!(double)(_GODOT_get_blend_time, _godot_object, anim_from, anim_to);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_default_blend_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_blend_time") = _GODOT_set_default_blend_time;
	/**
	
	*/
	void setDefaultBlendTime(in double sec)
	{
		_GODOT_set_default_blend_time.bind("AnimationPlayer", "set_default_blend_time");
		ptrcall!(void)(_GODOT_set_default_blend_time, _godot_object, sec);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_default_blend_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_blend_time") = _GODOT_get_default_blend_time;
	/**
	
	*/
	double getDefaultBlendTime() const
	{
		_GODOT_get_default_blend_time.bind("AnimationPlayer", "get_default_blend_time");
		return ptrcall!(double)(_GODOT_get_default_blend_time, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, double, double, bool) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	/**
	Play the animation with key `name`. Custom speed and blend times can be set. If custom speed is negative (-1), 'from_end' being true can play the
	animation backwards.
	*/
	void play(StringArg0)(in StringArg0 name = "", in double custom_blend = -1, in double custom_speed = 1, in bool from_end = false)
	{
		_GODOT_play.bind("AnimationPlayer", "play");
		ptrcall!(void)(_GODOT_play, _godot_object, name, custom_blend, custom_speed, from_end);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_play_backwards;
	package(godot) alias _GODOT_methodBindInfo(string name : "play_backwards") = _GODOT_play_backwards;
	/**
	Play the animation with key `name` in reverse.
	*/
	void playBackwards(StringArg0)(in StringArg0 name = "", in double custom_blend = -1)
	{
		_GODOT_play_backwards.bind("AnimationPlayer", "play_backwards");
		ptrcall!(void)(_GODOT_play_backwards, _godot_object, name, custom_blend);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	/**
	Stop the currently playing animation. If `reset` is `true`, the anim position is reset to `0`.
	*/
	void stop(in bool reset = true)
	{
		_GODOT_stop.bind("AnimationPlayer", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object, reset);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	/**
	Returns `true` if playing an animation.
	*/
	bool isPlaying() const
	{
		_GODOT_is_playing.bind("AnimationPlayer", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_current_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_animation") = _GODOT_set_current_animation;
	/**
	
	*/
	void setCurrentAnimation(StringArg0)(in StringArg0 anim)
	{
		_GODOT_set_current_animation.bind("AnimationPlayer", "set_current_animation");
		ptrcall!(void)(_GODOT_set_current_animation, _godot_object, anim);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_animation") = _GODOT_get_current_animation;
	/**
	
	*/
	String getCurrentAnimation() const
	{
		_GODOT_get_current_animation.bind("AnimationPlayer", "get_current_animation");
		return ptrcall!(String)(_GODOT_get_current_animation, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_assigned_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_assigned_animation") = _GODOT_set_assigned_animation;
	/**
	
	*/
	void setAssignedAnimation(StringArg0)(in StringArg0 anim)
	{
		_GODOT_set_assigned_animation.bind("AnimationPlayer", "set_assigned_animation");
		ptrcall!(void)(_GODOT_set_assigned_animation, _godot_object, anim);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_assigned_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_assigned_animation") = _GODOT_get_assigned_animation;
	/**
	
	*/
	String getAssignedAnimation() const
	{
		_GODOT_get_assigned_animation.bind("AnimationPlayer", "get_assigned_animation");
		return ptrcall!(String)(_GODOT_get_assigned_animation, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_queue;
	package(godot) alias _GODOT_methodBindInfo(string name : "queue") = _GODOT_queue;
	/**
	Queue an animation for playback once the current one is done.
	*/
	void queue(StringArg0)(in StringArg0 name)
	{
		_GODOT_queue.bind("AnimationPlayer", "queue");
		ptrcall!(void)(_GODOT_queue, _godot_object, name);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_queue;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_queue") = _GODOT_clear_queue;
	/**
	Clears all queued, unplayed animations.
	*/
	void clearQueue()
	{
		_GODOT_clear_queue.bind("AnimationPlayer", "clear_queue");
		ptrcall!(void)(_GODOT_clear_queue, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_active") = _GODOT_set_active;
	/**
	
	*/
	void setActive(in bool active)
	{
		_GODOT_set_active.bind("AnimationPlayer", "set_active");
		ptrcall!(void)(_GODOT_set_active, _godot_object, active);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_active") = _GODOT_is_active;
	/**
	
	*/
	bool isActive() const
	{
		_GODOT_is_active.bind("AnimationPlayer", "is_active");
		return ptrcall!(bool)(_GODOT_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed_scale") = _GODOT_set_speed_scale;
	/**
	
	*/
	void setSpeedScale(in double speed)
	{
		_GODOT_set_speed_scale.bind("AnimationPlayer", "set_speed_scale");
		ptrcall!(void)(_GODOT_set_speed_scale, _godot_object, speed);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed_scale") = _GODOT_get_speed_scale;
	/**
	
	*/
	double getSpeedScale() const
	{
		_GODOT_get_speed_scale.bind("AnimationPlayer", "get_speed_scale");
		return ptrcall!(double)(_GODOT_get_speed_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autoplay") = _GODOT_set_autoplay;
	/**
	
	*/
	void setAutoplay(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_autoplay.bind("AnimationPlayer", "set_autoplay");
		ptrcall!(void)(_GODOT_set_autoplay, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_autoplay") = _GODOT_get_autoplay;
	/**
	
	*/
	String getAutoplay() const
	{
		_GODOT_get_autoplay.bind("AnimationPlayer", "get_autoplay");
		return ptrcall!(String)(_GODOT_get_autoplay, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_root") = _GODOT_set_root;
	/**
	
	*/
	void setRoot(NodePathArg0)(in NodePathArg0 path)
	{
		_GODOT_set_root.bind("AnimationPlayer", "set_root");
		ptrcall!(void)(_GODOT_set_root, _godot_object, path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_root") = _GODOT_get_root;
	/**
	
	*/
	NodePath getRoot() const
	{
		_GODOT_get_root.bind("AnimationPlayer", "get_root");
		return ptrcall!(NodePath)(_GODOT_get_root, _godot_object);
	}
	package(godot) static GodotMethod!(String, Animation) _GODOT_find_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_animation") = _GODOT_find_animation;
	/**
	Returns the name of `animation` or empty string if not found.
	*/
	String findAnimation(Animation animation) const
	{
		_GODOT_find_animation.bind("AnimationPlayer", "find_animation");
		return ptrcall!(String)(_GODOT_find_animation, _godot_object, animation);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_caches;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_caches") = _GODOT_clear_caches;
	/**
	`AnimationPlayer` caches animated nodes. It may not notice if a node disappears, so clear_caches forces it to update the cache again.
	*/
	void clearCaches()
	{
		_GODOT_clear_caches.bind("AnimationPlayer", "clear_caches");
		ptrcall!(void)(_GODOT_clear_caches, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_animation_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_animation_process_mode") = _GODOT_set_animation_process_mode;
	/**
	
	*/
	void setAnimationProcessMode(in long mode)
	{
		_GODOT_set_animation_process_mode.bind("AnimationPlayer", "set_animation_process_mode");
		ptrcall!(void)(_GODOT_set_animation_process_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(AnimationPlayer.AnimationProcessMode) _GODOT_get_animation_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation_process_mode") = _GODOT_get_animation_process_mode;
	/**
	
	*/
	AnimationPlayer.AnimationProcessMode getAnimationProcessMode() const
	{
		_GODOT_get_animation_process_mode.bind("AnimationPlayer", "get_animation_process_mode");
		return ptrcall!(AnimationPlayer.AnimationProcessMode)(_GODOT_get_animation_process_mode, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_current_animation_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_animation_position") = _GODOT_get_current_animation_position;
	/**
	
	*/
	double getCurrentAnimationPosition() const
	{
		_GODOT_get_current_animation_position.bind("AnimationPlayer", "get_current_animation_position");
		return ptrcall!(double)(_GODOT_get_current_animation_position, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_current_animation_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_animation_length") = _GODOT_get_current_animation_length;
	/**
	
	*/
	double getCurrentAnimationLength() const
	{
		_GODOT_get_current_animation_length.bind("AnimationPlayer", "get_current_animation_length");
		return ptrcall!(double)(_GODOT_get_current_animation_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, double, bool) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	/**
	Seek the animation to the `seconds` point in time (in seconds). If `update` is `true`, the animation updates too, otherwise it updates at process time.
	*/
	void seek(in double seconds, in bool update = false)
	{
		_GODOT_seek.bind("AnimationPlayer", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, seconds, update);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_advance;
	package(godot) alias _GODOT_methodBindInfo(string name : "advance") = _GODOT_advance;
	/**
	Shifts position in the animation timeline. Delta is the time in seconds to shift.
	*/
	void advance(in double delta)
	{
		_GODOT_advance.bind("AnimationPlayer", "advance");
		ptrcall!(void)(_GODOT_advance, _godot_object, delta);
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
	The process notification in which to update animations. Default value: $(D animationProcessIdle).
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
