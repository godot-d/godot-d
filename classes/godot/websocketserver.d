/**
A WebSocket server implementation.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.websocketserver;
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
import godot.networkedmultiplayerpeer;
import godot.packetpeer;
import godot.reference;
import godot.x509certificate;
import godot.cryptokey;
/**
A WebSocket server implementation.

This class implements a WebSocket server that can also support the high-level multiplayer API.
After starting the server ($(D listen)), you will need to $(D NetworkedMultiplayerPeer.poll) it at regular intervals (e.g. inside $(D Node._process)). When clients connect, disconnect, or send data, you will receive the appropriate signal.
$(B Note:) Not available in HTML5 exports.
*/
@GodotBaseClass struct WebSocketServer
{
	enum string _GODOT_internal_name = "WebSocketServer";
public:
@nogc nothrow:
	union { godot_object _godot_object; WebSocketMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("disconnect_peer") GodotMethod!(void, long, long, String) disconnectPeer;
		@GodotName("get_bind_ip") GodotMethod!(String) getBindIp;
		@GodotName("get_ca_chain") GodotMethod!(X509Certificate) getCaChain;
		@GodotName("get_peer_address") GodotMethod!(String, long) getPeerAddress;
		@GodotName("get_peer_port") GodotMethod!(long, long) getPeerPort;
		@GodotName("get_private_key") GodotMethod!(CryptoKey) getPrivateKey;
		@GodotName("get_ssl_certificate") GodotMethod!(X509Certificate) getSslCertificate;
		@GodotName("has_peer") GodotMethod!(bool, long) hasPeer;
		@GodotName("is_listening") GodotMethod!(bool) isListening;
		@GodotName("listen") GodotMethod!(GodotError, long, PoolStringArray, bool) listen;
		@GodotName("set_bind_ip") GodotMethod!(void, String) setBindIp;
		@GodotName("set_ca_chain") GodotMethod!(void, X509Certificate) setCaChain;
		@GodotName("set_private_key") GodotMethod!(void, CryptoKey) setPrivateKey;
		@GodotName("set_ssl_certificate") GodotMethod!(void, X509Certificate) setSslCertificate;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	bool opEquals(in WebSocketServer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WebSocketServer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WebSocketServer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebSocketServer");
		if(constructor is null) return typeof(this).init;
		return cast(WebSocketServer)(constructor());
	}
	@disable new(size_t s);
	/**
	Disconnects the peer identified by `id` from the server. See $(D WebSocketPeer.close) for more information.
	*/
	void disconnectPeer(in long id, in long code = 1000, in String reason = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectPeer, _godot_object, id, code, reason);
	}
	/**
	
	*/
	String getBindIp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBindIp, _godot_object);
	}
	/**
	
	*/
	Ref!X509Certificate getCaChain() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(X509Certificate)(_classBinding.getCaChain, _godot_object);
	}
	/**
	Returns the IP address of the given peer.
	*/
	String getPeerAddress(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getPeerAddress, _godot_object, id);
	}
	/**
	Returns the remote port of the given peer.
	*/
	long getPeerPort(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPeerPort, _godot_object, id);
	}
	/**
	
	*/
	Ref!CryptoKey getPrivateKey() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CryptoKey)(_classBinding.getPrivateKey, _godot_object);
	}
	/**
	
	*/
	Ref!X509Certificate getSslCertificate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(X509Certificate)(_classBinding.getSslCertificate, _godot_object);
	}
	/**
	Returns `true` if a peer with the given ID is connected.
	*/
	bool hasPeer(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasPeer, _godot_object, id);
	}
	/**
	Returns `true` if the server is actively listening on a port.
	*/
	bool isListening() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isListening, _godot_object);
	}
	/**
	Starts listening on the given port.
	You can specify the desired subprotocols via the "protocols" array. If the list empty (default), no sub-protocol will be requested.
	If `true` is passed as `gd_mp_api`, the server will behave like a network peer for the $(D MultiplayerAPI), connections from non-Godot clients will not work, and $(D dataReceived) will not be emitted.
	If `false` is passed instead (default), you must call $(D PacketPeer) functions (`put_packet`, `get_packet`, etc.), on the $(D WebSocketPeer) returned via `get_peer(id)` to communicate with the peer with given `id` (e.g. `get_peer(id).get_available_packet_count`).
	*/
	GodotError listen(in long port, in PoolStringArray protocols = PoolStringArray.init, in bool gd_mp_api = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.listen, _godot_object, port, protocols, gd_mp_api);
	}
	/**
	
	*/
	void setBindIp(in String arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBindIp, _godot_object, arg0);
	}
	/**
	
	*/
	void setCaChain(X509Certificate arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCaChain, _godot_object, arg0);
	}
	/**
	
	*/
	void setPrivateKey(CryptoKey arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPrivateKey, _godot_object, arg0);
	}
	/**
	
	*/
	void setSslCertificate(X509Certificate arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSslCertificate, _godot_object, arg0);
	}
	/**
	Stops the server and clear its state.
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stop, _godot_object);
	}
	/**
	When not set to `*` will restrict incoming connections to the specified IP address. Setting `bind_ip` to `127.0.0.1` will cause the server to listen only to the local host.
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
	When using SSL (see $(D privateKey) and $(D sslCertificate)), you can set this to a valid $(D X509Certificate) to be provided as additional CA chain information during the SSL handshake.
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
	When set to a valid $(D CryptoKey) (along with $(D sslCertificate)) will cause the server to require SSL instead of regular TCP (i.e. the `wss://` protocol).
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
	When set to a valid $(D X509Certificate) (along with $(D privateKey)) will cause the server to require SSL instead of regular TCP (i.e. the `wss://` protocol).
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
