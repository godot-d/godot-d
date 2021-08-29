/**
A countdown timer.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.timer;
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
A countdown timer.

Counts down a specified interval and emits a signal on reaching 0. Can be set to repeat or "one-shot" mode.
$(B Note:) To create a one-shot timer without instantiating a node, use $(D SceneTree.createTimer).
*/
@GodotBaseClass struct Timer
{
	package(godot) enum string _GODOT_internal_name = "Timer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_time_left") GodotMethod!(double) getTimeLeft;
		@GodotName("get_timer_process_mode") GodotMethod!(Timer.TimerProcessMode) getTimerProcessMode;
		@GodotName("get_wait_time") GodotMethod!(double) getWaitTime;
		@GodotName("has_autostart") GodotMethod!(bool) hasAutostart;
		@GodotName("is_one_shot") GodotMethod!(bool) isOneShot;
		@GodotName("is_paused") GodotMethod!(bool) isPaused;
		@GodotName("is_stopped") GodotMethod!(bool) isStopped;
		@GodotName("set_autostart") GodotMethod!(void, bool) setAutostart;
		@GodotName("set_one_shot") GodotMethod!(void, bool) setOneShot;
		@GodotName("set_paused") GodotMethod!(void, bool) setPaused;
		@GodotName("set_timer_process_mode") GodotMethod!(void, long) setTimerProcessMode;
		@GodotName("set_wait_time") GodotMethod!(void, double) setWaitTime;
		@GodotName("start") GodotMethod!(void, double) start;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	/// 
	pragma(inline, true) bool opEquals(in Timer other) const
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
	/// Construct a new instance of Timer.
	/// Note: use `memnew!Timer` instead.
	static Timer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Timer");
		if(constructor is null) return typeof(this).init;
		return cast(Timer)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum TimerProcessMode : int
	{
		/**
		Update the timer during the physics step at each frame (fixed framerate processing).
		*/
		timerProcessPhysics = 0,
		/**
		Update the timer during the idle time at each frame.
		*/
		timerProcessIdle = 1,
	}
	/// 
	enum Constants : int
	{
		timerProcessPhysics = 0,
		timerProcessIdle = 1,
	}
	/**
	
	*/
	double getTimeLeft() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTimeLeft, _godot_object);
	}
	/**
	
	*/
	Timer.TimerProcessMode getTimerProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Timer.TimerProcessMode)(GDNativeClassBinding.getTimerProcessMode, _godot_object);
	}
	/**
	
	*/
	double getWaitTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getWaitTime, _godot_object);
	}
	/**
	
	*/
	bool hasAutostart() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAutostart, _godot_object);
	}
	/**
	
	*/
	bool isOneShot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOneShot, _godot_object);
	}
	/**
	
	*/
	bool isPaused() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPaused, _godot_object);
	}
	/**
	Returns `true` if the timer is stopped.
	*/
	bool isStopped() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isStopped, _godot_object);
	}
	/**
	
	*/
	void setAutostart(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutostart, _godot_object, enable);
	}
	/**
	
	*/
	void setOneShot(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOneShot, _godot_object, enable);
	}
	/**
	
	*/
	void setPaused(in bool paused)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPaused, _godot_object, paused);
	}
	/**
	
	*/
	void setTimerProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTimerProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	void setWaitTime(in double time_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWaitTime, _godot_object, time_sec);
	}
	/**
	Starts the timer. Sets `wait_time` to `time_sec` if `time_sec &gt; 0`. This also resets the remaining time to `wait_time`.
	$(B Note:) this method will not resume a paused timer. See $(D paused).
	*/
	void start(in double time_sec = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.start, _godot_object, time_sec);
	}
	/**
	Stops the timer.
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
	}
	/**
	If `true`, the timer will automatically start when entering the scene tree.
	$(B Note:) This property is automatically set to `false` after the timer enters the scene tree and starts.
	*/
	@property bool autostart()
	{
		return hasAutostart();
	}
	/// ditto
	@property void autostart(bool v)
	{
		setAutostart(v);
	}
	/**
	If `true`, the timer will stop when reaching 0. If `false`, it will restart.
	*/
	@property bool oneShot()
	{
		return isOneShot();
	}
	/// ditto
	@property void oneShot(bool v)
	{
		setOneShot(v);
	}
	/**
	If `true`, the timer is paused and will not process until it is unpaused again, even if $(D start) is called.
	*/
	@property bool paused()
	{
		return isPaused();
	}
	/// ditto
	@property void paused(bool v)
	{
		setPaused(v);
	}
	/**
	Processing mode. See $(D timerprocessmode).
	*/
	@property Timer.TimerProcessMode processMode()
	{
		return getTimerProcessMode();
	}
	/// ditto
	@property void processMode(long v)
	{
		setTimerProcessMode(v);
	}
	/**
	The timer's remaining time in seconds. Returns 0 if the timer is inactive.
	$(B Note:) You cannot set this value. To change the timer's remaining time, use $(D start).
	*/
	@property double timeLeft()
	{
		return getTimeLeft();
	}
	/**
	Wait time in seconds.
	*/
	@property double waitTime()
	{
		return getWaitTime();
	}
	/// ditto
	@property void waitTime(double v)
	{
		setWaitTime(v);
	}
}
