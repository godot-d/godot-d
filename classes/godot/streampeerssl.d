/**
SSL stream peer.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.streampeerssl;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.streampeer;
import godot.reference;
import godot.cryptokey;
import godot.x509certificate;
/**
SSL stream peer.

This object can be used to connect to an SSL server or accept a single SSL client connection.
*/
@GodotBaseClass struct StreamPeerSSL
{
	enum string _GODOT_internal_name = "StreamPeerSSL";
public:
@nogc nothrow:
	union { godot_object _godot_object; StreamPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("accept_stream") GodotMethod!(GodotError, StreamPeer, CryptoKey, X509Certificate, X509Certificate) acceptStream;
		@GodotName("connect_to_stream") GodotMethod!(GodotError, StreamPeer, bool, String, X509Certificate) connectToStream;
		@GodotName("disconnect_from_stream") GodotMethod!(void) disconnectFromStream;
		@GodotName("get_status") GodotMethod!(StreamPeerSSL.Status) getStatus;
		@GodotName("is_blocking_handshake_enabled") GodotMethod!(bool) isBlockingHandshakeEnabled;
		@GodotName("poll") GodotMethod!(void) poll;
		@GodotName("set_blocking_handshake_enabled") GodotMethod!(void, bool) setBlockingHandshakeEnabled;
	}
	bool opEquals(in StreamPeerSSL other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StreamPeerSSL opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StreamPeerSSL _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StreamPeerSSL");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeerSSL)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Status : int
	{
		/**
		A status representing a $(D StreamPeerSSL) that is disconnected.
		*/
		statusDisconnected = 0,
		/**
		
		*/
		statusHandshaking = 1,
		/**
		A status representing a $(D StreamPeerSSL) that is connected to a host.
		*/
		statusConnected = 2,
		/**
		
		*/
		statusError = 3,
		/**
		An error status that shows a mismatch in the SSL certificate domain presented by the host and the domain requested for validation.
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
	Accepts a peer connection as a server using the given `private_key` and providing the given `certificate` to the client. You can pass the optional `chain` parameter to provide additional CA chain information along with the certificate.
	*/
	GodotError acceptStream(StreamPeer stream, CryptoKey private_key, X509Certificate certificate, X509Certificate chain = X509Certificate.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.acceptStream, _godot_object, stream, private_key, certificate, chain);
	}
	/**
	Connects to a peer using an underlying $(D StreamPeer) `stream`. If `validate_certs` is `true`, $(D StreamPeerSSL) will validate that the certificate presented by the peer matches the `for_hostname`.
	$(B Note:) Specifying a custom `valid_certificate` is not supported in HTML5 exports due to browsers restrictions.
	*/
	GodotError connectToStream(StreamPeer stream, in bool validate_certs = false, in String for_hostname = gs!"", X509Certificate valid_certificate = X509Certificate.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.connectToStream, _godot_object, stream, validate_certs, for_hostname, valid_certificate);
	}
	/**
	Disconnects from host.
	*/
	void disconnectFromStream()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectFromStream, _godot_object);
	}
	/**
	Returns the status of the connection. See $(D status) for values.
	*/
	StreamPeerSSL.Status getStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StreamPeerSSL.Status)(_classBinding.getStatus, _godot_object);
	}
	/**
	
	*/
	bool isBlockingHandshakeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBlockingHandshakeEnabled, _godot_object);
	}
	/**
	Poll the connection to check for incoming bytes. Call this right before $(D StreamPeer.getAvailableBytes) for it to work properly.
	*/
	void poll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.poll, _godot_object);
	}
	/**
	
	*/
	void setBlockingHandshakeEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBlockingHandshakeEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	@property bool blockingHandshake()
	{
		return isBlockingHandshakeEnabled();
	}
	/// ditto
	@property void blockingHandshake(bool v)
	{
		setBlockingHandshakeEnabled(v);
	}
}
