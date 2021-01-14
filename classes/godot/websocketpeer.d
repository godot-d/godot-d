/**
A class representing a specific WebSocket connection.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.websocketpeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.packetpeer;
import godot.reference;
/**
A class representing a specific WebSocket connection.

This class represent a specific WebSocket connection, you can do lower level operations with it.
You can choose to write to the socket in binary or text mode, and you can recognize the mode used for writing by the other peer.
*/
@GodotBaseClass struct WebSocketPeer
{
	package(godot) enum string _GODOT_internal_name = "WebSocketPeer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("close") GodotMethod!(void, long, String) close;
		@GodotName("get_connected_host") GodotMethod!(String) getConnectedHost;
		@GodotName("get_connected_port") GodotMethod!(long) getConnectedPort;
		@GodotName("get_write_mode") GodotMethod!(WebSocketPeer.WriteMode) getWriteMode;
		@GodotName("is_connected_to_host") GodotMethod!(bool) isConnectedToHost;
		@GodotName("set_no_delay") GodotMethod!(void, bool) setNoDelay;
		@GodotName("set_write_mode") GodotMethod!(void, long) setWriteMode;
		@GodotName("was_string_packet") GodotMethod!(bool) wasStringPacket;
	}
	/// 
	pragma(inline, true) bool opEquals(in WebSocketPeer other) const
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
	/// Construct a new instance of WebSocketPeer.
	/// Note: use `memnew!WebSocketPeer` instead.
	static WebSocketPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebSocketPeer");
		if(constructor is null) return typeof(this).init;
		return cast(WebSocketPeer)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum WriteMode : int
	{
		/**
		Specifies that WebSockets messages should be transferred as text payload (only valid UTF-8 is allowed).
		*/
		writeModeText = 0,
		/**
		Specifies that WebSockets messages should be transferred as binary payload (any byte combination is allowed).
		*/
		writeModeBinary = 1,
	}
	/// 
	enum Constants : int
	{
		writeModeText = 0,
		writeModeBinary = 1,
	}
	/**
	Closes this WebSocket connection. `code` is the status code for the closure (see RFC 6455 section 7.4 for a list of valid status codes). `reason` is the human readable reason for closing the connection (can be any UTF-8 string that's smaller than 123 bytes).
	$(B Note:) To achieve a clean close, you will need to keep polling until either $(D WebSocketClient.connectionClosed) or $(D WebSocketServer.clientDisconnected) is received.
	$(B Note:) The HTML5 export might not support all status codes. Please refer to browser-specific documentation for more details.
	*/
	void close(in long code = 1000, in String reason = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.close, _godot_object, code, reason);
	}
	/**
	Returns the IP address of the connected peer.
	$(B Note:) Not available in the HTML5 export.
	*/
	String getConnectedHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getConnectedHost, _godot_object);
	}
	/**
	Returns the remote port of the connected peer.
	$(B Note:) Not available in the HTML5 export.
	*/
	long getConnectedPort() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConnectedPort, _godot_object);
	}
	/**
	Gets the current selected write mode. See $(D writemode).
	*/
	WebSocketPeer.WriteMode getWriteMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(WebSocketPeer.WriteMode)(GDNativeClassBinding.getWriteMode, _godot_object);
	}
	/**
	Returns `true` if this peer is currently connected.
	*/
	bool isConnectedToHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isConnectedToHost, _godot_object);
	}
	/**
	Disable Nagle's algorithm on the underling TCP socket (default). See $(D StreamPeerTCP.setNoDelay) for more information.
	$(B Note:) Not available in the HTML5 export.
	*/
	void setNoDelay(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNoDelay, _godot_object, enabled);
	}
	/**
	Sets the socket to use the given $(D writemode).
	*/
	void setWriteMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWriteMode, _godot_object, mode);
	}
	/**
	Returns `true` if the last received packet was sent as a text payload. See $(D writemode).
	*/
	bool wasStringPacket() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.wasStringPacket, _godot_object);
	}
}
