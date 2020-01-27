/**
A synchronization mutex (mutual exclusion).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.mutex;
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
A synchronization mutex (mutual exclusion).

This is used to synchronize multiple $(D Thread)s, and is equivalent to a binary $(D Semaphore). It guarantees that only one thread can ever acquire the lock at a time. A mutex can be used to protect a critical section; however, be careful to avoid deadlocks.
*/
@GodotBaseClass struct Mutex
{
	enum string _GODOT_internal_name = "_Mutex";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("lock") GodotMethod!(void) lock;
		@GodotName("try_lock") GodotMethod!(GodotError) tryLock;
		@GodotName("unlock") GodotMethod!(void) unlock;
	}
	bool opEquals(in Mutex other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Mutex opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Mutex _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Mutex");
		if(constructor is null) return typeof(this).init;
		return cast(Mutex)(constructor());
	}
	@disable new(size_t s);
	/**
	Locks this $(D Mutex), blocks until it is unlocked by the current owner.
	*/
	void lock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lock, _godot_object);
	}
	/**
	Tries locking this $(D Mutex), but does not block. Returns $(D constant OK) on success, $(D constant ERR_BUSY) otherwise.
	*/
	GodotError tryLock()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.tryLock, _godot_object);
	}
	/**
	Unlocks this $(D Mutex), leaving it to other threads.
	*/
	void unlock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unlock, _godot_object);
	}
}
