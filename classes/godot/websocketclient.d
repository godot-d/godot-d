/**
A WebSocket client implementation.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.websocketclient;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.websocketmultiplayerpeer;
import godot.x509certificate;
/**
A WebSocket client implementation.

This class implements a WebSocket client compatible with any RFC 6455-compliant WebSocket server.
This client can be optionally used as a network peer for the $(D MultiplayerAPI).
After starting the client ($(D connectToUrl)), you will need to $(D NetworkedMultiplayerPeer.poll) it at regular intervals (e.g. inside $(D Node._process)).
You will receive appropriate signals when connecting, disconnecting, or when new data is available.
*/
@GodotBaseClass struct WebSocketClient
{
	enum string _GODOT_internal_name = "WebSocketClient";
public:
@nogc nothrow:
	union { godot_object _godot_object; WebSocketMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
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
	bool opEquals(in WebSocketClient other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WebSocketClient opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WebSocketClient _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebSocketClient");
		if(constructor is null) return typeof(this).init;
		return cast(WebSocketClient)(constructor());
	}
	@disable new(size_t s);
	/**
	Connects to the given URL requesting one of the given `protocols` as sub-protocol. If the list empty (default), no sub-protocol will be requested.
	If `true` is passed as `gd_mp_api`, the client will behave like a network peer for the $(D MultiplayerAPI), connections to non-Godot servers will not work, and $(D dataReceived) will not be emitted.
	If `false` is passed instead (default), you must call $(D PacketPeer) functions (`put_packet`, `get_packet`, etc.) on the $(D WebSocketPeer) returned via `get_peer(1)` and not on this object directly (e.g. `get_peer(1).put_packet(data)`).
	You can optionally pass a list of `custom_headers` to be added to the handshake HTTP request.
	$(B Note:) Specifying `custom_headers` is not supported in HTML5 exports due to browsers restrictions.
	*/
	GodotError connectToUrl(in String url, in PoolStringArray protocols = PoolStringArray.init, in bool gd_mp_api = false, in PoolStringArray custom_headers = PoolStringArray.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.connectToUrl, _godot_object, url, protocols, gd_mp_api, custom_headers);
	}
	/**
	Disconnects this client from the connected host. See $(D WebSocketPeer.close) for more information.
	*/
	void disconnectFromHost(in long code = 1000, in String reason = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectFromHost, _godot_object, code, reason);
	}
	/**
	Return the IP address of the currently connected host.
	*/
	String getConnectedHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getConnectedHost, _godot_object);
	}
	/**
	Return the IP port of the currently connected host.
	*/
	long getConnectedPort() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConnectedPort, _godot_object);
	}
	/**
	
	*/
	Ref!X509Certificate getTrustedSslCertificate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(X509Certificate)(_classBinding.getTrustedSslCertificate, _godot_object);
	}
	/**
	
	*/
	bool isVerifySslEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isVerifySslEnabled, _godot_object);
	}
	/**
	
	*/
	void setTrustedSslCertificate(X509Certificate arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTrustedSslCertificate, _godot_object, arg0);
	}
	/**
	
	*/
	void setVerifySslEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVerifySslEnabled, _godot_object, enabled);
	}
	/**
	If specified, this $(D X509Certificate) will be the only one accepted when connecting to an SSL host. Any other certificate provided by the server will be regarded as invalid.
	$(B Note:) Specifying a custom `trusted_ssl_certificate` is not supported in HTML5 exports due to browsers restrictions.
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
	If `true`, SSL certificate verification is enabled.
	$(B Note:) You must specify the certificates to be used in the Project Settings for it to work when exported.
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
