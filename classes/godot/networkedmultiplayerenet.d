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
/**
PacketPeer implementation using the ENet library.

A PacketPeer implementation that should be passed to $(D SceneTree.setNetworkPeer) after being initialized as either a client or server. Events can then be handled by connecting to $(D SceneTree) signals.
*/
@GodotBaseClass struct NetworkedMultiplayerENet
{
	static immutable string _GODOT_internal_name = "NetworkedMultiplayerENet";
public:
@nogc nothrow:
	union { godot_object _godot_object; NetworkedMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(GodotError, long, long, long, long) _GODOT_create_server;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_server") = _GODOT_create_server;
	/**
	Create server that listens to connections via `port`. The port needs to be an available, unused port between 0 and 65535. Note that ports below 1024 are privileged and may require elevated permissions depending on the platform. To change the interface the server listens on, use $(D setBindIp). The default IP is the wildcard `*`, which listens on all available interfaces. `max_clients` is the maximum number of clients that are allowed at once, any number up to 4096 may be used, although the achievable number of simultaneous clients may be far lower and depends on the application. For additional details on the bandwidth parameters, see $(D createClient). Returns `OK` if a server was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerEnet instance already has an open connection (in which case you need to call $(D closeConnection) first) or `ERR_CANT_CREATE` if the server could not be created.
	*/
	GodotError createServer(in long port, in long max_clients = 32, in long in_bandwidth = 0, in long out_bandwidth = 0)
	{
		_GODOT_create_server.bind("NetworkedMultiplayerENet", "create_server");
		return ptrcall!(GodotError)(_GODOT_create_server, _godot_object, port, max_clients, in_bandwidth, out_bandwidth);
	}
	package(godot) static GodotMethod!(GodotError, String, long, long, long) _GODOT_create_client;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_client") = _GODOT_create_client;
	/**
	Create client that connects to a server at address `ip` using specified `port`. The given IP needs to be in IPv4 or IPv6 address format, for example: `192.168.1.1`. The `port` is the port the server is listening on. The `in_bandwidth` and `out_bandwidth` parameters can be used to limit the incoming and outgoing bandwidth to the given number of bytes per second. The default of 0 means unlimited bandwidth. Note that ENet will strategically drop packets on specific sides of a connection between peers to ensure the peer's bandwidth is not overwhelmed. The bandwidth parameters also determine the window size of a connection which limits the amount of reliable packets that may be in transit at any given time. Returns `OK` if a client was created, `ERR_ALREADY_IN_USE` if this NetworkedMultiplayerEnet instance already has an open connection (in which case you need to call $(D closeConnection) first) or `ERR_CANT_CREATE` if the client could not be created.
	*/
	GodotError createClient(StringArg0)(in StringArg0 ip, in long port, in long in_bandwidth = 0, in long out_bandwidth = 0)
	{
		_GODOT_create_client.bind("NetworkedMultiplayerENet", "create_client");
		return ptrcall!(GodotError)(_GODOT_create_client, _godot_object, ip, port, in_bandwidth, out_bandwidth);
	}
	package(godot) static GodotMethod!(void) _GODOT_close_connection;
	package(godot) alias _GODOT_methodBindInfo(string name : "close_connection") = _GODOT_close_connection;
	/**
	Closes the connection. Ignored if no connection is currently established. If this is a server it tries to notify all clients before forcibly disconnecting them. If this is a client it simply closes the connection to the server.
	*/
	void closeConnection()
	{
		_GODOT_close_connection.bind("NetworkedMultiplayerENet", "close_connection");
		ptrcall!(void)(_GODOT_close_connection, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_compression_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_compression_mode") = _GODOT_set_compression_mode;
	/**
	
	*/
	void setCompressionMode(in long mode)
	{
		_GODOT_set_compression_mode.bind("NetworkedMultiplayerENet", "set_compression_mode");
		ptrcall!(void)(_GODOT_set_compression_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(NetworkedMultiplayerENet.CompressionMode) _GODOT_get_compression_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_compression_mode") = _GODOT_get_compression_mode;
	/**
	
	*/
	NetworkedMultiplayerENet.CompressionMode getCompressionMode() const
	{
		_GODOT_get_compression_mode.bind("NetworkedMultiplayerENet", "get_compression_mode");
		return ptrcall!(NetworkedMultiplayerENet.CompressionMode)(_GODOT_get_compression_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bind_ip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bind_ip") = _GODOT_set_bind_ip;
	/**
	The IP used when creating a server. This is set to the wildcard `*` by default, which binds to all available interfaces. The given IP needs to be in IPv4 or IPv6 address format, for example: `192.168.1.1`.
	*/
	void setBindIp(StringArg0)(in StringArg0 ip)
	{
		_GODOT_set_bind_ip.bind("NetworkedMultiplayerENet", "set_bind_ip");
		ptrcall!(void)(_GODOT_set_bind_ip, _godot_object, ip);
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
}
