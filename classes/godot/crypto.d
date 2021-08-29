/**
Access to advanced cryptographic functionalities.

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
Access to advanced cryptographic functionalities.

The Crypto class allows you to access some more advanced cryptographic functionalities in Godot.
For now, this includes generating cryptographically secure random bytes, and RSA keys and self-signed X509 certificates generation. More functionalities are planned for future releases.


extends Node

var crypto = Crypto.new()
var key = CryptoKey.new()
var cert = X509Certificate.new()

func _ready():
    # Generate new RSA key.
    key = crypto.generate_rsa(4096)
    # Generate new self-signed certificate with the given key.
    cert = crypto.generate_self_signed_certificate(key, "CN=mydomain.com,O=My Game Company,C=IT")
    # Save key and certificate in the user folder.
    key.save("user://generated.key")
    cert.save("user://generated.crt")


$(B Note:) Not available in HTML5 exports.
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
		@GodotName("generate_random_bytes") GodotMethod!(PoolByteArray, long) generateRandomBytes;
		@GodotName("generate_rsa") GodotMethod!(CryptoKey, long) generateRsa;
		@GodotName("generate_self_signed_certificate") GodotMethod!(X509Certificate, CryptoKey, String, String, String) generateSelfSignedCertificate;
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
	@disable new(size_t s);
	/**
	Generates a $(D PoolByteArray) of cryptographically secure random bytes with given `size`.
	*/
	PoolByteArray generateRandomBytes(in long size)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.generateRandomBytes, _godot_object, size);
	}
	/**
	Generates an RSA $(D CryptoKey) that can be used for creating self-signed certificates and passed to $(D StreamPeerSSL.acceptStream).
	*/
	Ref!CryptoKey generateRsa(in long size)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CryptoKey)(GDNativeClassBinding.generateRsa, _godot_object, size);
	}
	/**
	Generates a self-signed $(D X509Certificate) from the given $(D CryptoKey) and `issuer_name`. The certificate validity will be defined by `not_before` and `not_after` (first valid date and last valid date). The `issuer_name` must contain at least "CN=" (common name, i.e. the domain name), "O=" (organization, i.e. your company name), "C=" (country, i.e. 2 lettered ISO-3166 code of the country the organization is based in).
	A small example to generate an RSA key and a X509 self-signed certificate.
	
	
	var crypto = Crypto.new()
	# Generate 4096 bits RSA key.
	var key = crypto.generate_rsa(4096)
	# Generate self-signed certificate using the given key.
	var cert = crypto.generate_self_signed_certificate(key, "CN=example.com,O=A Game Company,C=IT")
	
	
	*/
	Ref!X509Certificate generateSelfSignedCertificate(CryptoKey key, in String issuer_name = gs!"CN=myserver,O=myorganisation,C=IT", in String not_before = gs!"20140101000000", in String not_after = gs!"20340101000000")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(X509Certificate)(GDNativeClassBinding.generateSelfSignedCertificate, _godot_object, key, issuer_name, not_before, not_after);
	}
}
