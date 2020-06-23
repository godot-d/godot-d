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

Can run methods on $(D GodotObject)s simultaneously. The use of synchronization via $(D Mutex) or $(D Semaphore) is advised if working with shared objects.
*/
@GodotBaseClass struct Thread
{
	package(godot) enum string _GODOT_internal_name = "_Thread";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_id") GodotMethod!(String) getId;
		@GodotName("is_active") GodotMethod!(bool) isActive;
		@GodotName("start") GodotMethod!(GodotError, GodotObject, String, Variant, long) start;
		@GodotName("wait_to_finish") GodotMethod!(Variant) waitToFinish;
	}
	/// 
	pragma(inline, true) bool opEquals(in Thread other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) Thread opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of Thread.
	/// Note: use `memnew!Thread` instead.
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
		A thread running with lower priority than normally.
		*/
		priorityLow = 0,
		/**
		A thread with a standard priority.
		*/
		priorityNormal = 1,
		/**
		A thread running with higher priority than normally.
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
	Returns the current $(D Thread)'s ID, uniquely identifying it among all threads.
	*/
	String getId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getId, _godot_object);
	}
	/**
	Returns `true` if this $(D Thread) is currently active. An active $(D Thread) cannot start work on a new method but can be joined with $(D waitToFinish).
	*/
	bool isActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActive, _godot_object);
	}
	/**
	Starts a new $(D Thread) that runs `method` on object `instance` with `userdata` passed as an argument. Even if no userdata is passed, `method` must accept one argument and it will be null. The `priority` of the $(D Thread) can be changed by passing a value from the $(D priority) enum.
	Returns $(D constant OK) on success, or $(D constant ERR_CANT_CREATE) on failure.
	*/
	GodotError start(VariantArg2)(GodotObject instance, in String method, in VariantArg2 userdata = Variant.nil, in long priority = 1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.start, _godot_object, instance, method, userdata, priority);
	}
	/**
	Joins the $(D Thread) and waits for it to finish. Returns what the method called returned.
	*/
	Variant waitToFinish()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.waitToFinish, _godot_object);
	}
}
