/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.udpserver;
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
import godot.reference;
import godot.packetpeerudp;
/**

*/
@GodotBaseClass struct UDPServer
{
	package(godot) enum string _GODOT_internal_name = "UDPServer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_max_pending_connections") GodotMethod!(long) getMaxPendingConnections;
		@GodotName("is_connection_available") GodotMethod!(bool) isConnectionAvailable;
		@GodotName("is_listening") GodotMethod!(bool) isListening;
		@GodotName("listen") GodotMethod!(GodotError, long, String) listen;
		@GodotName("poll") GodotMethod!(GodotError) poll;
		@GodotName("set_max_pending_connections") GodotMethod!(void, long) setMaxPendingConnections;
		@GodotName("stop") GodotMethod!(void) stop;
		@GodotName("take_connection") GodotMethod!(PacketPeerUDP) takeConnection;
	}
	/// 
	pragma(inline, true) bool opEquals(in UDPServer other) const
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
	/// Construct a new instance of UDPServer.
	/// Note: use `memnew!UDPServer` instead.
	static UDPServer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("UDPServer");
		if(constructor is null) return typeof(this).init;
		return cast(UDPServer)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getMaxPendingConnections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxPendingConnections, _godot_object);
	}
	/**
	
	*/
	bool isConnectionAvailable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isConnectionAvailable, _godot_object);
	}
	/**
	
	*/
	bool isListening() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isListening, _godot_object);
	}
	/**
	
	*/
	GodotError listen(in long port, in String bind_address = gs!"*")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.listen, _godot_object, port, bind_address);
	}
	/**
	
	*/
	GodotError poll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.poll, _godot_object);
	}
	/**
	
	*/
	void setMaxPendingConnections(in long max_pending_connections)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxPendingConnections, _godot_object, max_pending_connections);
	}
	/**
	
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
	}
	/**
	
	*/
	Ref!PacketPeerUDP takeConnection()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PacketPeerUDP)(GDNativeClassBinding.takeConnection, _godot_object);
	}
	/**
	
	*/
	@property long maxPendingConnections()
	{
		return getMaxPendingConnections();
	}
	/// ditto
	@property void maxPendingConnections(long v)
	{
		setMaxPendingConnections(v);
	}
}
