/**
A synchronization Semaphore.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.semaphore;
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
A synchronization Semaphore.

Element used to synchronize multiple $(D Thread)s. Initialized to zero on creation. Be careful to avoid deadlocks. For a binary version, see $(D Mutex).
*/
@GodotBaseClass struct Semaphore
{
	static immutable string _GODOT_internal_name = "_Semaphore";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Semaphore other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Semaphore opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Semaphore _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Semaphore");
		if(constructor is null) return typeof(this).init;
		return cast(Semaphore)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(GodotError) _GODOT_wait;
	package(godot) alias _GODOT_methodBindInfo(string name : "wait") = _GODOT_wait;
	/**
	Tries to wait for the `Semaphore`, if its value is zero, blocks until non-zero. Returns $(D OK) on success, $(D ERR_BUSY) otherwise.
	*/
	GodotError wait()
	{
		_GODOT_wait.bind("_Semaphore", "wait");
		return ptrcall!(GodotError)(_GODOT_wait, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_post;
	package(godot) alias _GODOT_methodBindInfo(string name : "post") = _GODOT_post;
	/**
	Lowers the `Semaphore`, allowing one more thread in. Returns $(D OK) on success, $(D ERR_BUSY) otherwise.
	*/
	GodotError post()
	{
		_GODOT_post.bind("_Semaphore", "post");
		return ptrcall!(GodotError)(_GODOT_post, _godot_object);
	}
}
