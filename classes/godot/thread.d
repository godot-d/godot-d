/**
A unit of execution in a process.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.thread;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
A unit of execution in a process.

Can run methods on $(D GodotObject)s simultaneously. The use of synchronization via $(D Mutex), $(D Semaphore) is advised if working with shared objects.
*/
@GodotBaseClass struct Thread
{
	static immutable string _GODOT_internal_name = "_Thread";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Thread other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Thread opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Thread _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Thread");
		if(constructor is null) return typeof(this).init;
		return cast(Thread)(constructor());
	}
	/// 
	enum Priority : int
	{
		/**
		
		*/
		priorityLow = 0,
		/**
		
		*/
		priorityNormal = 1,
		/**
		
		*/
		priorityHigh = 2,
	}
	/// 
	enum Constants : int
	{
		priorityLow = 0,
		priorityNormal = 1,
		priorityHigh = 2,
	}
	package(godot) static GodotMethod!(GodotError, GodotObject, String, Variant, long) _GODOT_start;
	package(godot) alias _GODOT_methodBindInfo(string name : "start") = _GODOT_start;
	/**
	Starts a new `Thread` that runs "method" on object "instance" with "userdata" passed as an argument. The "priority" of the `Thread` can be changed by passing a PRIORITY_* enum.
	Returns OK on success, or ERR_CANT_CREATE on failure.
	*/
	GodotError start(StringArg1, VariantArg2)(GodotObject instance, in StringArg1 method, in VariantArg2 userdata = Variant.nil, in long priority = 1)
	{
		_GODOT_start.bind("_Thread", "start");
		return ptrcall!(GodotError)(_GODOT_start, _godot_object, instance, method, userdata, priority);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_id") = _GODOT_get_id;
	/**
	Returns the current `Thread`s id, uniquely identifying it among all threads.
	*/
	String getId() const
	{
		_GODOT_get_id.bind("_Thread", "get_id");
		return ptrcall!(String)(_GODOT_get_id, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_active") = _GODOT_is_active;
	/**
	Returns true if this `Thread` is currently active. An active `Thread` cannot start work on a new method but can be joined with $(D waitToFinish).
	*/
	bool isActive() const
	{
		_GODOT_is_active.bind("_Thread", "is_active");
		return ptrcall!(bool)(_GODOT_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_wait_to_finish;
	package(godot) alias _GODOT_methodBindInfo(string name : "wait_to_finish") = _GODOT_wait_to_finish;
	/**
	Joins the `Thread` and waits for it to finish. Returns what the method called returned.
	*/
	Variant waitToFinish()
	{
		_GODOT_wait_to_finish.bind("_Thread", "wait_to_finish");
		return ptrcall!(Variant)(_GODOT_wait_to_finish, _godot_object);
	}
}
