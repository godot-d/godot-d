/**
High Level Multiplayer API.

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
import godot.node;
import godot.networkedmultiplayerpeer;
/**
High Level Multiplayer API.

This class implements most of the logic behind the high level multiplayer API.
By default, $(D SceneTree) has a reference to this class that is used to provide multiplayer capabilities (i.e. RPC/RSET) across the whole scene.
It is possible to override the MultiplayerAPI instance used by specific Nodes by setting the $(D Node.customMultiplayer) property, effectively allowing to run both client and server in the same scene.
*/
@GodotBaseClass struct MultiplayerAPI
{
	enum string _GODOT_internal_name = "MultiplayerAPI";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_root_node") GodotMethod!(void, Node) setRootNode;
		@GodotName("send_bytes") GodotMethod!(GodotError, PoolByteArray, long, long) sendBytes;
		@GodotName("has_network_peer") GodotMethod!(bool) hasNetworkPeer;
		@GodotName("get_network_peer") GodotMethod!(NetworkedMultiplayerPeer) getNetworkPeer;
		@GodotName("get_network_unique_id") GodotMethod!(long) getNetworkUniqueId;
		@GodotName("is_network_server") GodotMethod!(bool) isNetworkServer;
		@GodotName("get_rpc_sender_id") GodotMethod!(long) getRpcSenderId;
		@GodotName("_add_peer") GodotMethod!(void, long) _addPeer;
		@GodotName("_del_peer") GodotMethod!(void, long) _delPeer;
		@GodotName("set_network_peer") GodotMethod!(void, NetworkedMultiplayerPeer) setNetworkPeer;
		@GodotName("poll") GodotMethod!(void) poll;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("_connected_to_server") GodotMethod!(void) _connectedToServer;
		@GodotName("_connection_failed") GodotMethod!(void) _connectionFailed;
		@GodotName("_server_disconnected") GodotMethod!(void) _serverDisconnected;
		@GodotName("get_network_connected_peers") GodotMethod!(PoolIntArray) getNetworkConnectedPeers;
		@GodotName("set_refuse_new_network_connections") GodotMethod!(void, bool) setRefuseNewNetworkConnections;
		@GodotName("is_refusing_new_network_connections") GodotMethod!(bool) isRefusingNewNetworkConnections;
		@GodotName("set_allow_object_decoding") GodotMethod!(void, bool) setAllowObjectDecoding;
		@GodotName("is_object_decoding_allowed") GodotMethod!(bool) isObjectDecodingAllowed;
	}
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
	/// 
	enum RPCMode : int
	{
		/**
		Used with $(D Node.rpcConfig) or $(D Node.rsetConfig) to disable a method or property for all RPC calls, making it unavailable. Default for all methods.
		*/
		rpcModeDisabled = 0,
		/**
		Used with $(D Node.rpcConfig) or $(D Node.rsetConfig) to set a method to be called or a property to be changed only on the remote end, not locally. Analogous to the `remote` keyword. Calls and property changes are accepted from all remote peers, no matter if they are node's master or puppets.
		*/
		rpcModeRemote = 1,
		/**
		Used with $(D Node.rpcConfig) or $(D Node.rsetConfig) to set a method to be called or a property to be changed only on the network master for this node. Analogous to the `master` keyword. Only accepts calls or property changes from the node's network puppets, see $(D Node.setNetworkMaster).
		*/
		rpcModeMaster = 2,
		/**
		Used with $(D Node.rpcConfig) or $(D Node.rsetConfig) to set a method to be called or a property to be changed only on puppets for this node. Analogous to the `puppet` keyword. Only accepts calls or property changes from the node's network master, see $(D Node.setNetworkMaster).
		*/
		rpcModePuppet = 3,
		/**
		Deprecated. Use `RPC_MODE_PUPPET` instead. Analogous to the `slave` keyword.
		*/
		rpcModeSlave = 3,
		/**
		Deprecated. Use `RPC_MODE_REMOTESYNC` instead. Analogous to the `sync` keyword.
		*/
		rpcModeSync = 4,
		/**
		Behave like `RPC_MODE_REMOTE` but also make the call or property change locally. Analogous to the `remotesync` keyword.
		*/
		rpcModeRemotesync = 4,
		/**
		Behave like `RPC_MODE_MASTER` but also make the call or property change locally. Analogous to the `mastersync` keyword.
		*/
		rpcModeMastersync = 5,
		/**
		Behave like `RPC_MODE_PUPPET` but also make the call or property change locally. Analogous to the `puppetsync` keyword.
		*/
		rpcModePuppetsync = 6,
	}
	/// 
	enum Constants : int
	{
		rpcModeDisabled = 0,
		rpcModeRemote = 1,
		rpcModeMaster = 2,
		rpcModePuppet = 3,
		rpcModeSlave = 3,
		rpcModeSync = 4,
		rpcModeRemotesync = 4,
		rpcModeMastersync = 5,
		rpcModePuppetsync = 6,
	}
	/**
	Sets the base root node to use for RPCs. Instead of an absolute path, a relative path will be used to find the node upon which the RPC should be executed.
	This effectively allows to have different branches of the scene tree to be managed by different MultiplayerAPI, allowing for example to run both client and server in the same scene.
	*/
	void setRootNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRootNode, _godot_object, node);
	}
	/**
	Sends the given raw `bytes` to a specific peer identified by `id` (see $(D NetworkedMultiplayerPeer.setTargetPeer)). Default ID is `0`, i.e. broadcast to all peers.
	*/
	GodotError sendBytes(in PoolByteArray bytes, in long id = 0, in long mode = 2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.sendBytes, _godot_object, bytes, id, mode);
	}
	/**
	Returns `true` if there is a $(D networkPeer) set.
	*/
	bool hasNetworkPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasNetworkPeer, _godot_object);
	}
	/**
	
	*/
	Ref!NetworkedMultiplayerPeer getNetworkPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NetworkedMultiplayerPeer)(_classBinding.getNetworkPeer, _godot_object);
	}
	/**
	Returns the unique peer ID of this MultiplayerAPI's $(D networkPeer).
	*/
	long getNetworkUniqueId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getNetworkUniqueId, _godot_object);
	}
	/**
	Returns `true` if this MultiplayerAPI's $(D networkPeer) is in server mode (listening for connections).
	*/
	bool isNetworkServer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isNetworkServer, _godot_object);
	}
	/**
	Returns the sender's peer ID for the RPC currently being executed.
	NOTE: If not inside an RPC this method will return 0.
	*/
	long getRpcSenderId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRpcSenderId, _godot_object);
	}
	/**
	
	*/
	void _addPeer(in long id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_add_peer");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _delPeer(in long id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_del_peer");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setNetworkPeer(NetworkedMultiplayerPeer peer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNetworkPeer, _godot_object, peer);
	}
	/**
	Method used for polling the MultiplayerAPI. You only need to worry about this if you are using $(D Node.customMultiplayer) override or you set $(D SceneTree.multiplayerPoll) to `false`. By default $(D SceneTree) will poll its MultiplayerAPI for you.
	NOTE: This method results in RPCs and RSETs being called, so they will be executed in the same context of this function (e.g. `_process`, `physics`, $(D Thread)).
	*/
	void poll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.poll, _godot_object);
	}
	/**
	Clears the current MultiplayerAPI network state (you shouldn't call this unless you know what you are doing).
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	
	*/
	void _connectedToServer()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connected_to_server");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _connectionFailed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connection_failed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _serverDisconnected()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_server_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns the peer IDs of all connected peers of this MultiplayerAPI's $(D networkPeer).
	*/
	PoolIntArray getNetworkConnectedPeers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getNetworkConnectedPeers, _godot_object);
	}
	/**
	
	*/
	void setRefuseNewNetworkConnections(in bool refuse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRefuseNewNetworkConnections, _godot_object, refuse);
	}
	/**
	
	*/
	bool isRefusingNewNetworkConnections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRefusingNewNetworkConnections, _godot_object);
	}
	/**
	
	*/
	void setAllowObjectDecoding(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAllowObjectDecoding, _godot_object, enable);
	}
	/**
	
	*/
	bool isObjectDecodingAllowed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isObjectDecodingAllowed, _godot_object);
	}
	/**
	If `true` (or if the $(D networkPeer) $(D PacketPeer.allowObjectDecoding) the MultiplayerAPI will allow encoding and decoding of object during RPCs/RSETs.
	$(B WARNING:) Deserialized object can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats (remote code execution).
	*/
	@property bool allowObjectDecoding()
	{
		return isObjectDecodingAllowed();
	}
	/// ditto
	@property void allowObjectDecoding(bool v)
	{
		setAllowObjectDecoding(v);
	}
	/**
	If `true`, the MultiplayerAPI's $(D networkPeer) refuses new incoming connections.
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
	The peer object to handle the RPC system (effectively enabling networking when set). Depending on the peer itself, the MultiplayerAPI will become a network server (check with $(D isNetworkServer)) and will set root node's network mode to master (see NETWORK_MODE_* constants in $(D Node)), or it will become a regular peer with root node set to puppet. All child nodes are set to inherit the network mode by default. Handling of networking-related events (connection, disconnection, new clients) is done by connecting to MultiplayerAPI's signals.
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
