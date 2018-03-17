/**


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
/**

*/
@GodotBaseClass struct WebSocketPeer
{
	static immutable string _GODOT_internal_name = "WebSocketPeer";
public:
@nogc nothrow:
	union { godot_object _godot_object; PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	/// 
	enum WriteMode : int
	{
		/**
		
		*/
		writeModeText = 0,
		/**
		
		*/
		writeModeBinary = 1,
	}
	/// 
	enum Constants : int
	{
		writeModeText = 0,
		writeModeBinary = 1,
	}
	package(godot) static GodotMethod!(WebSocketPeer.WriteMode) _GODOT_get_write_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_write_mode") = _GODOT_get_write_mode;
	/**
	
	*/
	WebSocketPeer.WriteMode getWriteMode() const
	{
		_GODOT_get_write_mode.bind("WebSocketPeer", "get_write_mode");
		return ptrcall!(WebSocketPeer.WriteMode)(_GODOT_get_write_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_write_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_write_mode") = _GODOT_set_write_mode;
	/**
	
	*/
	void setWriteMode(in long mode)
	{
		_GODOT_set_write_mode.bind("WebSocketPeer", "set_write_mode");
		ptrcall!(void)(_GODOT_set_write_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_connected_to_host;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_connected_to_host") = _GODOT_is_connected_to_host;
	/**
	
	*/
	bool isConnectedToHost() const
	{
		_GODOT_is_connected_to_host.bind("WebSocketPeer", "is_connected_to_host");
		return ptrcall!(bool)(_GODOT_is_connected_to_host, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_was_string_packet;
	package(godot) alias _GODOT_methodBindInfo(string name : "was_string_packet") = _GODOT_was_string_packet;
	/**
	
	*/
	bool wasStringPacket() const
	{
		_GODOT_was_string_packet.bind("WebSocketPeer", "was_string_packet");
		return ptrcall!(bool)(_GODOT_was_string_packet, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_close;
	package(godot) alias _GODOT_methodBindInfo(string name : "close") = _GODOT_close;
	/**
	
	*/
	void close()
	{
		_GODOT_close.bind("WebSocketPeer", "close");
		ptrcall!(void)(_GODOT_close, _godot_object);
	}
}
