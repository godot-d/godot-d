/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packetpeerudp;
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
import godot.packetpeer;
import godot.reference;
/**

*/
@GodotBaseClass struct PacketPeerUDP
{
	package(godot) enum string _GODOT_internal_name = "PacketPeerUDP";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("close") GodotMethod!(void) close;
		@GodotName("connect_to_host") GodotMethod!(GodotError, String, long) connectToHost;
		@GodotName("get_packet_ip") GodotMethod!(String) getPacketIp;
		@GodotName("get_packet_port") GodotMethod!(long) getPacketPort;
		@GodotName("is_connected_to_host") GodotMethod!(bool) isConnectedToHost;
		@GodotName("is_listening") GodotMethod!(bool) isListening;
		@GodotName("join_multicast_group") GodotMethod!(GodotError, String, String) joinMulticastGroup;
		@GodotName("leave_multicast_group") GodotMethod!(GodotError, String, String) leaveMulticastGroup;
		@GodotName("listen") GodotMethod!(GodotError, long, String, long) listen;
		@GodotName("set_broadcast_enabled") GodotMethod!(void, bool) setBroadcastEnabled;
		@GodotName("set_dest_address") GodotMethod!(GodotError, String, long) setDestAddress;
		@GodotName("wait") GodotMethod!(GodotError) wait;
	}
	/// 
	pragma(inline, true) bool opEquals(in PacketPeerUDP other) const
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
	/// Construct a new instance of PacketPeerUDP.
	/// Note: use `memnew!PacketPeerUDP` instead.
	static PacketPeerUDP _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PacketPeerUDP");
		if(constructor is null) return typeof(this).init;
		return cast(PacketPeerUDP)(constructor());
	}
	/**
	
	*/
	void close()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.close, _godot_object);
	}
	/**
	
	*/
	GodotError connectToHost(in String host, in long port)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.connectToHost, _godot_object, host, port);
	}
	/**
	
	*/
	String getPacketIp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPacketIp, _godot_object);
	}
	/**
	
	*/
	long getPacketPort() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPacketPort, _godot_object);
	}
	/**
	
	*/
	bool isConnectedToHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isConnectedToHost, _godot_object);
	}
	/**
	
	*/
	bool isListening() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isListening, _godot_object);
	}
	/**
	
	*/
	GodotError joinMulticastGroup(in String multicast_address, in String interface_name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.joinMulticastGroup, _godot_object, multicast_address, interface_name);
	}
	/**
	
	*/
	GodotError leaveMulticastGroup(in String multicast_address, in String interface_name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.leaveMulticastGroup, _godot_object, multicast_address, interface_name);
	}
	/**
	
	*/
	GodotError listen(in long port, in String bind_address = gs!"*", in long recv_buf_size = 65536)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.listen, _godot_object, port, bind_address, recv_buf_size);
	}
	/**
	
	*/
	void setBroadcastEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBroadcastEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	GodotError setDestAddress(in String host, in long port)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.setDestAddress, _godot_object, host, port);
	}
	/**
	
	*/
	GodotError wait()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.wait, _godot_object);
	}
}
