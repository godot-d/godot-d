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
	enum string _GODOT_internal_name = "_Marshalls";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "Marshalls";
		@GodotName("variant_to_base64") GodotMethod!(String, Variant) variantToBase64;
		@GodotName("base64_to_variant") GodotMethod!(Variant, String) base64ToVariant;
		@GodotName("raw_to_base64") GodotMethod!(String, PoolByteArray) rawToBase64;
		@GodotName("base64_to_raw") GodotMethod!(PoolByteArray, String) base64ToRaw;
		@GodotName("utf8_to_base64") GodotMethod!(String, String) utf8ToBase64;
		@GodotName("base64_to_utf8") GodotMethod!(String, String) base64ToUtf8;
	}
	bool opEquals(in MarshallsSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MarshallsSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MarshallsSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Marshalls");
		if(constructor is null) return typeof(this).init;
		return cast(MarshallsSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	Return base64 encoded String of a given $(D Variant).
	*/
	String variantToBase64(VariantArg0)(in VariantArg0 variant)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.variantToBase64, _godot_object, variant);
	}
	/**
	Return $(D Variant) of a given base64 encoded String.
	*/
	Variant base64ToVariant(in String base64_str)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.base64ToVariant, _godot_object, base64_str);
	}
	/**
	Return base64 encoded String of a given $(D PoolByteArray).
	*/
	String rawToBase64(in PoolByteArray array)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.rawToBase64, _godot_object, array);
	}
	/**
	Return $(D PoolByteArray) of a given base64 encoded String.
	*/
	PoolByteArray base64ToRaw(in String base64_str)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.base64ToRaw, _godot_object, base64_str);
	}
	/**
	Return base64 encoded String of a given utf8 String.
	*/
	String utf8ToBase64(in String utf8_str)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.utf8ToBase64, _godot_object, utf8_str);
	}
	/**
	Return utf8 String of a given base64 encoded String.
	*/
	String base64ToUtf8(in String base64_str)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.base64ToUtf8, _godot_object, base64_str);
	}
}
/// Returns: the MarshallsSingleton
@property @nogc nothrow pragma(inline, true)
MarshallsSingleton Marshalls()
{
	checkClassBinding!MarshallsSingleton();
	return MarshallsSingleton(MarshallsSingleton._classBinding._singleton);
}
