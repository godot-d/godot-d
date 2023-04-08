/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.upnp;
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
import godot.upnpdevice;
/**

*/
@GodotBaseClass struct UPNP
{
	package(godot) enum string _GODOT_internal_name = "UPNP";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_device") GodotMethod!(void, UPNPDevice) addDevice;
		@GodotName("add_port_mapping") GodotMethod!(long, long, long, String, String, long) addPortMapping;
		@GodotName("clear_devices") GodotMethod!(void) clearDevices;
		@GodotName("delete_port_mapping") GodotMethod!(long, long, String) deletePortMapping;
		@GodotName("discover") GodotMethod!(long, long, long, String) discover;
		@GodotName("get_device") GodotMethod!(UPNPDevice, long) getDevice;
		@GodotName("get_device_count") GodotMethod!(long) getDeviceCount;
		@GodotName("get_discover_local_port") GodotMethod!(long) getDiscoverLocalPort;
		@GodotName("get_discover_multicast_if") GodotMethod!(String) getDiscoverMulticastIf;
		@GodotName("get_gateway") GodotMethod!(UPNPDevice) getGateway;
		@GodotName("is_discover_ipv6") GodotMethod!(bool) isDiscoverIpv6;
		@GodotName("query_external_address") GodotMethod!(String) queryExternalAddress;
		@GodotName("remove_device") GodotMethod!(void, long) removeDevice;
		@GodotName("set_device") GodotMethod!(void, long, UPNPDevice) setDevice;
		@GodotName("set_discover_ipv6") GodotMethod!(void, bool) setDiscoverIpv6;
		@GodotName("set_discover_local_port") GodotMethod!(void, long) setDiscoverLocalPort;
		@GodotName("set_discover_multicast_if") GodotMethod!(void, String) setDiscoverMulticastIf;
	}
	/// 
	pragma(inline, true) bool opEquals(in UPNP other) const
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
	/// Construct a new instance of UPNP.
	/// Note: use `memnew!UPNP` instead.
	static UPNP _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("UPNP");
		if(constructor is null) return typeof(this).init;
		return cast(UPNP)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum UPNPResult : int
	{
		/** */
		upnpResultSuccess = 0,
		/** */
		upnpResultNotAuthorized = 1,
		/** */
		upnpResultPortMappingNotFound = 2,
		/** */
		upnpResultInconsistentParameters = 3,
		/** */
		upnpResultNoSuchEntryInArray = 4,
		/** */
		upnpResultActionFailed = 5,
		/** */
		upnpResultSrcIpWildcardNotPermitted = 6,
		/** */
		upnpResultExtPortWildcardNotPermitted = 7,
		/** */
		upnpResultIntPortWildcardNotPermitted = 8,
		/** */
		upnpResultRemoteHostMustBeWildcard = 9,
		/** */
		upnpResultExtPortMustBeWildcard = 10,
		/** */
		upnpResultNoPortMapsAvailable = 11,
		/** */
		upnpResultConflictWithOtherMechanism = 12,
		/** */
		upnpResultConflictWithOtherMapping = 13,
		/** */
		upnpResultSamePortValuesRequired = 14,
		/** */
		upnpResultOnlyPermanentLeaseSupported = 15,
		/** */
		upnpResultInvalidGateway = 16,
		/** */
		upnpResultInvalidPort = 17,
		/** */
		upnpResultInvalidProtocol = 18,
		/** */
		upnpResultInvalidDuration = 19,
		/** */
		upnpResultInvalidArgs = 20,
		/** */
		upnpResultInvalidResponse = 21,
		/** */
		upnpResultInvalidParam = 22,
		/** */
		upnpResultHttpError = 23,
		/** */
		upnpResultSocketError = 24,
		/** */
		upnpResultMemAllocError = 25,
		/** */
		upnpResultNoGateway = 26,
		/** */
		upnpResultNoDevices = 27,
		/** */
		upnpResultUnknownError = 28,
	}
	/// 
	enum Constants : int
	{
		upnpResultSuccess = 0,
		upnpResultNotAuthorized = 1,
		upnpResultPortMappingNotFound = 2,
		upnpResultInconsistentParameters = 3,
		upnpResultNoSuchEntryInArray = 4,
		upnpResultActionFailed = 5,
		upnpResultSrcIpWildcardNotPermitted = 6,
		upnpResultExtPortWildcardNotPermitted = 7,
		upnpResultIntPortWildcardNotPermitted = 8,
		upnpResultRemoteHostMustBeWildcard = 9,
		upnpResultExtPortMustBeWildcard = 10,
		upnpResultNoPortMapsAvailable = 11,
		upnpResultConflictWithOtherMechanism = 12,
		upnpResultConflictWithOtherMapping = 13,
		upnpResultSamePortValuesRequired = 14,
		upnpResultOnlyPermanentLeaseSupported = 15,
		upnpResultInvalidGateway = 16,
		upnpResultInvalidPort = 17,
		upnpResultInvalidProtocol = 18,
		upnpResultInvalidDuration = 19,
		upnpResultInvalidArgs = 20,
		upnpResultInvalidResponse = 21,
		upnpResultInvalidParam = 22,
		upnpResultHttpError = 23,
		upnpResultSocketError = 24,
		upnpResultMemAllocError = 25,
		upnpResultNoGateway = 26,
		upnpResultNoDevices = 27,
		upnpResultUnknownError = 28,
	}
	/**
	
	*/
	void addDevice(UPNPDevice device)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addDevice, _godot_object, device);
	}
	/**
	
	*/
	long addPortMapping(in long port, in long port_internal = 0, in String desc = gs!"", in String proto = gs!"UDP", in long duration = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.addPortMapping, _godot_object, port, port_internal, desc, proto, duration);
	}
	/**
	
	*/
	void clearDevices()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearDevices, _godot_object);
	}
	/**
	
	*/
	long deletePortMapping(in long port, in String proto = gs!"UDP") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.deletePortMapping, _godot_object, port, proto);
	}
	/**
	
	*/
	long discover(in long timeout = 2000, in long ttl = 2, in String device_filter = gs!"InternetGatewayDevice")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.discover, _godot_object, timeout, ttl, device_filter);
	}
	/**
	
	*/
	Ref!UPNPDevice getDevice(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(UPNPDevice)(GDNativeClassBinding.getDevice, _godot_object, index);
	}
	/**
	
	*/
	long getDeviceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDeviceCount, _godot_object);
	}
	/**
	
	*/
	long getDiscoverLocalPort() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDiscoverLocalPort, _godot_object);
	}
	/**
	
	*/
	String getDiscoverMulticastIf() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDiscoverMulticastIf, _godot_object);
	}
	/**
	
	*/
	Ref!UPNPDevice getGateway() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(UPNPDevice)(GDNativeClassBinding.getGateway, _godot_object);
	}
	/**
	
	*/
	bool isDiscoverIpv6() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDiscoverIpv6, _godot_object);
	}
	/**
	
	*/
	String queryExternalAddress() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.queryExternalAddress, _godot_object);
	}
	/**
	
	*/
	void removeDevice(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeDevice, _godot_object, index);
	}
	/**
	
	*/
	void setDevice(in long index, UPNPDevice device)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDevice, _godot_object, index, device);
	}
	/**
	
	*/
	void setDiscoverIpv6(in bool ipv6)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDiscoverIpv6, _godot_object, ipv6);
	}
	/**
	
	*/
	void setDiscoverLocalPort(in long port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDiscoverLocalPort, _godot_object, port);
	}
	/**
	
	*/
	void setDiscoverMulticastIf(in String m_if)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDiscoverMulticastIf, _godot_object, m_if);
	}
	/**
	
	*/
	@property bool discoverIpv6()
	{
		return isDiscoverIpv6();
	}
	/// ditto
	@property void discoverIpv6(bool v)
	{
		setDiscoverIpv6(v);
	}
	/**
	
	*/
	@property long discoverLocalPort()
	{
		return getDiscoverLocalPort();
	}
	/// ditto
	@property void discoverLocalPort(long v)
	{
		setDiscoverLocalPort(v);
	}
	/**
	
	*/
	@property String discoverMulticastIf()
	{
		return getDiscoverMulticastIf();
	}
	/// ditto
	@property void discoverMulticastIf(String v)
	{
		setDiscoverMulticastIf(v);
	}
}
