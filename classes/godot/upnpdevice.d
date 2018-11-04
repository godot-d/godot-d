/**
UPNP device.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.upnpdevice;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
UPNP device.

See $(D UPNP) for UPNP discovery and utility functions. Provides low-level access to UPNP control commands. Allows to manage port mappings (port forwarding) and to query network information of the device (like local and external IP address and status). Note that methods on this class are synchronous and block the calling thread.
*/
@GodotBaseClass struct UPNPDevice
{
	enum string _GODOT_internal_name = "UPNPDevice";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("is_valid_gateway") GodotMethod!(bool) isValidGateway;
		@GodotName("query_external_address") GodotMethod!(String) queryExternalAddress;
		@GodotName("add_port_mapping") GodotMethod!(long, long, long, String, String, long) addPortMapping;
		@GodotName("delete_port_mapping") GodotMethod!(long, long, String) deletePortMapping;
		@GodotName("set_description_url") GodotMethod!(void, String) setDescriptionUrl;
		@GodotName("get_description_url") GodotMethod!(String) getDescriptionUrl;
		@GodotName("set_service_type") GodotMethod!(void, String) setServiceType;
		@GodotName("get_service_type") GodotMethod!(String) getServiceType;
		@GodotName("set_igd_control_url") GodotMethod!(void, String) setIgdControlUrl;
		@GodotName("get_igd_control_url") GodotMethod!(String) getIgdControlUrl;
		@GodotName("set_igd_service_type") GodotMethod!(void, String) setIgdServiceType;
		@GodotName("get_igd_service_type") GodotMethod!(String) getIgdServiceType;
		@GodotName("set_igd_our_addr") GodotMethod!(void, String) setIgdOurAddr;
		@GodotName("get_igd_our_addr") GodotMethod!(String) getIgdOurAddr;
		@GodotName("set_igd_status") GodotMethod!(void, long) setIgdStatus;
		@GodotName("get_igd_status") GodotMethod!(UPNPDevice.IGDStatus) getIgdStatus;
	}
	bool opEquals(in UPNPDevice other) const { return _godot_object.ptr is other._godot_object.ptr; }
	UPNPDevice opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static UPNPDevice _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("UPNPDevice");
		if(constructor is null) return typeof(this).init;
		return cast(UPNPDevice)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum IGDStatus : int
	{
		/**
		OK.
		*/
		igdStatusOk = 0,
		/**
		HTTP error.
		*/
		igdStatusHttpError = 1,
		/**
		Empty HTTP response.
		*/
		igdStatusHttpEmpty = 2,
		/**
		Returned response contained no URLs.
		*/
		igdStatusNoUrls = 3,
		/**
		Not a valid IGD.
		*/
		igdStatusNoIgd = 4,
		/**
		Disconnected.
		*/
		igdStatusDisconnected = 5,
		/**
		Unknown device.
		*/
		igdStatusUnknownDevice = 6,
		/**
		Invalid control.
		*/
		igdStatusInvalidControl = 7,
		/**
		Memory allocation error.
		*/
		igdStatusMallocError = 8,
		/**
		Unknown error.
		*/
		igdStatusUnknownError = 9,
	}
	/// 
	enum Constants : int
	{
		igdStatusOk = 0,
		igdStatusHttpError = 1,
		igdStatusHttpEmpty = 2,
		igdStatusNoUrls = 3,
		igdStatusNoIgd = 4,
		igdStatusDisconnected = 5,
		igdStatusUnknownDevice = 6,
		igdStatusInvalidControl = 7,
		igdStatusMallocError = 8,
		igdStatusUnknownError = 9,
	}
	/**
	Returns `true` if this is a valid IGD (InternetGatewayDevice) which potentially supports port forwarding.
	*/
	bool isValidGateway() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isValidGateway, _godot_object);
	}
	/**
	Returns the external IP address of this $(D UPNPDevice) or an empty string.
	*/
	String queryExternalAddress() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.queryExternalAddress, _godot_object);
	}
	/**
	Adds a port mapping to forward the given external port on this $(D UPNPDevice) for the given protocol to the local machine. See $(D UPNP.addPortMapping).
	*/
	long addPortMapping(in long port, in long port_internal = 0, in String desc = gs!"", in String proto = gs!"UDP", in long duration = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.addPortMapping, _godot_object, port, port_internal, desc, proto, duration);
	}
	/**
	Deletes the port mapping identified by the given port and protocol combination on this device. See $(D UPNP.deletePortMapping).
	*/
	long deletePortMapping(in long port, in String proto = gs!"UDP") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.deletePortMapping, _godot_object, port, proto);
	}
	/**
	
	*/
	void setDescriptionUrl(in String url)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDescriptionUrl, _godot_object, url);
	}
	/**
	
	*/
	String getDescriptionUrl() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getDescriptionUrl, _godot_object);
	}
	/**
	
	*/
	void setServiceType(in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setServiceType, _godot_object, type);
	}
	/**
	
	*/
	String getServiceType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getServiceType, _godot_object);
	}
	/**
	
	*/
	void setIgdControlUrl(in String url)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIgdControlUrl, _godot_object, url);
	}
	/**
	
	*/
	String getIgdControlUrl() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getIgdControlUrl, _godot_object);
	}
	/**
	
	*/
	void setIgdServiceType(in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIgdServiceType, _godot_object, type);
	}
	/**
	
	*/
	String getIgdServiceType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getIgdServiceType, _godot_object);
	}
	/**
	
	*/
	void setIgdOurAddr(in String addr)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIgdOurAddr, _godot_object, addr);
	}
	/**
	
	*/
	String getIgdOurAddr() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getIgdOurAddr, _godot_object);
	}
	/**
	
	*/
	void setIgdStatus(in long status)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIgdStatus, _godot_object, status);
	}
	/**
	
	*/
	UPNPDevice.IGDStatus getIgdStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(UPNPDevice.IGDStatus)(_classBinding.getIgdStatus, _godot_object);
	}
	/**
	URL to the device description.
	*/
	@property String descriptionUrl()
	{
		return getDescriptionUrl();
	}
	/// ditto
	@property void descriptionUrl(String v)
	{
		setDescriptionUrl(v);
	}
	/**
	Service type.
	*/
	@property String serviceType()
	{
		return getServiceType();
	}
	/// ditto
	@property void serviceType(String v)
	{
		setServiceType(v);
	}
	/**
	IDG control URL.
	*/
	@property String igdControlUrl()
	{
		return getIgdControlUrl();
	}
	/// ditto
	@property void igdControlUrl(String v)
	{
		setIgdControlUrl(v);
	}
	/**
	IGD service type.
	*/
	@property String igdServiceType()
	{
		return getIgdServiceType();
	}
	/// ditto
	@property void igdServiceType(String v)
	{
		setIgdServiceType(v);
	}
	/**
	Address of the local machine in the network connecting it to this $(D UPNPDevice).
	*/
	@property String igdOurAddr()
	{
		return getIgdOurAddr();
	}
	/// ditto
	@property void igdOurAddr(String v)
	{
		setIgdOurAddr(v);
	}
	/**
	IGD status. See $(D igdstatus).
	*/
	@property UPNPDevice.IGDStatus igdStatus()
	{
		return getIgdStatus();
	}
	/// ditto
	@property void igdStatus(long v)
	{
		setIgdStatus(v);
	}
}
