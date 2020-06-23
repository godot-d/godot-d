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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
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
	pragma(inline, true) WebRTCDataChannel opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
		/**
		Tells the channel to send data over this channel as text. An external peer (non-Godot) would receive this as a string.
		*/
		writeModeText = 0,
		/**
		Tells the channel to send data over this channel as binary. An external peer (non-Godot) would receive this as array buffer or blob.
		*/
		writeModeBinary = 1,
	}
	/// 
	enum ChannelState : int
	{
		/**
		The channel was created, but it's still trying to connect.
		*/
		stateConnecting = 0,
		/**
		The channel is currently open, and data can flow over it.
		*/
		stateOpen = 1,
		/**
		The channel is being closed, no new messages will be accepted, but those already in queue will be flushed.
		*/
		stateClosing = 2,
		/**
		The channel was closed, or connection failed.
		*/
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
	Closes this data channel, notifying the other peer.
	*/
	void close()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.close, _godot_object);
	}
	/**
	Returns the id assigned to this channel during creation (or auto-assigned during negotiation).
	If the channel is not negotiated out-of-band the id will only be available after the connection is established (will return `65535` until then).
	*/
	long getId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getId, _godot_object);
	}
	/**
	Returns the label assigned to this channel during creation.
	*/
	String getLabel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLabel, _godot_object);
	}
	/**
	Returns the `maxPacketLifeTime` value assigned to this channel during creation.
	Will be `65535` if not specified.
	*/
	long getMaxPacketLifeTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxPacketLifeTime, _godot_object);
	}
	/**
	Returns the `maxRetransmits` value assigned to this channel during creation.
	Will be `65535` if not specified.
	*/
	long getMaxRetransmits() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxRetransmits, _godot_object);
	}
	/**
	Returns the sub-protocol assigned to this channel during creation. An empty string if not specified.
	*/
	String getProtocol() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getProtocol, _godot_object);
	}
	/**
	Returns the current state of this channel, see $(D channelstate).
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
	Returns `true` if this channel was created with out-of-band configuration.
	*/
	bool isNegotiated() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isNegotiated, _godot_object);
	}
	/**
	Returns `true` if this channel was created with ordering enabled (default).
	*/
	bool isOrdered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOrdered, _godot_object);
	}
	/**
	Reserved, but not used for now.
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
	Returns `true` if the last received packet was transferred as text. See $(D writeMode).
	*/
	bool wasStringPacket() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.wasStringPacket, _godot_object);
	}
	/**
	The transfer mode to use when sending outgoing packet. Either text or binary.
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
