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
	enum string _GODOT_internal_name = "StreamPeer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("put_data") GodotMethod!(GodotError, PoolByteArray) putData;
		@GodotName("put_partial_data") GodotMethod!(Array, PoolByteArray) putPartialData;
		@GodotName("get_data") GodotMethod!(Array, long) getData;
		@GodotName("get_partial_data") GodotMethod!(Array, long) getPartialData;
		@GodotName("get_available_bytes") GodotMethod!(long) getAvailableBytes;
		@GodotName("set_big_endian") GodotMethod!(void, bool) setBigEndian;
		@GodotName("is_big_endian_enabled") GodotMethod!(bool) isBigEndianEnabled;
		@GodotName("put_8") GodotMethod!(void, long) put8;
		@GodotName("put_u8") GodotMethod!(void, long) putU8;
		@GodotName("put_16") GodotMethod!(void, long) put16;
		@GodotName("put_u16") GodotMethod!(void, long) putU16;
		@GodotName("put_32") GodotMethod!(void, long) put32;
		@GodotName("put_u32") GodotMethod!(void, long) putU32;
		@GodotName("put_64") GodotMethod!(void, long) put64;
		@GodotName("put_u64") GodotMethod!(void, long) putU64;
		@GodotName("put_float") GodotMethod!(void, double) putFloat;
		@GodotName("put_double") GodotMethod!(void, double) putDouble;
		@GodotName("put_string") GodotMethod!(void, String) putString;
		@GodotName("put_utf8_string") GodotMethod!(void, String) putUtf8String;
		@GodotName("put_var") GodotMethod!(void, Variant) putVar;
		@GodotName("get_8") GodotMethod!(long) get8;
		@GodotName("get_u8") GodotMethod!(long) getU8;
		@GodotName("get_16") GodotMethod!(long) get16;
		@GodotName("get_u16") GodotMethod!(long) getU16;
		@GodotName("get_32") GodotMethod!(long) get32;
		@GodotName("get_u32") GodotMethod!(long) getU32;
		@GodotName("get_64") GodotMethod!(long) get64;
		@GodotName("get_u64") GodotMethod!(long) getU64;
		@GodotName("get_float") GodotMethod!(double) getFloat;
		@GodotName("get_double") GodotMethod!(double) getDouble;
		@GodotName("get_string") GodotMethod!(String, long) getString;
		@GodotName("get_utf8_string") GodotMethod!(String, long) getUtf8String;
		@GodotName("get_var") GodotMethod!(Variant) getVar;
	}
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
	@disable new(size_t s);
	/**
	Send a chunk of data through the connection, blocking if necessary until the data is done sending. This function returns an Error code.
	*/
	GodotError putData(in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.putData, _godot_object, data);
	}
	/**
	Send a chunk of data through the connection, if all the data could not be sent at once, only part of it will. This function returns two values, an Error code and an integer, describing how much data was actually sent.
	*/
	Array putPartialData(in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.putPartialData, _godot_object, data);
	}
	/**
	Return a chunk data with the received bytes. The amount of bytes to be received can be requested in the "bytes" argument. If not enough bytes are available, the function will block until the desired amount is received. This function returns two values, an Error code and a data array.
	*/
	Array getData(in long bytes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getData, _godot_object, bytes);
	}
	/**
	Return a chunk data with the received bytes. The amount of bytes to be received can be requested in the "bytes" argument. If not enough bytes are available, the function will return how many were actually received. This function returns two values, an Error code, and a data array.
	*/
	Array getPartialData(in long bytes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getPartialData, _godot_object, bytes);
	}
	/**
	Return the amount of bytes this `StreamPeer` has available.
	*/
	long getAvailableBytes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAvailableBytes, _godot_object);
	}
	/**
	
	*/
	void setBigEndian(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBigEndian, _godot_object, enable);
	}
	/**
	
	*/
	bool isBigEndianEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBigEndianEnabled, _godot_object);
	}
	/**
	Put a signed byte into the stream.
	*/
	void put8(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.put8, _godot_object, value);
	}
	/**
	Put an unsigned byte into the stream.
	*/
	void putU8(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.putU8, _godot_object, value);
	}
	/**
	Put a signed 16 bit value into the stream.
	*/
	void put16(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.put16, _godot_object, value);
	}
	/**
	Put an unsigned 16 bit value into the stream.
	*/
	void putU16(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.putU16, _godot_object, value);
	}
	/**
	Put a signed 32 bit value into the stream.
	*/
	void put32(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.put32, _godot_object, value);
	}
	/**
	Put an unsigned 32 bit value into the stream.
	*/
	void putU32(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.putU32, _godot_object, value);
	}
	/**
	Put a signed 64 bit value into the stream.
	*/
	void put64(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.put64, _godot_object, value);
	}
	/**
	Put an unsigned 64 bit value into the stream.
	*/
	void putU64(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.putU64, _godot_object, value);
	}
	/**
	Put a single-precision float into the stream.
	*/
	void putFloat(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.putFloat, _godot_object, value);
	}
	/**
	Put a double-precision float into the stream.
	*/
	void putDouble(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.putDouble, _godot_object, value);
	}
	/**
	Put a zero-terminated ascii string into the stream prepended by a 32 bits unsigned integer representing its size.
	*/
	void putString(in String value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.putString, _godot_object, value);
	}
	/**
	Put a zero-terminated utf8 string into the stream prepended by a 32 bits unsigned integer representing its size.
	*/
	void putUtf8String(in String value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.putUtf8String, _godot_object, value);
	}
	/**
	Put a Variant into the stream.
	*/
	void putVar(VariantArg0)(in VariantArg0 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.putVar, _godot_object, value);
	}
	/**
	Get a signed byte from the stream.
	*/
	long get8()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.get8, _godot_object);
	}
	/**
	Get an unsigned byte from the stream.
	*/
	long getU8()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getU8, _godot_object);
	}
	/**
	Get a signed 16 bit value from the stream.
	*/
	long get16()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.get16, _godot_object);
	}
	/**
	Get an unsigned 16 bit value from the stream.
	*/
	long getU16()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getU16, _godot_object);
	}
	/**
	Get a signed 32 bit value from the stream.
	*/
	long get32()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.get32, _godot_object);
	}
	/**
	Get an unsigned 32 bit value from the stream.
	*/
	long getU32()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getU32, _godot_object);
	}
	/**
	Get a signed 64 bit value from the stream.
	*/
	long get64()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.get64, _godot_object);
	}
	/**
	Get an unsigned 64 bit value from the stream.
	*/
	long getU64()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getU64, _godot_object);
	}
	/**
	Get a single-precision float from the stream.
	*/
	double getFloat()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFloat, _godot_object);
	}
	/**
	Get a double-precision float from the stream.
	*/
	double getDouble()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDouble, _godot_object);
	}
	/**
	Get a string with byte-length `bytes` from the stream. If `bytes` is negative (default) the length will be read from the stream using the reverse process of $(D putString).
	*/
	String getString(in long bytes = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getString, _godot_object, bytes);
	}
	/**
	Get a utf8 string with byte-length `bytes` from the stream (this decodes the string sent as utf8). If `bytes` is negative (default) the length will be read from the stream using the reverse process of $(D putUtf8String).
	*/
	String getUtf8String(in long bytes = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getUtf8String, _godot_object, bytes);
	}
	/**
	Get a Variant from the stream.
	*/
	Variant getVar()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getVar, _godot_object);
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
