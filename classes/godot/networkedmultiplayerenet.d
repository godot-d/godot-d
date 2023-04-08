/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.networkedmultiplayerenet;
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
import godot.networkedmultiplayerpeer;
import godot.x509certificate;
import godot.cryptokey;
/**

*/
@GodotBaseClass struct NetworkedMultiplayerENet
{
	package(godot) enum string _GODOT_internal_name = "NetworkedMultiplayerENet";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ NetworkedMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("close_connection") GodotMethod!(void, long) closeConnection;
		@GodotName("create_client") GodotMethod!(GodotError, String, long, long, long, long) createClient;
		@GodotName("create_server") GodotMethod!(GodotError, long, long, long, long) createServer;
		@GodotName("disconnect_peer") GodotMethod!(void, long, bool) disconnectPeer;
		@GodotName("get_channel_count") GodotMethod!(long) getChannelCount;
		@GodotName("get_compression_mode") GodotMethod!(NetworkedMultiplayerENet.CompressionMode) getCompressionMode;
		@GodotName("get_dtls_hostname") GodotMethod!(String) getDtlsHostname;
		@GodotName("get_last_packet_channel") GodotMethod!(long) getLastPacketChannel;
		@GodotName("get_packet_channel") GodotMethod!(long) getPacketChannel;
		@GodotName("get_peer_address") GodotMethod!(String, long) getPeerAddress;
		@GodotName("get_peer_port") GodotMethod!(long, long) getPeerPort;
		@GodotName("get_transfer_channel") GodotMethod!(long) getTransferChannel;
		@GodotName("is_always_ordered") GodotMethod!(bool) isAlwaysOrdered;
		@GodotName("is_dtls_enabled") GodotMethod!(bool) isDtlsEnabled;
		@GodotName("is_dtls_verify_enabled") GodotMethod!(bool) isDtlsVerifyEnabled;
		@GodotName("is_server_relay_enabled") GodotMethod!(bool) isServerRelayEnabled;
		@GodotName("set_always_ordered") GodotMethod!(void, bool) setAlwaysOrdered;
		@GodotName("set_bind_ip") GodotMethod!(void, String) setBindIp;
		@GodotName("set_channel_count") GodotMethod!(void, long) setChannelCount;
		@GodotName("set_compression_mode") GodotMethod!(void, long) setCompressionMode;
		@GodotName("set_dtls_certificate") GodotMethod!(void, X509Certificate) setDtlsCertificate;
		@GodotName("set_dtls_enabled") GodotMethod!(void, bool) setDtlsEnabled;
		@GodotName("set_dtls_hostname") GodotMethod!(void, String) setDtlsHostname;
		@GodotName("set_dtls_key") GodotMethod!(void, CryptoKey) setDtlsKey;
		@GodotName("set_dtls_verify_enabled") GodotMethod!(void, bool) setDtlsVerifyEnabled;
		@GodotName("set_peer_timeout") GodotMethod!(void, long, long, long, long) setPeerTimeout;
		@GodotName("set_server_relay_enabled") GodotMethod!(void, bool) setServerRelayEnabled;
		@GodotName("set_transfer_channel") GodotMethod!(void, long) setTransferChannel;
	}
	/// 
	pragma(inline, true) bool opEquals(in NetworkedMultiplayerENet other) const
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
	/// Construct a new instance of NetworkedMultiplayerENet.
	/// Note: use `memnew!NetworkedMultiplayerENet` instead.
	static NetworkedMultiplayerENet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NetworkedMultiplayerENet");
		if(constructor is null) return typeof(this).init;
		return cast(NetworkedMultiplayerENet)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum CompressionMode : int
	{
		/** */
		compressNone = 0,
		/** */
		compressRangeCoder = 1,
		/** */
		compressFastlz = 2,
		/** */
		compressZlib = 3,
		/** */
		compressZstd = 4,
	}
	/// 
	enum Constants : int
	{
		compressNone = 0,
		compressRangeCoder = 1,
		compressFastlz = 2,
		compressZlib = 3,
		compressZstd = 4,
	}
	/**
	
	*/
	void closeConnection(in long wait_usec = 100)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.closeConnection, _godot_object, wait_usec);
	}
	/**
	
	*/
	GodotError createClient(in String address, in long port, in long in_bandwidth = 0, in long out_bandwidth = 0, in long client_port = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.createClient, _godot_object, address, port, in_bandwidth, out_bandwidth, client_port);
	}
	/**
	
	*/
	GodotError createServer(in long port, in long max_clients = 32, in long in_bandwidth = 0, in long out_bandwidth = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.createServer, _godot_object, port, max_clients, in_bandwidth, out_bandwidth);
	}
	/**
	
	*/
	void disconnectPeer(in long id, in bool now = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnectPeer, _godot_object, id, now);
	}
	/**
	
	*/
	long getChannelCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getChannelCount, _godot_object);
	}
	/**
	
	*/
	NetworkedMultiplayerENet.CompressionMode getCompressionMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NetworkedMultiplayerENet.CompressionMode)(GDNativeClassBinding.getCompressionMode, _godot_object);
	}
	/**
	
	*/
	String getDtlsHostname() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDtlsHostname, _godot_object);
	}
	/**
	
	*/
	long getLastPacketChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLastPacketChannel, _godot_object);
	}
	/**
	
	*/
	long getPacketChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPacketChannel, _godot_object);
	}
	/**
	
	*/
	String getPeerAddress(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPeerAddress, _godot_object, id);
	}
	/**
	
	*/
	long getPeerPort(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPeerPort, _godot_object, id);
	}
	/**
	
	*/
	long getTransferChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTransferChannel, _godot_object);
	}
	/**
	
	*/
	bool isAlwaysOrdered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAlwaysOrdered, _godot_object);
	}
	/**
	
	*/
	bool isDtlsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDtlsEnabled, _godot_object);
	}
	/**
	
	*/
	bool isDtlsVerifyEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDtlsVerifyEnabled, _godot_object);
	}
	/**
	
	*/
	bool isServerRelayEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isServerRelayEnabled, _godot_object);
	}
	/**
	
	*/
	void setAlwaysOrdered(in bool ordered)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlwaysOrdered, _godot_object, ordered);
	}
	/**
	
	*/
	void setBindIp(in String ip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBindIp, _godot_object, ip);
	}
	/**
	
	*/
	void setChannelCount(in long channels)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setChannelCount, _godot_object, channels);
	}
	/**
	
	*/
	void setCompressionMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCompressionMode, _godot_object, mode);
	}
	/**
	
	*/
	void setDtlsCertificate(X509Certificate certificate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDtlsCertificate, _godot_object, certificate);
	}
	/**
	
	*/
	void setDtlsEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDtlsEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setDtlsHostname(in String hostname)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDtlsHostname, _godot_object, hostname);
	}
	/**
	
	*/
	void setDtlsKey(CryptoKey key)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDtlsKey, _godot_object, key);
	}
	/**
	
	*/
	void setDtlsVerifyEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDtlsVerifyEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setPeerTimeout(in long id, in long timeout_limit, in long timeout_min, in long timeout_max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPeerTimeout, _godot_object, id, timeout_limit, timeout_min, timeout_max);
	}
	/**
	
	*/
	void setServerRelayEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setServerRelayEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setTransferChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransferChannel, _godot_object, channel);
	}
	/**
	
	*/
	@property bool alwaysOrdered()
	{
		return isAlwaysOrdered();
	}
	/// ditto
	@property void alwaysOrdered(bool v)
	{
		setAlwaysOrdered(v);
	}
	/**
	
	*/
	@property long channelCount()
	{
		return getChannelCount();
	}
	/// ditto
	@property void channelCount(long v)
	{
		setChannelCount(v);
	}
	/**
	
	*/
	@property NetworkedMultiplayerENet.CompressionMode compressionMode()
	{
		return getCompressionMode();
	}
	/// ditto
	@property void compressionMode(long v)
	{
		setCompressionMode(v);
	}
	/**
	
	*/
	@property String dtlsHostname()
	{
		return getDtlsHostname();
	}
	/// ditto
	@property void dtlsHostname(String v)
	{
		setDtlsHostname(v);
	}
	/**
	
	*/
	@property bool dtlsVerify()
	{
		return isDtlsVerifyEnabled();
	}
	/// ditto
	@property void dtlsVerify(bool v)
	{
		setDtlsVerifyEnabled(v);
	}
	/**
	
	*/
	@property bool serverRelay()
	{
		return isServerRelayEnabled();
	}
	/// ditto
	@property void serverRelay(bool v)
	{
		setServerRelayEnabled(v);
	}
	/**
	
	*/
	@property long transferChannel()
	{
		return getTransferChannel();
	}
	/// ditto
	@property void transferChannel(long v)
	{
		setTransferChannel(v);
	}
	/**
	
	*/
	@property bool useDtls()
	{
		return isDtlsEnabled();
	}
	/// ditto
	@property void useDtls(bool v)
	{
		setDtlsEnabled(v);
	}
}
