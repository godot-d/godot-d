/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packetpeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.reference;
/**

*/
@GodotBaseClass struct PacketPeer
{
	package(godot) enum string _GODOT_internal_name = "PacketPeer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_available_packet_count") GodotMethod!(long) getAvailablePacketCount;
		@GodotName("get_encode_buffer_max_size") GodotMethod!(long) getEncodeBufferMaxSize;
		@GodotName("get_packet") GodotMethod!(PoolByteArray) getPacket;
		@GodotName("get_packet_error") GodotMethod!(GodotError) getPacketError;
		@GodotName("get_var") GodotMethod!(Variant, bool) getVar;
		@GodotName("is_object_decoding_allowed") GodotMethod!(bool) isObjectDecodingAllowed;
		@GodotName("put_packet") GodotMethod!(GodotError, PoolByteArray) putPacket;
		@GodotName("put_var") GodotMethod!(GodotError, Variant, bool) putVar;
		@GodotName("set_allow_object_decoding") GodotMethod!(void, bool) setAllowObjectDecoding;
		@GodotName("set_encode_buffer_max_size") GodotMethod!(void, long) setEncodeBufferMaxSize;
	}
	/// 
	pragma(inline, true) bool opEquals(in PacketPeer other) const
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
	/// Construct a new instance of PacketPeer.
	/// Note: use `memnew!PacketPeer` instead.
	static PacketPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PacketPeer");
		if(constructor is null) return typeof(this).init;
		return cast(PacketPeer)(constructor());
	}
	/**
	
	*/
	long getAvailablePacketCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAvailablePacketCount, _godot_object);
	}
	/**
	
	*/
	long getEncodeBufferMaxSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getEncodeBufferMaxSize, _godot_object);
	}
	/**
	
	*/
	PoolByteArray getPacket()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.getPacket, _godot_object);
	}
	/**
	
	*/
	GodotError getPacketError() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.getPacketError, _godot_object);
	}
	/**
	
	*/
	Variant getVar(in bool allow_objects = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getVar, _godot_object, allow_objects);
	}
	/**
	
	*/
	bool isObjectDecodingAllowed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isObjectDecodingAllowed, _godot_object);
	}
	/**
	
	*/
	GodotError putPacket(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.putPacket, _godot_object, buffer);
	}
	/**
	
	*/
	GodotError putVar(VariantArg0)(in VariantArg0 var, in bool full_objects = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.putVar, _godot_object, var, full_objects);
	}
	/**
	
	*/
	void setAllowObjectDecoding(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAllowObjectDecoding, _godot_object, enable);
	}
	/**
	
	*/
	void setEncodeBufferMaxSize(in long max_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEncodeBufferMaxSize, _godot_object, max_size);
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
	/**
	
	*/
	@property long encodeBufferMaxSize()
	{
		return getEncodeBufferMaxSize();
	}
	/// ditto
	@property void encodeBufferMaxSize(long v)
	{
		setEncodeBufferMaxSize(v);
	}
}
