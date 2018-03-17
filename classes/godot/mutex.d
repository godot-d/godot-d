/**
A synchronization Mutex.

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
A synchronization Mutex.

Element used to synchronize multiple $(D Thread)s. Basically a binary $(D Semaphore). Guarantees that only one thread can ever acquire this lock at a time. Can be used to protect a critical section. Be careful to avoid deadlocks.
*/
@GodotBaseClass struct Mutex
{
	static immutable string _GODOT_internal_name = "_Mutex";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void) _GODOT_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "lock") = _GODOT_lock;
	/**
	Lock this `Mutex`, blocks until it is unlocked by the current owner.
	*/
	void lock()
	{
		_GODOT_lock.bind("_Mutex", "lock");
		ptrcall!(void)(_GODOT_lock, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_try_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "try_lock") = _GODOT_try_lock;
	/**
	Try locking this `Mutex`, does not block. Returns $(D OK) on success, $(D ERR_BUSY) otherwise.
	*/
	GodotError tryLock()
	{
		_GODOT_try_lock.bind("_Mutex", "try_lock");
		return ptrcall!(GodotError)(_GODOT_try_lock, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_unlock;
	package(godot) alias _GODOT_methodBindInfo(string name : "unlock") = _GODOT_unlock;
	/**
	Unlock this `Mutex`, leaving it to other threads.
	*/
	void unlock()
	{
		_GODOT_unlock.bind("_Mutex", "unlock");
		ptrcall!(void)(_GODOT_unlock, _godot_object);
	}
}
