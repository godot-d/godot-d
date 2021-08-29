/**
An X509 certificate (e.g. for SSL).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.x509certificate;
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
import godot.reference;
/**
An X509 certificate (e.g. for SSL).

The X509Certificate class represents an X509 certificate. Certificates can be loaded and saved like any other $(D Resource).
They can be used as the server certificate in $(D StreamPeerSSL.acceptStream) (along with the proper $(D CryptoKey)), and to specify the only certificate that should be accepted when connecting to an SSL server via $(D StreamPeerSSL.connectToStream).
$(B Note:) Not available in HTML5 exports.
*/
@GodotBaseClass struct X509Certificate
{
	package(godot) enum string _GODOT_internal_name = "X509Certificate";
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
	pragma(inline, true) bool opEquals(in X509Certificate other) const
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
	/// Construct a new instance of X509Certificate.
	/// Note: use `memnew!X509Certificate` instead.
	static X509Certificate _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("X509Certificate");
		if(constructor is null) return typeof(this).init;
		return cast(X509Certificate)(constructor());
	}
	@disable new(size_t s);
	/**
	Loads a certificate from `path` ("*.crt" file).
	*/
	GodotError load(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.load, _godot_object, path);
	}
	/**
	Saves a certificate to the given `path` (should be a "*.crt" file).
	*/
	GodotError save(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.save, _godot_object, path);
	}
}
