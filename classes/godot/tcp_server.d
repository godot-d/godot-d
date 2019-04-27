/**
TCP Server.

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
TCP Server.

TCP Server class. Listens to connections on a port and returns a $(D StreamPeerTCP) when got a connection.
*/
@GodotBaseClass struct TCP_Server
{
	enum string _GODOT_internal_name = "TCP_Server";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("listen") GodotMethod!(GodotError, long, String) listen;
		@GodotName("is_connection_available") GodotMethod!(bool) isConnectionAvailable;
		@GodotName("take_connection") GodotMethod!(StreamPeerTCP) takeConnection;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	bool opEquals(in TCP_Server other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TCP_Server opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TCP_Server _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TCP_Server");
		if(constructor is null) return typeof(this).init;
		return cast(TCP_Server)(constructor());
	}
	@disable new(size_t s);
	/**
	Listen on the "port" binding to "bind_address".
	If "bind_address" is set as "*" (default), the server will listen on all available addresses (both IPv4 and IPv6).
	If "bind_address" is set as "0.0.0.0" (for IPv4) or "::" (for IPv6), the server will listen on all available addresses matching that IP type.
	If "bind_address" is set to any valid address (e.g. "192.168.1.101", "::1", etc), the server will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	*/
	GodotError listen(in long port, in String bind_address = gs!"*")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.listen, _godot_object, port, bind_address);
	}
	/**
	Return `true` if a connection is available for taking.
	*/
	bool isConnectionAvailable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isConnectionAvailable, _godot_object);
	}
	/**
	If a connection is available, return a StreamPeerTCP with the connection/
	*/
	Ref!StreamPeerTCP takeConnection()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StreamPeerTCP)(_classBinding.takeConnection, _godot_object);
	}
	/**
	Stop listening.
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stop, _godot_object);
	}
}
