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
import godot.reference;
/**
TCP Stream peer.

This object can be used to connect to TCP servers, or also is returned by a TCP server.
*/
@GodotBaseClass struct StreamPeerTCP
{
	enum string _GODOT_internal_name = "StreamPeerTCP";
public:
@nogc nothrow:
	union { godot_object _godot_object; StreamPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("connect_to_host") GodotMethod!(GodotError, String, long) connectToHost;
		@GodotName("is_connected_to_host") GodotMethod!(bool) isConnectedToHost;
		@GodotName("get_status") GodotMethod!(StreamPeerTCP.Status) getStatus;
		@GodotName("get_connected_host") GodotMethod!(String) getConnectedHost;
		@GodotName("get_connected_port") GodotMethod!(long) getConnectedPort;
		@GodotName("disconnect_from_host") GodotMethod!(void) disconnectFromHost;
		@GodotName("set_no_delay") GodotMethod!(void, bool) setNoDelay;
	}
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
		A status representing a `StreamPeerTCP` in error state.
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
	/**
	Connect to the specified host:port pair. A hostname will be resolved if valid. Returns $(D OK) on success or $(D FAILED) on failure.
	*/
	GodotError connectToHost(in String host, in long port)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.connectToHost, _godot_object, host, port);
	}
	/**
	Returns `true` if this peer is currently connected to a host, $(D code)false$(D code) otherwise.
	*/
	bool isConnectedToHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isConnectedToHost, _godot_object);
	}
	/**
	Return the status of the connection, one of STATUS_* enum.
	*/
	StreamPeerTCP.Status getStatus()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StreamPeerTCP.Status)(_classBinding.getStatus, _godot_object);
	}
	/**
	Return the IP of this peer.
	*/
	String getConnectedHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getConnectedHost, _godot_object);
	}
	/**
	Return the port of this peer.
	*/
	long getConnectedPort() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConnectedPort, _godot_object);
	}
	/**
	Disconnect from host.
	*/
	void disconnectFromHost()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectFromHost, _godot_object);
	}
	/**
	Disable Nagle algorithm to improve latency for small packets.
	Note that for applications that send large packets, or need to transfer a lot of data, this can reduce total bandwidth.
	*/
	void setNoDelay(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNoDelay, _godot_object, enabled);
	}
}
