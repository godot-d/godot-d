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
import godot.d.meta;
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
	enum string _GODOT_internal_name = "WebSocketPeer";
public:
@nogc nothrow:
	union { godot_object _godot_object; PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_write_mode") GodotMethod!(WebSocketPeer.WriteMode) getWriteMode;
		@GodotName("set_write_mode") GodotMethod!(void, long) setWriteMode;
		@GodotName("is_connected_to_host") GodotMethod!(bool) isConnectedToHost;
		@GodotName("was_string_packet") GodotMethod!(bool) wasStringPacket;
		@GodotName("close") GodotMethod!(void, long, String) close;
		@GodotName("get_connected_host") GodotMethod!(String) getConnectedHost;
		@GodotName("get_connected_port") GodotMethod!(long) getConnectedPort;
	}
	bool opEquals(in WebSocketPeer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WebSocketPeer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Specify that WebSockets messages should be transferred as text payload (only valid UTF-8 is allowed).
		*/
		writeModeText = 0,
		/**
		Specify that WebSockets messages should be transferred as binary payload (any byte combination is allowed).
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
	Get the current selected write mode. See $(D writemode).
	*/
	WebSocketPeer.WriteMode getWriteMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(WebSocketPeer.WriteMode)(_classBinding.getWriteMode, _godot_object);
	}
	/**
	Sets the socket to use the given $(D writemode).
	*/
	void setWriteMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWriteMode, _godot_object, mode);
	}
	/**
	Returns `true` if this peer is currently connected.
	*/
	bool isConnectedToHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isConnectedToHost, _godot_object);
	}
	/**
	Returns `true` if the last received packet was sent as a text payload. See $(D writemode)
	*/
	bool wasStringPacket() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.wasStringPacket, _godot_object);
	}
	/**
	Close this WebSocket connection. `code` is the status code for the closure (see RFC6455 section 7.4 for a list of valid status codes). $(D reason) is the human readable reason for closing the connection (can be any UTF8 string, must be less than 123 bytes).
	Note: To achieve a clean close, you will need to keep polling until either $(D WebSocketClient.connectionClosed) or $(D WebSocketServer.clientDisconnected) is received.
	Note: HTML5 export might not support all status codes. Please refer to browsers-specific documentation for more details.
	*/
	void close(StringArg1)(in long code = 1000, in StringArg1 reason = "")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.close, _godot_object, code, reason);
	}
	/**
	Returns the IP Address of the connected peer. (Not available in HTML5 export)
	*/
	String getConnectedHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getConnectedHost, _godot_object);
	}
	/**
	Returns the remote port of the connected peer. (Not available in HTML5 export)
	*/
	long getConnectedPort() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConnectedPort, _godot_object);
	}
}
