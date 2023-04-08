/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigationpolygoninstance;
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
import godot.node2d;
import godot.navigationpolygon;
/**

*/
@GodotBaseClass struct NavigationPolygonInstance
{
	package(godot) enum string _GODOT_internal_name = "NavigationPolygonInstance";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_map_changed") GodotMethod!(void, RID) _mapChanged;
		@GodotName("_navpoly_changed") GodotMethod!(void) _navpolyChanged;
		@GodotName("get_enter_cost") GodotMethod!(double) getEnterCost;
		@GodotName("get_navigation_layers") GodotMethod!(long) getNavigationLayers;
		@GodotName("get_navigation_polygon") GodotMethod!(NavigationPolygon) getNavigationPolygon;
		@GodotName("get_region_rid") GodotMethod!(RID) getRegionRid;
		@GodotName("get_travel_cost") GodotMethod!(double) getTravelCost;
		@GodotName("is_enabled") GodotMethod!(bool) isEnabled;
		@GodotName("set_enabled") GodotMethod!(void, bool) setEnabled;
		@GodotName("set_enter_cost") GodotMethod!(void, double) setEnterCost;
		@GodotName("set_navigation_layers") GodotMethod!(void, long) setNavigationLayers;
		@GodotName("set_navigation_polygon") GodotMethod!(void, NavigationPolygon) setNavigationPolygon;
		@GodotName("set_travel_cost") GodotMethod!(void, double) setTravelCost;
	}
	/// 
	pragma(inline, true) bool opEquals(in NavigationPolygonInstance other) const
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
	/// Construct a new instance of NavigationPolygonInstance.
	/// Note: use `memnew!NavigationPolygonInstance` instead.
	static NavigationPolygonInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NavigationPolygonInstance");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationPolygonInstance)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _mapChanged(in RID arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_map_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _navpolyChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_navpoly_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double getEnterCost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEnterCost, _godot_object);
	}
	/**
	
	*/
	long getNavigationLayers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNavigationLayers, _godot_object);
	}
	/**
	
	*/
	Ref!NavigationPolygon getNavigationPolygon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NavigationPolygon)(GDNativeClassBinding.getNavigationPolygon, _godot_object);
	}
	/**
	
	*/
	RID getRegionRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getRegionRid, _godot_object);
	}
	/**
	
	*/
	double getTravelCost() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTravelCost, _godot_object);
	}
	/**
	
	*/
	bool isEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEnabled, _godot_object);
	}
	/**
	
	*/
	void setEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setEnterCost(in double enter_cost)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnterCost, _godot_object, enter_cost);
	}
	/**
	
	*/
	void setNavigationLayers(in long navigation_layers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNavigationLayers, _godot_object, navigation_layers);
	}
	/**
	
	*/
	void setNavigationPolygon(NavigationPolygon navpoly)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNavigationPolygon, _godot_object, navpoly);
	}
	/**
	
	*/
	void setTravelCost(in double travel_cost)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTravelCost, _godot_object, travel_cost);
	}
	/**
	
	*/
	@property bool enabled()
	{
		return isEnabled();
	}
	/// ditto
	@property void enabled(bool v)
	{
		setEnabled(v);
	}
	/**
	
	*/
	@property double enterCost()
	{
		return getEnterCost();
	}
	/// ditto
	@property void enterCost(double v)
	{
		setEnterCost(v);
	}
	/**
	
	*/
	@property long navigationLayers()
	{
		return getNavigationLayers();
	}
	/// ditto
	@property void navigationLayers(long v)
	{
		setNavigationLayers(v);
	}
	/**
	
	*/
	@property NavigationPolygon navpoly()
	{
		return getNavigationPolygon();
	}
	/// ditto
	@property void navpoly(NavigationPolygon v)
	{
		setNavigationPolygon(v);
	}
	/**
	
	*/
	@property double travelCost()
	{
		return getTravelCost();
	}
	/// ditto
	@property void travelCost(double v)
	{
		setTravelCost(v);
	}
}
