/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.aescontext;
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
@GodotBaseClass struct AESContext
{
	package(godot) enum string _GODOT_internal_name = "AESContext";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("finish") GodotMethod!(void) finish;
		@GodotName("get_iv_state") GodotMethod!(PoolByteArray) getIvState;
		@GodotName("start") GodotMethod!(GodotError, long, PoolByteArray, PoolByteArray) start;
		@GodotName("update") GodotMethod!(PoolByteArray, PoolByteArray) update;
	}
	/// 
	pragma(inline, true) bool opEquals(in AESContext other) const
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
	/// Construct a new instance of AESContext.
	/// Note: use `memnew!AESContext` instead.
	static AESContext _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AESContext");
		if(constructor is null) return typeof(this).init;
		return cast(AESContext)(constructor());
	}
	/// 
	enum Mode : int
	{
		/** */
		modeEcbEncrypt = 0,
		/** */
		modeEcbDecrypt = 1,
		/** */
		modeCbcEncrypt = 2,
		/** */
		modeCbcDecrypt = 3,
		/** */
		modeMax = 4,
	}
	/// 
	enum Constants : int
	{
		modeEcbEncrypt = 0,
		modeEcbDecrypt = 1,
		modeCbcEncrypt = 2,
		modeCbcDecrypt = 3,
		modeMax = 4,
	}
	/**
	
	*/
	void finish()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.finish, _godot_object);
	}
	/**
	
	*/
	PoolByteArray getIvState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.getIvState, _godot_object);
	}
	/**
	
	*/
	GodotError start(in long mode, in PoolByteArray key, in PoolByteArray iv = PoolByteArray.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.start, _godot_object, mode, key, iv);
	}
	/**
	
	*/
	PoolByteArray update(in PoolByteArray src)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.update, _godot_object, src);
	}
}
