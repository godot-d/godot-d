/**
PacketPeer implementation using the ENet library.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.networkedmultiplayerenet;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.networkedmultiplayerpeer;
import godot.packetpeer;
import godot.reference;
/**
PacketPeer implementation using the ENet library.

A PacketPeer implementation that should be passed to $(D SceneTree.setNetworkPeer) after being initialized as either a client or server. Events can then be handled by connecting to $(D SceneTree) signals.
*/
@GodotBaseClass struct NetworkedMultiplayerENet
{
	enum string _GODOT_internal_name = "NetworkedMultiplayerENet";
public:
@nogc nothrow:
	union { godot_object _godot_object; NetworkedMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("create_server") GodotMethod!(GodotError, long, long, long, long) createServer;
		@GodotName("create_client") GodotMethod!(GodotError, String, long, long, long, long) createClient;
		@GodotName("close_connection") GodotMethod!(void, long) closeConnection;
		@GodotName("disconnect_peer") GodotMethod!(void, long, bool) disconnectPeer;
		@GodotName("set_compression_mode") GodotMethod!(void, long) setCompressionMode;
		@GodotName("get_compression_mode") GodotMethod!(NetworkedMultiplayerENet.CompressionMode) getCompressionMode;
		@GodotName("set_bind_ip") GodotMethod!(void, String) setBindIp;
		@GodotName("get_peer_address") GodotMethod!(String, long) getPeerAddress;
		@GodotName("get_peer_port") GodotMethod!(long, long) getPeerPort;
		@GodotName("get_packet_channel") GodotMethod!(long) getPacketChannel;
		@GodotName("get_last_packet_channel") GodotMethod!(long) getLastPacketChannel;
		@GodotName("set_transfer_channel") GodotMethod!(void, long) setTransferChannel;
		@GodotName("get_transfer_channel") GodotMethod!(long) getTransferChannel;
		@GodotName("set_channel_count") GodotMethod!(void, long) setChannelCount;
		@GodotName("get_channel_count") GodotMethod!(long) getChannelCount;
		@GodotName("set_always_ordered") GodotMethod!(void, bool) setAlwaysOrdered;
		@GodotName("is_always_ordered") GodotMethod!(bool) isAlwaysOrdered;
	}
	bool opEquals(in NetworkedMultiplayerENet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NetworkedMultiplayerENet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		No compression.
		*/
		compressNone = 0,
		/**
		ENet's buildin range encoding.
		*/
		compressRangeCoder = 1,
		/**
		FastLZ compression.
		*/
		compressFastlz = 2,
		/**
		zlib compression.
		*/
		compressZlib = 3,
		/**
		ZStandard compression.
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
	Create server that listens to connections via `port`. The port needs to be an available, unused port between 0 and 65535. Note that ports below 1024 are privileged and may require elevated permissions depending on the platform. To change the interface the server listens on, use $(D setBindIp). The default IP is the wildcard `*`, which listens on all available interfaces. `max_clients` is the maximum number of clients that are allowed at once, any number up to 4096 may be used, although the achievable number of simultaneous clients may be far lower and depends on the application. For additional details on the bandwidth parameters, see $(D createClient). Returns `OK` if a server was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerEnet instance already has an open connection (in which case you need to call $(D closeConnection) first) or `ERR_CANT_CREATE` if the server could not be created.
	*/
	GodotError createServer(in long port, in long max_clients = 32, in long in_bandwidth = 0, in long out_bandwidth = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.createServer, _godot_object, port, max_clients, in_bandwidth, out_bandwidth);
	}
	/**
	Create client that connects to a server at `address` using specified `port`. The given address needs to be either a fully qualified domain nome (e.g. `www.example.com`) or an IP address in IPv4 or IPv6 format (e.g. `192.168.1.1`). The `port` is the port the server is listening on. The `in_bandwidth` and `out_bandwidth` parameters can be used to limit the incoming and outgoing bandwidth to the given number of bytes per second. The default of 0 means unlimited bandwidth. Note that ENet will strategically drop packets on specific sides of a connection between peers to ensure the peer's bandwidth is not overwhelmed. The bandwidth parameters also determine the window size of a connection which limits the amount of reliable packets that may be in transit at any given time. Returns `OK` if a client was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerEnet instance already has an open connection (in which case you need to call $(D closeConnection) first) or `ERR_CANT_CREATE` if the client could not be created. If `client_port` is specified, the client will also listen to the given port, this is useful in some NAT traversal technique.
	*/
	GodotError createClient(in String address, in long port, in long in_bandwidth = 0, in long out_bandwidth = 0, in long client_port = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.createClient, _godot_object, address, port, in_bandwidth, out_bandwidth, client_port);
	}
	/**
	Closes the connection. Ignored if no connection is currently established. If this is a server it tries to notify all clients before forcibly disconnecting them. If this is a client it simply closes the connection to the server.
	*/
	void closeConnection(in long wait_usec = 100)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.closeConnection, _godot_object, wait_usec);
	}
	/**
	Disconnect the given peer. If "now" is set to true, the connection will be closed immediately without flushing queued messages.
	*/
	void disconnectPeer(in long id, in bool now = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectPeer, _godot_object, id, now);
	}
	/**
	
	*/
	void setCompressionMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCompressionMode, _godot_object, mode);
	}
	/**
	
	*/
	NetworkedMultiplayerENet.CompressionMode getCompressionMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NetworkedMultiplayerENet.CompressionMode)(_classBinding.getCompressionMode, _godot_object);
	}
	/**
	The IP used when creating a server. This is set to the wildcard `*` by default, which binds to all available interfaces. The given IP needs to be in IPv4 or IPv6 address format, for example: `192.168.1.1`.
	*/
	void setBindIp(in String ip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBindIp, _godot_object, ip);
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
	Returns the channel of the next packet that will be retrieved via $(D PacketPeer.getPacket)
	*/
	long getPacketChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPacketChannel, _godot_object);
	}
	/**
	Returns the channel of the last packet fetched via $(D PacketPeer.getPacket)
	*/
	long getLastPacketChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLastPacketChannel, _godot_object);
	}
	/**
	
	*/
	void setTransferChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTransferChannel, _godot_object, channel);
	}
	/**
	
	*/
	long getTransferChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTransferChannel, _godot_object);
	}
	/**
	
	*/
	void setChannelCount(in long channels)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setChannelCount, _godot_object, channels);
	}
	/**
	
	*/
	long getChannelCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getChannelCount, _godot_object);
	}
	/**
	
	*/
	void setAlwaysOrdered(in bool ordered)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAlwaysOrdered, _godot_object, ordered);
	}
	/**
	
	*/
	bool isAlwaysOrdered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAlwaysOrdered, _godot_object);
	}
	/**
	The compression method used for network packets. Default is no compression. These have different tradeoffs of compression speed versus bandwidth, you may need to test which one works best for your use case if you use compression at all.
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
	Set the default channel to be used to transfer data. By default this value is `-1` which means that ENet will only use 2 channels, one for reliable and one for unreliable packets. Channel `0` is reserved, and cannot be used. Setting this member to any value between `0` and $(D channelCount) (excluded) will force ENet to use that channel for sending data.
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
	The number of channels to be used by ENet. Default: `3`. Channels are used to separate different kinds of data. In realiable or ordered mode, for example, the packet delivery order is ensured on a per channel basis.
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
	Always use `TRANSFER_MODE_ORDERED` in place of `TRANSFER_MODE_UNRELIABLE`. This is the only way to use ordering with the RPC system.
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
}
