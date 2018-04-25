/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.websocketmultiplayerpeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.networkedmultiplayerpeer;
import godot.websocketpeer;
/**

*/
@GodotBaseClass struct WebSocketMultiplayerPeer
{
	static immutable string _GODOT_internal_name = "WebSocketMultiplayerPeer";
public:
@nogc nothrow:
	union { godot_object _godot_object; NetworkedMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in WebSocketMultiplayerPeer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WebSocketMultiplayerPeer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WebSocketMultiplayerPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebSocketMultiplayerPeer");
		if(constructor is null) return typeof(this).init;
		return cast(WebSocketMultiplayerPeer)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(WebSocketPeer, long) _GODOT_get_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_peer") = _GODOT_get_peer;
	/**
	
	*/
	Ref!WebSocketPeer getPeer(in long peer_id) const
	{
		_GODOT_get_peer.bind("WebSocketMultiplayerPeer", "get_peer");
		return ptrcall!(WebSocketPeer)(_GODOT_get_peer, _godot_object, peer_id);
	}
}
