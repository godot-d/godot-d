/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.websocketserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.websocketmultiplayerpeer;
/**

*/
@GodotBaseClass struct WebSocketServer
{
	static immutable string _GODOT_internal_name = "WebSocketServer";
public:
@nogc nothrow:
	union { godot_object _godot_object; WebSocketMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in WebSocketServer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WebSocketServer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WebSocketServer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebSocketServer");
		if(constructor is null) return typeof(this).init;
		return cast(WebSocketServer)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(bool) _GODOT_is_listening;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_listening") = _GODOT_is_listening;
	/**
	
	*/
	bool isListening() const
	{
		_GODOT_is_listening.bind("WebSocketServer", "is_listening");
		return ptrcall!(bool)(_GODOT_is_listening, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, long, PoolStringArray, bool) _GODOT_listen;
	package(godot) alias _GODOT_methodBindInfo(string name : "listen") = _GODOT_listen;
	/**
	
	*/
	GodotError listen(in long port, in PoolStringArray protocols = PoolStringArray.init, in bool gd_mp_api = false)
	{
		_GODOT_listen.bind("WebSocketServer", "listen");
		return ptrcall!(GodotError)(_GODOT_listen, _godot_object, port, protocols, gd_mp_api);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	/**
	
	*/
	void stop()
	{
		_GODOT_stop.bind("WebSocketServer", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_has_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_peer") = _GODOT_has_peer;
	/**
	
	*/
	bool hasPeer(in long id) const
	{
		_GODOT_has_peer.bind("WebSocketServer", "has_peer");
		return ptrcall!(bool)(_GODOT_has_peer, _godot_object, id);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_peer_address;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_peer_address") = _GODOT_get_peer_address;
	/**
	
	*/
	String getPeerAddress(in long arg0) const
	{
		_GODOT_get_peer_address.bind("WebSocketServer", "get_peer_address");
		return ptrcall!(String)(_GODOT_get_peer_address, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_peer_port;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_peer_port") = _GODOT_get_peer_port;
	/**
	
	*/
	long getPeerPort(in long arg0) const
	{
		_GODOT_get_peer_port.bind("WebSocketServer", "get_peer_port");
		return ptrcall!(long)(_GODOT_get_peer_port, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_disconnect_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_peer") = _GODOT_disconnect_peer;
	/**
	
	*/
	void disconnectPeer(in long arg0)
	{
		_GODOT_disconnect_peer.bind("WebSocketServer", "disconnect_peer");
		ptrcall!(void)(_GODOT_disconnect_peer, _godot_object, arg0);
	}
}
