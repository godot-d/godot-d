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
import godot.reference;
/**

*/
@GodotBaseClass struct StreamPeerBuffer
{
	enum string _GODOT_internal_name = "StreamPeerBuffer";
public:
@nogc nothrow:
	union { godot_object _godot_object; StreamPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("seek") GodotMethod!(void, long) seek;
		@GodotName("get_size") GodotMethod!(long) getSize;
		@GodotName("get_position") GodotMethod!(long) getPosition;
		@GodotName("resize") GodotMethod!(void, long) resize;
		@GodotName("set_data_array") GodotMethod!(void, PoolByteArray) setDataArray;
		@GodotName("get_data_array") GodotMethod!(PoolByteArray) getDataArray;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("duplicate") GodotMethod!(StreamPeerBuffer) duplicate;
	}
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
	/**
	
	*/
	void seek(in long position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.seek, _godot_object, position);
	}
	/**
	
	*/
	long getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSize, _godot_object);
	}
	/**
	
	*/
	long getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	void resize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.resize, _godot_object, size);
	}
	/**
	
	*/
	void setDataArray(in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDataArray, _godot_object, data);
	}
	/**
	
	*/
	PoolByteArray getDataArray() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.getDataArray, _godot_object);
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	
	*/
	Ref!StreamPeerBuffer duplicate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StreamPeerBuffer)(_classBinding.duplicate, _godot_object);
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
