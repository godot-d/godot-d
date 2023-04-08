/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.websocketmultiplayerpeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.networkedmultiplayerpeer;
import godot.packetpeer;
import godot.reference;
import godot.websocketpeer;
/**

*/
@GodotBaseClass struct WebSocketMultiplayerPeer
{
	package(godot) enum string _GODOT_internal_name = "WebSocketMultiplayerPeer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ NetworkedMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_peer") GodotMethod!(WebSocketPeer, long) getPeer;
		@GodotName("set_buffers") GodotMethod!(GodotError, long, long, long, long) setBuffers;
	}
	/// 
	pragma(inline, true) bool opEquals(in WebSocketMultiplayerPeer other) const
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
	/// Construct a new instance of WebSocketMultiplayerPeer.
	/// Note: use `memnew!WebSocketMultiplayerPeer` instead.
	static WebSocketMultiplayerPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebSocketMultiplayerPeer");
		if(constructor is null) return typeof(this).init;
		return cast(WebSocketMultiplayerPeer)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!WebSocketPeer getPeer(in long peer_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(WebSocketPeer)(GDNativeClassBinding.getPeer, _godot_object, peer_id);
	}
	/**
	
	*/
	GodotError setBuffers(in long input_buffer_size_kb, in long input_max_packets, in long output_buffer_size_kb, in long output_max_packets)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.setBuffers, _godot_object, input_buffer_size_kb, input_max_packets, output_buffer_size_kb, output_max_packets);
	}
}
