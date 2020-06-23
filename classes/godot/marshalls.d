/**
Data transformation (marshalling) and encoding helpers.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.marshalls;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**
Data transformation (marshalling) and encoding helpers.

Provides data transformation and encoding utility functions.
*/
@GodotBaseClass struct MarshallsSingleton
{
	package(godot) enum string _GODOT_internal_name = "_Marshalls";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "Marshalls";
		@GodotName("base64_to_raw") GodotMethod!(PoolByteArray, String) base64ToRaw;
		@GodotName("base64_to_utf8") GodotMethod!(String, String) base64ToUtf8;
		@GodotName("base64_to_variant") GodotMethod!(Variant, String, bool) base64ToVariant;
		@GodotName("raw_to_base64") GodotMethod!(String, PoolByteArray) rawToBase64;
		@GodotName("utf8_to_base64") GodotMethod!(String, String) utf8ToBase64;
		@GodotName("variant_to_base64") GodotMethod!(String, Variant, bool) variantToBase64;
	}
	/// 
	pragma(inline, true) bool opEquals(in MarshallsSingleton other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) MarshallsSingleton opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of MarshallsSingleton.
	/// Note: use `memnew!MarshallsSingleton` instead.
	static MarshallsSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Marshalls");
		if(constructor is null) return typeof(this).init;
		return cast(MarshallsSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns a decoded $(D PoolByteArray) corresponding to the Base64-encoded string `base64_str`.
	*/
	PoolByteArray base64ToRaw(in String base64_str)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.base64ToRaw, _godot_object, base64_str);
	}
	/**
	Returns a decoded string corresponding to the Base64-encoded string `base64_str`.
	*/
	String base64ToUtf8(in String base64_str)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.base64ToUtf8, _godot_object, base64_str);
	}
	/**
	Returns a decoded $(D Variant) corresponding to the Base64-encoded string `base64_str`. If `allow_objects` is `true`, decoding objects is allowed.
	$(B Warning:) Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	*/
	Variant base64ToVariant(in String base64_str, in bool allow_objects = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.base64ToVariant, _godot_object, base64_str, allow_objects);
	}
	/**
	Returns a Base64-encoded string of a given $(D PoolByteArray).
	*/
	String rawToBase64(in PoolByteArray array)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.rawToBase64, _godot_object, array);
	}
	/**
	Returns a Base64-encoded string of the UTF-8 string `utf8_str`.
	*/
	String utf8ToBase64(in String utf8_str)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.utf8ToBase64, _godot_object, utf8_str);
	}
	/**
	Returns a Base64-encoded string of the $(D Variant) `variant`. If `full_objects` is `true`, encoding objects is allowed (and can potentially include code).
	*/
	String variantToBase64(VariantArg0)(in VariantArg0 variant, in bool full_objects = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.variantToBase64, _godot_object, variant, full_objects);
	}
}
/// Returns: the MarshallsSingleton
@property @nogc nothrow pragma(inline, true)
MarshallsSingleton Marshalls()
{
	checkClassBinding!MarshallsSingleton();
	return MarshallsSingleton(MarshallsSingleton.GDNativeClassBinding._singleton);
}
