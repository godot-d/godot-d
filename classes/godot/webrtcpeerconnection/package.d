/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.webrtcpeerconnection;
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
import godot.webrtcdatachannel;
/**

*/
@GodotBaseClass struct WebRTCPeerConnection
{
	package(godot) enum string _GODOT_internal_name = "WebRTCPeerConnection";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_ice_candidate") GodotMethod!(GodotError, String, long, String) addIceCandidate;
		@GodotName("close") GodotMethod!(void) close;
		@GodotName("create_data_channel") GodotMethod!(WebRTCDataChannel, String, Dictionary) createDataChannel;
		@GodotName("create_offer") GodotMethod!(GodotError) createOffer;
		@GodotName("get_connection_state") GodotMethod!(WebRTCPeerConnection.ConnectionState) getConnectionState;
		@GodotName("initialize") GodotMethod!(GodotError, Dictionary) initialize;
		@GodotName("poll") GodotMethod!(GodotError) poll;
		@GodotName("set_local_description") GodotMethod!(GodotError, String, String) setLocalDescription;
		@GodotName("set_remote_description") GodotMethod!(GodotError, String, String) setRemoteDescription;
	}
	/// 
	pragma(inline, true) bool opEquals(in WebRTCPeerConnection other) const
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
	/// Construct a new instance of WebRTCPeerConnection.
	/// Note: use `memnew!WebRTCPeerConnection` instead.
	static WebRTCPeerConnection _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebRTCPeerConnection");
		if(constructor is null) return typeof(this).init;
		return cast(WebRTCPeerConnection)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ConnectionState : int
	{
		/** */
		stateNew = 0,
		/** */
		stateConnecting = 1,
		/** */
		stateConnected = 2,
		/** */
		stateDisconnected = 3,
		/** */
		stateFailed = 4,
		/** */
		stateClosed = 5,
	}
	/// 
	enum Constants : int
	{
		stateNew = 0,
		stateConnecting = 1,
		stateConnected = 2,
		stateDisconnected = 3,
		stateFailed = 4,
		stateClosed = 5,
	}
	/**
	
	*/
	GodotError addIceCandidate(in String media, in long index, in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.addIceCandidate, _godot_object, media, index, name);
	}
	/**
	
	*/
	void close()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.close, _godot_object);
	}
	/**
	
	*/
	Ref!WebRTCDataChannel createDataChannel(in String label, in Dictionary options = Dictionary.make())
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(WebRTCDataChannel)(GDNativeClassBinding.createDataChannel, _godot_object, label, options);
	}
	/**
	
	*/
	GodotError createOffer()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.createOffer, _godot_object);
	}
	/**
	
	*/
	WebRTCPeerConnection.ConnectionState getConnectionState() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(WebRTCPeerConnection.ConnectionState)(GDNativeClassBinding.getConnectionState, _godot_object);
	}
	/**
	
	*/
	GodotError initialize(in Dictionary configuration = Dictionary.make())
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.initialize, _godot_object, configuration);
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
	GodotError setLocalDescription(in String type, in String sdp)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.setLocalDescription, _godot_object, type, sdp);
	}
	/**
	
	*/
	GodotError setRemoteDescription(in String type, in String sdp)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.setRemoteDescription, _godot_object, type, sdp);
	}
}
