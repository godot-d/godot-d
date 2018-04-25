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
import godot.streampeer;
/**
Wrapper to use a PacketPeer over a StreamPeer.

PacketStreamPeer provides a wrapper for working using packets over a stream. This allows for using packet based code with StreamPeers. PacketPeerStream implements a custom protocol over the StreamPeer, so the user should not read or write to the wrapped StreamPeer directly.
*/
@GodotBaseClass struct PacketPeerStream
{
	static immutable string _GODOT_internal_name = "PacketPeerStream";
public:
@nogc nothrow:
	union { godot_object _godot_object; PacketPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, StreamPeer) _GODOT_set_stream_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stream_peer") = _GODOT_set_stream_peer;
	/**
	
	*/
	void setStreamPeer(StreamPeer peer)
	{
		_GODOT_set_stream_peer.bind("PacketPeerStream", "set_stream_peer");
		ptrcall!(void)(_GODOT_set_stream_peer, _godot_object, peer);
	}
	package(godot) static GodotMethod!(StreamPeer) _GODOT_get_stream_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream_peer") = _GODOT_get_stream_peer;
	/**
	
	*/
	Ref!StreamPeer getStreamPeer() const
	{
		_GODOT_get_stream_peer.bind("PacketPeerStream", "get_stream_peer");
		return ptrcall!(StreamPeer)(_GODOT_get_stream_peer, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_input_buffer_max_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_input_buffer_max_size") = _GODOT_set_input_buffer_max_size;
	/**
	
	*/
	void setInputBufferMaxSize(in long max_size_bytes)
	{
		_GODOT_set_input_buffer_max_size.bind("PacketPeerStream", "set_input_buffer_max_size");
		ptrcall!(void)(_GODOT_set_input_buffer_max_size, _godot_object, max_size_bytes);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_output_buffer_max_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_output_buffer_max_size") = _GODOT_set_output_buffer_max_size;
	/**
	
	*/
	void setOutputBufferMaxSize(in long max_size_bytes)
	{
		_GODOT_set_output_buffer_max_size.bind("PacketPeerStream", "set_output_buffer_max_size");
		ptrcall!(void)(_GODOT_set_output_buffer_max_size, _godot_object, max_size_bytes);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_input_buffer_max_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_input_buffer_max_size") = _GODOT_get_input_buffer_max_size;
	/**
	
	*/
	long getInputBufferMaxSize() const
	{
		_GODOT_get_input_buffer_max_size.bind("PacketPeerStream", "get_input_buffer_max_size");
		return ptrcall!(long)(_GODOT_get_input_buffer_max_size, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_output_buffer_max_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_output_buffer_max_size") = _GODOT_get_output_buffer_max_size;
	/**
	
	*/
	long getOutputBufferMaxSize() const
	{
		_GODOT_get_output_buffer_max_size.bind("PacketPeerStream", "get_output_buffer_max_size");
		return ptrcall!(long)(_GODOT_get_output_buffer_max_size, _godot_object);
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
