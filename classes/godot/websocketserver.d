/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.websocketserver;
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
import godot.networkedmultiplayerpeer;
import godot.packetpeer;
import godot.reference;
import godot.x509certificate;
import godot.cryptokey;
/**

*/
@GodotBaseClass struct WebSocketServer
{
	package(godot) enum string _GODOT_internal_name = "WebSocketServer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ WebSocketMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("disconnect_peer") GodotMethod!(void, long, long, String) disconnectPeer;
		@GodotName("get_bind_ip") GodotMethod!(String) getBindIp;
		@GodotName("get_ca_chain") GodotMethod!(X509Certificate) getCaChain;
		@GodotName("get_handshake_timeout") GodotMethod!(double) getHandshakeTimeout;
		@GodotName("get_peer_address") GodotMethod!(String, long) getPeerAddress;
		@GodotName("get_peer_port") GodotMethod!(long, long) getPeerPort;
		@GodotName("get_private_key") GodotMethod!(CryptoKey) getPrivateKey;
		@GodotName("get_ssl_certificate") GodotMethod!(X509Certificate) getSslCertificate;
		@GodotName("has_peer") GodotMethod!(bool, long) hasPeer;
		@GodotName("is_listening") GodotMethod!(bool) isListening;
		@GodotName("listen") GodotMethod!(GodotError, long, PoolStringArray, bool) listen;
		@GodotName("set_bind_ip") GodotMethod!(void, String) setBindIp;
		@GodotName("set_ca_chain") GodotMethod!(void, X509Certificate) setCaChain;
		@GodotName("set_extra_headers") GodotMethod!(void, PoolStringArray) setExtraHeaders;
		@GodotName("set_handshake_timeout") GodotMethod!(void, double) setHandshakeTimeout;
		@GodotName("set_private_key") GodotMethod!(void, CryptoKey) setPrivateKey;
		@GodotName("set_ssl_certificate") GodotMethod!(void, X509Certificate) setSslCertificate;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	/// 
	pragma(inline, true) bool opEquals(in WebSocketServer other) const
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
	/// Construct a new instance of WebSocketServer.
	/// Note: use `memnew!WebSocketServer` instead.
	static WebSocketServer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebSocketServer");
		if(constructor is null) return typeof(this).init;
		return cast(WebSocketServer)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void disconnectPeer(in long id, in long code = 1000, in String reason = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnectPeer, _godot_object, id, code, reason);
	}
	/**
	
	*/
	String getBindIp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBindIp, _godot_object);
	}
	/**
	
	*/
	Ref!X509Certificate getCaChain() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(X509Certificate)(GDNativeClassBinding.getCaChain, _godot_object);
	}
	/**
	
	*/
	double getHandshakeTimeout() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getHandshakeTimeout, _godot_object);
	}
	/**
	
	*/
	String getPeerAddress(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPeerAddress, _godot_object, id);
	}
	/**
	
	*/
	long getPeerPort(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPeerPort, _godot_object, id);
	}
	/**
	
	*/
	Ref!CryptoKey getPrivateKey() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CryptoKey)(GDNativeClassBinding.getPrivateKey, _godot_object);
	}
	/**
	
	*/
	Ref!X509Certificate getSslCertificate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(X509Certificate)(GDNativeClassBinding.getSslCertificate, _godot_object);
	}
	/**
	
	*/
	bool hasPeer(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasPeer, _godot_object, id);
	}
	/**
	
	*/
	bool isListening() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isListening, _godot_object);
	}
	/**
	
	*/
	GodotError listen(in long port, in PoolStringArray protocols = PoolStringArray.init, in bool gd_mp_api = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.listen, _godot_object, port, protocols, gd_mp_api);
	}
	/**
	
	*/
	void setBindIp(in String ip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBindIp, _godot_object, ip);
	}
	/**
	
	*/
	void setCaChain(X509Certificate ca_chain)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCaChain, _godot_object, ca_chain);
	}
	/**
	
	*/
	void setExtraHeaders(in PoolStringArray headers = PoolStringArray.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExtraHeaders, _godot_object, headers);
	}
	/**
	
	*/
	void setHandshakeTimeout(in double timeout)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHandshakeTimeout, _godot_object, timeout);
	}
	/**
	
	*/
	void setPrivateKey(CryptoKey key)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPrivateKey, _godot_object, key);
	}
	/**
	
	*/
	void setSslCertificate(X509Certificate certificate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSslCertificate, _godot_object, certificate);
	}
	/**
	
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
	}
	/**
	
	*/
	@property String bindIp()
	{
		return getBindIp();
	}
	/// ditto
	@property void bindIp(String v)
	{
		setBindIp(v);
	}
	/**
	
	*/
	@property X509Certificate caChain()
	{
		return getCaChain();
	}
	/// ditto
	@property void caChain(X509Certificate v)
	{
		setCaChain(v);
	}
	/**
	
	*/
	@property double handshakeTimeout()
	{
		return getHandshakeTimeout();
	}
	/// ditto
	@property void handshakeTimeout(double v)
	{
		setHandshakeTimeout(v);
	}
	/**
	
	*/
	@property CryptoKey privateKey()
	{
		return getPrivateKey();
	}
	/// ditto
	@property void privateKey(CryptoKey v)
	{
		setPrivateKey(v);
	}
	/**
	
	*/
	@property X509Certificate sslCertificate()
	{
		return getSslCertificate();
	}
	/// ditto
	@property void sslCertificate(X509Certificate v)
	{
		setSslCertificate(v);
	}
}
