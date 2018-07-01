/**
A high-level network interface to simplify multiplayer interactions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.networkedmultiplayerpeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.packetpeer;
/**
A high-level network interface to simplify multiplayer interactions.

Manages the connection to network peers. Assigns unique IDs to each client connected to the server.
*/
@GodotBaseClass struct NetworkedMultiplayerPeer
{
	static immutable string _GODOT_internal_name = "NetworkedMultiplayerPeer";
public:
@nogc nothrow:
	union { godot_object _godot_object; PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in NetworkedMultiplayerPeer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NetworkedMultiplayerPeer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NetworkedMultiplayerPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NetworkedMultiplayerPeer");
		if(constructor is null) return typeof(this).init;
		return cast(NetworkedMultiplayerPeer)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ConnectionStatus : int
	{
		/**
		The ongoing connection disconnected.
		*/
		connectionDisconnected = 0,
		/**
		A connection attempt is ongoing.
		*/
		connectionConnecting = 1,
		/**
		The connection attempt succeeded.
		*/
		connectionConnected = 2,
	}
	/// 
	enum TransferMode : int
	{
		/**
		Packets are sent via unordered UDP packets.
		*/
		transferModeUnreliable = 0,
		/**
		Packets are sent via ordered UDP packets.
		*/
		transferModeUnreliableOrdered = 1,
		/**
		Packets are sent via TCP packets.
		*/
		transferModeReliable = 2,
	}
	/// 
	enum Constants : int
	{
		transferModeUnreliable = 0,
		connectionDisconnected = 0,
		/**
		Packets are sent to the server and then redistributed to other peers.
		*/
		targetPeerBroadcast = 0,
		connectionConnecting = 1,
		/**
		Packets are sent to the server alone.
		*/
		targetPeerServer = 1,
		transferModeUnreliableOrdered = 1,
		connectionConnected = 2,
		transferModeReliable = 2,
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_transfer_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transfer_mode") = _GODOT_set_transfer_mode;
	/**
	
	*/
	void setTransferMode(in long mode)
	{
		_GODOT_set_transfer_mode.bind("NetworkedMultiplayerPeer", "set_transfer_mode");
		ptrcall!(void)(_GODOT_set_transfer_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(NetworkedMultiplayerPeer.TransferMode) _GODOT_get_transfer_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transfer_mode") = _GODOT_get_transfer_mode;
	/**
	
	*/
	NetworkedMultiplayerPeer.TransferMode getTransferMode() const
	{
		_GODOT_get_transfer_mode.bind("NetworkedMultiplayerPeer", "get_transfer_mode");
		return ptrcall!(NetworkedMultiplayerPeer.TransferMode)(_GODOT_get_transfer_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_target_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_target_peer") = _GODOT_set_target_peer;
	/**
	Sets the peer to which packets will be sent.
	The `id` can be one of: `TARGET_PEER_BROADCAST` to send to all connected peers, `TARGET_PEER_SERVER` to send to the peer acting as server, a valid peer ID to send to that specific peer, a negative peer ID to send to all peers except that one. Default: `TARGET_PEER_BROADCAST`
	*/
	void setTargetPeer(in long id)
	{
		_GODOT_set_target_peer.bind("NetworkedMultiplayerPeer", "set_target_peer");
		ptrcall!(void)(_GODOT_set_target_peer, _godot_object, id);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_packet_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_packet_peer") = _GODOT_get_packet_peer;
	/**
	Returns the ID of the `NetworkedMultiplayerPeer` who sent the most recent packet.
	*/
	long getPacketPeer() const
	{
		_GODOT_get_packet_peer.bind("NetworkedMultiplayerPeer", "get_packet_peer");
		return ptrcall!(long)(_GODOT_get_packet_peer, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_poll;
	package(godot) alias _GODOT_methodBindInfo(string name : "poll") = _GODOT_poll;
	/**
	Waits up to 1 second to receive a new network event.
	*/
	void poll()
	{
		_GODOT_poll.bind("NetworkedMultiplayerPeer", "poll");
		ptrcall!(void)(_GODOT_poll, _godot_object);
	}
	package(godot) static GodotMethod!(NetworkedMultiplayerPeer.ConnectionStatus) _GODOT_get_connection_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_status") = _GODOT_get_connection_status;
	/**
	Returns the current state of the connection. See $(D connectionstatus).
	*/
	NetworkedMultiplayerPeer.ConnectionStatus getConnectionStatus() const
	{
		_GODOT_get_connection_status.bind("NetworkedMultiplayerPeer", "get_connection_status");
		return ptrcall!(NetworkedMultiplayerPeer.ConnectionStatus)(_GODOT_get_connection_status, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_unique_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unique_id") = _GODOT_get_unique_id;
	/**
	Returns the ID of this `NetworkedMultiplayerPeer`.
	*/
	long getUniqueId() const
	{
		_GODOT_get_unique_id.bind("NetworkedMultiplayerPeer", "get_unique_id");
		return ptrcall!(long)(_GODOT_get_unique_id, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_refuse_new_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_refuse_new_connections") = _GODOT_set_refuse_new_connections;
	/**
	
	*/
	void setRefuseNewConnections(in bool enable)
	{
		_GODOT_set_refuse_new_connections.bind("NetworkedMultiplayerPeer", "set_refuse_new_connections");
		ptrcall!(void)(_GODOT_set_refuse_new_connections, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_refusing_new_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_refusing_new_connections") = _GODOT_is_refusing_new_connections;
	/**
	
	*/
	bool isRefusingNewConnections() const
	{
		_GODOT_is_refusing_new_connections.bind("NetworkedMultiplayerPeer", "is_refusing_new_connections");
		return ptrcall!(bool)(_GODOT_is_refusing_new_connections, _godot_object);
	}
	/**
	If `true` this `NetworkedMultiplayerPeer` refuses new connections. Default value: `false`.
	*/
	@property bool refuseNewConnections()
	{
		return isRefusingNewConnections();
	}
	/// ditto
	@property void refuseNewConnections(bool v)
	{
		setRefuseNewConnections(v);
	}
	/**
	The manner in which to send packets to the `target_peer`. See $(D transfermode).
	*/
	@property NetworkedMultiplayerPeer.TransferMode transferMode()
	{
		return getTransferMode();
	}
	/// ditto
	@property void transferMode(long v)
	{
		setTransferMode(v);
	}
}
