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
	static immutable string _GODOT_internal_name = "TCP_Server";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(GodotError, long, String) _GODOT_listen;
	package(godot) alias _GODOT_methodBindInfo(string name : "listen") = _GODOT_listen;
	/**
	Listen on the "port" binding to "bind_address".
	If "bind_address" is set as "*" (default), the server will listen on all available addresses (both IPv4 and IPv6).
	If "bind_address" is set as "0.0.0.0" (for IPv4) or "::" (for IPv6), the server will listen on all available addresses matching that IP type.
	If "bind_address" is set to any valid address (e.g. "192.168.1.101", "::1", etc), the server will only listen on the interface with that addresses (or fail if no interface with the given address exists).
	*/
	GodotError listen(StringArg1)(in long port, in StringArg1 bind_address = "*")
	{
		_GODOT_listen.bind("TCP_Server", "listen");
		return ptrcall!(GodotError)(_GODOT_listen, _godot_object, port, bind_address);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_connection_available;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_connection_available") = _GODOT_is_connection_available;
	/**
	Return true if a connection is available for taking.
	*/
	bool isConnectionAvailable() const
	{
		_GODOT_is_connection_available.bind("TCP_Server", "is_connection_available");
		return ptrcall!(bool)(_GODOT_is_connection_available, _godot_object);
	}
	package(godot) static GodotMethod!(StreamPeerTCP) _GODOT_take_connection;
	package(godot) alias _GODOT_methodBindInfo(string name : "take_connection") = _GODOT_take_connection;
	/**
	If a connection is available, return a StreamPeerTCP with the connection/
	*/
	Ref!StreamPeerTCP takeConnection()
	{
		_GODOT_take_connection.bind("TCP_Server", "take_connection");
		return ptrcall!(StreamPeerTCP)(_GODOT_take_connection, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	/**
	Stop listening.
	*/
	void stop()
	{
		_GODOT_stop.bind("TCP_Server", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
}
