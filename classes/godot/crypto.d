/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.crypto;
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
import godot.cryptokey;
import godot.x509certificate;
/**

*/
@GodotBaseClass struct Crypto
{
	package(godot) enum string _GODOT_internal_name = "Crypto";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("constant_time_compare") GodotMethod!(bool, PoolByteArray, PoolByteArray) constantTimeCompare;
		@GodotName("decrypt") GodotMethod!(PoolByteArray, CryptoKey, PoolByteArray) decrypt;
		@GodotName("encrypt") GodotMethod!(PoolByteArray, CryptoKey, PoolByteArray) encrypt;
		@GodotName("generate_random_bytes") GodotMethod!(PoolByteArray, long) generateRandomBytes;
		@GodotName("generate_rsa") GodotMethod!(CryptoKey, long) generateRsa;
		@GodotName("generate_self_signed_certificate") GodotMethod!(X509Certificate, CryptoKey, String, String, String) generateSelfSignedCertificate;
		@GodotName("hmac_digest") GodotMethod!(PoolByteArray, long, PoolByteArray, PoolByteArray) hmacDigest;
		@GodotName("sign") GodotMethod!(PoolByteArray, long, PoolByteArray, CryptoKey) sign;
		@GodotName("verify") GodotMethod!(bool, long, PoolByteArray, PoolByteArray, CryptoKey) verify;
	}
	/// 
	pragma(inline, true) bool opEquals(in Crypto other) const
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
	/// Construct a new instance of Crypto.
	/// Note: use `memnew!Crypto` instead.
	static Crypto _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Crypto");
		if(constructor is null) return typeof(this).init;
		return cast(Crypto)(constructor());
	}
	/**
	
	*/
	bool constantTimeCompare(in PoolByteArray trusted, in PoolByteArray received)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.constantTimeCompare, _godot_object, trusted, received);
	}
	/**
	
	*/
	PoolByteArray decrypt(CryptoKey key, in PoolByteArray ciphertext)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.decrypt, _godot_object, key, ciphertext);
	}
	/**
	
	*/
	PoolByteArray encrypt(CryptoKey key, in PoolByteArray plaintext)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.encrypt, _godot_object, key, plaintext);
	}
	/**
	
	*/
	PoolByteArray generateRandomBytes(in long size)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.generateRandomBytes, _godot_object, size);
	}
	/**
	
	*/
	Ref!CryptoKey generateRsa(in long size)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CryptoKey)(GDNativeClassBinding.generateRsa, _godot_object, size);
	}
	/**
	
	*/
	Ref!X509Certificate generateSelfSignedCertificate(CryptoKey key, in String issuer_name = gs!"CN=myserver,O=myorganisation,C=IT", in String not_before = gs!"20140101000000", in String not_after = gs!"20340101000000")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(X509Certificate)(GDNativeClassBinding.generateSelfSignedCertificate, _godot_object, key, issuer_name, not_before, not_after);
	}
	/**
	
	*/
	PoolByteArray hmacDigest(in long hash_type, in PoolByteArray key, in PoolByteArray msg)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.hmacDigest, _godot_object, hash_type, key, msg);
	}
	/**
	
	*/
	PoolByteArray sign(in long hash_type, in PoolByteArray hash, CryptoKey key)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.sign, _godot_object, hash_type, hash, key);
	}
	/**
	
	*/
	bool verify(in long hash_type, in PoolByteArray hash, in PoolByteArray signature, CryptoKey key)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.verify, _godot_object, hash_type, hash, signature, key);
	}
}
