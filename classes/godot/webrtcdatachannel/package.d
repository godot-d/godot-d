/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.webrtcdatachannel;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.packetpeer;
import godot.reference;
/**

*/
@GodotBaseClass struct WebRTCDataChannel
{
	package(godot) enum string _GODOT_internal_name = "WebRTCDataChannel";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("close") GodotMethod!(void) close;
		@GodotName("get_buffered_amount") GodotMethod!(long) getBufferedAmount;
		@GodotName("get_id") GodotMethod!(long) getId;
		@GodotName("get_label") GodotMethod!(String) getLabel;
		@GodotName("get_max_packet_life_time") GodotMethod!(long) getMaxPacketLifeTime;
		@GodotName("get_max_retransmits") GodotMethod!(long) getMaxRetransmits;
		@GodotName("get_protocol") GodotMethod!(String) getProtocol;
		@GodotName("get_ready_state") GodotMethod!(WebRTCDataChannel.ChannelState) getReadyState;
		@GodotName("get_write_mode") GodotMethod!(WebRTCDataChannel.WriteMode) getWriteMode;
		@GodotName("is_negotiated") GodotMethod!(bool) isNegotiated;
		@GodotName("is_ordered") GodotMethod!(bool) isOrdered;
		@GodotName("poll") GodotMethod!(GodotError) poll;
		@GodotName("set_write_mode") GodotMethod!(void, long) setWriteMode;
		@GodotName("was_string_packet") GodotMethod!(bool) wasStringPacket;
	}
	/// 
	pragma(inline, true) bool opEquals(in WebRTCDataChannel other) const
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
	/// Construct a new instance of WebRTCDataChannel.
	/// Note: use `memnew!WebRTCDataChannel` instead.
	static WebRTCDataChannel _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebRTCDataChannel");
		if(constructor is null) return typeof(this).init;
		return cast(WebRTCDataChannel)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum WriteMode : int
	{
		/** */
		writeModeText = 0,
		/** */
		writeModeBinary = 1,
	}
	/// 
	enum ChannelState : int
	{
		/** */
		stateConnecting = 0,
		/** */
		stateOpen = 1,
		/** */
		stateClosing = 2,
		/** */
		stateClosed = 3,
	}
	/// 
	enum Constants : int
	{
		stateConnecting = 0,
		writeModeText = 0,
		stateOpen = 1,
		writeModeBinary = 1,
		stateClosing = 2,
		stateClosed = 3,
	}
	/**
	
	*/
	void close()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.close, _godot_object);
	}
	/**
	
	*/
	long getBufferedAmount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBufferedAmount, _godot_object);
	}
	/**
	
	*/
	long getId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getId, _godot_object);
	}
	/**
	
	*/
	String getLabel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLabel, _godot_object);
	}
	/**
	
	*/
	long getMaxPacketLifeTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxPacketLifeTime, _godot_object);
	}
	/**
	
	*/
	long getMaxRetransmits() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxRetransmits, _godot_object);
	}
	/**
	
	*/
	String getProtocol() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getProtocol, _godot_object);
	}
	/**
	
	*/
	WebRTCDataChannel.ChannelState getReadyState() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(WebRTCDataChannel.ChannelState)(GDNativeClassBinding.getReadyState, _godot_object);
	}
	/**
	
	*/
	WebRTCDataChannel.WriteMode getWriteMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(WebRTCDataChannel.WriteMode)(GDNativeClassBinding.getWriteMode, _godot_object);
	}
	/**
	
	*/
	bool isNegotiated() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isNegotiated, _godot_object);
	}
	/**
	
	*/
	bool isOrdered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOrdered, _godot_object);
	}
	/**
	
	*/
	GodotError poll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.poll, _godot_object);
	}
	/**
	
	*/
	void setWriteMode(in long write_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWriteMode, _godot_object, write_mode);
	}
	/**
	
	*/
	bool wasStringPacket() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.wasStringPacket, _godot_object);
	}
	/**
	
	*/
	@property WebRTCDataChannel.WriteMode writeMode()
	{
		return getWriteMode();
	}
	/// ditto
	@property void writeMode(long v)
	{
		setWriteMode(v);
	}
}
