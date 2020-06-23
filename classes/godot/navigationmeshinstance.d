/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigationmeshinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.navigationmesh;
/**

*/
@GodotBaseClass struct NavigationMeshInstance
{
	package(godot) enum string _GODOT_internal_name = "NavigationMeshInstance";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_navigation_mesh") GodotMethod!(NavigationMesh) getNavigationMesh;
		@GodotName("is_enabled") GodotMethod!(bool) isEnabled;
		@GodotName("set_enabled") GodotMethod!(void, bool) setEnabled;
		@GodotName("set_navigation_mesh") GodotMethod!(void, NavigationMesh) setNavigationMesh;
	}
	/// 
	pragma(inline, true) bool opEquals(in NavigationMeshInstance other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) NavigationMeshInstance opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of NavigationMeshInstance.
	/// Note: use `memnew!NavigationMeshInstance` instead.
	static NavigationMeshInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NavigationMeshInstance");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationMeshInstance)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!NavigationMesh getNavigationMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NavigationMesh)(GDNativeClassBinding.getNavigationMesh, _godot_object);
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
	void setNavigationMesh(NavigationMesh navmesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNavigationMesh, _godot_object, navmesh);
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
	@property NavigationMesh navmesh()
	{
		return getNavigationMesh();
	}
	/// ditto
	@property void navmesh(NavigationMesh v)
	{
		setNavigationMesh(v);
	}
}
