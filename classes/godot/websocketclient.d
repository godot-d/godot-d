/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.websocketclient;
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
@GodotBaseClass struct WebSocketClient
{
	static immutable string _GODOT_internal_name = "WebSocketClient";
public:
@nogc nothrow:
	union { godot_object _godot_object; WebSocketMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in WebSocketClient other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WebSocketClient opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WebSocketClient _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebSocketClient");
		if(constructor is null) return typeof(this).init;
		return cast(WebSocketClient)(constructor());
	}
	package(godot) static GodotMethod!(GodotError, String, PoolStringArray, bool) _GODOT_connect_to_url;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_to_url") = _GODOT_connect_to_url;
	/**
	
	*/
	GodotError connectToUrl(StringArg0)(in StringArg0 url, in PoolStringArray protocols = PoolStringArray.init, in bool gd_mp_api = false)
	{
		_GODOT_connect_to_url.bind("WebSocketClient", "connect_to_url");
		return ptrcall!(GodotError)(_GODOT_connect_to_url, _godot_object, url, protocols, gd_mp_api);
	}
	package(godot) static GodotMethod!(void) _GODOT_disconnect_from_host;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_from_host") = _GODOT_disconnect_from_host;
	/**
	
	*/
	void disconnectFromHost()
	{
		_GODOT_disconnect_from_host.bind("WebSocketClient", "disconnect_from_host");
		ptrcall!(void)(_GODOT_disconnect_from_host, _godot_object);
	}
}
