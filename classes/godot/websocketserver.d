/**
A WebSocket server implementation

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
import godot.networkedmultiplayerpeer;
import godot.packetpeer;
import godot.reference;
/**
A WebSocket server implementation

This class implements a WebSocket server that can also support the high level multiplayer API.
After starting the server ($(D listen)), you will need to $(D NetworkedMultiplayerPeer.poll) it at regular intervals (e.g. inside $(D Node._process)). When clients connect, disconnect, or send data, you will receive the appropriate signal.
Note: This class will not work in HTML5 exports due to browser restrictions.
*/
@GodotBaseClass struct WebSocketServer
{
	enum string _GODOT_internal_name = "WebSocketServer";
public:
@nogc nothrow:
	union { godot_object _godot_object; WebSocketMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("is_listening") GodotMethod!(bool) isListening;
		@GodotName("listen") GodotMethod!(GodotError, long, PoolStringArray, bool) listen;
		@GodotName("stop") GodotMethod!(void) stop;
		@GodotName("has_peer") GodotMethod!(bool, long) hasPeer;
		@GodotName("get_peer_address") GodotMethod!(String, long) getPeerAddress;
		@GodotName("get_peer_port") GodotMethod!(long, long) getPeerPort;
		@GodotName("disconnect_peer") GodotMethod!(void, long, long, String) disconnectPeer;
	}
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
	/**
	Returns `true` if the server is actively listening on a port.
	*/
	bool isListening() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isListening, _godot_object);
	}
	/**
	Start listening on the given port.
	You can specify the desired subprotocols via the "protocols" array. If the list empty (default), "binary" will be used.
	You can use this server as a network peer for $(D MultiplayerAPI) by passing `true` as `gd_mp_api`. Note: $(D dataReceived) will not be fired and clients other than Godot will not work in this case.
	*/
	GodotError listen(in long port, in PoolStringArray protocols = PoolStringArray.init, in bool gd_mp_api = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.listen, _godot_object, port, protocols, gd_mp_api);
	}
	/**
	Stop the server and clear its state.
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stop, _godot_object);
	}
	/**
	Returns `true` if a peer with the given ID is connected.
	*/
	bool hasPeer(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasPeer, _godot_object, id);
	}
	/**
	Returns the IP address of the given peer.
	*/
	String getPeerAddress(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getPeerAddress, _godot_object, id);
	}
	/**
	Returns the remote port of the given peer.
	*/
	long getPeerPort(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPeerPort, _godot_object, id);
	}
	/**
	Disconnects the peer identified by `id` from the server. See $(D WebSocketPeer.close) for more info.
	*/
	void disconnectPeer(in long id, in long code = 1000, in String reason = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectPeer, _godot_object, id, code, reason);
	}
}
