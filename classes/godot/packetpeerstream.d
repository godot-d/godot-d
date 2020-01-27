/**
Wrapper to use a PacketPeer over a StreamPeer.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packetpeerstream;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.packetpeer;
import godot.reference;
import godot.streampeer;
/**
Wrapper to use a PacketPeer over a StreamPeer.

PacketStreamPeer provides a wrapper for working using packets over a stream. This allows for using packet based code with StreamPeers. PacketPeerStream implements a custom protocol over the StreamPeer, so the user should not read or write to the wrapped StreamPeer directly.
*/
@GodotBaseClass struct PacketPeerStream
{
	enum string _GODOT_internal_name = "PacketPeerStream";
public:
@nogc nothrow:
	union { godot_object _godot_object; PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_input_buffer_max_size") GodotMethod!(long) getInputBufferMaxSize;
		@GodotName("get_output_buffer_max_size") GodotMethod!(long) getOutputBufferMaxSize;
		@GodotName("get_stream_peer") GodotMethod!(StreamPeer) getStreamPeer;
		@GodotName("set_input_buffer_max_size") GodotMethod!(void, long) setInputBufferMaxSize;
		@GodotName("set_output_buffer_max_size") GodotMethod!(void, long) setOutputBufferMaxSize;
		@GodotName("set_stream_peer") GodotMethod!(void, StreamPeer) setStreamPeer;
	}
	bool opEquals(in PacketPeerStream other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PacketPeerStream opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PacketPeerStream _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PacketPeerStream");
		if(constructor is null) return typeof(this).init;
		return cast(PacketPeerStream)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getInputBufferMaxSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getInputBufferMaxSize, _godot_object);
	}
	/**
	
	*/
	long getOutputBufferMaxSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOutputBufferMaxSize, _godot_object);
	}
	/**
	
	*/
	Ref!StreamPeer getStreamPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StreamPeer)(_classBinding.getStreamPeer, _godot_object);
	}
	/**
	
	*/
	void setInputBufferMaxSize(in long max_size_bytes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInputBufferMaxSize, _godot_object, max_size_bytes);
	}
	/**
	
	*/
	void setOutputBufferMaxSize(in long max_size_bytes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOutputBufferMaxSize, _godot_object, max_size_bytes);
	}
	/**
	
	*/
	void setStreamPeer(StreamPeer peer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStreamPeer, _godot_object, peer);
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
	The wrapped $(D StreamPeer) object.
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
