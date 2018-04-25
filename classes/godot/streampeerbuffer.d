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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.streampeer;
/**

*/
@GodotBaseClass struct StreamPeerBuffer
{
	static immutable string _GODOT_internal_name = "StreamPeerBuffer";
public:
@nogc nothrow:
	union { godot_object _godot_object; StreamPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in StreamPeerBuffer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StreamPeerBuffer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StreamPeerBuffer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StreamPeerBuffer");
		if(constructor is null) return typeof(this).init;
		return cast(StreamPeerBuffer)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, long) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	/**
	
	*/
	void seek(in long position)
	{
		_GODOT_seek.bind("StreamPeerBuffer", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, position);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	
	*/
	long getSize() const
	{
		_GODOT_get_size.bind("StreamPeerBuffer", "get_size");
		return ptrcall!(long)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	/**
	
	*/
	long getPosition() const
	{
		_GODOT_get_position.bind("StreamPeerBuffer", "get_position");
		return ptrcall!(long)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_resize;
	package(godot) alias _GODOT_methodBindInfo(string name : "resize") = _GODOT_resize;
	/**
	
	*/
	void resize(in long size)
	{
		_GODOT_resize.bind("StreamPeerBuffer", "resize");
		ptrcall!(void)(_GODOT_resize, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, PoolByteArray) _GODOT_set_data_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_data_array") = _GODOT_set_data_array;
	/**
	
	*/
	void setDataArray(in PoolByteArray data)
	{
		_GODOT_set_data_array.bind("StreamPeerBuffer", "set_data_array");
		ptrcall!(void)(_GODOT_set_data_array, _godot_object, data);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT_get_data_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_data_array") = _GODOT_get_data_array;
	/**
	
	*/
	PoolByteArray getDataArray() const
	{
		_GODOT_get_data_array.bind("StreamPeerBuffer", "get_data_array");
		return ptrcall!(PoolByteArray)(_GODOT_get_data_array, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	
	*/
	void clear()
	{
		_GODOT_clear.bind("StreamPeerBuffer", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(StreamPeerBuffer) _GODOT_duplicate;
	package(godot) alias _GODOT_methodBindInfo(string name : "duplicate") = _GODOT_duplicate;
	/**
	
	*/
	Ref!StreamPeerBuffer duplicate() const
	{
		_GODOT_duplicate.bind("StreamPeerBuffer", "duplicate");
		return ptrcall!(StreamPeerBuffer)(_GODOT_duplicate, _godot_object);
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
