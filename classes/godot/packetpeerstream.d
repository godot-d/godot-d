/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packetpeerstream;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.packetpeer;
import godot.reference;
import godot.streampeer;
/**

*/
@GodotBaseClass struct PacketPeerStream
{
	package(godot) enum string _GODOT_internal_name = "PacketPeerStream";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_input_buffer_max_size") GodotMethod!(long) getInputBufferMaxSize;
		@GodotName("get_output_buffer_max_size") GodotMethod!(long) getOutputBufferMaxSize;
		@GodotName("get_stream_peer") GodotMethod!(StreamPeer) getStreamPeer;
		@GodotName("set_input_buffer_max_size") GodotMethod!(void, long) setInputBufferMaxSize;
		@GodotName("set_output_buffer_max_size") GodotMethod!(void, long) setOutputBufferMaxSize;
		@GodotName("set_stream_peer") GodotMethod!(void, StreamPeer) setStreamPeer;
	}
	/// 
	pragma(inline, true) bool opEquals(in PacketPeerStream other) const
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
	/// Construct a new instance of PacketPeerStream.
	/// Note: use `memnew!PacketPeerStream` instead.
	static PacketPeerStream _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PacketPeerStream");
		if(constructor is null) return typeof(this).init;
		return cast(PacketPeerStream)(constructor());
	}
	/**
	
	*/
	long getInputBufferMaxSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getInputBufferMaxSize, _godot_object);
	}
	/**
	
	*/
	long getOutputBufferMaxSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOutputBufferMaxSize, _godot_object);
	}
	/**
	
	*/
	Ref!StreamPeer getStreamPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StreamPeer)(GDNativeClassBinding.getStreamPeer, _godot_object);
	}
	/**
	
	*/
	void setInputBufferMaxSize(in long max_size_bytes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputBufferMaxSize, _godot_object, max_size_bytes);
	}
	/**
	
	*/
	void setOutputBufferMaxSize(in long max_size_bytes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutputBufferMaxSize, _godot_object, max_size_bytes);
	}
	/**
	
	*/
	void setStreamPeer(StreamPeer peer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStreamPeer, _godot_object, peer);
	}
	/**
	
	*/
	@property long inputBufferMaxSize()
	{
		return getInputBufferMaxSize();
	}
	/// ditto
	@property void inputBufferMaxSize(long v)
	{
		setInputBufferMaxSize(v);
	}
	/**
	
	*/
	@property long outputBufferMaxSize()
	{
		return getOutputBufferMaxSize();
	}
	/// ditto
	@property void outputBufferMaxSize(long v)
	{
		setOutputBufferMaxSize(v);
	}
	/**
	
	*/
	@property StreamPeer streamPeer()
	{
		return getStreamPeer();
	}
	/// ditto
	@property void streamPeer(StreamPeer v)
	{
		setStreamPeer(v);
	}
}
