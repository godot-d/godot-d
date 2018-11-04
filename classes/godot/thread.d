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
	enum string _GODOT_internal_name = "_Thread";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("start") GodotMethod!(GodotError, GodotObject, String, Variant, long) start;
		@GodotName("get_id") GodotMethod!(String) getId;
		@GodotName("is_active") GodotMethod!(bool) isActive;
		@GodotName("wait_to_finish") GodotMethod!(Variant) waitToFinish;
	}
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
	@disable new(size_t s);
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
	/**
	Starts a new `Thread` that runs "method" on object "instance" with "userdata" passed as an argument. The "priority" of the `Thread` can be changed by passing a PRIORITY_* enum.
	Returns OK on success, or ERR_CANT_CREATE on failure.
	*/
	GodotError start(VariantArg2)(GodotObject instance, in String method, in VariantArg2 userdata = Variant.nil, in long priority = 1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.start, _godot_object, instance, method, userdata, priority);
	}
	/**
	Returns the current `Thread`s id, uniquely identifying it among all threads.
	*/
	String getId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getId, _godot_object);
	}
	/**
	Returns true if this `Thread` is currently active. An active `Thread` cannot start work on a new method but can be joined with $(D waitToFinish).
	*/
	bool isActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isActive, _godot_object);
	}
	/**
	Joins the `Thread` and waits for it to finish. Returns what the method called returned.
	*/
	Variant waitToFinish()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.waitToFinish, _godot_object);
	}
}
