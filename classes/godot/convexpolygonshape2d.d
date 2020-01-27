/**
Convex polygon shape for 2D physics.

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
Convex polygon shape for 2D physics.

A convex polygon, whatever its shape, is internally decomposed into as many convex polygons as needed to ensure all collision checks against it are always done on convex polygons (which are faster to check).
The main difference between a $(D ConvexPolygonShape2D) and a $(D ConcavePolygonShape2D) is that a concave polygon assumes it is concave and uses a more complex method of collision detection, and a convex one forces itself to be convex in order to speed up collision detection.
*/
@GodotBaseClass struct ConvexPolygonShape2D
{
	enum string _GODOT_internal_name = "ConvexPolygonShape2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_points") GodotMethod!(PoolVector2Array) getPoints;
		@GodotName("set_point_cloud") GodotMethod!(void, PoolVector2Array) setPointCloud;
		@GodotName("set_points") GodotMethod!(void, PoolVector2Array) setPoints;
	}
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
	/**
	
	*/
	PoolVector2Array getPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getPoints, _godot_object);
	}
	/**
	Based on the set of points provided, this creates and assigns the $(D points) property using the convex hull algorithm. Removing all unneeded points. See $(D Geometry.convexHull2d) for details.
	*/
	void setPointCloud(in PoolVector2Array point_cloud)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointCloud, _godot_object, point_cloud);
	}
	/**
	
	*/
	void setPoints(in PoolVector2Array points)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPoints, _godot_object, points);
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
