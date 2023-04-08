/**


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
import godot.globalenums;
import godot.object;
/**

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
		@GodotName("get_resolve_item_addresses") GodotMethod!(Array, long) getResolveItemAddresses;
		@GodotName("get_resolve_item_status") GodotMethod!(IP.ResolverStatus, long) getResolveItemStatus;
		@GodotName("resolve_hostname") GodotMethod!(String, String, long) resolveHostname;
		@GodotName("resolve_hostname_addresses") GodotMethod!(Array, String, long) resolveHostnameAddresses;
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
	/// 
	enum ResolverStatus : int
	{
		/** */
		resolverStatusNone = 0,
		/** */
		resolverStatusWaiting = 1,
		/** */
		resolverStatusDone = 2,
		/** */
		resolverStatusError = 3,
	}
	/// 
	enum Type : int
	{
		/** */
		typeNone = 0,
		/** */
		typeIpv4 = 1,
		/** */
		typeIpv6 = 2,
		/** */
		typeAny = 3,
	}
	/// 
	enum Constants : int
	{
		/** */
		resolverInvalidId = -1,
		typeNone = 0,
		resolverStatusNone = 0,
		resolverStatusWaiting = 1,
		typeIpv4 = 1,
		resolverStatusDone = 2,
		typeIpv6 = 2,
		resolverStatusError = 3,
		typeAny = 3,
		/** */
		resolverMaxQueries = 256,
	}
	/**
	
	*/
	void clearCache(in String hostname = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearCache, _godot_object, hostname);
	}
	/**
	
	*/
	void eraseResolveItem(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.eraseResolveItem, _godot_object, id);
	}
	/**
	
	*/
	Array getLocalAddresses() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getLocalAddresses, _godot_object);
	}
	/**
	
	*/
	Array getLocalInterfaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getLocalInterfaces, _godot_object);
	}
	/**
	
	*/
	String getResolveItemAddress(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getResolveItemAddress, _godot_object, id);
	}
	/**
	
	*/
	Array getResolveItemAddresses(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getResolveItemAddresses, _godot_object, id);
	}
	/**
	
	*/
	IP.ResolverStatus getResolveItemStatus(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(IP.ResolverStatus)(GDNativeClassBinding.getResolveItemStatus, _godot_object, id);
	}
	/**
	
	*/
	String resolveHostname(in String host, in long ip_type = 3)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.resolveHostname, _godot_object, host, ip_type);
	}
	/**
	
	*/
	Array resolveHostnameAddresses(in String host, in long ip_type = 3)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.resolveHostnameAddresses, _godot_object, host, ip_type);
	}
	/**
	
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
