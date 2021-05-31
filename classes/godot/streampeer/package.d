/**
Abstraction and base class for stream-based protocols.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.streampeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**
Abstraction and base class for stream-based protocols.

StreamPeer is an abstraction and base class for stream-based protocols (such as TCP). It provides an API for sending and receiving data through streams as raw data or strings.
*/
@GodotBaseClass struct StreamPeer
{
	package(godot) enum string _GODOT_internal_name = "StreamPeer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_16") GodotMethod!(long) get16;
		@GodotName("get_32") GodotMethod!(long) get32;
		@GodotName("get_64") GodotMethod!(long) get64;
		@GodotName("get_8") GodotMethod!(long) get8;
		@GodotName("get_available_bytes") GodotMethod!(long) getAvailableBytes;
		@GodotName("get_data") GodotMethod!(Array, long) getData;
		@GodotName("get_double") GodotMethod!(double) getDouble;
		@GodotName("get_float") GodotMethod!(double) getFloat;
		@GodotName("get_partial_data") GodotMethod!(Array, long) getPartialData;
		@GodotName("get_string") GodotMethod!(String, long) getString;
		@GodotName("get_u16") GodotMethod!(long) getU16;
		@GodotName("get_u32") GodotMethod!(long) getU32;
		@GodotName("get_u64") GodotMethod!(long) getU64;
		@GodotName("get_u8") GodotMethod!(long) getU8;
		@GodotName("get_utf8_string") GodotMethod!(String, long) getUtf8String;
		@GodotName("get_var") GodotMethod!(Variant, bool) getVar;
		@GodotName("is_big_endian_enabled") GodotMethod!(bool) isBigEndianEnabled;
		@GodotName("put_16") GodotMethod!(void, long) put16;
		@GodotName("put_32") GodotMethod!(void, long) put32;
		@GodotName("put_64") GodotMethod!(void, long) put64;
		@GodotName("put_8") GodotMethod!(void, long) put8;
		@GodotName("put_data") GodotMethod!(GodotError, PoolByteArray) putData;
		@GodotName("put_double") GodotMethod!(void, double) putDouble;
		@GodotName("put_float") GodotMethod!(void, double) putFloat;
		@GodotName("put_partial_data") GodotMethod!(Array, PoolByteArray) putPartialData;
		@GodotName("put_string") GodotMethod!(void, String) putString;
		@GodotName("put_u16") GodotMethod!(void, long) putU16;
		@GodotName("put_u32") GodotMethod!(void, long) putU32;
		@GodotName("put_u64") GodotMethod!(void, long) putU64;
		@GodotName("put_u8") GodotMethod!(void, long) putU8;
		@GodotName("put_utf8_string") GodotMethod!(void, String) putUtf8String;
		@GodotName("put_var") GodotMethod!(void, Variant, bool) putVar;
		@GodotName("set_big_endian") GodotMethod!(void, bool) setBigEndian;
	}
	/// 
	pragma(inline, true) bool opEquals(in StreamPeer other) const
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
	/// Construct a new instance of StreamPeer.
	/// Note: use `memnew!StreamPeer` instead.
	static StreamPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StreamPeer");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeer)(constructor());
	}
	@disable new(size_t s);
	/**
	Gets a signed 16-bit value from the stream.
	*/
	long get16()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get16, _godot_object);
	}
	/**
	Gets a signed 32-bit value from the stream.
	*/
	long get32()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get32, _godot_object);
	}
	/**
	Gets a signed 64-bit value from the stream.
	*/
	long get64()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get64, _godot_object);
	}
	/**
	Gets a signed byte from the stream.
	*/
	long get8()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get8, _godot_object);
	}
	/**
	Returns the amount of bytes this $(D StreamPeer) has available.
	*/
	long getAvailableBytes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAvailableBytes, _godot_object);
	}
	/**
	Returns a chunk data with the received bytes. The amount of bytes to be received can be requested in the `bytes` argument. If not enough bytes are available, the function will block until the desired amount is received. This function returns two values, an $(D @GlobalScope.error) code and a data array.
	*/
	Array getData(in long bytes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getData, _godot_object, bytes);
	}
	/**
	Gets a double-precision float from the stream.
	*/
	double getDouble()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDouble, _godot_object);
	}
	/**
	Gets a single-precision float from the stream.
	*/
	double getFloat()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFloat, _godot_object);
	}
	/**
	Returns a chunk data with the received bytes. The amount of bytes to be received can be requested in the "bytes" argument. If not enough bytes are available, the function will return how many were actually received. This function returns two values, an $(D @GlobalScope.error) code, and a data array.
	*/
	Array getPartialData(in long bytes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getPartialData, _godot_object, bytes);
	}
	/**
	Gets a string with byte-length `bytes` from the stream. If `bytes` is negative (default) the length will be read from the stream using the reverse process of $(D putString).
	*/
	String getString(in long bytes = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getString, _godot_object, bytes);
	}
	/**
	Gets an unsigned 16-bit value from the stream.
	*/
	long getU16()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getU16, _godot_object);
	}
	/**
	Gets an unsigned 32-bit value from the stream.
	*/
	long getU32()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getU32, _godot_object);
	}
	/**
	Gets an unsigned 64-bit value from the stream.
	*/
	long getU64()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getU64, _godot_object);
	}
	/**
	Gets an unsigned byte from the stream.
	*/
	long getU8()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getU8, _godot_object);
	}
	/**
	Gets an UTF-8 string with byte-length `bytes` from the stream (this decodes the string sent as UTF-8). If `bytes` is negative (default) the length will be read from the stream using the reverse process of $(D putUtf8String).
	*/
	String getUtf8String(in long bytes = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getUtf8String, _godot_object, bytes);
	}
	/**
	Gets a Variant from the stream. If `allow_objects` is `true`, decoding objects is allowed.
	$(B Warning:) Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	*/
	Variant getVar(in bool allow_objects = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getVar, _godot_object, allow_objects);
	}
	/**
	
	*/
	bool isBigEndianEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBigEndianEnabled, _godot_object);
	}
	/**
	Puts a signed 16-bit value into the stream.
	*/
	void put16(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.put16, _godot_object, value);
	}
	/**
	Puts a signed 32-bit value into the stream.
	*/
	void put32(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.put32, _godot_object, value);
	}
	/**
	Puts a signed 64-bit value into the stream.
	*/
	void put64(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.put64, _godot_object, value);
	}
	/**
	Puts a signed byte into the stream.
	*/
	void put8(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.put8, _godot_object, value);
	}
	/**
	Sends a chunk of data through the connection, blocking if necessary until the data is done sending. This function returns an $(D @GlobalScope.error) code.
	*/
	GodotError putData(in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.putData, _godot_object, data);
	}
	/**
	Puts a double-precision float into the stream.
	*/
	void putDouble(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putDouble, _godot_object, value);
	}
	/**
	Puts a single-precision float into the stream.
	*/
	void putFloat(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putFloat, _godot_object, value);
	}
	/**
	Sends a chunk of data through the connection. If all the data could not be sent at once, only part of it will. This function returns two values, an $(D @GlobalScope.error) code and an integer, describing how much data was actually sent.
	*/
	Array putPartialData(in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.putPartialData, _godot_object, data);
	}
	/**
	Puts a zero-terminated ASCII string into the stream prepended by a 32-bit unsigned integer representing its size.
	Note: To put an ASCII string without prepending its size, you can use $(D putData):
	
	
	put_data("Hello world".to_ascii())
	
	
	*/
	void putString(in String value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putString, _godot_object, value);
	}
	/**
	Puts an unsigned 16-bit value into the stream.
	*/
	void putU16(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putU16, _godot_object, value);
	}
	/**
	Puts an unsigned 32-bit value into the stream.
	*/
	void putU32(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putU32, _godot_object, value);
	}
	/**
	Puts an unsigned 64-bit value into the stream.
	*/
	void putU64(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putU64, _godot_object, value);
	}
	/**
	Puts an unsigned byte into the stream.
	*/
	void putU8(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putU8, _godot_object, value);
	}
	/**
	Puts a zero-terminated UTF-8 string into the stream prepended by a 32 bits unsigned integer representing its size.
	Note: To put an UTF-8 string without prepending its size, you can use $(D putData):
	
	
	put_data("Hello world".to_utf8())
	
	
	*/
	void putUtf8String(in String value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putUtf8String, _godot_object, value);
	}
	/**
	Puts a Variant into the stream. If `full_objects` is `true` encoding objects is allowed (and can potentially include code).
	*/
	void putVar(VariantArg0)(in VariantArg0 value, in bool full_objects = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putVar, _godot_object, value, full_objects);
	}
	/**
	
	*/
	void setBigEndian(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBigEndian, _godot_object, enable);
	}
	/**
	If `true`, this $(D StreamPeer) will using big-endian format for encoding and decoding.
	*/
	@property bool bigEndian()
	{
		return isBigEndianEnabled();
	}
	/// ditto
	@property void bigEndian(bool v)
	{
		setBigEndian(v);
	}
}
