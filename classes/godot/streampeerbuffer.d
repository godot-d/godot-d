/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.streampeerbuffer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.streampeer;
import godot.reference;
/**

*/
@GodotBaseClass struct StreamPeerBuffer
{
	package(godot) enum string _GODOT_internal_name = "StreamPeerBuffer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ StreamPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("duplicate") GodotMethod!(StreamPeerBuffer) duplicate;
		@GodotName("get_data_array") GodotMethod!(PoolByteArray) getDataArray;
		@GodotName("get_position") GodotMethod!(long) getPosition;
		@GodotName("get_size") GodotMethod!(long) getSize;
		@GodotName("resize") GodotMethod!(void, long) resize;
		@GodotName("seek") GodotMethod!(void, long) seek;
		@GodotName("set_data_array") GodotMethod!(void, PoolByteArray) setDataArray;
	}
	/// 
	pragma(inline, true) bool opEquals(in StreamPeerBuffer other) const
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
	/// Construct a new instance of StreamPeerBuffer.
	/// Note: use `memnew!StreamPeerBuffer` instead.
	static StreamPeerBuffer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StreamPeerBuffer");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeerBuffer)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	Ref!StreamPeerBuffer duplicate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StreamPeerBuffer)(GDNativeClassBinding.duplicate, _godot_object);
	}
	/**
	
	*/
	PoolByteArray getDataArray() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.getDataArray, _godot_object);
	}
	/**
	
	*/
	long getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	long getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	
	*/
	void resize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resize, _godot_object, size);
	}
	/**
	
	*/
	void seek(in long position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.seek, _godot_object, position);
	}
	/**
	
	*/
	void setDataArray(in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDataArray, _godot_object, data);
	}
	/**
	
	*/
	@property PoolByteArray dataArray()
	{
		return getDataArray();
	}
	/// ditto
	@property void dataArray(PoolByteArray v)
	{
		setDataArray(v);
	}
}
