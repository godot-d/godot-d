/**
Convex Polygon Shape for 2D physics.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.convexpolygonshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape2d;
/**
Convex Polygon Shape for 2D physics.

A convex polygon, whatever its shape, is internally decomposed into as many convex polygons as needed to ensure all collision checks against it are always done on convex polygons (which are faster to check).
The main difference between a `ConvexPolygonShape2D` and a $(D ConcavePolygonShape2D) is that a concave polygon assumes it is concave and uses a more complex method of collision detection, and a convex one forces itself to be convex in order to speed up collision detection.
*/
@GodotBaseClass struct ConvexPolygonShape2D
{
	static immutable string _GODOT_internal_name = "ConvexPolygonShape2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ConvexPolygonShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConvexPolygonShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConvexPolygonShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ConvexPolygonShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(ConvexPolygonShape2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_point_cloud;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_cloud") = _GODOT_set_point_cloud;
	/**
	Currently, this method does nothing.
	*/
	void setPointCloud(in PoolVector2Array point_cloud)
	{
		_GODOT_set_point_cloud.bind("ConvexPolygonShape2D", "set_point_cloud");
		ptrcall!(void)(_GODOT_set_point_cloud, _godot_object, point_cloud);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_points") = _GODOT_set_points;
	/**
	
	*/
	void setPoints(in PoolVector2Array points)
	{
		_GODOT_set_points.bind("ConvexPolygonShape2D", "set_points");
		ptrcall!(void)(_GODOT_set_points, _godot_object, points);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_points") = _GODOT_get_points;
	/**
	
	*/
	PoolVector2Array getPoints() const
	{
		_GODOT_get_points.bind("ConvexPolygonShape2D", "get_points");
		return ptrcall!(PoolVector2Array)(_GODOT_get_points, _godot_object);
	}
	/**
	The polygon's list of vertices. Can be in either clockwise or counterclockwise order.
	*/
	@property PoolVector2Array points()
	{
		return getPoints();
	}
	/// ditto
	@property void points(PoolVector2Array v)
	{
		setPoints(v);
	}
}
