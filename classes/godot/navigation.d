/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigation;
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
import godot.spatial;
/**

*/
@GodotBaseClass struct Navigation
{
	package(godot) enum string _GODOT_internal_name = "Navigation";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_cell_height") GodotMethod!(double) getCellHeight;
		@GodotName("get_cell_size") GodotMethod!(double) getCellSize;
		@GodotName("get_closest_point") GodotMethod!(Vector3, Vector3) getClosestPoint;
		@GodotName("get_closest_point_normal") GodotMethod!(Vector3, Vector3) getClosestPointNormal;
		@GodotName("get_closest_point_owner") GodotMethod!(RID, Vector3) getClosestPointOwner;
		@GodotName("get_closest_point_to_segment") GodotMethod!(Vector3, Vector3, Vector3, bool) getClosestPointToSegment;
		@GodotName("get_edge_connection_margin") GodotMethod!(double) getEdgeConnectionMargin;
		@GodotName("get_navigation_layers") GodotMethod!(long) getNavigationLayers;
		@GodotName("get_rid") GodotMethod!(RID) getRid;
		@GodotName("get_simple_path") GodotMethod!(PoolVector3Array, Vector3, Vector3, bool) getSimplePath;
		@GodotName("get_up_vector") GodotMethod!(Vector3) getUpVector;
		@GodotName("set_cell_height") GodotMethod!(void, double) setCellHeight;
		@GodotName("set_cell_size") GodotMethod!(void, double) setCellSize;
		@GodotName("set_edge_connection_margin") GodotMethod!(void, double) setEdgeConnectionMargin;
		@GodotName("set_navigation_layers") GodotMethod!(void, long) setNavigationLayers;
		@GodotName("set_up_vector") GodotMethod!(void, Vector3) setUpVector;
	}
	/// 
	pragma(inline, true) bool opEquals(in Navigation other) const
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
	/// Construct a new instance of Navigation.
	/// Note: use `memnew!Navigation` instead.
	static Navigation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Navigation");
		if(constructor is null) return typeof(this).init;
		return cast(Navigation)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getCellHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCellHeight, _godot_object);
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
	Vector3 getClosestPoint(in Vector3 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getClosestPoint, _godot_object, to_point);
	}
	/**
	
	*/
	Vector3 getClosestPointNormal(in Vector3 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getClosestPointNormal, _godot_object, to_point);
	}
	/**
	
	*/
	RID getClosestPointOwner(in Vector3 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getClosestPointOwner, _godot_object, to_point);
	}
	/**
	
	*/
	Vector3 getClosestPointToSegment(in Vector3 start, in Vector3 end, in bool use_collision = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getClosestPointToSegment, _godot_object, start, end, use_collision);
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
	PoolVector3Array getSimplePath(in Vector3 start, in Vector3 end, in bool optimize = true) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getSimplePath, _godot_object, start, end, optimize);
	}
	/**
	
	*/
	Vector3 getUpVector() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getUpVector, _godot_object);
	}
	/**
	
	*/
	void setCellHeight(in double cell_height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellHeight, _godot_object, cell_height);
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
	void setUpVector(in Vector3 up)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUpVector, _godot_object, up);
	}
	/**
	
	*/
	@property double cellHeight()
	{
		return getCellHeight();
	}
	/// ditto
	@property void cellHeight(double v)
	{
		setCellHeight(v);
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
	/**
	
	*/
	@property Vector3 upVector()
	{
		return getUpVector();
	}
	/// ditto
	@property void upVector(Vector3 v)
	{
		setUpVector(v);
	}
}
