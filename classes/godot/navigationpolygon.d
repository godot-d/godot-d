/**
A node that has methods to draw outlines or use indices of vertices to create navigation polygons.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigationpolygon;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.reference;
/**
A node that has methods to draw outlines or use indices of vertices to create navigation polygons.

There are two ways to create polygons. Either by using the $(D addOutline) method or using the $(D addPolygon) method.
Using $(D addOutline):
$(D code)
var polygon = NavigationPolygon.new()
var outline = PoolVector2Array($(D Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)))
polygon.add_outline(outline)
polygon.make_polygons_from_outlines()
$NavigationPolygonInstance.navpoly = polygon
$(D /code)
Using $(D addPolygon) and indices of the vertices array.
$(D code)
var polygon = NavigationPolygon.new()
var vertices = PoolVector2Array($(D Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)))
polygon.set_vertices(vertices)
var indices = PoolIntArray(0, 3, 1)
polygon.add_polygon(indices)
$NavigationPolygonInstance.navpoly = polygon
$(D /code)
*/
@GodotBaseClass struct NavigationPolygon
{
	enum string _GODOT_internal_name = "NavigationPolygon";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_vertices") GodotMethod!(void, PoolVector2Array) setVertices;
		@GodotName("get_vertices") GodotMethod!(PoolVector2Array) getVertices;
		@GodotName("add_polygon") GodotMethod!(void, PoolIntArray) addPolygon;
		@GodotName("get_polygon_count") GodotMethod!(long) getPolygonCount;
		@GodotName("get_polygon") GodotMethod!(PoolIntArray, long) getPolygon;
		@GodotName("clear_polygons") GodotMethod!(void) clearPolygons;
		@GodotName("add_outline") GodotMethod!(void, PoolVector2Array) addOutline;
		@GodotName("add_outline_at_index") GodotMethod!(void, PoolVector2Array, long) addOutlineAtIndex;
		@GodotName("get_outline_count") GodotMethod!(long) getOutlineCount;
		@GodotName("set_outline") GodotMethod!(void, long, PoolVector2Array) setOutline;
		@GodotName("get_outline") GodotMethod!(PoolVector2Array, long) getOutline;
		@GodotName("remove_outline") GodotMethod!(void, long) removeOutline;
		@GodotName("clear_outlines") GodotMethod!(void) clearOutlines;
		@GodotName("make_polygons_from_outlines") GodotMethod!(void) makePolygonsFromOutlines;
		@GodotName("_set_polygons") GodotMethod!(void, Array) _setPolygons;
		@GodotName("_get_polygons") GodotMethod!(Array) _getPolygons;
		@GodotName("_set_outlines") GodotMethod!(void, Array) _setOutlines;
		@GodotName("_get_outlines") GodotMethod!(Array) _getOutlines;
	}
	bool opEquals(in NavigationPolygon other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NavigationPolygon opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NavigationPolygon _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NavigationPolygon");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationPolygon)(constructor());
	}
	@disable new(size_t s);
	/**
	Sets the vertices that can be then indexed to create polygons with the $(D addPolygon) method.
	*/
	void setVertices(in PoolVector2Array vertices)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertices, _godot_object, vertices);
	}
	/**
	Returns a $(D PoolVector2Array) containing all the vertices being used to create the polygons.
	*/
	PoolVector2Array getVertices() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getVertices, _godot_object);
	}
	/**
	Adds a polygon using the indices of the vertices you get when calling $(D getVertices).
	*/
	void addPolygon(in PoolIntArray polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPolygon, _godot_object, polygon);
	}
	/**
	Returns the count of all polygons.
	*/
	long getPolygonCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPolygonCount, _godot_object);
	}
	/**
	Returns a $(D PoolIntArray) containing the indices of the vertices of a created polygon.
	*/
	PoolIntArray getPolygon(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getPolygon, _godot_object, idx);
	}
	/**
	Clears the array of polygons, but it doesn't clear the array of outlines and vertices.
	*/
	void clearPolygons()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearPolygons, _godot_object);
	}
	/**
	Appends a $(D PoolVector2Array) that contains the vertices of an outline to the internal array that contains all the outlines. You have to call $(D makePolygonsFromOutlines) in order for this array to be converted to polygons that the engine will use.
	*/
	void addOutline(in PoolVector2Array outline)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addOutline, _godot_object, outline);
	}
	/**
	Adds a $(D PoolVector2Array) that contains the vertices of an outline to the internal array that contains all the outlines at a fixed position. You have to call $(D makePolygonsFromOutlines) in order for this array to be converted to polygons that the engine will use.
	*/
	void addOutlineAtIndex(in PoolVector2Array outline, in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addOutlineAtIndex, _godot_object, outline, index);
	}
	/**
	Returns the number of outlines that were created in the editor or by script.
	*/
	long getOutlineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOutlineCount, _godot_object);
	}
	/**
	Changes an outline created in the editor or by script. You have to call $(D makePolygonsFromOutlines) for the polygons to update.
	*/
	void setOutline(in long idx, in PoolVector2Array outline)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOutline, _godot_object, idx, outline);
	}
	/**
	Returns a $(D PoolVector2Array) containing the vertices of an outline that was created in the editor or by script.
	*/
	PoolVector2Array getOutline(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getOutline, _godot_object, idx);
	}
	/**
	Removes an outline created in the editor or by script. You have to call $(D makePolygonsFromOutlines) for the polygons to update.
	*/
	void removeOutline(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeOutline, _godot_object, idx);
	}
	/**
	Clears the array of the outlines, but it doesn't clear the vertices and the polygons that were created by them.
	*/
	void clearOutlines()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearOutlines, _godot_object);
	}
	/**
	Creates polygons from the outlines added in the editor or by script.
	*/
	void makePolygonsFromOutlines()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.makePolygonsFromOutlines, _godot_object);
	}
	/**
	
	*/
	void _setPolygons(in Array polygons)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(polygons);
		String _GODOT_method_name = String("_set_polygons");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getPolygons() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_polygons");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setOutlines(in Array outlines)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(outlines);
		String _GODOT_method_name = String("_set_outlines");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getOutlines() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_outlines");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
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
	@property Array outlines()
	{
		return _getOutlines();
	}
	/// ditto
	@property void outlines(Array v)
	{
		_setOutlines(v);
	}
}
