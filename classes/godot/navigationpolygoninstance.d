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
		@GodotName("_navpoly_changed") GodotMethod!(void) _navpolyChanged;
		@GodotName("get_navigation_polygon") GodotMethod!(NavigationPolygon) getNavigationPolygon;
		@GodotName("is_enabled") GodotMethod!(bool) isEnabled;
		@GodotName("set_enabled") GodotMethod!(void, bool) setEnabled;
		@GodotName("set_navigation_polygon") GodotMethod!(void, NavigationPolygon) setNavigationPolygon;
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
	void _navpolyChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_navpoly_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	void setNavigationPolygon(NavigationPolygon navpoly)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNavigationPolygon, _godot_object, navpoly);
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
	@property NavigationPolygon navpoly()
	{
		return getNavigationPolygon();
	}
	/// ditto
	@property void navpoly(NavigationPolygon v)
	{
		setNavigationPolygon(v);
	}
}
