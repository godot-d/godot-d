/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigationpolygon;
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
import godot.resource;
import godot.navigationmesh;
/**

*/
@GodotBaseClass struct NavigationPolygon
{
	package(godot) enum string _GODOT_internal_name = "NavigationPolygon";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_outlines") GodotMethod!(Array) _getOutlines;
		@GodotName("_get_polygons") GodotMethod!(Array) _getPolygons;
		@GodotName("_set_outlines") GodotMethod!(void, Array) _setOutlines;
		@GodotName("_set_polygons") GodotMethod!(void, Array) _setPolygons;
		@GodotName("add_outline") GodotMethod!(void, PoolVector2Array) addOutline;
		@GodotName("add_outline_at_index") GodotMethod!(void, PoolVector2Array, long) addOutlineAtIndex;
		@GodotName("add_polygon") GodotMethod!(void, PoolIntArray) addPolygon;
		@GodotName("clear_outlines") GodotMethod!(void) clearOutlines;
		@GodotName("clear_polygons") GodotMethod!(void) clearPolygons;
		@GodotName("get_mesh") GodotMethod!(NavigationMesh) getMesh;
		@GodotName("get_outline") GodotMethod!(PoolVector2Array, long) getOutline;
		@GodotName("get_outline_count") GodotMethod!(long) getOutlineCount;
		@GodotName("get_polygon") GodotMethod!(PoolIntArray, long) getPolygon;
		@GodotName("get_polygon_count") GodotMethod!(long) getPolygonCount;
		@GodotName("get_vertices") GodotMethod!(PoolVector2Array) getVertices;
		@GodotName("make_polygons_from_outlines") GodotMethod!(void) makePolygonsFromOutlines;
		@GodotName("remove_outline") GodotMethod!(void, long) removeOutline;
		@GodotName("set_outline") GodotMethod!(void, long, PoolVector2Array) setOutline;
		@GodotName("set_vertices") GodotMethod!(void, PoolVector2Array) setVertices;
	}
	/// 
	pragma(inline, true) bool opEquals(in NavigationPolygon other) const
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
	/// Construct a new instance of NavigationPolygon.
	/// Note: use `memnew!NavigationPolygon` instead.
	static NavigationPolygon _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NavigationPolygon");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationPolygon)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Array _getOutlines() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_outlines");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	Array _getPolygons() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_polygons");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setOutlines(in Array outlines)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(outlines);
		String _GODOT_method_name = String("_set_outlines");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setPolygons(in Array polygons)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(polygons);
		String _GODOT_method_name = String("_set_polygons");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addOutline(in PoolVector2Array outline)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addOutline, _godot_object, outline);
	}
	/**
	
	*/
	void addOutlineAtIndex(in PoolVector2Array outline, in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addOutlineAtIndex, _godot_object, outline, index);
	}
	/**
	
	*/
	void addPolygon(in PoolIntArray polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPolygon, _godot_object, polygon);
	}
	/**
	
	*/
	void clearOutlines()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearOutlines, _godot_object);
	}
	/**
	
	*/
	void clearPolygons()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearPolygons, _godot_object);
	}
	/**
	
	*/
	Ref!NavigationMesh getMesh()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NavigationMesh)(GDNativeClassBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getOutline(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getOutline, _godot_object, idx);
	}
	/**
	
	*/
	long getOutlineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOutlineCount, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getPolygon(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getPolygon, _godot_object, idx);
	}
	/**
	
	*/
	long getPolygonCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPolygonCount, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getVertices() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getVertices, _godot_object);
	}
	/**
	
	*/
	void makePolygonsFromOutlines()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.makePolygonsFromOutlines, _godot_object);
	}
	/**
	
	*/
	void removeOutline(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeOutline, _godot_object, idx);
	}
	/**
	
	*/
	void setOutline(in long idx, in PoolVector2Array outline)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutline, _godot_object, idx, outline);
	}
	/**
	
	*/
	void setVertices(in PoolVector2Array vertices)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertices, _godot_object, vertices);
	}
	/**
	
	*/
	@property Array outlines()
	{
		return _getOutlines();
	}
	/// ditto
	@property void outlines(Array v)
	{
		_setOutlines(v);
	}
	/**
	
	*/
	@property Array polygons()
	{
		return _getPolygons();
	}
	/// ditto
	@property void polygons(Array v)
	{
		_setPolygons(v);
	}
	/**
	
	*/
	@property PoolVector2Array vertices()
	{
		return getVertices();
	}
	/// ditto
	@property void vertices(PoolVector2Array v)
	{
		setVertices(v);
	}
}
