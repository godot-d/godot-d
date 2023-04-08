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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.networkedmultiplayerpeer;
import godot.node;
/**

*/
@GodotBaseClass struct MultiplayerAPI
{
	package(godot) enum string _GODOT_internal_name = "MultiplayerAPI";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_add_peer") GodotMethod!(void, long) _addPeer;
		@GodotName("_connected_to_server") GodotMethod!(void) _connectedToServer;
		@GodotName("_connection_failed") GodotMethod!(void) _connectionFailed;
		@GodotName("_del_peer") GodotMethod!(void, long) _delPeer;
		@GodotName("_server_disconnected") GodotMethod!(void) _serverDisconnected;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_network_connected_peers") GodotMethod!(PoolIntArray) getNetworkConnectedPeers;
		@GodotName("get_network_peer") GodotMethod!(NetworkedMultiplayerPeer) getNetworkPeer;
		@GodotName("get_network_unique_id") GodotMethod!(long) getNetworkUniqueId;
		@GodotName("get_root_node") GodotMethod!(Node) getRootNode;
		@GodotName("get_rpc_sender_id") GodotMethod!(long) getRpcSenderId;
		@GodotName("has_network_peer") GodotMethod!(bool) hasNetworkPeer;
		@GodotName("is_network_server") GodotMethod!(bool) isNetworkServer;
		@GodotName("is_object_decoding_allowed") GodotMethod!(bool) isObjectDecodingAllowed;
		@GodotName("is_refusing_new_network_connections") GodotMethod!(bool) isRefusingNewNetworkConnections;
		@GodotName("poll") GodotMethod!(void) poll;
		@GodotName("send_bytes") GodotMethod!(GodotError, PoolByteArray, long, long) sendBytes;
		@GodotName("set_allow_object_decoding") GodotMethod!(void, bool) setAllowObjectDecoding;
		@GodotName("set_network_peer") GodotMethod!(void, NetworkedMultiplayerPeer) setNetworkPeer;
		@GodotName("set_refuse_new_network_connections") GodotMethod!(void, bool) setRefuseNewNetworkConnections;
		@GodotName("set_root_node") GodotMethod!(void, Node) setRootNode;
	}
	/// 
	pragma(inline, true) bool opEquals(in MultiplayerAPI other) const
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
	/// Construct a new instance of MultiplayerAPI.
	/// Note: use `memnew!MultiplayerAPI` instead.
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
		/** */
		rpcModeDisabled = 0,
		/** */
		rpcModeRemote = 1,
		/** */
		rpcModeMaster = 2,
		/** */
		rpcModePuppet = 3,
		/** */
		rpcModeSlave = 3,
		/** */
		rpcModeSync = 4,
		/** */
		rpcModeRemotesync = 4,
		/** */
		rpcModeMastersync = 5,
		/** */
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
	
	*/
	void _addPeer(in long id)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_add_peer");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _connectedToServer()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_connected_to_server");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _connectionFailed()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_connection_failed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _delPeer(in long id)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_del_peer");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _serverDisconnected()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_server_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getNetworkConnectedPeers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getNetworkConnectedPeers, _godot_object);
	}
	/**
	
	*/
	Ref!NetworkedMultiplayerPeer getNetworkPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NetworkedMultiplayerPeer)(GDNativeClassBinding.getNetworkPeer, _godot_object);
	}
	/**
	
	*/
	long getNetworkUniqueId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNetworkUniqueId, _godot_object);
	}
	/**
	
	*/
	Node getRootNode()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getRootNode, _godot_object);
	}
	/**
	
	*/
	long getRpcSenderId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRpcSenderId, _godot_object);
	}
	/**
	
	*/
	bool hasNetworkPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasNetworkPeer, _godot_object);
	}
	/**
	
	*/
	bool isNetworkServer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isNetworkServer, _godot_object);
	}
	/**
	
	*/
	bool isObjectDecodingAllowed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isObjectDecodingAllowed, _godot_object);
	}
	/**
	
	*/
	bool isRefusingNewNetworkConnections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRefusingNewNetworkConnections, _godot_object);
	}
	/**
	
	*/
	void poll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.poll, _godot_object);
	}
	/**
	
	*/
	GodotError sendBytes(in PoolByteArray bytes, in long id = 0, in long mode = 2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.sendBytes, _godot_object, bytes, id, mode);
	}
	/**
	
	*/
	void setAllowObjectDecoding(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAllowObjectDecoding, _godot_object, enable);
	}
	/**
	
	*/
	void setNetworkPeer(NetworkedMultiplayerPeer peer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNetworkPeer, _godot_object, peer);
	}
	/**
	
	*/
	void setRefuseNewNetworkConnections(in bool refuse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRefuseNewNetworkConnections, _godot_object, refuse);
	}
	/**
	
	*/
	void setRootNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRootNode, _godot_object, node);
	}
	/**
	
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
	@property Node rootNode()
	{
		return getRootNode();
	}
	/// ditto
	@property void rootNode(Node v)
	{
		setRootNode(v);
	}
}
