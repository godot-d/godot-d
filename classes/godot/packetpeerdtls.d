/**


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
	/// 
	enum Status : int
	{
		/** */
		statusDisconnected = 0,
		/** */
		statusHandshaking = 1,
		/** */
		statusConnected = 2,
		/** */
		statusError = 3,
		/** */
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
	
	*/
	GodotError connectToPeer(PacketPeerUDP packet_peer, in bool validate_certs = true, in String for_hostname = gs!"", X509Certificate valid_certificate = X509Certificate.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.connectToPeer, _godot_object, packet_peer, validate_certs, for_hostname, valid_certificate);
	}
	/**
	
	*/
	void disconnectFromPeer()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnectFromPeer, _godot_object);
	}
	/**
	
	*/
	PacketPeerDTLS.Status getStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PacketPeerDTLS.Status)(GDNativeClassBinding.getStatus, _godot_object);
	}
	/**
	
	*/
	void poll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.poll, _godot_object);
	}
}
