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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.packetpeer;
import godot.reference;
/**

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
		@GodotName("get_current_outbound_buffered_amount") GodotMethod!(long) getCurrentOutboundBufferedAmount;
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
	/// 
	enum WriteMode : int
	{
		/** */
		writeModeText = 0,
		/** */
		writeModeBinary = 1,
	}
	/// 
	enum Constants : int
	{
		writeModeText = 0,
		writeModeBinary = 1,
	}
	/**
	
	*/
	void close(in long code = 1000, in String reason = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.close, _godot_object, code, reason);
	}
	/**
	
	*/
	String getConnectedHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getConnectedHost, _godot_object);
	}
	/**
	
	*/
	long getConnectedPort() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConnectedPort, _godot_object);
	}
	/**
	
	*/
	long getCurrentOutboundBufferedAmount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCurrentOutboundBufferedAmount, _godot_object);
	}
	/**
	
	*/
	WebSocketPeer.WriteMode getWriteMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(WebSocketPeer.WriteMode)(GDNativeClassBinding.getWriteMode, _godot_object);
	}
	/**
	
	*/
	bool isConnectedToHost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isConnectedToHost, _godot_object);
	}
	/**
	
	*/
	void setNoDelay(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNoDelay, _godot_object, enabled);
	}
	/**
	
	*/
	void setWriteMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWriteMode, _godot_object, mode);
	}
	/**
	
	*/
	bool wasStringPacket() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.wasStringPacket, _godot_object);
	}
}
