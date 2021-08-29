/**
DTLS packet peer.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packetpeerdtls;
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
import godot.packetpeerudp;
import godot.x509certificate;
/**
DTLS packet peer.

This class represents a DTLS peer connection. It can be used to connect to a DTLS server, and is returned by $(D DTLSServer.takeConnection).
$(B Warning:) SSL/TLS certificate revocation and certificate pinning are currently not supported. Revoked certificates are accepted as long as they are otherwise valid. If this is a concern, you may want to use automatically managed certificates with a short validity period.
*/
@GodotBaseClass struct PacketPeerDTLS
{
	package(godot) enum string _GODOT_internal_name = "PacketPeerDTLS";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("connect_to_peer") GodotMethod!(GodotError, PacketPeerUDP, bool, String, X509Certificate) connectToPeer;
		@GodotName("disconnect_from_peer") GodotMethod!(void) disconnectFromPeer;
		@GodotName("get_status") GodotMethod!(PacketPeerDTLS.Status) getStatus;
		@GodotName("poll") GodotMethod!(void) poll;
	}
	/// 
	pragma(inline, true) bool opEquals(in PacketPeerDTLS other) const
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
	/// Construct a new instance of PacketPeerDTLS.
	/// Note: use `memnew!PacketPeerDTLS` instead.
	static PacketPeerDTLS _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PacketPeerDTLS");
		if(constructor is null) return typeof(this).init;
		return cast(PacketPeerDTLS)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Status : int
	{
		/**
		A status representing a $(D PacketPeerDTLS) that is disconnected.
		*/
		statusDisconnected = 0,
		/**
		A status representing a $(D PacketPeerDTLS) that is currently performing the handshake with a remote peer.
		*/
		statusHandshaking = 1,
		/**
		A status representing a $(D PacketPeerDTLS) that is connected to a remote peer.
		*/
		statusConnected = 2,
		/**
		A status representing a $(D PacketPeerDTLS) in a generic error state.
		*/
		statusError = 3,
		/**
		An error status that shows a mismatch in the DTLS certificate domain presented by the host and the domain requested for validation.
		*/
		statusErrorHostnameMismatch = 4,
	}
	/// 
	enum Constants : int
	{
		statusDisconnected = 0,
		statusHandshaking = 1,
		statusConnected = 2,
		statusError = 3,
		statusErrorHostnameMismatch = 4,
	}
	/**
	Connects a `peer` beginning the DTLS handshake using the underlying $(D PacketPeerUDP) which must be connected (see $(D PacketPeerUDP.connectToHost)). If `validate_certs` is `true`, $(D PacketPeerDTLS) will validate that the certificate presented by the remote peer and match it with the `for_hostname` argument. You can specify a custom $(D X509Certificate) to use for validation via the `valid_certificate` argument.
	*/
	GodotError connectToPeer(PacketPeerUDP packet_peer, in bool validate_certs = true, in String for_hostname = gs!"", X509Certificate valid_certificate = X509Certificate.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.connectToPeer, _godot_object, packet_peer, validate_certs, for_hostname, valid_certificate);
	}
	/**
	Disconnects this peer, terminating the DTLS session.
	*/
	void disconnectFromPeer()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnectFromPeer, _godot_object);
	}
	/**
	Returns the status of the connection. See $(D status) for values.
	*/
	PacketPeerDTLS.Status getStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PacketPeerDTLS.Status)(GDNativeClassBinding.getStatus, _godot_object);
	}
	/**
	Poll the connection to check for incoming packets. Call this frequently to update the status and keep the connection working.
	*/
	void poll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.poll, _godot_object);
	}
}
