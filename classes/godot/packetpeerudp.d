/**
UDP packet peer.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packetpeerudp;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.packetpeer;
import godot.reference;
/**
UDP packet peer.

Can be used to send raw UDP packets as well as $(D Variant)s.
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
		@GodotName("get_packet_ip") GodotMethod!(String) getPacketIp;
		@GodotName("get_packet_port") GodotMethod!(long) getPacketPort;
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
	pragma(inline, true) PacketPeerUDP opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
	@disable new(size_t s);
	/**
	Closes the UDP socket the $(D PacketPeerUDP) is currently listening on.
	*/
	void close()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.close, _godot_object);
	}
	/**
	Returns the IP of the remote peer that sent the last packet(that was received with $(D PacketPeer.getPacket) or $(D PacketPeer.getVar)).
	*/
	String getPacketIp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPacketIp, _godot_object);
	}
	/**
	Returns the port of the remote peer that sent the last packet(that was received with $(D PacketPeer.getPacket) or $(D PacketPeer.getVar)).
	*/
	long getPacketPort() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPacketPort, _godot_object);
	}
	/**
	Returns whether this $(D PacketPeerUDP) is listening.
	*/
	bool isListening() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isListening, _godot_object);
	}
	/**
	Joins the multicast group specified by `multicast_address` using the interface identified by `interface_name`.
	You can join the same multicast group with multiple interfaces. Use $(D IP.getLocalInterfaces) to know which are available.
	Note: Some Android devices might require the `CHANGE_WIFI_MULTICAST_STATE` permission for multicast to work.
	*/
	GodotError joinMulticastGroup(in String multicast_address, in String interface_name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.joinMulticastGroup, _godot_object, multicast_address, interface_name);
	}
	/**
	Removes the interface identified by `interface_name` from the multicast group specified by `multicast_address`.
	*/
	GodotError leaveMulticastGroup(in String multicast_address, in String interface_name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.leaveMulticastGroup, _godot_object, multicast_address, interface_name);
	}
	/**
	Makes this $(D PacketPeerUDP) listen on the `port` binding to `bind_address` with a buffer size `recv_buf_size`.
	If `bind_address` is set to `"*"` (default), the peer will listen on all available addresses (both IPv4 and IPv6).
	If `bind_address` is set to `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the peer will listen on all available addresses matching that IP type.
	If `bind_address` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc), the peer will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	*/
	GodotError listen(in long port, in String bind_address = gs!"*", in long recv_buf_size = 65536)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.listen, _godot_object, port, bind_address, recv_buf_size);
	}
	/**
	Enable or disable sending of broadcast packets (e.g. `set_dest_address("255.255.255.255", 4343)`. This option is disabled by default.
	Note: Some Android devices might require the `CHANGE_WIFI_MULTICAST_STATE` permission and this option to be enabled to receive broadcast packets too.
	*/
	void setBroadcastEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBroadcastEnabled, _godot_object, enabled);
	}
	/**
	Sets the destination address and port for sending packets and variables. A hostname will be resolved using DNS if needed.
	Note: $(D setBroadcastEnabled) must be enabled before sending packets to a broadcast address (e.g. `255.255.255.255`).
	*/
	GodotError setDestAddress(in String host, in long port)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.setDestAddress, _godot_object, host, port);
	}
	/**
	Waits for a packet to arrive on the listening port. See $(D listen).
	*/
	GodotError wait()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.wait, _godot_object);
	}
}
