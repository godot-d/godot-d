/**
SSL Stream peer.

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
/**
SSL Stream peer.

This object can be used to connect to SSL servers.
*/
@GodotBaseClass struct StreamPeerSSL
{
	static immutable string _GODOT_internal_name = "StreamPeerSSL";
public:
@nogc nothrow:
	union { godot_object _godot_object; StreamPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		A status representing a `StreamPeerSSL` that is disconnected.
		*/
		statusDisconnected = 0,
		/**
		A status representing a `StreamPeerSSL` that is connected to a host.
		*/
		statusConnected = 1,
		/**
		An errot status that shows the peer did not present a SSL certificate and validation was requested.
		*/
		statusErrorNoCertificate = 2,
		/**
		An error status that shows a mismatch in the SSL certificate domain presented by the host and the domain requested for validation.
		*/
		statusErrorHostnameMismatch = 3,
	}
	/// 
	enum Constants : int
	{
		statusDisconnected = 0,
		statusConnected = 1,
		statusErrorNoCertificate = 2,
		statusErrorHostnameMismatch = 3,
	}
	package(godot) static GodotMethod!(GodotError, StreamPeer) _GODOT_accept_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "accept_stream") = _GODOT_accept_stream;
	/**
	
	*/
	GodotError acceptStream(StreamPeer stream)
	{
		_GODOT_accept_stream.bind("StreamPeerSSL", "accept_stream");
		return ptrcall!(GodotError)(_GODOT_accept_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(GodotError, StreamPeer, bool, String) _GODOT_connect_to_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_to_stream") = _GODOT_connect_to_stream;
	/**
	Connect to a peer using an underlying $(D StreamPeer) "stream", when "validate_certs" is true, `StreamPeerSSL` will validate that the certificate presented by the peer matches the "for_hostname".
	*/
	GodotError connectToStream(StringArg2)(StreamPeer stream, in bool validate_certs = false, in StringArg2 for_hostname = "")
	{
		_GODOT_connect_to_stream.bind("StreamPeerSSL", "connect_to_stream");
		return ptrcall!(GodotError)(_GODOT_connect_to_stream, _godot_object, stream, validate_certs, for_hostname);
	}
	package(godot) static GodotMethod!(StreamPeerSSL.Status) _GODOT_get_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_status") = _GODOT_get_status;
	/**
	Return the status of the connection, one of STATUS_* enum.
	*/
	StreamPeerSSL.Status getStatus() const
	{
		_GODOT_get_status.bind("StreamPeerSSL", "get_status");
		return ptrcall!(StreamPeerSSL.Status)(_GODOT_get_status, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_disconnect_from_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_from_stream") = _GODOT_disconnect_from_stream;
	/**
	Disconnect from host.
	*/
	void disconnectFromStream()
	{
		_GODOT_disconnect_from_stream.bind("StreamPeerSSL", "disconnect_from_stream");
		ptrcall!(void)(_GODOT_disconnect_from_stream, _godot_object);
	}
}
