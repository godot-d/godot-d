/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.multiplayerapi;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.networkedmultiplayerpeer;
/**

*/
@GodotBaseClass struct MultiplayerAPI
{
	static immutable string _GODOT_internal_name = "MultiplayerAPI";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in MultiplayerAPI other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MultiplayerAPI opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MultiplayerAPI _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MultiplayerAPI");
		if(constructor is null) return typeof(this).init;
		return cast(MultiplayerAPI)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_root_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_root_node") = _GODOT_set_root_node;
	/**
	
	*/
	void setRootNode(GodotObject node)
	{
		_GODOT_set_root_node.bind("MultiplayerAPI", "set_root_node");
		ptrcall!(void)(_GODOT_set_root_node, _godot_object, node);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_network_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_network_peer") = _GODOT_has_network_peer;
	/**
	
	*/
	bool hasNetworkPeer() const
	{
		_GODOT_has_network_peer.bind("MultiplayerAPI", "has_network_peer");
		return ptrcall!(bool)(_GODOT_has_network_peer, _godot_object);
	}
	package(godot) static GodotMethod!(NetworkedMultiplayerPeer) _GODOT_get_network_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_network_peer") = _GODOT_get_network_peer;
	/**
	
	*/
	Ref!NetworkedMultiplayerPeer getNetworkPeer() const
	{
		_GODOT_get_network_peer.bind("MultiplayerAPI", "get_network_peer");
		return ptrcall!(NetworkedMultiplayerPeer)(_GODOT_get_network_peer, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_network_unique_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_network_unique_id") = _GODOT_get_network_unique_id;
	/**
	
	*/
	long getNetworkUniqueId() const
	{
		_GODOT_get_network_unique_id.bind("MultiplayerAPI", "get_network_unique_id");
		return ptrcall!(long)(_GODOT_get_network_unique_id, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_network_server;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_network_server") = _GODOT_is_network_server;
	/**
	
	*/
	bool isNetworkServer() const
	{
		_GODOT_is_network_server.bind("MultiplayerAPI", "is_network_server");
		return ptrcall!(bool)(_GODOT_is_network_server, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_rpc_sender_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rpc_sender_id") = _GODOT_get_rpc_sender_id;
	/**
	
	*/
	long getRpcSenderId() const
	{
		_GODOT_get_rpc_sender_id.bind("MultiplayerAPI", "get_rpc_sender_id");
		return ptrcall!(long)(_GODOT_get_rpc_sender_id, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_add_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_peer") = _GODOT_add_peer;
	/**
	
	*/
	void addPeer(in long id)
	{
		_GODOT_add_peer.bind("MultiplayerAPI", "add_peer");
		ptrcall!(void)(_GODOT_add_peer, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_del_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "del_peer") = _GODOT_del_peer;
	/**
	
	*/
	void delPeer(in long id)
	{
		_GODOT_del_peer.bind("MultiplayerAPI", "del_peer");
		ptrcall!(void)(_GODOT_del_peer, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, NetworkedMultiplayerPeer) _GODOT_set_network_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_network_peer") = _GODOT_set_network_peer;
	/**
	
	*/
	void setNetworkPeer(NetworkedMultiplayerPeer peer)
	{
		_GODOT_set_network_peer.bind("MultiplayerAPI", "set_network_peer");
		ptrcall!(void)(_GODOT_set_network_peer, _godot_object, peer);
	}
	package(godot) static GodotMethod!(void) _GODOT_poll;
	package(godot) alias _GODOT_methodBindInfo(string name : "poll") = _GODOT_poll;
	/**
	
	*/
	void poll()
	{
		_GODOT_poll.bind("MultiplayerAPI", "poll");
		ptrcall!(void)(_GODOT_poll, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	
	*/
	void clear()
	{
		_GODOT_clear.bind("MultiplayerAPI", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_connected_to_server;
	package(godot) alias _GODOT_methodBindInfo(string name : "connected_to_server") = _GODOT_connected_to_server;
	/**
	
	*/
	void connectedToServer()
	{
		_GODOT_connected_to_server.bind("MultiplayerAPI", "connected_to_server");
		ptrcall!(void)(_GODOT_connected_to_server, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_connection_failed;
	package(godot) alias _GODOT_methodBindInfo(string name : "connection_failed") = _GODOT_connection_failed;
	/**
	
	*/
	void connectionFailed()
	{
		_GODOT_connection_failed.bind("MultiplayerAPI", "connection_failed");
		ptrcall!(void)(_GODOT_connection_failed, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_server_disconnected;
	package(godot) alias _GODOT_methodBindInfo(string name : "server_disconnected") = _GODOT_server_disconnected;
	/**
	
	*/
	void serverDisconnected()
	{
		_GODOT_server_disconnected.bind("MultiplayerAPI", "server_disconnected");
		ptrcall!(void)(_GODOT_server_disconnected, _godot_object);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT_get_network_connected_peers;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_network_connected_peers") = _GODOT_get_network_connected_peers;
	/**
	
	*/
	PoolIntArray getNetworkConnectedPeers() const
	{
		_GODOT_get_network_connected_peers.bind("MultiplayerAPI", "get_network_connected_peers");
		return ptrcall!(PoolIntArray)(_GODOT_get_network_connected_peers, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_refuse_new_network_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_refuse_new_network_connections") = _GODOT_set_refuse_new_network_connections;
	/**
	
	*/
	void setRefuseNewNetworkConnections(in bool refuse)
	{
		_GODOT_set_refuse_new_network_connections.bind("MultiplayerAPI", "set_refuse_new_network_connections");
		ptrcall!(void)(_GODOT_set_refuse_new_network_connections, _godot_object, refuse);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_refusing_new_network_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_refusing_new_network_connections") = _GODOT_is_refusing_new_network_connections;
	/**
	
	*/
	bool isRefusingNewNetworkConnections() const
	{
		_GODOT_is_refusing_new_network_connections.bind("MultiplayerAPI", "is_refusing_new_network_connections");
		return ptrcall!(bool)(_GODOT_is_refusing_new_network_connections, _godot_object);
	}
	/**
	
	*/
	@property bool refuseNewNetworkConnections()
	{
		return isRefusingNewNetworkConnections();
	}
	/// ditto
	@property void refuseNewNetworkConnections(bool v)
	{
		setRefuseNewNetworkConnections(v);
	}
	/**
	
	*/
	@property NetworkedMultiplayerPeer networkPeer()
	{
		return getNetworkPeer();
	}
	/// ditto
	@property void networkPeer(NetworkedMultiplayerPeer v)
	{
		setNetworkPeer(v);
	}
}
