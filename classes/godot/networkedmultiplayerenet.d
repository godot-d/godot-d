/**
PacketPeer implementation using the $(D url=http://enet.bespin.org/index.html)ENet$(D /url) library.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.networkedmultiplayerenet;
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
import godot.networkedmultiplayerpeer;
import godot.x509certificate;
import godot.cryptokey;
/**
PacketPeer implementation using the $(D url=http://enet.bespin.org/index.html)ENet$(D /url) library.

A PacketPeer implementation that should be passed to $(D SceneTree.networkPeer) after being initialized as either a client or server. Events can then be handled by connecting to $(D SceneTree) signals.
ENet's purpose is to provide a relatively thin, simple and robust network communication layer on top of UDP (User Datagram Protocol).
$(B Note:) ENet only uses UDP, not TCP. When forwarding the server port to make your server accessible on the public Internet, you only need to forward the server port in UDP. You can use the $(D UPNP) class to try to forward the server port automatically when starting the server.
*/
@GodotBaseClass struct NetworkedMultiplayerENet
{
	package(godot) enum string _GODOT_internal_name = "NetworkedMultiplayerENet";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ NetworkedMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("close_connection") GodotMethod!(void, long) closeConnection;
		@GodotName("create_client") GodotMethod!(GodotError, String, long, long, long, long) createClient;
		@GodotName("create_server") GodotMethod!(GodotError, long, long, long, long) createServer;
		@GodotName("disconnect_peer") GodotMethod!(void, long, bool) disconnectPeer;
		@GodotName("get_channel_count") GodotMethod!(long) getChannelCount;
		@GodotName("get_compression_mode") GodotMethod!(NetworkedMultiplayerENet.CompressionMode) getCompressionMode;
		@GodotName("get_last_packet_channel") GodotMethod!(long) getLastPacketChannel;
		@GodotName("get_packet_channel") GodotMethod!(long) getPacketChannel;
		@GodotName("get_peer_address") GodotMethod!(String, long) getPeerAddress;
		@GodotName("get_peer_port") GodotMethod!(long, long) getPeerPort;
		@GodotName("get_transfer_channel") GodotMethod!(long) getTransferChannel;
		@GodotName("is_always_ordered") GodotMethod!(bool) isAlwaysOrdered;
		@GodotName("is_dtls_enabled") GodotMethod!(bool) isDtlsEnabled;
		@GodotName("is_dtls_verify_enabled") GodotMethod!(bool) isDtlsVerifyEnabled;
		@GodotName("is_server_relay_enabled") GodotMethod!(bool) isServerRelayEnabled;
		@GodotName("set_always_ordered") GodotMethod!(void, bool) setAlwaysOrdered;
		@GodotName("set_bind_ip") GodotMethod!(void, String) setBindIp;
		@GodotName("set_channel_count") GodotMethod!(void, long) setChannelCount;
		@GodotName("set_compression_mode") GodotMethod!(void, long) setCompressionMode;
		@GodotName("set_dtls_certificate") GodotMethod!(void, X509Certificate) setDtlsCertificate;
		@GodotName("set_dtls_enabled") GodotMethod!(void, bool) setDtlsEnabled;
		@GodotName("set_dtls_key") GodotMethod!(void, CryptoKey) setDtlsKey;
		@GodotName("set_dtls_verify_enabled") GodotMethod!(void, bool) setDtlsVerifyEnabled;
		@GodotName("set_peer_timeout") GodotMethod!(void, long, long, long, long) setPeerTimeout;
		@GodotName("set_server_relay_enabled") GodotMethod!(void, bool) setServerRelayEnabled;
		@GodotName("set_transfer_channel") GodotMethod!(void, long) setTransferChannel;
	}
	/// 
	pragma(inline, true) bool opEquals(in NetworkedMultiplayerENet other) const
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
	/// Construct a new instance of NetworkedMultiplayerENet.
	/// Note: use `memnew!NetworkedMultiplayerENet` instead.
	static NetworkedMultiplayerENet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NetworkedMultiplayerENet");
		if(constructor is null) return typeof(this).init;
		return cast(NetworkedMultiplayerENet)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum CompressionMode : int
	{
		/**
		No compression. This uses the most bandwidth, but has the upside of requiring the fewest CPU resources.
		*/
		compressNone = 0,
		/**
		ENet's built-in range encoding.
		*/
		compressRangeCoder = 1,
		/**
		$(D url=http://fastlz.org/)FastLZ$(D /url) compression. This option uses less CPU resources compared to $(D constant COMPRESS_ZLIB), at the expense of using more bandwidth.
		*/
		compressFastlz = 2,
		/**
		$(D url=https://www.zlib.net/)Zlib$(D /url) compression. This option uses less bandwidth compared to $(D constant COMPRESS_FASTLZ), at the expense of using more CPU resources.
		*/
		compressZlib = 3,
		/**
		$(D url=https://facebook.github.io/zstd/)Zstandard$(D /url) compression.
		*/
		compressZstd = 4,
	}
	/// 
	enum Constants : int
	{
		compressNone = 0,
		compressRangeCoder = 1,
		compressFastlz = 2,
		compressZlib = 3,
		compressZstd = 4,
	}
	/**
	Closes the connection. Ignored if no connection is currently established. If this is a server it tries to notify all clients before forcibly disconnecting them. If this is a client it simply closes the connection to the server.
	*/
	void closeConnection(in long wait_usec = 100)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.closeConnection, _godot_object, wait_usec);
	}
	/**
	Create client that connects to a server at `address` using specified `port`. The given address needs to be either a fully qualified domain name (e.g. `"www.example.com"`) or an IP address in IPv4 or IPv6 format (e.g. `"192.168.1.1"`). The `port` is the port the server is listening on. The `in_bandwidth` and `out_bandwidth` parameters can be used to limit the incoming and outgoing bandwidth to the given number of bytes per second. The default of 0 means unlimited bandwidth. Note that ENet will strategically drop packets on specific sides of a connection between peers to ensure the peer's bandwidth is not overwhelmed. The bandwidth parameters also determine the window size of a connection which limits the amount of reliable packets that may be in transit at any given time. Returns $(D constant OK) if a client was created, $(D constant ERR_ALREADY_IN_USE) if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call $(D closeConnection) first) or $(D constant ERR_CANT_CREATE) if the client could not be created. If `client_port` is specified, the client will also listen to the given port; this is useful for some NAT traversal techniques.
	*/
	GodotError createClient(in String address, in long port, in long in_bandwidth = 0, in long out_bandwidth = 0, in long client_port = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.createClient, _godot_object, address, port, in_bandwidth, out_bandwidth, client_port);
	}
	/**
	Create server that listens to connections via `port`. The port needs to be an available, unused port between 0 and 65535. Note that ports below 1024 are privileged and may require elevated permissions depending on the platform. To change the interface the server listens on, use $(D setBindIp). The default IP is the wildcard `"*"`, which listens on all available interfaces. `max_clients` is the maximum number of clients that are allowed at once, any number up to 4095 may be used, although the achievable number of simultaneous clients may be far lower and depends on the application. For additional details on the bandwidth parameters, see $(D createClient). Returns $(D constant OK) if a server was created, $(D constant ERR_ALREADY_IN_USE) if this NetworkedMultiplayerENet instance already has an open connection (in which case you need to call $(D closeConnection) first) or $(D constant ERR_CANT_CREATE) if the server could not be created.
	*/
	GodotError createServer(in long port, in long max_clients = 32, in long in_bandwidth = 0, in long out_bandwidth = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.createServer, _godot_object, port, max_clients, in_bandwidth, out_bandwidth);
	}
	/**
	Disconnect the given peer. If "now" is set to `true`, the connection will be closed immediately without flushing queued messages.
	*/
	void disconnectPeer(in long id, in bool now = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnectPeer, _godot_object, id, now);
	}
	/**
	
	*/
	long getChannelCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getChannelCount, _godot_object);
	}
	/**
	
	*/
	NetworkedMultiplayerENet.CompressionMode getCompressionMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NetworkedMultiplayerENet.CompressionMode)(GDNativeClassBinding.getCompressionMode, _godot_object);
	}
	/**
	Returns the channel of the last packet fetched via $(D PacketPeer.getPacket).
	*/
	long getLastPacketChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLastPacketChannel, _godot_object);
	}
	/**
	Returns the channel of the next packet that will be retrieved via $(D PacketPeer.getPacket).
	*/
	long getPacketChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPacketChannel, _godot_object);
	}
	/**
	Returns the IP address of the given peer.
	*/
	String getPeerAddress(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPeerAddress, _godot_object, id);
	}
	/**
	Returns the remote port of the given peer.
	*/
	long getPeerPort(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPeerPort, _godot_object, id);
	}
	/**
	
	*/
	long getTransferChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTransferChannel, _godot_object);
	}
	/**
	
	*/
	bool isAlwaysOrdered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAlwaysOrdered, _godot_object);
	}
	/**
	
	*/
	bool isDtlsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDtlsEnabled, _godot_object);
	}
	/**
	
	*/
	bool isDtlsVerifyEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDtlsVerifyEnabled, _godot_object);
	}
	/**
	
	*/
	bool isServerRelayEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isServerRelayEnabled, _godot_object);
	}
	/**
	
	*/
	void setAlwaysOrdered(in bool ordered)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlwaysOrdered, _godot_object, ordered);
	}
	/**
	The IP used when creating a server. This is set to the wildcard `"*"` by default, which binds to all available interfaces. The given IP needs to be in IPv4 or IPv6 address format, for example: `"192.168.1.1"`.
	*/
	void setBindIp(in String ip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBindIp, _godot_object, ip);
	}
	/**
	
	*/
	void setChannelCount(in long channels)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setChannelCount, _godot_object, channels);
	}
	/**
	
	*/
	void setCompressionMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCompressionMode, _godot_object, mode);
	}
	/**
	Configure the $(D X509Certificate) to use when $(D useDtls) is `true`. For servers, you must also setup the $(D CryptoKey) via $(D setDtlsKey).
	*/
	void setDtlsCertificate(X509Certificate certificate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDtlsCertificate, _godot_object, certificate);
	}
	/**
	
	*/
	void setDtlsEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDtlsEnabled, _godot_object, enabled);
	}
	/**
	Configure the $(D CryptoKey) to use when $(D useDtls) is `true`. Remember to also call $(D setDtlsCertificate) to setup your $(D X509Certificate).
	*/
	void setDtlsKey(CryptoKey key)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDtlsKey, _godot_object, key);
	}
	/**
	
	*/
	void setDtlsVerifyEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDtlsVerifyEnabled, _godot_object, enabled);
	}
	/**
	Sets the timeout parameters for a peer.	The timeout parameters control how and when a peer will timeout from a failure to acknowledge reliable traffic. Timeout values are expressed in milliseconds.
	The `timeout_limit` is a factor that, multiplied by a value based on the average round trip time, will determine the timeout limit for a reliable packet. When that limit is reached, the timeout will be doubled, and the peer will be disconnected if that limit has reached `timeout_min`. The `timeout_max` parameter, on the other hand, defines a fixed timeout for which any packet must be acknowledged or the peer will be dropped.
	*/
	void setPeerTimeout(in long id, in long timeout_limit, in long timeout_min, in long timeout_max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPeerTimeout, _godot_object, id, timeout_limit, timeout_min, timeout_max);
	}
	/**
	
	*/
	void setServerRelayEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setServerRelayEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setTransferChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransferChannel, _godot_object, channel);
	}
	/**
	Enforce ordered packets when using $(D constant NetworkedMultiplayerPeer.TRANSFER_MODE_UNRELIABLE) (thus behaving similarly to $(D constant NetworkedMultiplayerPeer.TRANSFER_MODE_UNRELIABLE_ORDERED)). This is the only way to use ordering with the RPC system.
	*/
	@property bool alwaysOrdered()
	{
		return isAlwaysOrdered();
	}
	/// ditto
	@property void alwaysOrdered(bool v)
	{
		setAlwaysOrdered(v);
	}
	/**
	The number of channels to be used by ENet. Channels are used to separate different kinds of data. In reliable or ordered mode, for example, the packet delivery order is ensured on a per-channel basis. This is done to combat latency and reduces ordering restrictions on packets. The delivery status of a packet in one channel won't stall the delivery of other packets in another channel.
	*/
	@property long channelCount()
	{
		return getChannelCount();
	}
	/// ditto
	@property void channelCount(long v)
	{
		setChannelCount(v);
	}
	/**
	The compression method used for network packets. These have different tradeoffs of compression speed versus bandwidth, you may need to test which one works best for your use case if you use compression at all.
	*/
	@property NetworkedMultiplayerENet.CompressionMode compressionMode()
	{
		return getCompressionMode();
	}
	/// ditto
	@property void compressionMode(long v)
	{
		setCompressionMode(v);
	}
	/**
	Enable or disable certificate verification when $(D useDtls) `true`.
	*/
	@property bool dtlsVerify()
	{
		return isDtlsVerifyEnabled();
	}
	/// ditto
	@property void dtlsVerify(bool v)
	{
		setDtlsVerifyEnabled(v);
	}
	/**
	Enable or disable the server feature that notifies clients of other peers' connection/disconnection, and relays messages between them. When this option is `false`, clients won't be automatically notified of other peers and won't be able to send them packets through the server.
	*/
	@property bool serverRelay()
	{
		return isServerRelayEnabled();
	}
	/// ditto
	@property void serverRelay(bool v)
	{
		setServerRelayEnabled(v);
	}
	/**
	Set the default channel to be used to transfer data. By default, this value is `-1` which means that ENet will only use 2 channels: one for reliable packets, and one for unreliable packets. The channel `0` is reserved and cannot be used. Setting this member to any value between `0` and $(D channelCount) (excluded) will force ENet to use that channel for sending data. See $(D channelCount) for more information about ENet channels.
	*/
	@property long transferChannel()
	{
		return getTransferChannel();
	}
	/// ditto
	@property void transferChannel(long v)
	{
		setTransferChannel(v);
	}
	/**
	When enabled, the client or server created by this peer, will use $(D PacketPeerDTLS) instead of raw UDP sockets for communicating with the remote peer. This will make the communication encrypted with DTLS at the cost of higher resource usage and potentially larger packet size.
	Note: When creating a DTLS server, make sure you setup the key/certificate pair via $(D setDtlsKey) and $(D setDtlsCertificate). For DTLS clients, have a look at the $(D dtlsVerify) option, and configure the certificate accordingly via $(D setDtlsCertificate).
	*/
	@property bool useDtls()
	{
		return isDtlsEnabled();
	}
	/// ditto
	@property void useDtls(bool v)
	{
		setDtlsEnabled(v);
	}
}
