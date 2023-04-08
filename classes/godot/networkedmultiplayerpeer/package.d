/**


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
import godot.globalenums;
import godot.object;
import godot.packetpeer;
/**

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
		/** */
		connectionDisconnected = 0,
		/** */
		connectionConnecting = 1,
		/** */
		connectionConnected = 2,
	}
	/// 
	enum TransferMode : int
	{
		/** */
		transferModeUnreliable = 0,
		/** */
		transferModeUnreliableOrdered = 1,
		/** */
		transferModeReliable = 2,
	}
	/// 
	enum Constants : int
	{
		connectionDisconnected = 0,
		/** */
		targetPeerBroadcast = 0,
		transferModeUnreliable = 0,
		connectionConnecting = 1,
		/** */
		targetPeerServer = 1,
		transferModeUnreliableOrdered = 1,
		connectionConnected = 2,
		transferModeReliable = 2,
	}
	/**
	
	*/
	NetworkedMultiplayerPeer.ConnectionStatus getConnectionStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NetworkedMultiplayerPeer.ConnectionStatus)(GDNativeClassBinding.getConnectionStatus, _godot_object);
	}
	/**
	
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
