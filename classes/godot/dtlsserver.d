/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.cryptokey;
import godot.x509certificate;
import godot.packetpeerdtls;
import godot.packetpeerudp;
/**

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
	
	*/
	GodotError setup(CryptoKey key, X509Certificate certificate, X509Certificate chain = X509Certificate.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.setup, _godot_object, key, certificate, chain);
	}
	/**
	
	*/
	Ref!PacketPeerDTLS takeConnection(PacketPeerUDP udp_peer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PacketPeerDTLS)(GDNativeClassBinding.takeConnection, _godot_object, udp_peer);
	}
}
