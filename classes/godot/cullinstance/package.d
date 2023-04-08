/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.cullinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.spatial;
/**

*/
@GodotBaseClass struct CullInstance
{
	package(godot) enum string _GODOT_internal_name = "CullInstance";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_allow_merging") GodotMethod!(bool) getAllowMerging;
		@GodotName("get_include_in_bound") GodotMethod!(bool) getIncludeInBound;
		@GodotName("get_portal_autoplace_priority") GodotMethod!(long) getPortalAutoplacePriority;
		@GodotName("get_portal_mode") GodotMethod!(CullInstance.PortalMode) getPortalMode;
		@GodotName("set_allow_merging") GodotMethod!(void, bool) setAllowMerging;
		@GodotName("set_include_in_bound") GodotMethod!(void, bool) setIncludeInBound;
		@GodotName("set_portal_autoplace_priority") GodotMethod!(void, long) setPortalAutoplacePriority;
		@GodotName("set_portal_mode") GodotMethod!(void, long) setPortalMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in CullInstance other) const
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
	/// Construct a new instance of CullInstance.
	/// Note: use `memnew!CullInstance` instead.
	static CullInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CullInstance");
		if(constructor is null) return typeof(this).init;
		return cast(CullInstance)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum PortalMode : int
	{
		/** */
		portalModeStatic = 0,
		/** */
		portalModeDynamic = 1,
		/** */
		portalModeRoaming = 2,
		/** */
		portalModeGlobal = 3,
		/** */
		portalModeIgnore = 4,
	}
	/// 
	enum Constants : int
	{
		portalModeStatic = 0,
		portalModeDynamic = 1,
		portalModeRoaming = 2,
		portalModeGlobal = 3,
		portalModeIgnore = 4,
	}
	/**
	
	*/
	bool getAllowMerging() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAllowMerging, _godot_object);
	}
	/**
	
	*/
	bool getIncludeInBound() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getIncludeInBound, _godot_object);
	}
	/**
	
	*/
	long getPortalAutoplacePriority() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPortalAutoplacePriority, _godot_object);
	}
	/**
	
	*/
	CullInstance.PortalMode getPortalMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CullInstance.PortalMode)(GDNativeClassBinding.getPortalMode, _godot_object);
	}
	/**
	
	*/
	void setAllowMerging(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAllowMerging, _godot_object, enabled);
	}
	/**
	
	*/
	void setIncludeInBound(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIncludeInBound, _godot_object, enabled);
	}
	/**
	
	*/
	void setPortalAutoplacePriority(in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPortalAutoplacePriority, _godot_object, priority);
	}
	/**
	
	*/
	void setPortalMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPortalMode, _godot_object, mode);
	}
	/**
	
	*/
	@property bool allowMerging()
	{
		return getAllowMerging();
	}
	/// ditto
	@property void allowMerging(bool v)
	{
		setAllowMerging(v);
	}
	/**
	
	*/
	@property long autoplacePriority()
	{
		return getPortalAutoplacePriority();
	}
	/// ditto
	@property void autoplacePriority(long v)
	{
		setPortalAutoplacePriority(v);
	}
	/**
	
	*/
	@property bool includeInBound()
	{
		return getIncludeInBound();
	}
	/// ditto
	@property void includeInBound(bool v)
	{
		setIncludeInBound(v);
	}
	/**
	
	*/
	@property CullInstance.PortalMode portalMode()
	{
		return getPortalMode();
	}
	/// ditto
	@property void portalMode(long v)
	{
		setPortalMode(v);
	}
}
