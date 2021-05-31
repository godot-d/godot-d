/**
Internet protocol (IP) support functions such as DNS resolution.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.ip;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
/**
Internet protocol (IP) support functions such as DNS resolution.

IP contains support functions for the Internet Protocol (IP). TCP/IP support is in different classes (see $(D StreamPeerTCP) and $(D TCP_Server)). IP provides DNS hostname resolution support, both blocking and threaded.
*/
@GodotBaseClass struct IPSingleton
{
	package(godot) enum string _GODOT_internal_name = "IP";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "IP";
		@GodotName("clear_cache") GodotMethod!(void, String) clearCache;
		@GodotName("erase_resolve_item") GodotMethod!(void, long) eraseResolveItem;
		@GodotName("get_local_addresses") GodotMethod!(Array) getLocalAddresses;
		@GodotName("get_local_interfaces") GodotMethod!(Array) getLocalInterfaces;
		@GodotName("get_resolve_item_address") GodotMethod!(String, long) getResolveItemAddress;
		@GodotName("get_resolve_item_status") GodotMethod!(IP.ResolverStatus, long) getResolveItemStatus;
		@GodotName("resolve_hostname") GodotMethod!(String, String, long) resolveHostname;
		@GodotName("resolve_hostname_queue_item") GodotMethod!(long, String, long) resolveHostnameQueueItem;
	}
	/// 
	pragma(inline, true) bool opEquals(in IPSingleton other) const
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
	/// Construct a new instance of IPSingleton.
	/// Note: use `memnew!IPSingleton` instead.
	static IPSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("IP");
		if(constructor is null) return typeof(this).init;
		return cast(IPSingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ResolverStatus : int
	{
		/**
		DNS hostname resolver status: No status.
		*/
		resolverStatusNone = 0,
		/**
		DNS hostname resolver status: Waiting.
		*/
		resolverStatusWaiting = 1,
		/**
		DNS hostname resolver status: Done.
		*/
		resolverStatusDone = 2,
		/**
		DNS hostname resolver status: Error.
		*/
		resolverStatusError = 3,
	}
	/// 
	enum Type : int
	{
		/**
		Address type: None.
		*/
		typeNone = 0,
		/**
		Address type: Internet protocol version 4 (IPv4).
		*/
		typeIpv4 = 1,
		/**
		Address type: Internet protocol version 6 (IPv6).
		*/
		typeIpv6 = 2,
		/**
		Address type: Any.
		*/
		typeAny = 3,
	}
	/// 
	enum Constants : int
	{
		/**
		Invalid ID constant. Returned if $(D constant RESOLVER_MAX_QUERIES) is exceeded.
		*/
		resolverInvalidId = -1,
		typeNone = 0,
		resolverStatusNone = 0,
		resolverStatusWaiting = 1,
		typeIpv4 = 1,
		resolverStatusDone = 2,
		typeIpv6 = 2,
		resolverStatusError = 3,
		typeAny = 3,
		/**
		Maximum number of concurrent DNS resolver queries allowed, $(D constant RESOLVER_INVALID_ID) is returned if exceeded.
		*/
		resolverMaxQueries = 32,
	}
	/**
	Removes all of a `hostname`'s cached references. If no `hostname` is given, all cached IP addresses are removed.
	*/
	void clearCache(in String hostname = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearCache, _godot_object, hostname);
	}
	/**
	Removes a given item `id` from the queue. This should be used to free a queue after it has completed to enable more queries to happen.
	*/
	void eraseResolveItem(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.eraseResolveItem, _godot_object, id);
	}
	/**
	Returns all the user's current IPv4 and IPv6 addresses as an array.
	*/
	Array getLocalAddresses() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getLocalAddresses, _godot_object);
	}
	/**
	Returns all network adapters as an array.
	Each adapter is a dictionary of the form:
	
	
	{
	    "index": "1", # Interface index.
	    "name": "eth0", # Interface name.
	    "friendly": "Ethernet One", # A friendly name (might be empty).
	    "addresses": $(D "192.168.1.101"), # An array of IP addresses associated to this interface.
	}
	
	
	*/
	Array getLocalInterfaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getLocalInterfaces, _godot_object);
	}
	/**
	Returns a queued hostname's IP address, given its queue `id`. Returns an empty string on error or if resolution hasn't happened yet (see $(D getResolveItemStatus)).
	*/
	String getResolveItemAddress(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getResolveItemAddress, _godot_object, id);
	}
	/**
	Returns a queued hostname's status as a $(D resolverstatus) constant, given its queue `id`.
	*/
	IP.ResolverStatus getResolveItemStatus(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(IP.ResolverStatus)(GDNativeClassBinding.getResolveItemStatus, _godot_object, id);
	}
	/**
	Returns a given hostname's IPv4 or IPv6 address when resolved (blocking-type method). The address type returned depends on the $(D type) constant given as `ip_type`.
	*/
	String resolveHostname(in String host, in long ip_type = 3)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.resolveHostname, _godot_object, host, ip_type);
	}
	/**
	Creates a queue item to resolve a hostname to an IPv4 or IPv6 address depending on the $(D type) constant given as `ip_type`. Returns the queue ID if successful, or $(D constant RESOLVER_INVALID_ID) on error.
	*/
	long resolveHostnameQueueItem(in String host, in long ip_type = 3)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.resolveHostnameQueueItem, _godot_object, host, ip_type);
	}
}
/// Returns: the IPSingleton
@property @nogc nothrow pragma(inline, true)
IPSingleton IP()
{
	checkClassBinding!IPSingleton();
	return IPSingleton(IPSingleton.GDNativeClassBinding._singleton);
}
