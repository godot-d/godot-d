/**
A WebSocket client implementation

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.websocketclient;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.websocketmultiplayerpeer;
/**
A WebSocket client implementation

This class implements a WebSocket client compatible with any RFC 6455 complaint WebSocket server.
This client can be optionally used as a network peer for the $(D MultiplayerAPI).
After starting the client ($(D connectToUrl)), you will need to $(D NetworkedMultiplayerPeer.poll) it at regular intervals (e.g. inside $(D Node._process)).
You will received appropriate signals when connecting, disconnecting, or when new data is available.
*/
@GodotBaseClass struct WebSocketClient
{
	enum string _GODOT_internal_name = "WebSocketClient";
public:
@nogc nothrow:
	union { godot_object _godot_object; WebSocketMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("connect_to_url") GodotMethod!(GodotError, String, PoolStringArray, bool) connectToUrl;
		@GodotName("disconnect_from_host") GodotMethod!(void, long, String) disconnectFromHost;
		@GodotName("set_verify_ssl_enabled") GodotMethod!(void, bool) setVerifySslEnabled;
		@GodotName("is_verify_ssl_enabled") GodotMethod!(bool) isVerifySslEnabled;
	}
	bool opEquals(in WebSocketClient other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WebSocketClient opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WebSocketClient _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebSocketClient");
		if(constructor is null) return typeof(this).init;
		return cast(WebSocketClient)(constructor());
	}
	@disable new(size_t s);
	/**
	Connect to the given URL requesting one of the given `protocols` as sub-protocol.
	If `true` is passed as `gd_mp_api`, the client will behave like a network peer for the $(D MultiplayerAPI). Note: connections to non Godot servers will not work, and $(D dataReceived) will not be emitted when this option is true.
	*/
	GodotError connectToUrl(in String url, in PoolStringArray protocols = PoolStringArray.init, in bool gd_mp_api = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.connectToUrl, _godot_object, url, protocols, gd_mp_api);
	}
	/**
	Disconnect this client from the connected host. See $(D WebSocketPeer.close) for more info.
	*/
	void disconnectFromHost(in long code = 1000, in String reason = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectFromHost, _godot_object, code, reason);
	}
	/**
	
	*/
	void setVerifySslEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVerifySslEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isVerifySslEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isVerifySslEnabled, _godot_object);
	}
	/**
	Enable or disable SSL certificate verification. Note: You must specify the certificates to be used in the project settings for it to work when exported.
	*/
	@property bool verifySsl()
	{
		return isVerifySslEnabled();
	}
	/// ditto
	@property void verifySsl(bool v)
	{
		setVerifySslEnabled(v);
	}
}
