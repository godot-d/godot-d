/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.websocketclient;
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
import godot.websocketmultiplayerpeer;
import godot.x509certificate;
/**

*/
@GodotBaseClass struct WebSocketClient
{
	package(godot) enum string _GODOT_internal_name = "WebSocketClient";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ WebSocketMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("connect_to_url") GodotMethod!(GodotError, String, PoolStringArray, bool, PoolStringArray) connectToUrl;
		@GodotName("disconnect_from_host") GodotMethod!(void, long, String) disconnectFromHost;
		@GodotName("get_connected_host") GodotMethod!(String) getConnectedHost;
		@GodotName("get_connected_port") GodotMethod!(long) getConnectedPort;
		@GodotName("get_trusted_ssl_certificate") GodotMethod!(X509Certificate) getTrustedSslCertificate;
		@GodotName("is_verify_ssl_enabled") GodotMethod!(bool) isVerifySslEnabled;
		@GodotName("set_trusted_ssl_certificate") GodotMethod!(void, X509Certificate) setTrustedSslCertificate;
		@GodotName("set_verify_ssl_enabled") GodotMethod!(void, bool) setVerifySslEnabled;
	}
	/// 
	pragma(inline, true) bool opEquals(in WebSocketClient other) const
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
	/// Construct a new instance of WebSocketClient.
	/// Note: use `memnew!WebSocketClient` instead.
	static WebSocketClient _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebSocketClient");
		if(constructor is null) return typeof(this).init;
		return cast(WebSocketClient)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	GodotError connectToUrl(in String url, in PoolStringArray protocols = PoolStringArray.init, in bool gd_mp_api = false, in PoolStringArray custom_headers = PoolStringArray.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.connectToUrl, _godot_object, url, protocols, gd_mp_api, custom_headers);
	}
	/**
	
	*/
	void disconnectFromHost(in long code = 1000, in String reason = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnectFromHost, _godot_object, code, reason);
	}
	/**
	
	*/
	String getConnectedHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getConnectedHost, _godot_object);
	}
	/**
	
	*/
	long getConnectedPort() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConnectedPort, _godot_object);
	}
	/**
	
	*/
	Ref!X509Certificate getTrustedSslCertificate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(X509Certificate)(GDNativeClassBinding.getTrustedSslCertificate, _godot_object);
	}
	/**
	
	*/
	bool isVerifySslEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVerifySslEnabled, _godot_object);
	}
	/**
	
	*/
	void setTrustedSslCertificate(X509Certificate certificate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTrustedSslCertificate, _godot_object, certificate);
	}
	/**
	
	*/
	void setVerifySslEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVerifySslEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	@property X509Certificate trustedSslCertificate()
	{
		return getTrustedSslCertificate();
	}
	/// ditto
	@property void trustedSslCertificate(X509Certificate v)
	{
		setTrustedSslCertificate(v);
	}
	/**
	
	*/
	@property bool verifySsl()
	{
		return isVerifySslEnabled();
	}
	/// ditto
	@property void verifySsl(bool v)
	{
		setVerifySslEnabled(v);
	}
}
