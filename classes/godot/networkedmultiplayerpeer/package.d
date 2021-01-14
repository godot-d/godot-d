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
import godot.d.traits;
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
	package(godot) enum string _GODOT_internal_name = "NetworkedMultiplayerPeer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_connection_status") GodotMethod!(NetworkedMultiplayerPeer.ConnectionStatus) getConnectionStatus;
		@GodotName("get_packet_peer") GodotMethod!(long) getPacketPeer;
		@GodotName("get_transfer_mode") GodotMethod!(NetworkedMultiplayerPeer.TransferMode) getTransferMode;
		@GodotName("get_unique_id") GodotMethod!(long) getUniqueId;
		@GodotName("is_refusing_new_connections") GodotMethod!(bool) isRefusingNewConnections;
		@GodotName("poll") GodotMethod!(void) poll;
		@GodotName("set_refuse_new_connections") GodotMethod!(void, bool) setRefuseNewConnections;
		@GodotName("set_target_peer") GodotMethod!(void, long) setTargetPeer;
		@GodotName("set_transfer_mode") GodotMethod!(void, long) setTransferMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in NetworkedMultiplayerPeer other) const
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
	/// Construct a new instance of NetworkedMultiplayerPeer.
	/// Note: use `memnew!NetworkedMultiplayerPeer` instead.
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
		Packets are not acknowledged, no resend attempts are made for lost packets. Packets may arrive in any order. Potentially faster than $(D constant TRANSFER_MODE_UNRELIABLE_ORDERED). Use for non-critical data, and always consider whether the order matters.
		*/
		transferModeUnreliable = 0,
		/**
		Packets are not acknowledged, no resend attempts are made for lost packets. Packets are received in the order they were sent in. Potentially faster than $(D constant TRANSFER_MODE_RELIABLE). Use for non-critical data or data that would be outdated if received late due to resend attempt(s) anyway, for example movement and positional data.
		*/
		transferModeUnreliableOrdered = 1,
		/**
		Packets must be received and resend attempts should be made until the packets are acknowledged. Packets must be received in the order they were sent in. Most reliable transfer mode, but potentially the slowest due to the overhead. Use for critical data that must be transmitted and arrive in order, for example an ability being triggered or a chat message. Consider carefully if the information really is critical, and use sparingly.
		*/
		transferModeReliable = 2,
	}
	/// 
	enum Constants : int
	{
		connectionDisconnected = 0,
		/**
		Packets are sent to the server and then redistributed to other peers.
		*/
		targetPeerBroadcast = 0,
		transferModeUnreliable = 0,
		connectionConnecting = 1,
		/**
		Packets are sent to the server alone.
		*/
		targetPeerServer = 1,
		transferModeUnreliableOrdered = 1,
		connectionConnected = 2,
		transferModeReliable = 2,
	}
	/**
	Returns the current state of the connection. See $(D connectionstatus).
	*/
	NetworkedMultiplayerPeer.ConnectionStatus getConnectionStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NetworkedMultiplayerPeer.ConnectionStatus)(GDNativeClassBinding.getConnectionStatus, _godot_object);
	}
	/**
	Returns the ID of the $(D NetworkedMultiplayerPeer) who sent the most recent packet.
	*/
	long getPacketPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPacketPeer, _godot_object);
	}
	/**
	
	*/
	NetworkedMultiplayerPeer.TransferMode getTransferMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NetworkedMultiplayerPeer.TransferMode)(GDNativeClassBinding.getTransferMode, _godot_object);
	}
	/**
	Returns the ID of this $(D NetworkedMultiplayerPeer).
	*/
	long getUniqueId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getUniqueId, _godot_object);
	}
	/**
	
	*/
	bool isRefusingNewConnections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRefusingNewConnections, _godot_object);
	}
	/**
	Waits up to 1 second to receive a new network event.
	*/
	void poll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.poll, _godot_object);
	}
	/**
	
	*/
	void setRefuseNewConnections(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRefuseNewConnections, _godot_object, enable);
	}
	/**
	Sets the peer to which packets will be sent.
	The `id` can be one of: $(D constant TARGET_PEER_BROADCAST) to send to all connected peers, $(D constant TARGET_PEER_SERVER) to send to the peer acting as server, a valid peer ID to send to that specific peer, a negative peer ID to send to all peers except that one. By default, the target peer is $(D constant TARGET_PEER_BROADCAST).
	*/
	void setTargetPeer(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTargetPeer, _godot_object, id);
	}
	/**
	
	*/
	void setTransferMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransferMode, _godot_object, mode);
	}
	/**
	If `true`, this $(D NetworkedMultiplayerPeer) refuses new connections.
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
