/**
TCP Stream peer.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.streampeertcp;
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
TCP Stream peer.

This object can be used to connect to TCP servers, or also is returned by a tcp server.
*/
@GodotBaseClass struct StreamPeerTCP
{
	static immutable string _GODOT_internal_name = "StreamPeerTCP";
public:
@nogc nothrow:
	union { godot_object _godot_object; StreamPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in StreamPeerTCP other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StreamPeerTCP opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StreamPeerTCP _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StreamPeerTCP");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeerTCP)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Status : int
	{
		/**
		The initial status of the `StreamPeerTCP`, also the status after a disconnect.
		*/
		statusNone = 0,
		/**
		A status representing a `StreamPeerTCP` that is connecting to a host.
		*/
		statusConnecting = 1,
		/**
		A status representing a `StreamPeerTCP` that is connected to a host.
		*/
		statusConnected = 2,
		/**
		A staus representing a `StreamPeerTCP` in error state.
		*/
		statusError = 3,
	}
	/// 
	enum Constants : int
	{
		statusNone = 0,
		statusConnecting = 1,
		statusConnected = 2,
		statusError = 3,
	}
	package(godot) static GodotMethod!(GodotError, String, long) _GODOT_connect_to_host;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_to_host") = _GODOT_connect_to_host;
	/**
	Connect to the specified host:port pair. A hostname will be resolved if valid. Returns $(D OK) on success or $(D FAILED) on failure.
	*/
	GodotError connectToHost(StringArg0)(in StringArg0 host, in long port)
	{
		_GODOT_connect_to_host.bind("StreamPeerTCP", "connect_to_host");
		return ptrcall!(GodotError)(_GODOT_connect_to_host, _godot_object, host, port);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_connected_to_host;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_connected_to_host") = _GODOT_is_connected_to_host;
	/**
	
	*/
	bool isConnectedToHost() const
	{
		_GODOT_is_connected_to_host.bind("StreamPeerTCP", "is_connected_to_host");
		return ptrcall!(bool)(_GODOT_is_connected_to_host, _godot_object);
	}
	package(godot) static GodotMethod!(StreamPeerTCP.Status) _GODOT_get_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_status") = _GODOT_get_status;
	/**
	Return the status of the connection, one of STATUS_* enum.
	*/
	StreamPeerTCP.Status getStatus() const
	{
		_GODOT_get_status.bind("StreamPeerTCP", "get_status");
		return ptrcall!(StreamPeerTCP.Status)(_GODOT_get_status, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_connected_host;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connected_host") = _GODOT_get_connected_host;
	/**
	Return the IP of this peer.
	*/
	String getConnectedHost() const
	{
		_GODOT_get_connected_host.bind("StreamPeerTCP", "get_connected_host");
		return ptrcall!(String)(_GODOT_get_connected_host, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_connected_port;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connected_port") = _GODOT_get_connected_port;
	/**
	Return the port of this peer.
	*/
	long getConnectedPort() const
	{
		_GODOT_get_connected_port.bind("StreamPeerTCP", "get_connected_port");
		return ptrcall!(long)(_GODOT_get_connected_port, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_disconnect_from_host;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_from_host") = _GODOT_disconnect_from_host;
	/**
	Disconnect from host.
	*/
	void disconnectFromHost()
	{
		_GODOT_disconnect_from_host.bind("StreamPeerTCP", "disconnect_from_host");
		ptrcall!(void)(_GODOT_disconnect_from_host, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_no_delay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_no_delay") = _GODOT_set_no_delay;
	/**
	Disable Nagle algorithm to improve latency for small packets.
	Note that for applications that send large packets, or need to transfer a lot of data, this can reduce total bandwidth.
	*/
	void setNoDelay(in bool enabled)
	{
		_GODOT_set_no_delay.bind("StreamPeerTCP", "set_no_delay");
		ptrcall!(void)(_GODOT_set_no_delay, _godot_object, enabled);
	}
}
