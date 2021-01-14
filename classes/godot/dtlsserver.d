/**
Helper class to implement a DTLS server.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.dtlsserver;
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
import godot.cryptokey;
import godot.x509certificate;
import godot.packetpeerdtls;
import godot.packetpeerudp;
/**
Helper class to implement a DTLS server.

This class is used to store the state of a DTLS server. Upon $(D setup) it converts connected $(D PacketPeerUDP) to $(D PacketPeerDTLS) accepting them via $(D takeConnection) as DTLS clients. Under the hood, this class is used to store the DTLS state and cookies of the server. The reason of why the state and cookies are needed is outside of the scope of this documentation.
Below a small example of how to use it:


# server.gd
extends Node

var dtls := DTLSServer.new()
var server := UDPServer.new()
var peers = []

func _ready():
    server.listen(4242)
    var key = load("key.key") # Your private key.
    var cert = load("cert.crt") # Your X509 certificate.
    dtls.setup(key, cert)

func _process(delta):
    while server.is_connection_available():
        var peer : PacketPeerUDP = server.take_connection()
        var dtls_peer : PacketPeerDTLS = dtls.take_connection(peer)
        if dtls_peer.get_status() != PacketPeerDTLS.STATUS_HANDSHAKING:
            continue # It is normal that 50% of the connections fails due to cookie exchange.
        print("Peer connected!")
        peers.append(dtls_peer)
    for p in peers:
        p.poll() # Must poll to update the state.
        if p.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
            while p.get_available_packet_count() &gt; 0:
                print("Received message from client: %s" % p.get_packet().get_string_from_utf8())
                p.put_packet("Hello DTLS client".to_utf8())




# client.gd
extends Node

var dtls := PacketPeerDTLS.new()
var udp := PacketPeerUDP.new()
var connected = false

func _ready():
    udp.connect_to_host("127.0.0.1", 4242)
    dtls.connect_to_peer(udp, false) # Use true in production for certificate validation!

func _process(delta):
    dtls.poll()
    if dtls.get_status() == PacketPeerDTLS.STATUS_CONNECTED:
        if !connected:
            # Try to contact server
            dtls.put_packet("The answer is... 42!".to_utf8())
        while dtls.get_available_packet_count() &gt; 0:
            print("Connected: %s" % dtls.get_packet().get_string_from_utf8())
            connected = true


*/
@GodotBaseClass struct DTLSServer
{
	package(godot) enum string _GODOT_internal_name = "DTLSServer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("setup") GodotMethod!(GodotError, CryptoKey, X509Certificate, X509Certificate) setup;
		@GodotName("take_connection") GodotMethod!(PacketPeerDTLS, PacketPeerUDP) takeConnection;
	}
	/// 
	pragma(inline, true) bool opEquals(in DTLSServer other) const
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
	/// Construct a new instance of DTLSServer.
	/// Note: use `memnew!DTLSServer` instead.
	static DTLSServer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("DTLSServer");
		if(constructor is null) return typeof(this).init;
		return cast(DTLSServer)(constructor());
	}
	@disable new(size_t s);
	/**
	Setup the DTLS server to use the given `private_key` and provide the given `certificate` to clients. You can pass the optional `chain` parameter to provide additional CA chain information along with the certificate.
	*/
	GodotError setup(CryptoKey key, X509Certificate certificate, X509Certificate chain = X509Certificate.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.setup, _godot_object, key, certificate, chain);
	}
	/**
	Try to initiate the DTLS handshake with the given `udp_peer` which must be already connected (see $(D PacketPeerUDP.connectToHost)).
	$(B Note): You must check that the state of the return PacketPeerUDP is $(D constant PacketPeerDTLS.STATUS_HANDSHAKING), as it is normal that 50% of the new connections will be invalid due to cookie exchange.
	*/
	Ref!PacketPeerDTLS takeConnection(PacketPeerUDP udp_peer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PacketPeerDTLS)(GDNativeClassBinding.takeConnection, _godot_object, udp_peer);
	}
}
