/**
A cryptographic key (RSA).

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
import godot.object;
import godot.classdb;
import godot.resource;
/**
A cryptographic key (RSA).

The CryptoKey class represents a cryptographic key. Keys can be loaded and saved like any other $(D Resource).
They can be used to generate a self-signed $(D X509Certificate) via $(D Crypto.generateSelfSignedCertificate) and as private key in $(D StreamPeerSSL.acceptStream) along with the appropriate certificate.
$(B Note:) Not available in HTML5 exports.
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
		@GodotName("load") GodotMethod!(GodotError, String) load;
		@GodotName("save") GodotMethod!(GodotError, String) save;
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
	@disable new(size_t s);
	/**
	Loads a key from `path` ("*.key" file).
	*/
	GodotError load(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.load, _godot_object, path);
	}
	/**
	Saves a key to the given `path` (should be a "*.key" file).
	*/
	GodotError save(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.save, _godot_object, path);
	}
}
