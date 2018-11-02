/**
Abstraction and base class for packet-based protocols.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packetpeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**
Abstraction and base class for packet-based protocols.

PacketPeer is an abstraction and base class for packet-based protocols (such as UDP). It provides an API for sending and receiving packets both as raw data or variables. This makes it easy to transfer data over a protocol, without having to encode data as low level bytes or having to worry about network ordering.
*/
@GodotBaseClass struct PacketPeer
{
	enum string _GODOT_internal_name = "PacketPeer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_var") GodotMethod!(Variant) getVar;
		@GodotName("put_var") GodotMethod!(GodotError, Variant) putVar;
		@GodotName("get_packet") GodotMethod!(PoolByteArray) getPacket;
		@GodotName("put_packet") GodotMethod!(GodotError, PoolByteArray) putPacket;
		@GodotName("get_packet_error") GodotMethod!(GodotError) getPacketError;
		@GodotName("get_available_packet_count") GodotMethod!(long) getAvailablePacketCount;
		@GodotName("set_allow_object_decoding") GodotMethod!(void, bool) setAllowObjectDecoding;
		@GodotName("is_object_decoding_allowed") GodotMethod!(bool) isObjectDecodingAllowed;
	}
	bool opEquals(in PacketPeer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PacketPeer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PacketPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PacketPeer");
		if(constructor is null) return typeof(this).init;
		return cast(PacketPeer)(constructor());
	}
	@disable new(size_t s);
	/**
	Get a Variant.
	*/
	Variant getVar()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getVar, _godot_object);
	}
	/**
	Send a Variant as a packet.
	*/
	GodotError putVar(VariantArg0)(in VariantArg0 var)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.putVar, _godot_object, var);
	}
	/**
	Get a raw packet.
	*/
	PoolByteArray getPacket()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.getPacket, _godot_object);
	}
	/**
	Send a raw packet.
	*/
	GodotError putPacket(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.putPacket, _godot_object, buffer);
	}
	/**
	Return the error state of the last packet received (via $(D getPacket) and $(D getVar)).
	*/
	GodotError getPacketError() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.getPacketError, _godot_object);
	}
	/**
	Return the number of packets currently available in the ring-buffer.
	*/
	long getAvailablePacketCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAvailablePacketCount, _godot_object);
	}
	/**
	
	*/
	void setAllowObjectDecoding(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAllowObjectDecoding, _godot_object, enable);
	}
	/**
	
	*/
	bool isObjectDecodingAllowed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isObjectDecodingAllowed, _godot_object);
	}
	/**
	
	*/
	@property bool allowObjectDecoding()
	{
		return isObjectDecodingAllowed();
	}
	/// ditto
	@property void allowObjectDecoding(bool v)
	{
		setAllowObjectDecoding(v);
	}
}
