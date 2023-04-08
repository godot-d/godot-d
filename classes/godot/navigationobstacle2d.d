/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigationobstacle2d;
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
import godot.node;
/**

*/
@GodotBaseClass struct NavigationObstacle2D
{
	package(godot) enum string _GODOT_internal_name = "NavigationObstacle2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_navigation") GodotMethod!(Node) getNavigation;
		@GodotName("get_radius") GodotMethod!(double) getRadius;
		@GodotName("get_rid") GodotMethod!(RID) getRid;
		@GodotName("is_radius_estimated") GodotMethod!(bool) isRadiusEstimated;
		@GodotName("set_estimate_radius") GodotMethod!(void, bool) setEstimateRadius;
		@GodotName("set_navigation") GodotMethod!(void, Node) setNavigation;
		@GodotName("set_radius") GodotMethod!(void, double) setRadius;
	}
	/// 
	pragma(inline, true) bool opEquals(in NavigationObstacle2D other) const
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
	/// Construct a new instance of NavigationObstacle2D.
	/// Note: use `memnew!NavigationObstacle2D` instead.
	static NavigationObstacle2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NavigationObstacle2D");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationObstacle2D)(constructor());
	}
	/**
	
	*/
	Node getNavigation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getNavigation, _godot_object);
	}
	/**
	
	*/
	double getRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRadius, _godot_object);
	}
	/**
	
	*/
	RID getRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getRid, _godot_object);
	}
	/**
	
	*/
	bool isRadiusEstimated() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRadiusEstimated, _godot_object);
	}
	/**
	
	*/
	void setEstimateRadius(in bool estimate_radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEstimateRadius, _godot_object, estimate_radius);
	}
	/**
	
	*/
	void setNavigation(Node navigation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNavigation, _godot_object, navigation);
	}
	/**
	
	*/
	void setRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRadius, _godot_object, radius);
	}
	/**
	
	*/
	@property bool estimateRadius()
	{
		return isRadiusEstimated();
	}
	/// ditto
	@property void estimateRadius(bool v)
	{
		setEstimateRadius(v);
	}
	/**
	
	*/
	@property double radius()
	{
		return getRadius();
	}
	/// ditto
	@property void radius(double v)
	{
		setRadius(v);
	}
}
