/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.cryptokey;
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
import godot.resource;
/**

*/
@GodotBaseClass struct CryptoKey
{
	package(godot) enum string _GODOT_internal_name = "CryptoKey";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("is_public_only") GodotMethod!(bool) isPublicOnly;
		@GodotName("load") GodotMethod!(GodotError, String, bool) load;
		@GodotName("load_from_string") GodotMethod!(GodotError, String, bool) loadFromString;
		@GodotName("save") GodotMethod!(GodotError, String, bool) save;
		@GodotName("save_to_string") GodotMethod!(String, bool) saveToString;
	}
	/// 
	pragma(inline, true) bool opEquals(in CryptoKey other) const
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
	/// Construct a new instance of CryptoKey.
	/// Note: use `memnew!CryptoKey` instead.
	static CryptoKey _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CryptoKey");
		if(constructor is null) return typeof(this).init;
		return cast(CryptoKey)(constructor());
	}
	/**
	
	*/
	bool isPublicOnly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPublicOnly, _godot_object);
	}
	/**
	
	*/
	GodotError load(in String path, in bool public_only = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.load, _godot_object, path, public_only);
	}
	/**
	
	*/
	GodotError loadFromString(in String string_key, in bool public_only = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadFromString, _godot_object, string_key, public_only);
	}
	/**
	
	*/
	GodotError save(in String path, in bool public_only = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.save, _godot_object, path, public_only);
	}
	/**
	
	*/
	String saveToString(in bool public_only = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.saveToString, _godot_object, public_only);
	}
}
