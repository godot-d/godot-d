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
	enum string _GODOT_internal_name = "PacketPeerUDP";
public:
@nogc nothrow:
	union { godot_object _godot_object; PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("listen") GodotMethod!(GodotError, long, String, long) listen;
		@GodotName("close") GodotMethod!(void) close;
		@GodotName("wait") GodotMethod!(GodotError) wait;
		@GodotName("is_listening") GodotMethod!(bool) isListening;
		@GodotName("get_packet_ip") GodotMethod!(String) getPacketIp;
		@GodotName("get_packet_port") GodotMethod!(long) getPacketPort;
		@GodotName("set_dest_address") GodotMethod!(GodotError, String, long) setDestAddress;
	}
	bool opEquals(in PacketPeerUDP other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PacketPeerUDP opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PacketPeerUDP _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PacketPeerUDP");
		if(constructor is null) return typeof(this).init;
		return cast(PacketPeerUDP)(constructor());
	}
	@disable new(size_t s);
	/**
	Make this `PacketPeerUDP` listen on the "port" binding to "bind_address" with a buffer size "recv_buf_size".
	If "bind_address" is set as "*" (default), the peer will listen on all available addresses (both IPv4 and IPv6).
	If "bind_address" is set as "0.0.0.0" (for IPv4) or "::" (for IPv6), the peer will listen on all available addresses matching that IP type.
	If "bind_address" is set to any valid address (e.g. "192.168.1.101", "::1", etc), the peer will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	*/
	GodotError listen(StringArg1)(in long port, in StringArg1 bind_address = "*", in long recv_buf_size = 65536)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.listen, _godot_object, port, bind_address, recv_buf_size);
	}
	/**
	Close the UDP socket the `PacketPeerUDP` is currently listening on.
	*/
	void close()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.close, _godot_object);
	}
	/**
	Wait for a packet to arrive on the listening port, see $(D listen).
	*/
	GodotError wait()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.wait, _godot_object);
	}
	/**
	Return whether this `PacketPeerUDP` is listening.
	*/
	bool isListening() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isListening, _godot_object);
	}
	/**
	Return the IP of the remote peer that sent the last packet(that was received with $(D PacketPeer.getPacket) or $(D PacketPeer.getVar)).
	*/
	String getPacketIp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getPacketIp, _godot_object);
	}
	/**
	Return the port of the remote peer that sent the last packet(that was received with $(D PacketPeer.getPacket) or $(D PacketPeer.getVar)).
	*/
	long getPacketPort() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPacketPort, _godot_object);
	}
	/**
	Set the destination address and port for sending packets and variables, a hostname will be resolved using if valid.
	*/
	GodotError setDestAddress(StringArg0)(in StringArg0 host, in long port)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.setDestAddress, _godot_object, host, port);
	}
}
