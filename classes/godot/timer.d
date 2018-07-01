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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node;
/**
A countdown timer.

Counts down a specified interval and emits a signal on reaching 0. Can be set to repeat or "one shot" mode.
*/
@GodotBaseClass struct Timer
{
	static immutable string _GODOT_internal_name = "Timer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Timer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Timer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Update the Timer during the physics step at each frame (fixed framerate processing).
		*/
		timerProcessPhysics = 0,
		/**
		Update the Timer during the idle time at each frame.
		*/
		timerProcessIdle = 1,
	}
	/// 
	enum Constants : int
	{
		timerProcessPhysics = 0,
		timerProcessIdle = 1,
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_wait_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_wait_time") = _GODOT_set_wait_time;
	/**
	
	*/
	void setWaitTime(in double time_sec)
	{
		_GODOT_set_wait_time.bind("Timer", "set_wait_time");
		ptrcall!(void)(_GODOT_set_wait_time, _godot_object, time_sec);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_wait_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_wait_time") = _GODOT_get_wait_time;
	/**
	
	*/
	double getWaitTime() const
	{
		_GODOT_get_wait_time.bind("Timer", "get_wait_time");
		return ptrcall!(double)(_GODOT_get_wait_time, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_one_shot;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_one_shot") = _GODOT_set_one_shot;
	/**
	
	*/
	void setOneShot(in bool enable)
	{
		_GODOT_set_one_shot.bind("Timer", "set_one_shot");
		ptrcall!(void)(_GODOT_set_one_shot, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_one_shot;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_one_shot") = _GODOT_is_one_shot;
	/**
	
	*/
	bool isOneShot() const
	{
		_GODOT_is_one_shot.bind("Timer", "is_one_shot");
		return ptrcall!(bool)(_GODOT_is_one_shot, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autostart;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autostart") = _GODOT_set_autostart;
	/**
	
	*/
	void setAutostart(in bool enable)
	{
		_GODOT_set_autostart.bind("Timer", "set_autostart");
		ptrcall!(void)(_GODOT_set_autostart, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_autostart;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_autostart") = _GODOT_has_autostart;
	/**
	
	*/
	bool hasAutostart() const
	{
		_GODOT_has_autostart.bind("Timer", "has_autostart");
		return ptrcall!(bool)(_GODOT_has_autostart, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_start;
	package(godot) alias _GODOT_methodBindInfo(string name : "start") = _GODOT_start;
	/**
	Starts the timer. Sets `wait_time` to `time_sec` if `time_sec` &gt; 0. This also resets the remaining time to `wait_time`.
	Note: this method will not resume a paused timer. See $(D setPaused).
	*/
	void start()
	{
		_GODOT_start.bind("Timer", "start");
		ptrcall!(void)(_GODOT_start, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	/**
	Stop (cancel) the Timer.
	*/
	void stop()
	{
		_GODOT_stop.bind("Timer", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_paused;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_paused") = _GODOT_set_paused;
	/**
	
	*/
	void setPaused(in bool paused)
	{
		_GODOT_set_paused.bind("Timer", "set_paused");
		ptrcall!(void)(_GODOT_set_paused, _godot_object, paused);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_paused;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_paused") = _GODOT_is_paused;
	/**
	
	*/
	bool isPaused() const
	{
		_GODOT_is_paused.bind("Timer", "is_paused");
		return ptrcall!(bool)(_GODOT_is_paused, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_stopped;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_stopped") = _GODOT_is_stopped;
	/**
	Returns `true` if the timer is stopped.
	*/
	bool isStopped() const
	{
		_GODOT_is_stopped.bind("Timer", "is_stopped");
		return ptrcall!(bool)(_GODOT_is_stopped, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_time_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time_left") = _GODOT_get_time_left;
	/**
	
	*/
	double getTimeLeft() const
	{
		_GODOT_get_time_left.bind("Timer", "get_time_left");
		return ptrcall!(double)(_GODOT_get_time_left, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_timer_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_timer_process_mode") = _GODOT_set_timer_process_mode;
	/**
	
	*/
	void setTimerProcessMode(in long mode)
	{
		_GODOT_set_timer_process_mode.bind("Timer", "set_timer_process_mode");
		ptrcall!(void)(_GODOT_set_timer_process_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Timer.TimerProcessMode) _GODOT_get_timer_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_timer_process_mode") = _GODOT_get_timer_process_mode;
	/**
	
	*/
	Timer.TimerProcessMode getTimerProcessMode() const
	{
		_GODOT_get_timer_process_mode.bind("Timer", "get_timer_process_mode");
		return ptrcall!(Timer.TimerProcessMode)(_GODOT_get_timer_process_mode, _godot_object);
	}
	/**
	Processing mode. Uses TIMER_PROCESS_* constants as value.
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
	/**
	If `true`, Timer will stop when reaching 0. If `false`, it will restart. Default value: `false`.
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
	If `true`, Timer will automatically start when entering the scene tree. Default value: `false`.
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
	The timer's remaining time in seconds. Returns 0 if the timer is inactive.
	*/
	@property double timeLeft()
	{
		return getTimeLeft();
	}
}
