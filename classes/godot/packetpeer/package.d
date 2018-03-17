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
	static immutable string _GODOT_internal_name = "PacketPeer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(Variant) _GODOT_get_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_var") = _GODOT_get_var;
	/**
	Get a Variant.
	*/
	Variant getVar()
	{
		_GODOT_get_var.bind("PacketPeer", "get_var");
		return ptrcall!(Variant)(_GODOT_get_var, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, Variant) _GODOT_put_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_var") = _GODOT_put_var;
	/**
	Send a Variant as a packet.
	*/
	GodotError putVar(VariantArg0)(in VariantArg0 var)
	{
		_GODOT_put_var.bind("PacketPeer", "put_var");
		return ptrcall!(GodotError)(_GODOT_put_var, _godot_object, var);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT_get_packet;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_packet") = _GODOT_get_packet;
	/**
	Get a raw packet.
	*/
	PoolByteArray getPacket()
	{
		_GODOT_get_packet.bind("PacketPeer", "get_packet");
		return ptrcall!(PoolByteArray)(_GODOT_get_packet, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, PoolByteArray) _GODOT_put_packet;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_packet") = _GODOT_put_packet;
	/**
	Send a raw packet.
	*/
	GodotError putPacket(in PoolByteArray buffer)
	{
		_GODOT_put_packet.bind("PacketPeer", "put_packet");
		return ptrcall!(GodotError)(_GODOT_put_packet, _godot_object, buffer);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_get_packet_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_packet_error") = _GODOT_get_packet_error;
	/**
	Return the error state of the last packet received (via $(D getPacket) and $(D getVar)).
	*/
	GodotError getPacketError() const
	{
		_GODOT_get_packet_error.bind("PacketPeer", "get_packet_error");
		return ptrcall!(GodotError)(_GODOT_get_packet_error, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_available_packet_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_available_packet_count") = _GODOT_get_available_packet_count;
	/**
	Return the number of packets currently available in the ring-buffer.
	*/
	long getAvailablePacketCount() const
	{
		_GODOT_get_available_packet_count.bind("PacketPeer", "get_available_packet_count");
		return ptrcall!(long)(_GODOT_get_available_packet_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_allow_object_decoding;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_allow_object_decoding") = _GODOT_set_allow_object_decoding;
	/**
	
	*/
	void setAllowObjectDecoding(in bool enable)
	{
		_GODOT_set_allow_object_decoding.bind("PacketPeer", "set_allow_object_decoding");
		ptrcall!(void)(_GODOT_set_allow_object_decoding, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_object_decoding_allowed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_object_decoding_allowed") = _GODOT_is_object_decoding_allowed;
	/**
	
	*/
	bool isObjectDecodingAllowed() const
	{
		_GODOT_is_object_decoding_allowed.bind("PacketPeer", "is_object_decoding_allowed");
		return ptrcall!(bool)(_GODOT_is_object_decoding_allowed, _godot_object);
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
