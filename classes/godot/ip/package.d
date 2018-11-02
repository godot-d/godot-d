/**
Internet protocol (IP) support functions like DNS resolution.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.ip;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
/**
Internet protocol (IP) support functions like DNS resolution.

IP contains support functions for the Internet Protocol (IP). TCP/IP support is in different classes (see $(D StreamPeerTCP) and $(D TCP_Server)). IP provides DNS hostname resolution support, both blocking and threaded.
*/
@GodotBaseClass struct IPSingleton
{
	enum string _GODOT_internal_name = "IP";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "IP";
		@GodotName("resolve_hostname") GodotMethod!(String, String, long) resolveHostname;
		@GodotName("resolve_hostname_queue_item") GodotMethod!(long, String, long) resolveHostnameQueueItem;
		@GodotName("get_resolve_item_status") GodotMethod!(IP.ResolverStatus, long) getResolveItemStatus;
		@GodotName("get_resolve_item_address") GodotMethod!(String, long) getResolveItemAddress;
		@GodotName("erase_resolve_item") GodotMethod!(void, long) eraseResolveItem;
		@GodotName("get_local_addresses") GodotMethod!(Array) getLocalAddresses;
		@GodotName("clear_cache") GodotMethod!(void, String) clearCache;
	}
	bool opEquals(in IPSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	IPSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Invalid ID constant. Returned if `RESOLVER_MAX_QUERIES` is exceeded.
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
		Maximum number of concurrent DNS resolver queries allowed, `RESOLVER_INVALID_ID` is returned if exceeded.
		*/
		resolverMaxQueries = 32,
	}
	/**
	Returns a given hostname's IPv4 or IPv6 address when resolved (blocking-type method). The address type returned depends on the TYPE_* constant given as "ip_type".
	*/
	String resolveHostname(StringArg0)(in StringArg0 host, in long ip_type = 3)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.resolveHostname, _godot_object, host, ip_type);
	}
	/**
	Creates a queue item to resolve a hostname to an IPv4 or IPv6 address depending on the TYPE_* constant given as "ip_type". Returns the queue ID if successful, or RESOLVER_INVALID_ID on error.
	*/
	long resolveHostnameQueueItem(StringArg0)(in StringArg0 host, in long ip_type = 3)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.resolveHostnameQueueItem, _godot_object, host, ip_type);
	}
	/**
	Returns a queued hostname's status as a RESOLVER_STATUS_* constant, given its queue "id".
	*/
	IP.ResolverStatus getResolveItemStatus(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(IP.ResolverStatus)(_classBinding.getResolveItemStatus, _godot_object, id);
	}
	/**
	Returns a queued hostname's IP address, given its queue "id". Returns an empty string on error or if resolution hasn't happened yet (see $(D getResolveItemStatus)).
	*/
	String getResolveItemAddress(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getResolveItemAddress, _godot_object, id);
	}
	/**
	Removes a given item "id" from the queue. This should be used to free a queue after it has completed to enable more queries to happen.
	*/
	void eraseResolveItem(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.eraseResolveItem, _godot_object, id);
	}
	/**
	Returns all of the user's current IPv4 and IPv6 addresses as an array.
	*/
	Array getLocalAddresses() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getLocalAddresses, _godot_object);
	}
	/**
	Removes all of a "hostname"'s cached references. If no "hostname" is given then all cached IP addresses are removed.
	*/
	void clearCache(StringArg0)(in StringArg0 hostname = "")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearCache, _godot_object, hostname);
	}
}
/// Returns: the IPSingleton
@property @nogc nothrow pragma(inline, true)
IPSingleton IP()
{
	checkClassBinding!IPSingleton();
	return IPSingleton(IPSingleton._classBinding._singleton);
}
