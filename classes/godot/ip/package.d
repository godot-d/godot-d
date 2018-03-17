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
	static immutable string _GODOT_internal_name = "IP";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "IP";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		typeIpv4 = 1,
		resolverStatusWaiting = 1,
		typeIpv6 = 2,
		resolverStatusDone = 2,
		resolverStatusError = 3,
		typeAny = 3,
		/**
		Maximum number of concurrent DNS resolver queries allowed, `RESOLVER_INVALID_ID` is returned if exceeded.
		*/
		resolverMaxQueries = 32,
	}
	package(godot) static GodotMethod!(String, String, long) _GODOT_resolve_hostname;
	package(godot) alias _GODOT_methodBindInfo(string name : "resolve_hostname") = _GODOT_resolve_hostname;
	/**
	Returns a given hostname's IPv4 or IPv6 address when resolved (blocking-type method). The address type returned depends on the TYPE_* constant given as "ip_type".
	*/
	String resolveHostname(StringArg0)(in StringArg0 host, in long ip_type = 3)
	{
		_GODOT_resolve_hostname.bind("IP", "resolve_hostname");
		return ptrcall!(String)(_GODOT_resolve_hostname, _godot_object, host, ip_type);
	}
	package(godot) static GodotMethod!(long, String, long) _GODOT_resolve_hostname_queue_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "resolve_hostname_queue_item") = _GODOT_resolve_hostname_queue_item;
	/**
	Creates a queue item to resolve a hostname to an IPv4 or IPv6 address depending on the TYPE_* constant given as "ip_type". Returns the queue ID if successful, or RESOLVER_INVALID_ID on error.
	*/
	long resolveHostnameQueueItem(StringArg0)(in StringArg0 host, in long ip_type = 3)
	{
		_GODOT_resolve_hostname_queue_item.bind("IP", "resolve_hostname_queue_item");
		return ptrcall!(long)(_GODOT_resolve_hostname_queue_item, _godot_object, host, ip_type);
	}
	package(godot) static GodotMethod!(IP.ResolverStatus, long) _GODOT_get_resolve_item_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resolve_item_status") = _GODOT_get_resolve_item_status;
	/**
	Returns a queued hostname's status as a RESOLVER_STATUS_* constant, given its queue "id".
	*/
	IP.ResolverStatus getResolveItemStatus(in long id) const
	{
		_GODOT_get_resolve_item_status.bind("IP", "get_resolve_item_status");
		return ptrcall!(IP.ResolverStatus)(_GODOT_get_resolve_item_status, _godot_object, id);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_resolve_item_address;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resolve_item_address") = _GODOT_get_resolve_item_address;
	/**
	Returns a queued hostname's IP address, given its queue "id". Returns an empty string on error or if resolution hasn't happened yet (see $(D getResolveItemStatus)).
	*/
	String getResolveItemAddress(in long id) const
	{
		_GODOT_get_resolve_item_address.bind("IP", "get_resolve_item_address");
		return ptrcall!(String)(_GODOT_get_resolve_item_address, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_erase_resolve_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "erase_resolve_item") = _GODOT_erase_resolve_item;
	/**
	Removes a given item "id" from the queue. This should be used to free a queue after it has completed to enable more queries to happen.
	*/
	void eraseResolveItem(in long id)
	{
		_GODOT_erase_resolve_item.bind("IP", "erase_resolve_item");
		ptrcall!(void)(_GODOT_erase_resolve_item, _godot_object, id);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_local_addresses;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_local_addresses") = _GODOT_get_local_addresses;
	/**
	Returns all of the user's current IPv4 and IPv6 addresses as an array.
	*/
	Array getLocalAddresses() const
	{
		_GODOT_get_local_addresses.bind("IP", "get_local_addresses");
		return ptrcall!(Array)(_GODOT_get_local_addresses, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_clear_cache;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_cache") = _GODOT_clear_cache;
	/**
	Removes all of a "hostname"'s cached references. If no "hostname" is given then all cached IP addresses are removed.
	*/
	void clearCache(StringArg0)(in StringArg0 hostname = "")
	{
		_GODOT_clear_cache.bind("IP", "clear_cache");
		ptrcall!(void)(_GODOT_clear_cache, _godot_object, hostname);
	}
}
/// Returns: the IPSingleton
@property @nogc nothrow pragma(inline, true)
IPSingleton IP()
{
	return IPSingleton._GODOT_singleton();
}
