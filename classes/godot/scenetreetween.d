/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.scenetreetween;
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
import godot.reference;
import godot.node;
import godot.callbacktweener;
import godot.intervaltweener;
import godot.methodtweener;
import godot.propertytweener;
/**

*/
@GodotBaseClass struct SceneTreeTween
{
	package(godot) enum string _GODOT_internal_name = "SceneTreeTween";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("bind_node") GodotMethod!(SceneTreeTween, Node) bindNode;
		@GodotName("chain") GodotMethod!(SceneTreeTween) chain;
		@GodotName("custom_step") GodotMethod!(bool, double) customStep;
		@GodotName("get_total_elapsed_time") GodotMethod!(double) getTotalElapsedTime;
		@GodotName("interpolate_value") GodotMethod!(Variant, Variant, Variant, double, double, long, long) interpolateValue;
		@GodotName("is_running") GodotMethod!(bool) isRunning;
		@GodotName("is_valid") GodotMethod!(bool) isValid;
		@GodotName("kill") GodotMethod!(void) kill;
		@GodotName("parallel") GodotMethod!(SceneTreeTween) parallel;
		@GodotName("pause") GodotMethod!(void) pause;
		@GodotName("play") GodotMethod!(void) play;
		@GodotName("set_ease") GodotMethod!(SceneTreeTween, long) setEase;
		@GodotName("set_loops") GodotMethod!(SceneTreeTween, long) setLoops;
		@GodotName("set_parallel") GodotMethod!(SceneTreeTween, bool) setParallel;
		@GodotName("set_pause_mode") GodotMethod!(SceneTreeTween, long) setPauseMode;
		@GodotName("set_process_mode") GodotMethod!(SceneTreeTween, long) setProcessMode;
		@GodotName("set_speed_scale") GodotMethod!(SceneTreeTween, double) setSpeedScale;
		@GodotName("set_trans") GodotMethod!(SceneTreeTween, long) setTrans;
		@GodotName("stop") GodotMethod!(void) stop;
		@GodotName("tween_callback") GodotMethod!(CallbackTweener, GodotObject, String, Array) tweenCallback;
		@GodotName("tween_interval") GodotMethod!(IntervalTweener, double) tweenInterval;
		@GodotName("tween_method") GodotMethod!(MethodTweener, GodotObject, String, Variant, Variant, double, Array) tweenMethod;
		@GodotName("tween_property") GodotMethod!(PropertyTweener, GodotObject, NodePath, Variant, double) tweenProperty;
	}
	/// 
	pragma(inline, true) bool opEquals(in SceneTreeTween other) const
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
	/// Construct a new instance of SceneTreeTween.
	/// Note: use `memnew!SceneTreeTween` instead.
	static SceneTreeTween _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SceneTreeTween");
		if(constructor is null) return typeof(this).init;
		return cast(SceneTreeTween)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum TweenPauseMode : int
	{
		/** */
		tweenPauseBound = 0,
		/** */
		tweenPauseStop = 1,
		/** */
		tweenPauseProcess = 2,
	}
	/// 
	enum Constants : int
	{
		tweenPauseBound = 0,
		tweenPauseStop = 1,
		tweenPauseProcess = 2,
	}
	/**
	
	*/
	Ref!SceneTreeTween bindNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTween)(GDNativeClassBinding.bindNode, _godot_object, node);
	}
	/**
	
	*/
	Ref!SceneTreeTween chain()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTween)(GDNativeClassBinding.chain, _godot_object);
	}
	/**
	
	*/
	bool customStep(in double delta)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.customStep, _godot_object, delta);
	}
	/**
	
	*/
	double getTotalElapsedTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTotalElapsedTime, _godot_object);
	}
	/**
	
	*/
	Variant interpolateValue(VariantArg0, VariantArg1)(in VariantArg0 initial_value, in VariantArg1 delta_value, in double elapsed_time, in double duration, in long trans_type, in long ease_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.interpolateValue, _godot_object, initial_value, delta_value, elapsed_time, duration, trans_type, ease_type);
	}
	/**
	
	*/
	bool isRunning() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRunning, _godot_object);
	}
	/**
	
	*/
	bool isValid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isValid, _godot_object);
	}
	/**
	
	*/
	void kill()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.kill, _godot_object);
	}
	/**
	
	*/
	Ref!SceneTreeTween parallel()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTween)(GDNativeClassBinding.parallel, _godot_object);
	}
	/**
	
	*/
	void pause()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pause, _godot_object);
	}
	/**
	
	*/
	void play()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.play, _godot_object);
	}
	/**
	
	*/
	Ref!SceneTreeTween setEase(in long ease)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTween)(GDNativeClassBinding.setEase, _godot_object, ease);
	}
	/**
	
	*/
	Ref!SceneTreeTween setLoops(in long loops = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTween)(GDNativeClassBinding.setLoops, _godot_object, loops);
	}
	/**
	
	*/
	Ref!SceneTreeTween setParallel(in bool parallel = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTween)(GDNativeClassBinding.setParallel, _godot_object, parallel);
	}
	/**
	
	*/
	Ref!SceneTreeTween setPauseMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTween)(GDNativeClassBinding.setPauseMode, _godot_object, mode);
	}
	/**
	
	*/
	Ref!SceneTreeTween setProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTween)(GDNativeClassBinding.setProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	Ref!SceneTreeTween setSpeedScale(in double speed)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTween)(GDNativeClassBinding.setSpeedScale, _godot_object, speed);
	}
	/**
	
	*/
	Ref!SceneTreeTween setTrans(in long trans)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTween)(GDNativeClassBinding.setTrans, _godot_object, trans);
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
	Ref!CallbackTweener tweenCallback(GodotObject object, in String method, in Array binds = Array.make())
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CallbackTweener)(GDNativeClassBinding.tweenCallback, _godot_object, object, method, binds);
	}
	/**
	
	*/
	Ref!IntervalTweener tweenInterval(in double time)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(IntervalTweener)(GDNativeClassBinding.tweenInterval, _godot_object, time);
	}
	/**
	
	*/
	Ref!MethodTweener tweenMethod(VariantArg2, VariantArg3)(GodotObject object, in String method, in VariantArg2 from, in VariantArg3 to, in double duration, in Array binds = Array.make())
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MethodTweener)(GDNativeClassBinding.tweenMethod, _godot_object, object, method, from, to, duration, binds);
	}
	/**
	
	*/
	Ref!PropertyTweener tweenProperty(NodePathArg1, VariantArg2)(GodotObject object, in NodePathArg1 property, in VariantArg2 final_val, in double duration)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PropertyTweener)(GDNativeClassBinding.tweenProperty, _godot_object, object, property, final_val, duration);
	}
}
