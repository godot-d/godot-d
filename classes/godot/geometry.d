/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.geometry;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
/**

*/
@GodotBaseClass struct GeometrySingleton
{
	enum string _GODOT_internal_name = "_Geometry";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "Geometry";
		@GodotName("build_box_planes") GodotMethod!(Array, Vector3) buildBoxPlanes;
		@GodotName("build_cylinder_planes") GodotMethod!(Array, double, double, long, long) buildCylinderPlanes;
		@GodotName("build_capsule_planes") GodotMethod!(Array, double, double, long, long, long) buildCapsulePlanes;
		@GodotName("segment_intersects_circle") GodotMethod!(double, Vector2, Vector2, Vector2, double) segmentIntersectsCircle;
		@GodotName("segment_intersects_segment_2d") GodotMethod!(Variant, Vector2, Vector2, Vector2, Vector2) segmentIntersectsSegment2d;
		@GodotName("line_intersects_line_2d") GodotMethod!(Variant, Vector2, Vector2, Vector2, Vector2) lineIntersectsLine2d;
		@GodotName("get_closest_points_between_segments_2d") GodotMethod!(PoolVector2Array, Vector2, Vector2, Vector2, Vector2) getClosestPointsBetweenSegments2d;
		@GodotName("get_closest_points_between_segments") GodotMethod!(PoolVector3Array, Vector3, Vector3, Vector3, Vector3) getClosestPointsBetweenSegments;
		@GodotName("get_closest_point_to_segment_2d") GodotMethod!(Vector2, Vector2, Vector2, Vector2) getClosestPointToSegment2d;
		@GodotName("get_closest_point_to_segment") GodotMethod!(Vector3, Vector3, Vector3, Vector3) getClosestPointToSegment;
		@GodotName("get_closest_point_to_segment_uncapped_2d") GodotMethod!(Vector2, Vector2, Vector2, Vector2) getClosestPointToSegmentUncapped2d;
		@GodotName("get_closest_point_to_segment_uncapped") GodotMethod!(Vector3, Vector3, Vector3, Vector3) getClosestPointToSegmentUncapped;
		@GodotName("get_uv84_normal_bit") GodotMethod!(long, Vector3) getUv84NormalBit;
		@GodotName("ray_intersects_triangle") GodotMethod!(Variant, Vector3, Vector3, Vector3, Vector3, Vector3) rayIntersectsTriangle;
		@GodotName("segment_intersects_triangle") GodotMethod!(Variant, Vector3, Vector3, Vector3, Vector3, Vector3) segmentIntersectsTriangle;
		@GodotName("segment_intersects_sphere") GodotMethod!(PoolVector3Array, Vector3, Vector3, Vector3, double) segmentIntersectsSphere;
		@GodotName("segment_intersects_cylinder") GodotMethod!(PoolVector3Array, Vector3, Vector3, double, double) segmentIntersectsCylinder;
		@GodotName("segment_intersects_convex") GodotMethod!(PoolVector3Array, Vector3, Vector3, Array) segmentIntersectsConvex;
		@GodotName("point_is_inside_triangle") GodotMethod!(bool, Vector2, Vector2, Vector2, Vector2) pointIsInsideTriangle;
		@GodotName("triangulate_polygon") GodotMethod!(PoolIntArray, PoolVector2Array) triangulatePolygon;
		@GodotName("convex_hull_2d") GodotMethod!(PoolVector2Array, PoolVector2Array) convexHull2d;
		@GodotName("clip_polygon") GodotMethod!(PoolVector3Array, PoolVector3Array, Plane) clipPolygon;
		@GodotName("make_atlas") GodotMethod!(Dictionary, PoolVector2Array) makeAtlas;
	}
	bool opEquals(in GeometrySingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GeometrySingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GeometrySingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Geometry");
		if(constructor is null) return typeof(this).init;
		return cast(GeometrySingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns an array with 6 $(D Plane)s that describe the sides of a box centered at the origin. The box size is defined by `extents`, which represents one (positive) corner of the box (i.e. half its actual size).
	*/
	Array buildBoxPlanes(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.buildBoxPlanes, _godot_object, extents);
	}
	/**
	Returns an array of $(D Plane)s closely bounding a faceted cylinder centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the round part of the cylinder. The parameter `axis` describes the axis along which the cylinder is oriented (0 for X, 1 for Y, 2 for Z).
	*/
	Array buildCylinderPlanes(in double radius, in double height, in long sides, in long axis = 2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.buildCylinderPlanes, _godot_object, radius, height, sides, axis);
	}
	/**
	Returns an array of $(D Plane)s closely bounding a faceted capsule centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the side part of the capsule, whereas `lats` gives the number of latitudinal steps at the bottom and top of the capsule. The parameter `axis` describes the axis along which the capsule is oriented (0 for X, 1 for Y, 2 for Z).
	*/
	Array buildCapsulePlanes(in double radius, in double height, in long sides, in long lats, in long axis = 2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.buildCapsulePlanes, _godot_object, radius, height, sides, lats, axis);
	}
	/**
	Given the 2d segment (`segment_from`, `segment_to`), returns the position on the segment (as a number between 0 and 1) at which the segment hits the circle that is located at position `circle_position` and has radius `circle_radius`. If the segment does not intersect the circle, -1 is returned (this is also the case if the line extending the segment would intersect the circle, but the segment does not).
	*/
	double segmentIntersectsCircle(in Vector2 segment_from, in Vector2 segment_to, in Vector2 circle_position, in double circle_radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.segmentIntersectsCircle, _godot_object, segment_from, segment_to, circle_position, circle_radius);
	}
	/**
	Checks if the two segments (`from_a`, `to_a`) and (`from_b`, `to_b`) intersect. If yes, return the point of intersection as $(D Vector2). If no intersection takes place, returns an empty $(D Variant).
	*/
	Variant segmentIntersectsSegment2d(in Vector2 from_a, in Vector2 to_a, in Vector2 from_b, in Vector2 to_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.segmentIntersectsSegment2d, _godot_object, from_a, to_a, from_b, to_b);
	}
	/**
	Checks if the two lines (`from_a`, `dir_a`) and (`from_b`, `dir_b`) intersect. If yes, return the point of intersection as $(D Vector2). If no intersection takes place, returns an empty $(D Variant). Note that the lines are specified using direction vectors, not end points.
	*/
	Variant lineIntersectsLine2d(in Vector2 from_a, in Vector2 dir_a, in Vector2 from_b, in Vector2 dir_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.lineIntersectsLine2d, _godot_object, from_a, dir_a, from_b, dir_b);
	}
	/**
	Given the two 2d segments (`p1`, `p2`) and (`q1`, `q2`), finds those two points on the two segments that are closest to each other. Returns a $(D PoolVector2Array) that contains this point on (`p1`, `p2`) as well the accompanying point on (`q1`, `q2`).
	*/
	PoolVector2Array getClosestPointsBetweenSegments2d(in Vector2 p1, in Vector2 q1, in Vector2 p2, in Vector2 q2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getClosestPointsBetweenSegments2d, _godot_object, p1, q1, p2, q2);
	}
	/**
	Given the two 3d segments (`p1`, `p2`) and (`q1`, `q2`), finds those two points on the two segments that are closest to each other. Returns a $(D PoolVector3Array) that contains this point on (`p1`, `p2`) as well the accompanying point on (`q1`, `q2`).
	*/
	PoolVector3Array getClosestPointsBetweenSegments(in Vector3 p1, in Vector3 p2, in Vector3 q1, in Vector3 q2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.getClosestPointsBetweenSegments, _godot_object, p1, p2, q1, q2);
	}
	/**
	Returns the 2d point on the 2d segment (`s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.
	*/
	Vector2 getClosestPointToSegment2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getClosestPointToSegment2d, _godot_object, point, s1, s2);
	}
	/**
	Returns the 3d point on the 3d segment (`s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.
	*/
	Vector3 getClosestPointToSegment(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getClosestPointToSegment, _godot_object, point, s1, s2);
	}
	/**
	Returns the 2d point on the 2d line defined by (`s1`, `s2`) that is closest to `point`. The returned point can be inside the segment (`s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.
	*/
	Vector2 getClosestPointToSegmentUncapped2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getClosestPointToSegmentUncapped2d, _godot_object, point, s1, s2);
	}
	/**
	Returns the 3d point on the 3d line defined by (`s1`, `s2`) that is closest to `point`. The returned point can be inside the segment (`s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.
	*/
	Vector3 getClosestPointToSegmentUncapped(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getClosestPointToSegmentUncapped, _godot_object, point, s1, s2);
	}
	/**
	
	*/
	long getUv84NormalBit(in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getUv84NormalBit, _godot_object, normal);
	}
	/**
	Tests if the 3d ray starting at `from` with the direction of `dir` intersects the triangle specified by `a`, `b` and `c`. If yes, returns the point of intersection as $(D Vector3). If no intersection takes place, an empty $(D Variant) is returned.
	*/
	Variant rayIntersectsTriangle(in Vector3 from, in Vector3 dir, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.rayIntersectsTriangle, _godot_object, from, dir, a, b, c);
	}
	/**
	Tests if the segment (`from`, `to`) intersects the triangle `a`, `b`, `c`. If yes, returns the point of intersection as $(D Vector3). If no intersection takes place, an empty $(D Variant) is returned.
	*/
	Variant segmentIntersectsTriangle(in Vector3 from, in Vector3 to, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.segmentIntersectsTriangle, _godot_object, from, to, a, b, c);
	}
	/**
	Checks if the segment (`from`, `to`) intersects the sphere that is located at `sphere_position` and has radius `sphere_radius`. If no, returns an empty $(D PoolVector3Array). If yes, returns a $(D PoolVector3Array) containing the point of intersection and the sphere's normal at the point of intersection.
	*/
	PoolVector3Array segmentIntersectsSphere(in Vector3 from, in Vector3 to, in Vector3 sphere_position, in double sphere_radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.segmentIntersectsSphere, _godot_object, from, to, sphere_position, sphere_radius);
	}
	/**
	Checks if the segment (`from`, `to`) intersects the cylinder with height `height` that is centered at the origin and has radius `radius`. If no, returns an empty $(D PoolVector3Array). If an intersection takes place, the returned array contains the point of intersection and the cylinder's normal at the point of intersection.
	*/
	PoolVector3Array segmentIntersectsCylinder(in Vector3 from, in Vector3 to, in double height, in double radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.segmentIntersectsCylinder, _godot_object, from, to, height, radius);
	}
	/**
	Given a convex hull defined though the $(D Plane)s in the array `planes`, tests if the segment (`from`, `to`) intersects with that hull. If an intersection is found, returns a $(D PoolVector3Array) containing the point the intersection and the hull's normal. If no intersecion is found, an the returned array is empty.
	*/
	PoolVector3Array segmentIntersectsConvex(in Vector3 from, in Vector3 to, in Array planes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.segmentIntersectsConvex, _godot_object, from, to, planes);
	}
	/**
	Returns if `point` is inside the triangle specified by `a`, `b` and `c`.
	*/
	bool pointIsInsideTriangle(in Vector2 point, in Vector2 a, in Vector2 b, in Vector2 c) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.pointIsInsideTriangle, _godot_object, point, a, b, c);
	}
	/**
	Triangulates the polygon specified by the points in `polygon`. Returns a $(D PoolIntArray) where each triangle consists of three consecutive point indices into `polygon` (i.e. the returned array will have `n * 3` elements, with `n` being the number of found triangles). If the triangulation did not succeed, an empty $(D PoolIntArray) is returned.
	*/
	PoolIntArray triangulatePolygon(in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.triangulatePolygon, _godot_object, polygon);
	}
	/**
	Given an array of $(D Vector2)s, returns the convex hull as a list of points in counter-clockwise order. The last point is the same as the first one.
	*/
	PoolVector2Array convexHull2d(in PoolVector2Array points)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.convexHull2d, _godot_object, points);
	}
	/**
	Clips the polygon defined by the points in `points` against the `plane` and returns the points of the clipped polygon.
	*/
	PoolVector3Array clipPolygon(in PoolVector3Array points, in Plane plane)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.clipPolygon, _godot_object, points, plane);
	}
	/**
	Given an array of $(D Vector2)s representing tiles, builds an atlas. The returned dictionary has two keys: `points` is a vector of $(D Vector2) that specifies the positions of each tile, `size` contains the overall size of the whole atlas as $(D Vector2).
	*/
	Dictionary makeAtlas(in PoolVector2Array sizes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.makeAtlas, _godot_object, sizes);
	}
}
/// Returns: the GeometrySingleton
@property @nogc nothrow pragma(inline, true)
GeometrySingleton Geometry()
{
	checkClassBinding!GeometrySingleton();
	return GeometrySingleton(GeometrySingleton._classBinding._singleton);
}
