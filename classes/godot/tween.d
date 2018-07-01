/**
Smoothly animates a node's properties over time.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.tween;
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
/**
Smoothly animates a node's properties over time.

Tweens are useful for animations requiring a numerical property to be interpolated over a range of values. The name *tween* comes from *in-betweening*, an animation technique where you specify *keyframes* and the computer interpolates the frames that appear between them.
Here is a brief usage example that causes a 2D node to move smoothly between two positions:


var tween = get_node("Tween")
tween.interpolate_property($Node2D, "position",
              Vector2(0, 0), Vector2(100, 100), 1,
              Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
tween.start()


Many methods require a property name, such as "position" above. You can find the correct property name by hovering over the property in the Inspector.
Many of the methods accept `trans_type` and `ease_type`. The first accepts an $(D transitiontype) constant, and refers to the way the timing of the animation is handled (see `http://easings.net/` for some examples). The second accepts an $(D easetype) constant, and controls the where `trans_type` is applied to the interpolation (in the beginning, the end, or both). If you don't know which transition and easing to pick, you can try different $(D transitiontype) constants with $(D easeInOut), and use the one that looks best.
*/
@GodotBaseClass struct Tween
{
	static immutable string _GODOT_internal_name = "Tween";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Tween other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Tween opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Tween _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Tween");
		if(constructor is null) return typeof(this).init;
		return cast(Tween)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum TransitionType : int
	{
		/**
		The animation is interpolated linearly.
		*/
		transLinear = 0,
		/**
		The animation is interpolated using a sine function.
		*/
		transSine = 1,
		/**
		The animation is interpolated with a quintic (to the power of 5) function.
		*/
		transQuint = 2,
		/**
		The animation is interpolated with a quartic (to the power of 4) function.
		*/
		transQuart = 3,
		/**
		The animation is interpolated with a quadratic (to the power of 2) function.
		*/
		transQuad = 4,
		/**
		The animation is interpolated with an exponential (to the power of x) function.
		*/
		transExpo = 5,
		/**
		The animation is interpolated with elasticity, wiggling around the edges.
		*/
		transElastic = 6,
		/**
		The animation is interpolated with a cubic (to the power of 3) function.
		*/
		transCubic = 7,
		/**
		The animation is interpolated with a function using square roots.
		*/
		transCirc = 8,
		/**
		The animation is interpolated by bouncing at the end.
		*/
		transBounce = 9,
		/**
		The animation is interpolated backing out at ends.
		*/
		transBack = 10,
	}
	/// 
	enum TweenProcessMode : int
	{
		/**
		The tween updates with the `_physics_process` callback.
		*/
		tweenProcessPhysics = 0,
		/**
		The tween updates with the `_process` callback.
		*/
		tweenProcessIdle = 1,
	}
	/// 
	enum EaseType : int
	{
		/**
		The interpolation starts slowly and speeds up towards the end.
		*/
		easeIn = 0,
		/**
		The interpolation starts quickly and slows down towards the end.
		*/
		easeOut = 1,
		/**
		A combination of EASE_IN and EASE_OUT. The interpolation is slowest at both ends.
		*/
		easeInOut = 2,
		/**
		A combination of EASE_IN and EASE_OUT. The interpolation is fastest at both ends.
		*/
		easeOutIn = 3,
	}
	/// 
	enum Constants : int
	{
		easeIn = 0,
		tweenProcessPhysics = 0,
		transLinear = 0,
		easeOut = 1,
		transSine = 1,
		tweenProcessIdle = 1,
		transQuint = 2,
		easeInOut = 2,
		transQuart = 3,
		easeOutIn = 3,
		transQuad = 4,
		transExpo = 5,
		transElastic = 6,
		transCubic = 7,
		transCirc = 8,
		transBounce = 9,
		transBack = 10,
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_active") = _GODOT_is_active;
	/**
	Returns `true` if any tweens are currently running. Note that this method doesn't consider tweens that have ended.
	*/
	bool isActive() const
	{
		_GODOT_is_active.bind("Tween", "is_active");
		return ptrcall!(bool)(_GODOT_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_active") = _GODOT_set_active;
	/**
	Activates/deactivates the tween. See also $(D stopAll) and $(D resumeAll).
	*/
	void setActive(in bool active)
	{
		_GODOT_set_active.bind("Tween", "set_active");
		ptrcall!(void)(_GODOT_set_active, _godot_object, active);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_repeat;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_repeat") = _GODOT_is_repeat;
	/**
	
	*/
	bool isRepeat() const
	{
		_GODOT_is_repeat.bind("Tween", "is_repeat");
		return ptrcall!(bool)(_GODOT_is_repeat, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_repeat;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_repeat") = _GODOT_set_repeat;
	/**
	
	*/
	void setRepeat(in bool repeat)
	{
		_GODOT_set_repeat.bind("Tween", "set_repeat");
		ptrcall!(void)(_GODOT_set_repeat, _godot_object, repeat);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed_scale") = _GODOT_set_speed_scale;
	/**
	
	*/
	void setSpeedScale(in double speed)
	{
		_GODOT_set_speed_scale.bind("Tween", "set_speed_scale");
		ptrcall!(void)(_GODOT_set_speed_scale, _godot_object, speed);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed_scale") = _GODOT_get_speed_scale;
	/**
	
	*/
	double getSpeedScale() const
	{
		_GODOT_get_speed_scale.bind("Tween", "get_speed_scale");
		return ptrcall!(double)(_GODOT_get_speed_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_tween_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tween_process_mode") = _GODOT_set_tween_process_mode;
	/**
	
	*/
	void setTweenProcessMode(in long mode)
	{
		_GODOT_set_tween_process_mode.bind("Tween", "set_tween_process_mode");
		ptrcall!(void)(_GODOT_set_tween_process_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Tween.TweenProcessMode) _GODOT_get_tween_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tween_process_mode") = _GODOT_get_tween_process_mode;
	/**
	
	*/
	Tween.TweenProcessMode getTweenProcessMode() const
	{
		_GODOT_get_tween_process_mode.bind("Tween", "get_tween_process_mode");
		return ptrcall!(Tween.TweenProcessMode)(_GODOT_get_tween_process_mode, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_start;
	package(godot) alias _GODOT_methodBindInfo(string name : "start") = _GODOT_start;
	/**
	Starts the tween. You can define animations both before and after this.
	*/
	bool start()
	{
		_GODOT_start.bind("Tween", "start");
		return ptrcall!(bool)(_GODOT_start, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String) _GODOT_reset;
	package(godot) alias _GODOT_methodBindInfo(string name : "reset") = _GODOT_reset;
	/**
	Resets a tween to its initial value (the one given, not the one before the tween), given its object and property/method pair. By default, all tweens are removed, unless `key` is specified.
	*/
	bool reset(StringArg1)(GodotObject object, in StringArg1 key = "")
	{
		_GODOT_reset.bind("Tween", "reset");
		return ptrcall!(bool)(_GODOT_reset, _godot_object, object, key);
	}
	package(godot) static GodotMethod!(bool) _GODOT_reset_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "reset_all") = _GODOT_reset_all;
	/**
	Resets all tweens to their initial values (the ones given, not those before the tween).
	*/
	bool resetAll()
	{
		_GODOT_reset_all.bind("Tween", "reset_all");
		return ptrcall!(bool)(_GODOT_reset_all, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	/**
	Stops a tween, given its object and property/method pair. By default, all tweens are stopped, unless `key` is specified.
	*/
	bool stop(StringArg1)(GodotObject object, in StringArg1 key = "")
	{
		_GODOT_stop.bind("Tween", "stop");
		return ptrcall!(bool)(_GODOT_stop, _godot_object, object, key);
	}
	package(godot) static GodotMethod!(bool) _GODOT_stop_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop_all") = _GODOT_stop_all;
	/**
	Stops animating all tweens.
	*/
	bool stopAll()
	{
		_GODOT_stop_all.bind("Tween", "stop_all");
		return ptrcall!(bool)(_GODOT_stop_all, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String) _GODOT_resume;
	package(godot) alias _GODOT_methodBindInfo(string name : "resume") = _GODOT_resume;
	/**
	Continues animating a stopped tween, given its object and property/method pair. By default, all tweens are resumed, unless `key` is specified.
	*/
	bool resume(StringArg1)(GodotObject object, in StringArg1 key = "")
	{
		_GODOT_resume.bind("Tween", "resume");
		return ptrcall!(bool)(_GODOT_resume, _godot_object, object, key);
	}
	package(godot) static GodotMethod!(bool) _GODOT_resume_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "resume_all") = _GODOT_resume_all;
	/**
	Continues animating all stopped tweens.
	*/
	bool resumeAll()
	{
		_GODOT_resume_all.bind("Tween", "resume_all");
		return ptrcall!(bool)(_GODOT_resume_all, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String) _GODOT_remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove") = _GODOT_remove;
	/**
	Stops animation and removes a tween, given its object and property/method pair. By default, all tweens are removed, unless `key` is specified.
	*/
	bool remove(StringArg1)(GodotObject object, in StringArg1 key = "")
	{
		_GODOT_remove.bind("Tween", "remove");
		return ptrcall!(bool)(_GODOT_remove, _godot_object, object, key);
	}
	package(godot) static GodotMethod!(void, GodotObject, String, bool) _GODOT__remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "_remove") = _GODOT__remove;
	/**
	
	*/
	void _remove(StringArg1)(GodotObject object, in StringArg1 key, in bool first_only)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(key);
		_GODOT_args.append(first_only);
		String _GODOT_method_name = String("_remove");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT_remove_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_all") = _GODOT_remove_all;
	/**
	Stops animation and removes all tweens.
	*/
	bool removeAll()
	{
		_GODOT_remove_all.bind("Tween", "remove_all");
		return ptrcall!(bool)(_GODOT_remove_all, _godot_object);
	}
	package(godot) static GodotMethod!(bool, double) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	/**
	Sets the interpolation to the given `time` in seconds.
	*/
	bool seek(in double time)
	{
		_GODOT_seek.bind("Tween", "seek");
		return ptrcall!(bool)(_GODOT_seek, _godot_object, time);
	}
	package(godot) static GodotMethod!(double) _GODOT_tell;
	package(godot) alias _GODOT_methodBindInfo(string name : "tell") = _GODOT_tell;
	/**
	Returns the current time of the tween.
	*/
	double tell() const
	{
		_GODOT_tell.bind("Tween", "tell");
		return ptrcall!(double)(_GODOT_tell, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_runtime;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_runtime") = _GODOT_get_runtime;
	/**
	Returns the total time needed for all tweens to end. If you have two tweens, one lasting 10 seconds and the other 20 seconds, it would return 20 seconds, as by that time all tweens would have finished.
	*/
	double getRuntime() const
	{
		_GODOT_get_runtime.bind("Tween", "get_runtime");
		return ptrcall!(double)(_GODOT_get_runtime, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject, NodePath, Variant, Variant, double, long, long, double) _GODOT_interpolate_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_property") = _GODOT_interpolate_property;
	/**
	Animates `property` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later.
	            Use $(D transitiontype) for `trans_type` and $(D easetype) for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information
	*/
	bool interpolateProperty(NodePathArg1, VariantArg2, VariantArg3)(GodotObject object, in NodePathArg1 property, in VariantArg2 initial_val, in VariantArg3 final_val, in double duration, in long trans_type, in long ease_type, in double delay = 0)
	{
		_GODOT_interpolate_property.bind("Tween", "interpolate_property");
		return ptrcall!(bool)(_GODOT_interpolate_property, _godot_object, object, property, initial_val, final_val, duration, trans_type, ease_type, delay);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String, Variant, Variant, double, long, long, double) _GODOT_interpolate_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_method") = _GODOT_interpolate_method;
	/**
	Animates `method` of `object` from `initial_val` to `final_val` for `duration` seconds, `delay` seconds later. Methods are called with consecutive values.
	            Use $(D transitiontype) for `trans_type` and $(D easetype) for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information
	*/
	bool interpolateMethod(StringArg1, VariantArg2, VariantArg3)(GodotObject object, in StringArg1 method, in VariantArg2 initial_val, in VariantArg3 final_val, in double duration, in long trans_type, in long ease_type, in double delay = 0)
	{
		_GODOT_interpolate_method.bind("Tween", "interpolate_method");
		return ptrcall!(bool)(_GODOT_interpolate_method, _godot_object, object, method, initial_val, final_val, duration, trans_type, ease_type, delay);
	}
	package(godot) static GodotMethod!(bool, GodotObject, double, String, Variant, Variant, Variant, Variant, Variant) _GODOT_interpolate_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_callback") = _GODOT_interpolate_callback;
	/**
	Calls `callback` of `object` after `duration`. `arg1`-`arg5` are arguments to be passed to the callback.
	*/
	bool interpolateCallback(StringArg2, VariantArg3, VariantArg4, VariantArg5, VariantArg6, VariantArg7)(GodotObject object, in double duration, in StringArg2 callback, in VariantArg3 arg1 = Variant.nil, in VariantArg4 arg2 = Variant.nil, in VariantArg5 arg3 = Variant.nil, in VariantArg6 arg4 = Variant.nil, in VariantArg7 arg5 = Variant.nil)
	{
		_GODOT_interpolate_callback.bind("Tween", "interpolate_callback");
		return ptrcall!(bool)(_GODOT_interpolate_callback, _godot_object, object, duration, callback, arg1, arg2, arg3, arg4, arg5);
	}
	package(godot) static GodotMethod!(bool, GodotObject, double, String, Variant, Variant, Variant, Variant, Variant) _GODOT_interpolate_deferred_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_deferred_callback") = _GODOT_interpolate_deferred_callback;
	/**
	Calls `callback` of `object` after `duration` on the main thread (similar to $(D GodotObject.callDeferred)). `arg1`-`arg5` are arguments to be passed to the callback.
	*/
	bool interpolateDeferredCallback(StringArg2, VariantArg3, VariantArg4, VariantArg5, VariantArg6, VariantArg7)(GodotObject object, in double duration, in StringArg2 callback, in VariantArg3 arg1 = Variant.nil, in VariantArg4 arg2 = Variant.nil, in VariantArg5 arg3 = Variant.nil, in VariantArg6 arg4 = Variant.nil, in VariantArg7 arg5 = Variant.nil)
	{
		_GODOT_interpolate_deferred_callback.bind("Tween", "interpolate_deferred_callback");
		return ptrcall!(bool)(_GODOT_interpolate_deferred_callback, _godot_object, object, duration, callback, arg1, arg2, arg3, arg4, arg5);
	}
	package(godot) static GodotMethod!(bool, GodotObject, NodePath, Variant, GodotObject, NodePath, double, long, long, double) _GODOT_follow_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "follow_property") = _GODOT_follow_property;
	/**
	Follows `property` of `object` and applies it on `target_property` of `target`, beginning from `initial_val` for `duration` seconds, `delay` seconds later.
	            Use $(D transitiontype) for `trans_type` and $(D easetype) for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information
	*/
	bool followProperty(NodePathArg1, VariantArg2, NodePathArg4)(GodotObject object, in NodePathArg1 property, in VariantArg2 initial_val, GodotObject target, in NodePathArg4 target_property, in double duration, in long trans_type, in long ease_type, in double delay = 0)
	{
		_GODOT_follow_property.bind("Tween", "follow_property");
		return ptrcall!(bool)(_GODOT_follow_property, _godot_object, object, property, initial_val, target, target_property, duration, trans_type, ease_type, delay);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String, Variant, GodotObject, String, double, long, long, double) _GODOT_follow_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "follow_method") = _GODOT_follow_method;
	/**
	Follows `method` of `object` and applies the returned value on `target_method` of `target`, beginning from `initial_val` for `duration` seconds, `delay` later. Methods are called with consecutive values.
	            Use $(D transitiontype) for `trans_type` and $(D easetype) for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information
	*/
	bool followMethod(StringArg1, VariantArg2, StringArg4)(GodotObject object, in StringArg1 method, in VariantArg2 initial_val, GodotObject target, in StringArg4 target_method, in double duration, in long trans_type, in long ease_type, in double delay = 0)
	{
		_GODOT_follow_method.bind("Tween", "follow_method");
		return ptrcall!(bool)(_GODOT_follow_method, _godot_object, object, method, initial_val, target, target_method, duration, trans_type, ease_type, delay);
	}
	package(godot) static GodotMethod!(bool, GodotObject, NodePath, GodotObject, NodePath, Variant, double, long, long, double) _GODOT_targeting_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "targeting_property") = _GODOT_targeting_property;
	/**
	Animates `property` of `object` from the current value of the `initial_val` property of `initial` to `final_val` for `duration` seconds, `delay` seconds later.
	            Use $(D transitiontype) for `trans_type` and $(D easetype) for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information
	*/
	bool targetingProperty(NodePathArg1, NodePathArg3, VariantArg4)(GodotObject object, in NodePathArg1 property, GodotObject initial, in NodePathArg3 initial_val, in VariantArg4 final_val, in double duration, in long trans_type, in long ease_type, in double delay = 0)
	{
		_GODOT_targeting_property.bind("Tween", "targeting_property");
		return ptrcall!(bool)(_GODOT_targeting_property, _godot_object, object, property, initial, initial_val, final_val, duration, trans_type, ease_type, delay);
	}
	package(godot) static GodotMethod!(bool, GodotObject, String, GodotObject, String, Variant, double, long, long, double) _GODOT_targeting_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "targeting_method") = _GODOT_targeting_method;
	/**
	Animates `method` of `object` from the value returned by `initial_method` to `final_val` for `duration` seconds, `delay` seconds later. Methods are animated by calling them with consecutive values.
	            Use $(D transitiontype) for `trans_type` and $(D easetype) for `ease_type` parameters. These values control the timing and direction of the interpolation. See the class description for more information
	*/
	bool targetingMethod(StringArg1, StringArg3, VariantArg4)(GodotObject object, in StringArg1 method, GodotObject initial, in StringArg3 initial_method, in VariantArg4 final_val, in double duration, in long trans_type, in long ease_type, in double delay = 0)
	{
		_GODOT_targeting_method.bind("Tween", "targeting_method");
		return ptrcall!(bool)(_GODOT_targeting_method, _godot_object, object, method, initial, initial_method, final_val, duration, trans_type, ease_type, delay);
	}
	/**
	If `true` the tween loops.
	*/
	@property bool repeat()
	{
		return isRepeat();
	}
	/// ditto
	@property void repeat(bool v)
	{
		setRepeat(v);
	}
	/**
	The tween's animation process thread. See $(D tweenprocessmode). Default value: $(D tweenProcessIdle).
	*/
	@property Tween.TweenProcessMode playbackProcessMode()
	{
		return getTweenProcessMode();
	}
	/// ditto
	@property void playbackProcessMode(long v)
	{
		setTweenProcessMode(v);
	}
	/**
	The tween's speed multiplier. For example, set it to `1.0` for normal speed, `2.0` for two times normal speed, or `0.5` for half of the normal speed. A value of `0` pauses the animation, but see also $(D setActive) or $(D stopAll) for this.
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
