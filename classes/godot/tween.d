/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.tween;
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
/**

*/
@GodotBaseClass struct Tween
{
	package(godot) enum string _GODOT_internal_name = "Tween";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_remove_by_uid") GodotMethod!(void, long) _removeByUid;
		@GodotName("follow_method") GodotMethod!(bool, GodotObject, String, Variant, GodotObject, String, double, long, long, double) followMethod;
		@GodotName("follow_property") GodotMethod!(bool, GodotObject, NodePath, Variant, GodotObject, NodePath, double, long, long, double) followProperty;
		@GodotName("get_runtime") GodotMethod!(double) getRuntime;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("get_tween_process_mode") GodotMethod!(Tween.TweenProcessMode) getTweenProcessMode;
		@GodotName("interpolate_callback") GodotMethod!(bool, GodotObject, double, String, Variant, Variant, Variant, Variant, Variant, Variant, Variant, Variant) interpolateCallback;
		@GodotName("interpolate_deferred_callback") GodotMethod!(bool, GodotObject, double, String, Variant, Variant, Variant, Variant, Variant, Variant, Variant, Variant) interpolateDeferredCallback;
		@GodotName("interpolate_method") GodotMethod!(bool, GodotObject, String, Variant, Variant, double, long, long, double) interpolateMethod;
		@GodotName("interpolate_property") GodotMethod!(bool, GodotObject, NodePath, Variant, Variant, double, long, long, double) interpolateProperty;
		@GodotName("is_active") GodotMethod!(bool) isActive;
		@GodotName("is_repeat") GodotMethod!(bool) isRepeat;
		@GodotName("remove") GodotMethod!(bool, GodotObject, String) remove;
		@GodotName("remove_all") GodotMethod!(bool) removeAll;
		@GodotName("reset") GodotMethod!(bool, GodotObject, String) reset;
		@GodotName("reset_all") GodotMethod!(bool) resetAll;
		@GodotName("resume") GodotMethod!(bool, GodotObject, String) resume;
		@GodotName("resume_all") GodotMethod!(bool) resumeAll;
		@GodotName("seek") GodotMethod!(bool, double) seek;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("set_repeat") GodotMethod!(void, bool) setRepeat;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("set_tween_process_mode") GodotMethod!(void, long) setTweenProcessMode;
		@GodotName("start") GodotMethod!(bool) start;
		@GodotName("stop") GodotMethod!(bool, GodotObject, String) stop;
		@GodotName("stop_all") GodotMethod!(bool) stopAll;
		@GodotName("targeting_method") GodotMethod!(bool, GodotObject, String, GodotObject, String, Variant, double, long, long, double) targetingMethod;
		@GodotName("targeting_property") GodotMethod!(bool, GodotObject, NodePath, GodotObject, NodePath, Variant, double, long, long, double) targetingProperty;
		@GodotName("tell") GodotMethod!(double) tell;
	}
	/// 
	pragma(inline, true) bool opEquals(in Tween other) const
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
	/// Construct a new instance of Tween.
	/// Note: use `memnew!Tween` instead.
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
		/** */
		transLinear = 0,
		/** */
		transSine = 1,
		/** */
		transQuint = 2,
		/** */
		transQuart = 3,
		/** */
		transQuad = 4,
		/** */
		transExpo = 5,
		/** */
		transElastic = 6,
		/** */
		transCubic = 7,
		/** */
		transCirc = 8,
		/** */
		transBounce = 9,
		/** */
		transBack = 10,
	}
	/// 
	enum TweenProcessMode : int
	{
		/** */
		tweenProcessPhysics = 0,
		/** */
		tweenProcessIdle = 1,
	}
	/// 
	enum EaseType : int
	{
		/** */
		easeIn = 0,
		/** */
		easeOut = 1,
		/** */
		easeInOut = 2,
		/** */
		easeOutIn = 3,
	}
	/// 
	enum Constants : int
	{
		easeIn = 0,
		tweenProcessPhysics = 0,
		transLinear = 0,
		transSine = 1,
		tweenProcessIdle = 1,
		easeOut = 1,
		easeInOut = 2,
		transQuint = 2,
		easeOutIn = 3,
		transQuart = 3,
		transQuad = 4,
		transExpo = 5,
		transElastic = 6,
		transCubic = 7,
		transCirc = 8,
		transBounce = 9,
		transBack = 10,
	}
	/**
	
	*/
	void _removeByUid(in long uid)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(uid);
		String _GODOT_method_name = String("_remove_by_uid");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool followMethod(VariantArg2)(GodotObject object, in String method, in VariantArg2 initial_val, GodotObject target, in String target_method, in double duration, in long trans_type = 0, in long ease_type = 2, in double delay = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.followMethod, _godot_object, object, method, initial_val, target, target_method, duration, trans_type, ease_type, delay);
	}
	/**
	
	*/
	bool followProperty(NodePathArg1, VariantArg2, NodePathArg4)(GodotObject object, in NodePathArg1 property, in VariantArg2 initial_val, GodotObject target, in NodePathArg4 target_property, in double duration, in long trans_type = 0, in long ease_type = 2, in double delay = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.followProperty, _godot_object, object, property, initial_val, target, target_property, duration, trans_type, ease_type, delay);
	}
	/**
	
	*/
	double getRuntime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRuntime, _godot_object);
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
	Tween.TweenProcessMode getTweenProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Tween.TweenProcessMode)(GDNativeClassBinding.getTweenProcessMode, _godot_object);
	}
	/**
	
	*/
	bool interpolateCallback(VariantArg3, VariantArg4, VariantArg5, VariantArg6, VariantArg7, VariantArg8, VariantArg9, VariantArg10)(GodotObject object, in double duration, in String callback, in VariantArg3 arg1 = Variant.nil, in VariantArg4 arg2 = Variant.nil, in VariantArg5 arg3 = Variant.nil, in VariantArg6 arg4 = Variant.nil, in VariantArg7 arg5 = Variant.nil, in VariantArg8 arg6 = Variant.nil, in VariantArg9 arg7 = Variant.nil, in VariantArg10 arg8 = Variant.nil)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.interpolateCallback, _godot_object, object, duration, callback, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
	}
	/**
	
	*/
	bool interpolateDeferredCallback(VariantArg3, VariantArg4, VariantArg5, VariantArg6, VariantArg7, VariantArg8, VariantArg9, VariantArg10)(GodotObject object, in double duration, in String callback, in VariantArg3 arg1 = Variant.nil, in VariantArg4 arg2 = Variant.nil, in VariantArg5 arg3 = Variant.nil, in VariantArg6 arg4 = Variant.nil, in VariantArg7 arg5 = Variant.nil, in VariantArg8 arg6 = Variant.nil, in VariantArg9 arg7 = Variant.nil, in VariantArg10 arg8 = Variant.nil)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.interpolateDeferredCallback, _godot_object, object, duration, callback, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
	}
	/**
	
	*/
	bool interpolateMethod(VariantArg2, VariantArg3)(GodotObject object, in String method, in VariantArg2 initial_val, in VariantArg3 final_val, in double duration, in long trans_type = 0, in long ease_type = 2, in double delay = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.interpolateMethod, _godot_object, object, method, initial_val, final_val, duration, trans_type, ease_type, delay);
	}
	/**
	
	*/
	bool interpolateProperty(NodePathArg1, VariantArg2, VariantArg3)(GodotObject object, in NodePathArg1 property, in VariantArg2 initial_val, in VariantArg3 final_val, in double duration, in long trans_type = 0, in long ease_type = 2, in double delay = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.interpolateProperty, _godot_object, object, property, initial_val, final_val, duration, trans_type, ease_type, delay);
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
	bool isRepeat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRepeat, _godot_object);
	}
	/**
	
	*/
	bool remove(GodotObject object, in String key = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.remove, _godot_object, object, key);
	}
	/**
	
	*/
	bool removeAll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.removeAll, _godot_object);
	}
	/**
	
	*/
	bool reset(GodotObject object, in String key = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.reset, _godot_object, object, key);
	}
	/**
	
	*/
	bool resetAll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.resetAll, _godot_object);
	}
	/**
	
	*/
	bool resume(GodotObject object, in String key = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.resume, _godot_object, object, key);
	}
	/**
	
	*/
	bool resumeAll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.resumeAll, _godot_object);
	}
	/**
	
	*/
	bool seek(in double time)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.seek, _godot_object, time);
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
	void setRepeat(in bool repeat)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRepeat, _godot_object, repeat);
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
	void setTweenProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTweenProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	bool start()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.start, _godot_object);
	}
	/**
	
	*/
	bool stop(GodotObject object, in String key = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.stop, _godot_object, object, key);
	}
	/**
	
	*/
	bool stopAll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.stopAll, _godot_object);
	}
	/**
	
	*/
	bool targetingMethod(VariantArg4)(GodotObject object, in String method, GodotObject initial, in String initial_method, in VariantArg4 final_val, in double duration, in long trans_type = 0, in long ease_type = 2, in double delay = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.targetingMethod, _godot_object, object, method, initial, initial_method, final_val, duration, trans_type, ease_type, delay);
	}
	/**
	
	*/
	bool targetingProperty(NodePathArg1, NodePathArg3, VariantArg4)(GodotObject object, in NodePathArg1 property, GodotObject initial, in NodePathArg3 initial_val, in VariantArg4 final_val, in double duration, in long trans_type = 0, in long ease_type = 2, in double delay = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.targetingProperty, _godot_object, object, property, initial, initial_val, final_val, duration, trans_type, ease_type, delay);
	}
	/**
	
	*/
	double tell() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.tell, _godot_object);
	}
	/**
	
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
	@property bool repeat()
	{
		return isRepeat();
	}
	/// ditto
	@property void repeat(bool v)
	{
		setRepeat(v);
	}
}
