/**
Helper class to implement a UDP server.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.udpserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.packetpeerudp;
/**
Helper class to implement a UDP server.

A simple server that opens a UDP socket and returns connected $(D PacketPeerUDP) upon receiving new packets. See also $(D PacketPeerUDP.connectToHost).
After starting the server ($(D listen)), you will need to $(D poll) it at regular intervals (e.g. inside $(D Node._process)) for it to process new packets, delivering them to the appropriate $(D PacketPeerUDP), and taking new connections.
Below a small example of how it can be used:


# server.gd
extends Node

var server := UDPServer.new()
var peers = []

func _ready():
    server.listen(4242)

func _process(delta):
    server.poll() # Important!
    if server.is_connection_available():
        var peer : PacketPeerUDP = server.take_connection()
        var pkt = peer.get_packet()
        print("Accepted peer: %s:%s" % $(D peer.get_packet_ip(), peer.get_packet_port()))
        print("Received data: %s" % $(D pkt.get_string_from_utf8()))
        # Reply so it knows we received the message.
        peer.put_packet(pkt)
        # Keep a reference so we can keep contacting the remote peer.
        peers.append(peer)

    for i in range(0, peers.size()):
        pass # Do something with the connected peers.





# client.gd
extends Node

var udp := PacketPeerUDP.new()
var connected = false

func _ready():
    udp.connect_to_host("127.0.0.1", 4242)

func _process(delta):
    if !connected:
        # Try to contact server
        udp.put_packet("The answer is... 42!".to_utf8())
    if udp.get_available_packet_count() &gt; 0:
        print("Connected: %s" % udp.get_packet().get_string_from_utf8())
        connected = true


*/
@GodotBaseClass struct UDPServer
{
	package(godot) enum string _GODOT_internal_name = "UDPServer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_max_pending_connections") GodotMethod!(long) getMaxPendingConnections;
		@GodotName("is_connection_available") GodotMethod!(bool) isConnectionAvailable;
		@GodotName("is_listening") GodotMethod!(bool) isListening;
		@GodotName("listen") GodotMethod!(GodotError, long, String) listen;
		@GodotName("poll") GodotMethod!(GodotError) poll;
		@GodotName("set_max_pending_connections") GodotMethod!(void, long) setMaxPendingConnections;
		@GodotName("stop") GodotMethod!(void) stop;
		@GodotName("take_connection") GodotMethod!(PacketPeerUDP) takeConnection;
	}
	/// 
	pragma(inline, true) bool opEquals(in UDPServer other) const
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
	/// Construct a new instance of UDPServer.
	/// Note: use `memnew!UDPServer` instead.
	static UDPServer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("UDPServer");
		if(constructor is null) return typeof(this).init;
		return cast(UDPServer)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getMaxPendingConnections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxPendingConnections, _godot_object);
	}
	/**
	Returns `true` if a packet with a new address/port combination was received on the socket.
	*/
	bool isConnectionAvailable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isConnectionAvailable, _godot_object);
	}
	/**
	Returns `true` if the socket is open and listening on a port.
	*/
	bool isListening() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isListening, _godot_object);
	}
	/**
	Starts the server by opening a UDP socket listening on the given port. You can optionally specify a `bind_address` to only listen for packets sent to that address. See also $(D PacketPeerUDP.listen).
	*/
	GodotError listen(in long port, in String bind_address = gs!"*")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.listen, _godot_object, port, bind_address);
	}
	/**
	Call this method at regular intervals (e.g. inside $(D Node._process)) to process new packets. And packet from known address/port pair will be delivered to the appropriate $(D PacketPeerUDP), any packet received from an unknown address/port pair will be added as a pending connection (see $(D isConnectionAvailable), $(D takeConnection)). The maximum number of pending connection is defined via $(D maxPendingConnections).
	*/
	GodotError poll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.poll, _godot_object);
	}
	/**
	
	*/
	void setMaxPendingConnections(in long max_pending_connections)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxPendingConnections, _godot_object, max_pending_connections);
	}
	/**
	Stops the server, closing the UDP socket if open. Will close all connected $(D PacketPeerUDP) accepted via $(D takeConnection) (remote peers will not be notified).
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
	}
	/**
	Returns the first pending connection (connected to the appropriate address/port). Will return `null` if no new connection is available. See also $(D isConnectionAvailable), $(D PacketPeerUDP.connectToHost).
	*/
	Ref!PacketPeerUDP takeConnection()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PacketPeerUDP)(GDNativeClassBinding.takeConnection, _godot_object);
	}
	/**
	Define the maximum number of pending connections, during $(D poll), any new pending connection exceeding that value will be automatically dropped. Setting this value to `0` effectively prevents any new pending connection to be accepted (e.g. when all your players have connected).
	*/
	@property long maxPendingConnections()
	{
		return getMaxPendingConnections();
	}
	/// ditto
	@property void maxPendingConnections(long v)
	{
		setMaxPendingConnections(v);
	}
}
