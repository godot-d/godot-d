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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**
Abstraction and base class for stream-based protocols.

StreamPeer is an abstraction and base class for stream-based protocols (such as TCP or Unix Sockets). It provides an API for sending and receiving data through streams as raw data or strings.
*/
@GodotBaseClass struct StreamPeer
{
	static immutable string _GODOT_internal_name = "StreamPeer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in StreamPeer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StreamPeer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StreamPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StreamPeer");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeer)(constructor());
	}
	package(godot) static GodotMethod!(GodotError, PoolByteArray) _GODOT_put_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_data") = _GODOT_put_data;
	/**
	Send a chunk of data through the connection, blocking if necessary until the data is done sending. This function returns an Error code.
	*/
	GodotError putData(in PoolByteArray data)
	{
		_GODOT_put_data.bind("StreamPeer", "put_data");
		return ptrcall!(GodotError)(_GODOT_put_data, _godot_object, data);
	}
	package(godot) static GodotMethod!(Array, PoolByteArray) _GODOT_put_partial_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_partial_data") = _GODOT_put_partial_data;
	/**
	Send a chunk of data through the connection, if all the data could not be sent at once, only part of it will. This function returns two values, an Error code and an integer, describing how much data was actually sent.
	*/
	Array putPartialData(in PoolByteArray data)
	{
		_GODOT_put_partial_data.bind("StreamPeer", "put_partial_data");
		return ptrcall!(Array)(_GODOT_put_partial_data, _godot_object, data);
	}
	package(godot) static GodotMethod!(Array, long) _GODOT_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_data") = _GODOT_get_data;
	/**
	Return a chunk data with the received bytes. The amount of bytes to be received can be requested in the "bytes" argument. If not enough bytes are available, the function will block until the desired amount is received. This function returns two values, an Error code and a data array.
	*/
	Array getData(in long bytes)
	{
		_GODOT_get_data.bind("StreamPeer", "get_data");
		return ptrcall!(Array)(_GODOT_get_data, _godot_object, bytes);
	}
	package(godot) static GodotMethod!(Array, long) _GODOT_get_partial_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_partial_data") = _GODOT_get_partial_data;
	/**
	Return a chunk data with the received bytes. The amount of bytes to be received can be requested in the "bytes" argument. If not enough bytes are available, the function will return how many were actually received. This function returns two values, an Error code, and a data array.
	*/
	Array getPartialData(in long bytes)
	{
		_GODOT_get_partial_data.bind("StreamPeer", "get_partial_data");
		return ptrcall!(Array)(_GODOT_get_partial_data, _godot_object, bytes);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_available_bytes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_available_bytes") = _GODOT_get_available_bytes;
	/**
	Return the amount of bytes this `StreamPeer` has available.
	*/
	long getAvailableBytes() const
	{
		_GODOT_get_available_bytes.bind("StreamPeer", "get_available_bytes");
		return ptrcall!(long)(_GODOT_get_available_bytes, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_big_endian;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_big_endian") = _GODOT_set_big_endian;
	/**
	
	*/
	void setBigEndian(in bool enable)
	{
		_GODOT_set_big_endian.bind("StreamPeer", "set_big_endian");
		ptrcall!(void)(_GODOT_set_big_endian, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_big_endian_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_big_endian_enabled") = _GODOT_is_big_endian_enabled;
	/**
	
	*/
	bool isBigEndianEnabled() const
	{
		_GODOT_is_big_endian_enabled.bind("StreamPeer", "is_big_endian_enabled");
		return ptrcall!(bool)(_GODOT_is_big_endian_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_put_8;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_8") = _GODOT_put_8;
	/**
	Put a signed byte into the stream.
	*/
	void put8(in long value)
	{
		_GODOT_put_8.bind("StreamPeer", "put_8");
		ptrcall!(void)(_GODOT_put_8, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_put_u8;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_u8") = _GODOT_put_u8;
	/**
	Put an unsigned byte into the stream.
	*/
	void putU8(in long value)
	{
		_GODOT_put_u8.bind("StreamPeer", "put_u8");
		ptrcall!(void)(_GODOT_put_u8, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_put_16;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_16") = _GODOT_put_16;
	/**
	Put a signed 16 bit value into the stream.
	*/
	void put16(in long value)
	{
		_GODOT_put_16.bind("StreamPeer", "put_16");
		ptrcall!(void)(_GODOT_put_16, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_put_u16;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_u16") = _GODOT_put_u16;
	/**
	Put an unsigned 16 bit value into the stream.
	*/
	void putU16(in long value)
	{
		_GODOT_put_u16.bind("StreamPeer", "put_u16");
		ptrcall!(void)(_GODOT_put_u16, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_put_32;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_32") = _GODOT_put_32;
	/**
	Put a signed 32 bit value into the stream.
	*/
	void put32(in long value)
	{
		_GODOT_put_32.bind("StreamPeer", "put_32");
		ptrcall!(void)(_GODOT_put_32, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_put_u32;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_u32") = _GODOT_put_u32;
	/**
	Put an unsigned 32 bit value into the stream.
	*/
	void putU32(in long value)
	{
		_GODOT_put_u32.bind("StreamPeer", "put_u32");
		ptrcall!(void)(_GODOT_put_u32, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_put_64;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_64") = _GODOT_put_64;
	/**
	Put a signed 64 bit value into the stream.
	*/
	void put64(in long value)
	{
		_GODOT_put_64.bind("StreamPeer", "put_64");
		ptrcall!(void)(_GODOT_put_64, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_put_u64;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_u64") = _GODOT_put_u64;
	/**
	Put an unsigned 64 bit value into the stream.
	*/
	void putU64(in long value)
	{
		_GODOT_put_u64.bind("StreamPeer", "put_u64");
		ptrcall!(void)(_GODOT_put_u64, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_put_float;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_float") = _GODOT_put_float;
	/**
	Put a single-precision float into the stream.
	*/
	void putFloat(in double value)
	{
		_GODOT_put_float.bind("StreamPeer", "put_float");
		ptrcall!(void)(_GODOT_put_float, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_put_double;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_double") = _GODOT_put_double;
	/**
	Put a double-precision float into the stream.
	*/
	void putDouble(in double value)
	{
		_GODOT_put_double.bind("StreamPeer", "put_double");
		ptrcall!(void)(_GODOT_put_double, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_put_utf8_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_utf8_string") = _GODOT_put_utf8_string;
	/**
	Put a zero-terminated utf8 string into the stream.
	*/
	void putUtf8String(StringArg0)(in StringArg0 value)
	{
		_GODOT_put_utf8_string.bind("StreamPeer", "put_utf8_string");
		ptrcall!(void)(_GODOT_put_utf8_string, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, Variant) _GODOT_put_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "put_var") = _GODOT_put_var;
	/**
	Put a Variant into the stream.
	*/
	void putVar(VariantArg0)(in VariantArg0 value)
	{
		_GODOT_put_var.bind("StreamPeer", "put_var");
		ptrcall!(void)(_GODOT_put_var, _godot_object, value);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_8;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_8") = _GODOT_get_8;
	/**
	Get a signed byte from the stream.
	*/
	long get8()
	{
		_GODOT_get_8.bind("StreamPeer", "get_8");
		return ptrcall!(long)(_GODOT_get_8, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_u8;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_u8") = _GODOT_get_u8;
	/**
	Get an unsigned byte from the stream.
	*/
	long getU8()
	{
		_GODOT_get_u8.bind("StreamPeer", "get_u8");
		return ptrcall!(long)(_GODOT_get_u8, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_16;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_16") = _GODOT_get_16;
	/**
	Get a signed 16 bit value from the stream.
	*/
	long get16()
	{
		_GODOT_get_16.bind("StreamPeer", "get_16");
		return ptrcall!(long)(_GODOT_get_16, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_u16;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_u16") = _GODOT_get_u16;
	/**
	Get an unsigned 16 bit value from the stream.
	*/
	long getU16()
	{
		_GODOT_get_u16.bind("StreamPeer", "get_u16");
		return ptrcall!(long)(_GODOT_get_u16, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_32;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_32") = _GODOT_get_32;
	/**
	Get a signed 32 bit value from the stream.
	*/
	long get32()
	{
		_GODOT_get_32.bind("StreamPeer", "get_32");
		return ptrcall!(long)(_GODOT_get_32, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_u32;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_u32") = _GODOT_get_u32;
	/**
	Get an unsigned 32 bit value from the stream.
	*/
	long getU32()
	{
		_GODOT_get_u32.bind("StreamPeer", "get_u32");
		return ptrcall!(long)(_GODOT_get_u32, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_64;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_64") = _GODOT_get_64;
	/**
	Get a signed 64 bit value from the stream.
	*/
	long get64()
	{
		_GODOT_get_64.bind("StreamPeer", "get_64");
		return ptrcall!(long)(_GODOT_get_64, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_u64;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_u64") = _GODOT_get_u64;
	/**
	Get an unsigned 64 bit value from the stream.
	*/
	long getU64()
	{
		_GODOT_get_u64.bind("StreamPeer", "get_u64");
		return ptrcall!(long)(_GODOT_get_u64, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_float;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_float") = _GODOT_get_float;
	/**
	Get a single-precision float from the stream.
	*/
	double getFloat()
	{
		_GODOT_get_float.bind("StreamPeer", "get_float");
		return ptrcall!(double)(_GODOT_get_float, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_double;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_double") = _GODOT_get_double;
	/**
	Get a double-precision float from the stream.
	*/
	double getDouble()
	{
		_GODOT_get_double.bind("StreamPeer", "get_double");
		return ptrcall!(double)(_GODOT_get_double, _godot_object);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_string") = _GODOT_get_string;
	/**
	Get a string with byte-length "bytes" from the stream.
	*/
	String getString(in long bytes)
	{
		_GODOT_get_string.bind("StreamPeer", "get_string");
		return ptrcall!(String)(_GODOT_get_string, _godot_object, bytes);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_utf8_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_utf8_string") = _GODOT_get_utf8_string;
	/**
	Get a utf8 string with byte-length "bytes" from the stream (this decodes the string sent as utf8).
	*/
	String getUtf8String(in long bytes)
	{
		_GODOT_get_utf8_string.bind("StreamPeer", "get_utf8_string");
		return ptrcall!(String)(_GODOT_get_utf8_string, _godot_object, bytes);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_var") = _GODOT_get_var;
	/**
	Get a Variant from the stream.
	*/
	Variant getVar()
	{
		_GODOT_get_var.bind("StreamPeer", "get_var");
		return ptrcall!(Variant)(_GODOT_get_var, _godot_object);
	}
	/**
	If `true`, this `StreamPeer` will using big-endian format for encoding and decoding.
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
