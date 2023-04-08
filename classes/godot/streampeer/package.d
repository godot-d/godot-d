/**


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
import godot.globalenums;
import godot.object;
import godot.reference;
/**

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
	/**
	
	*/
	long get16()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get16, _godot_object);
	}
	/**
	
	*/
	long get32()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get32, _godot_object);
	}
	/**
	
	*/
	long get64()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get64, _godot_object);
	}
	/**
	
	*/
	long get8()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get8, _godot_object);
	}
	/**
	
	*/
	long getAvailableBytes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAvailableBytes, _godot_object);
	}
	/**
	
	*/
	Array getData(in long bytes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getData, _godot_object, bytes);
	}
	/**
	
	*/
	double getDouble()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDouble, _godot_object);
	}
	/**
	
	*/
	double getFloat()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFloat, _godot_object);
	}
	/**
	
	*/
	Array getPartialData(in long bytes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getPartialData, _godot_object, bytes);
	}
	/**
	
	*/
	String getString(in long bytes = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getString, _godot_object, bytes);
	}
	/**
	
	*/
	long getU16()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getU16, _godot_object);
	}
	/**
	
	*/
	long getU32()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getU32, _godot_object);
	}
	/**
	
	*/
	long getU64()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getU64, _godot_object);
	}
	/**
	
	*/
	long getU8()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getU8, _godot_object);
	}
	/**
	
	*/
	String getUtf8String(in long bytes = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getUtf8String, _godot_object, bytes);
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
	bool isBigEndianEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBigEndianEnabled, _godot_object);
	}
	/**
	
	*/
	void put16(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.put16, _godot_object, value);
	}
	/**
	
	*/
	void put32(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.put32, _godot_object, value);
	}
	/**
	
	*/
	void put64(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.put64, _godot_object, value);
	}
	/**
	
	*/
	void put8(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.put8, _godot_object, value);
	}
	/**
	
	*/
	GodotError putData(in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.putData, _godot_object, data);
	}
	/**
	
	*/
	void putDouble(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putDouble, _godot_object, value);
	}
	/**
	
	*/
	void putFloat(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putFloat, _godot_object, value);
	}
	/**
	
	*/
	Array putPartialData(in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.putPartialData, _godot_object, data);
	}
	/**
	
	*/
	void putString(in String value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putString, _godot_object, value);
	}
	/**
	
	*/
	void putU16(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putU16, _godot_object, value);
	}
	/**
	
	*/
	void putU32(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putU32, _godot_object, value);
	}
	/**
	
	*/
	void putU64(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putU64, _godot_object, value);
	}
	/**
	
	*/
	void putU8(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putU8, _godot_object, value);
	}
	/**
	
	*/
	void putUtf8String(in String value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.putUtf8String, _godot_object, value);
	}
	/**
	
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
