/**
A simple interface to create a peer-to-peer mesh network composed of $(D WebRTCPeerConnection) that is compatible with the $(D MultiplayerAPI).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.webrtcmultiplayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.networkedmultiplayerpeer;
import godot.packetpeer;
import godot.reference;
import godot.webrtcpeerconnection;
/**
A simple interface to create a peer-to-peer mesh network composed of $(D WebRTCPeerConnection) that is compatible with the $(D MultiplayerAPI).

This class constructs a full mesh of $(D WebRTCPeerConnection) (one connection for each peer) that can be used as a $(D MultiplayerAPI.networkPeer).
You can add each $(D WebRTCPeerConnection) via $(D addPeer) or remove them via $(D removePeer). Peers must be added in $(D constant WebRTCPeerConnection.STATE_NEW) state to allow it to create the appropriate channels. This class will not create offers nor set descriptions, it will only poll them, and notify connections and disconnections.
$(D NetworkedMultiplayerPeer.connectionSucceeded) and $(D NetworkedMultiplayerPeer.serverDisconnected) will not be emitted unless `server_compatibility` is `true` in $(D initialize). Beside that data transfer works like in a $(D NetworkedMultiplayerPeer).
*/
@GodotBaseClass struct WebRTCMultiplayer
{
	package(godot) enum string _GODOT_internal_name = "WebRTCMultiplayer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ NetworkedMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_peer") GodotMethod!(GodotError, WebRTCPeerConnection, long, long) addPeer;
		@GodotName("close") GodotMethod!(void) close;
		@GodotName("get_peer") GodotMethod!(Dictionary, long) getPeer;
		@GodotName("get_peers") GodotMethod!(Dictionary) getPeers;
		@GodotName("has_peer") GodotMethod!(bool, long) hasPeer;
		@GodotName("initialize") GodotMethod!(GodotError, long, bool) initialize;
		@GodotName("remove_peer") GodotMethod!(void, long) removePeer;
	}
	/// 
	pragma(inline, true) bool opEquals(in WebRTCMultiplayer other) const
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
	/// Construct a new instance of WebRTCMultiplayer.
	/// Note: use `memnew!WebRTCMultiplayer` instead.
	static WebRTCMultiplayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebRTCMultiplayer");
		if(constructor is null) return typeof(this).init;
		return cast(WebRTCMultiplayer)(constructor());
	}
	@disable new(size_t s);
	/**
	Add a new peer to the mesh with the given `peer_id`. The $(D WebRTCPeerConnection) must be in state $(D constant WebRTCPeerConnection.STATE_NEW).
	Three channels will be created for reliable, unreliable, and ordered transport. The value of `unreliable_lifetime` will be passed to the `maxPacketLifetime` option when creating unreliable and ordered channels (see $(D WebRTCPeerConnection.createDataChannel)).
	*/
	GodotError addPeer(WebRTCPeerConnection peer, in long peer_id, in long unreliable_lifetime = 1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.addPeer, _godot_object, peer, peer_id, unreliable_lifetime);
	}
	/**
	Close all the add peer connections and channels, freeing all resources.
	*/
	void close()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.close, _godot_object);
	}
	/**
	Return a dictionary representation of the peer with given `peer_id` with three keys. `connection` containing the $(D WebRTCPeerConnection) to this peer, `channels` an array of three $(D WebRTCDataChannel), and `connected` a boolean representing if the peer connection is currently connected (all three channels are open).
	*/
	Dictionary getPeer(in long peer_id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getPeer, _godot_object, peer_id);
	}
	/**
	Returns a dictionary which keys are the peer ids and values the peer representation as in $(D getPeer).
	*/
	Dictionary getPeers()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getPeers, _godot_object);
	}
	/**
	Returns `true` if the given `peer_id` is in the peers map (it might not be connected though).
	*/
	bool hasPeer(in long peer_id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasPeer, _godot_object, peer_id);
	}
	/**
	Initialize the multiplayer peer with the given `peer_id` (must be between 1 and 2147483647).
	If `server_compatibilty` is `false` (default), the multiplayer peer will be immediately in state $(D constant NetworkedMultiplayerPeer.CONNECTION_CONNECTED) and $(D NetworkedMultiplayerPeer.connectionSucceeded) will not be emitted.
	If `server_compatibilty` is `true` the peer will suppress all $(D NetworkedMultiplayerPeer.peerConnected) signals until a peer with id $(D constant NetworkedMultiplayerPeer.TARGET_PEER_SERVER) connects and then emit $(D NetworkedMultiplayerPeer.connectionSucceeded). After that the signal $(D NetworkedMultiplayerPeer.peerConnected) will be emitted for every already connected peer, and any new peer that might connect. If the server peer disconnects after that, signal $(D NetworkedMultiplayerPeer.serverDisconnected) will be emitted and state will become $(D constant NetworkedMultiplayerPeer.CONNECTION_CONNECTED).
	*/
	GodotError initialize(in long peer_id, in bool server_compatibility = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.initialize, _godot_object, peer_id, server_compatibility);
	}
	/**
	Remove the peer with given `peer_id` from the mesh. If the peer was connected, and $(D NetworkedMultiplayerPeer.peerConnected) was emitted for it, then $(D NetworkedMultiplayerPeer.peerDisconnected) will be emitted.
	*/
	void removePeer(in long peer_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removePeer, _godot_object, peer_id);
	}
}
