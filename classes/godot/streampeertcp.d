/**
TCP stream peer.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.streampeertcp;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.streampeer;
import godot.reference;
/**
TCP stream peer.

This object can be used to connect to TCP servers, or also is returned by a TCP server.
*/
@GodotBaseClass struct StreamPeerTCP
{
	package(godot) enum string _GODOT_internal_name = "StreamPeerTCP";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ StreamPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("connect_to_host") GodotMethod!(GodotError, String, long) connectToHost;
		@GodotName("disconnect_from_host") GodotMethod!(void) disconnectFromHost;
		@GodotName("get_connected_host") GodotMethod!(String) getConnectedHost;
		@GodotName("get_connected_port") GodotMethod!(long) getConnectedPort;
		@GodotName("get_status") GodotMethod!(StreamPeerTCP.Status) getStatus;
		@GodotName("is_connected_to_host") GodotMethod!(bool) isConnectedToHost;
		@GodotName("set_no_delay") GodotMethod!(void, bool) setNoDelay;
	}
	/// 
	pragma(inline, true) bool opEquals(in StreamPeerTCP other) const
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
	/// Construct a new instance of StreamPeerTCP.
	/// Note: use `memnew!StreamPeerTCP` instead.
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
		The initial status of the $(D StreamPeerTCP). This is also the status after disconnecting.
		*/
		statusNone = 0,
		/**
		A status representing a $(D StreamPeerTCP) that is connecting to a host.
		*/
		statusConnecting = 1,
		/**
		A status representing a $(D StreamPeerTCP) that is connected to a host.
		*/
		statusConnected = 2,
		/**
		A status representing a $(D StreamPeerTCP) in error state.
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
	Connects to the specified `host:port` pair. A hostname will be resolved if valid. Returns $(D constant OK) on success or $(D constant FAILED) on failure.
	*/
	GodotError connectToHost(in String host, in long port)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.connectToHost, _godot_object, host, port);
	}
	/**
	Disconnects from host.
	*/
	void disconnectFromHost()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnectFromHost, _godot_object);
	}
	/**
	Returns the IP of this peer.
	*/
	String getConnectedHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getConnectedHost, _godot_object);
	}
	/**
	Returns the port of this peer.
	*/
	long getConnectedPort() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConnectedPort, _godot_object);
	}
	/**
	Returns the status of the connection, see $(D status).
	*/
	StreamPeerTCP.Status getStatus()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StreamPeerTCP.Status)(GDNativeClassBinding.getStatus, _godot_object);
	}
	/**
	Returns `true` if this peer is currently connected or is connecting to a host, `false` otherwise.
	*/
	bool isConnectedToHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isConnectedToHost, _godot_object);
	}
	/**
	If `enabled` is `true`, packets will be sent immediately. If `enabled` is `false` (the default), packet transfers will be delayed and combined using $(D url=https://en.wikipedia.org/wiki/Nagle%27s_algorithm)Nagle's algorithm$(D /url).
	$(B Note:) It's recommended to leave this disabled for applications that send large packets or need to transfer a lot of data, as enabling this can decrease the total available bandwidth.
	*/
	void setNoDelay(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNoDelay, _godot_object, enabled);
	}
}
