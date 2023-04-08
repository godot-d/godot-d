/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigation2d;
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
/**

*/
@GodotBaseClass struct Navigation2D
{
	package(godot) enum string _GODOT_internal_name = "Navigation2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_cell_size") GodotMethod!(double) getCellSize;
		@GodotName("get_closest_point") GodotMethod!(Vector2, Vector2) getClosestPoint;
		@GodotName("get_closest_point_owner") GodotMethod!(RID, Vector2) getClosestPointOwner;
		@GodotName("get_edge_connection_margin") GodotMethod!(double) getEdgeConnectionMargin;
		@GodotName("get_navigation_layers") GodotMethod!(long) getNavigationLayers;
		@GodotName("get_rid") GodotMethod!(RID) getRid;
		@GodotName("get_simple_path") GodotMethod!(PoolVector2Array, Vector2, Vector2, bool) getSimplePath;
		@GodotName("set_cell_size") GodotMethod!(void, double) setCellSize;
		@GodotName("set_edge_connection_margin") GodotMethod!(void, double) setEdgeConnectionMargin;
		@GodotName("set_navigation_layers") GodotMethod!(void, long) setNavigationLayers;
	}
	/// 
	pragma(inline, true) bool opEquals(in Navigation2D other) const
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
	/// Construct a new instance of Navigation2D.
	/// Note: use `memnew!Navigation2D` instead.
	static Navigation2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Navigation2D");
		if(constructor is null) return typeof(this).init;
		return cast(Navigation2D)(constructor());
	}
	/**
	
	*/
	double getCellSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCellSize, _godot_object);
	}
	/**
	
	*/
	Vector2 getClosestPoint(in Vector2 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getClosestPoint, _godot_object, to_point);
	}
	/**
	
	*/
	RID getClosestPointOwner(in Vector2 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getClosestPointOwner, _godot_object, to_point);
	}
	/**
	
	*/
	double getEdgeConnectionMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEdgeConnectionMargin, _godot_object);
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
	RID getRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getRid, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getSimplePath(in Vector2 start, in Vector2 end, in bool optimize = true) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getSimplePath, _godot_object, start, end, optimize);
	}
	/**
	
	*/
	void setCellSize(in double cell_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellSize, _godot_object, cell_size);
	}
	/**
	
	*/
	void setEdgeConnectionMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEdgeConnectionMargin, _godot_object, margin);
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
	@property double cellSize()
	{
		return getCellSize();
	}
	/// ditto
	@property void cellSize(double v)
	{
		setCellSize(v);
	}
	/**
	
	*/
	@property double edgeConnectionMargin()
	{
		return getEdgeConnectionMargin();
	}
	/// ditto
	@property void edgeConnectionMargin(double v)
	{
		setEdgeConnectionMargin(v);
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
}
