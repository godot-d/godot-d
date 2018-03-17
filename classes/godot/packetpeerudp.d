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
/**
UDP packet peer.

Can be used to send raw UDP packets as well as $(D Variant)s.
*/
@GodotBaseClass struct PacketPeerUDP
{
	static immutable string _GODOT_internal_name = "PacketPeerUDP";
public:
@nogc nothrow:
	union { godot_object _godot_object; PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(GodotError, long, String, long) _GODOT_listen;
	package(godot) alias _GODOT_methodBindInfo(string name : "listen") = _GODOT_listen;
	/**
	Make this `PacketPeerUDP` listen on the "port" binding to "bind_address" with a buffer size "recv_buf_size".
	If "bind_address" is set as "*" (default), the peer will listen on all available addresses (both IPv4 and IPv6).
	If "bind_address" is set as "0.0.0.0" (for IPv4) or "::" (for IPv6), the peer will listen on all available addresses matching that IP type.
	If "bind_address" is set to any valid address (e.g. "192.168.1.101", "::1", etc), the peer will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	*/
	GodotError listen(StringArg1)(in long port, in StringArg1 bind_address = "*", in long recv_buf_size = 65536)
	{
		_GODOT_listen.bind("PacketPeerUDP", "listen");
		return ptrcall!(GodotError)(_GODOT_listen, _godot_object, port, bind_address, recv_buf_size);
	}
	package(godot) static GodotMethod!(void) _GODOT_close;
	package(godot) alias _GODOT_methodBindInfo(string name : "close") = _GODOT_close;
	/**
	Close the UDP socket the `PacketPeerUDP` is currently listening on.
	*/
	void close()
	{
		_GODOT_close.bind("PacketPeerUDP", "close");
		ptrcall!(void)(_GODOT_close, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_wait;
	package(godot) alias _GODOT_methodBindInfo(string name : "wait") = _GODOT_wait;
	/**
	Wait for a packet to arrive on the listening port, see $(D listen).
	*/
	GodotError wait()
	{
		_GODOT_wait.bind("PacketPeerUDP", "wait");
		return ptrcall!(GodotError)(_GODOT_wait, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_listening;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_listening") = _GODOT_is_listening;
	/**
	Return whether this `PacketPeerUDP` is listening.
	*/
	bool isListening() const
	{
		_GODOT_is_listening.bind("PacketPeerUDP", "is_listening");
		return ptrcall!(bool)(_GODOT_is_listening, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_packet_ip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_packet_ip") = _GODOT_get_packet_ip;
	/**
	Return the IP of the remote peer that sent the last packet(that was received with $(D getPacket) or $(D getVar)).
	*/
	String getPacketIp() const
	{
		_GODOT_get_packet_ip.bind("PacketPeerUDP", "get_packet_ip");
		return ptrcall!(String)(_GODOT_get_packet_ip, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_packet_port;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_packet_port") = _GODOT_get_packet_port;
	/**
	Return the port of the remote peer that sent the last packet(that was received with $(D getPacket) or $(D getVar)).
	*/
	long getPacketPort() const
	{
		_GODOT_get_packet_port.bind("PacketPeerUDP", "get_packet_port");
		return ptrcall!(long)(_GODOT_get_packet_port, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String, long) _GODOT_set_dest_address;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dest_address") = _GODOT_set_dest_address;
	/**
	Set the destination address and port for sending packets and variables, a hostname will be resolved using if valid.
	*/
	GodotError setDestAddress(StringArg0)(in StringArg0 host, in long port)
	{
		_GODOT_set_dest_address.bind("PacketPeerUDP", "set_dest_address");
		return ptrcall!(GodotError)(_GODOT_set_dest_address, _godot_object, host, port);
	}
}
