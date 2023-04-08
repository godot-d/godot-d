/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.hashingcontext;
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
/**

*/
@GodotBaseClass struct HashingContext
{
	package(godot) enum string _GODOT_internal_name = "HashingContext";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("finish") GodotMethod!(PoolByteArray) finish;
		@GodotName("start") GodotMethod!(GodotError, long) start;
		@GodotName("update") GodotMethod!(GodotError, PoolByteArray) update;
	}
	/// 
	pragma(inline, true) bool opEquals(in HashingContext other) const
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
	/// Construct a new instance of HashingContext.
	/// Note: use `memnew!HashingContext` instead.
	static HashingContext _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("HashingContext");
		if(constructor is null) return typeof(this).init;
		return cast(HashingContext)(constructor());
	}
	/// 
	enum HashType : int
	{
		/** */
		hashMd5 = 0,
		/** */
		hashSha1 = 1,
		/** */
		hashSha256 = 2,
	}
	/// 
	enum Constants : int
	{
		hashMd5 = 0,
		hashSha1 = 1,
		hashSha256 = 2,
	}
	/**
	
	*/
	PoolByteArray finish()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.finish, _godot_object);
	}
	/**
	
	*/
	GodotError start(in long type)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.start, _godot_object, type);
	}
	/**
	
	*/
	GodotError update(in PoolByteArray chunk)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.update, _godot_object, chunk);
	}
}
