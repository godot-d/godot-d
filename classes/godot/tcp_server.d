/**
A TCP server.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.tcp_server;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.streampeertcp;
/**
A TCP server.

Listens to connections on a port and returns a $(D StreamPeerTCP) when it gets an incoming connection.
*/
@GodotBaseClass struct TCP_Server
{
	package(godot) enum string _GODOT_internal_name = "TCP_Server";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("is_connection_available") GodotMethod!(bool) isConnectionAvailable;
		@GodotName("is_listening") GodotMethod!(bool) isListening;
		@GodotName("listen") GodotMethod!(GodotError, long, String) listen;
		@GodotName("stop") GodotMethod!(void) stop;
		@GodotName("take_connection") GodotMethod!(StreamPeerTCP) takeConnection;
	}
	/// 
	pragma(inline, true) bool opEquals(in TCP_Server other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) TCP_Server opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of TCP_Server.
	/// Note: use `memnew!TCP_Server` instead.
	static TCP_Server _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TCP_Server");
		if(constructor is null) return typeof(this).init;
		return cast(TCP_Server)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns `true` if a connection is available for taking.
	*/
	bool isConnectionAvailable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isConnectionAvailable, _godot_object);
	}
	/**
	Returns `true` if the server is currently listening for connections.
	*/
	bool isListening() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isListening, _godot_object);
	}
	/**
	Listen on the `port` binding to `bind_address`.
	If `bind_address` is set as `"*"` (default), the server will listen on all available addresses (both IPv4 and IPv6).
	If `bind_address` is set as `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the server will listen on all available addresses matching that IP type.
	If `bind_address` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc), the server will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	*/
	GodotError listen(in long port, in String bind_address = gs!"*")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.listen, _godot_object, port, bind_address);
	}
	/**
	Stops listening.
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
	}
	/**
	If a connection is available, returns a StreamPeerTCP with the connection.
	*/
	Ref!StreamPeerTCP takeConnection()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StreamPeerTCP)(GDNativeClassBinding.takeConnection, _godot_object);
	}
}
