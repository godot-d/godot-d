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
	static immutable string _GODOT_internal_name = "_Geometry";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "Geometry";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(Array, Vector3) _GODOT_build_box_planes;
	package(godot) alias _GODOT_methodBindInfo(string name : "build_box_planes") = _GODOT_build_box_planes;
	/**
	Returns an array with 6 $(D Plane)s that describe the sides of a box centered at the origin. The box size is defined by `extents`, which represents one (positive) corner of the box (i.e. half its actual size).
	*/
	Array buildBoxPlanes(in Vector3 extents)
	{
		_GODOT_build_box_planes.bind("_Geometry", "build_box_planes");
		return ptrcall!(Array)(_GODOT_build_box_planes, _godot_object, extents);
	}
	package(godot) static GodotMethod!(Array, double, double, long, long) _GODOT_build_cylinder_planes;
	package(godot) alias _GODOT_methodBindInfo(string name : "build_cylinder_planes") = _GODOT_build_cylinder_planes;
	/**
	Returns an array of $(D Plane)s closely bounding a faceted cylinder centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the round part of the cylinder. The parameter `axis` describes the axis along which the cylinder is oriented (0 for X, 1 for Y, 2 for Z).
	*/
	Array buildCylinderPlanes(in double radius, in double height, in long sides, in long axis = 2)
	{
		_GODOT_build_cylinder_planes.bind("_Geometry", "build_cylinder_planes");
		return ptrcall!(Array)(_GODOT_build_cylinder_planes, _godot_object, radius, height, sides, axis);
	}
	package(godot) static GodotMethod!(Array, double, double, long, long, long) _GODOT_build_capsule_planes;
	package(godot) alias _GODOT_methodBindInfo(string name : "build_capsule_planes") = _GODOT_build_capsule_planes;
	/**
	Returns an array of $(D Plane)s closely bounding a faceted capsule centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the side part of the capsule, whereas `lats` gives the number of latitudinal steps at the bottom and top of the capsule. The parameter `axis` describes the axis along which the capsule is oriented (0 for X, 1 for Y, 2 for Z).
	*/
	Array buildCapsulePlanes(in double radius, in double height, in long sides, in long lats, in long axis = 2)
	{
		_GODOT_build_capsule_planes.bind("_Geometry", "build_capsule_planes");
		return ptrcall!(Array)(_GODOT_build_capsule_planes, _godot_object, radius, height, sides, lats, axis);
	}
	package(godot) static GodotMethod!(double, Vector2, Vector2, Vector2, double) _GODOT_segment_intersects_circle;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_circle") = _GODOT_segment_intersects_circle;
	/**
	Given the 2d segment (`segment_from`, `segment_to`), returns the position on the segment (as a number between 0 and 1) at which the segment hits the circle that is located at position `circle_position` and has radius `circle_radius`. If the segment does not intersect the circle, -1 is returned (this is also the case if the line extending the segment would intersect the circle, but the segment does not).
	*/
	double segmentIntersectsCircle(in Vector2 segment_from, in Vector2 segment_to, in Vector2 circle_position, in double circle_radius)
	{
		_GODOT_segment_intersects_circle.bind("_Geometry", "segment_intersects_circle");
		return ptrcall!(double)(_GODOT_segment_intersects_circle, _godot_object, segment_from, segment_to, circle_position, circle_radius);
	}
	package(godot) static GodotMethod!(Variant, Vector2, Vector2, Vector2, Vector2) _GODOT_segment_intersects_segment_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_segment_2d") = _GODOT_segment_intersects_segment_2d;
	/**
	Checks if the two segments (`from_a`, `to_a`) and (`from_b`, `to_b`) intersect. If yes, return the point of intersection as $(D Vector2). If no intersection takes place, returns an empty $(D Variant).
	*/
	Variant segmentIntersectsSegment2d(in Vector2 from_a, in Vector2 to_a, in Vector2 from_b, in Vector2 to_b)
	{
		_GODOT_segment_intersects_segment_2d.bind("_Geometry", "segment_intersects_segment_2d");
		return ptrcall!(Variant)(_GODOT_segment_intersects_segment_2d, _godot_object, from_a, to_a, from_b, to_b);
	}
	package(godot) static GodotMethod!(PoolVector2Array, Vector2, Vector2, Vector2, Vector2) _GODOT_get_closest_points_between_segments_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_points_between_segments_2d") = _GODOT_get_closest_points_between_segments_2d;
	/**
	Given the two 2d segments (`p1`, `p2`) and (`q1`, `q2`), finds those two points on the two segments that are closest to each other. Returns a $(D PoolVector2Array) that contains this point on (`p1`, `p2`) as well the accompanying point on (`q1`, `q2`).
	*/
	PoolVector2Array getClosestPointsBetweenSegments2d(in Vector2 p1, in Vector2 q1, in Vector2 p2, in Vector2 q2)
	{
		_GODOT_get_closest_points_between_segments_2d.bind("_Geometry", "get_closest_points_between_segments_2d");
		return ptrcall!(PoolVector2Array)(_GODOT_get_closest_points_between_segments_2d, _godot_object, p1, q1, p2, q2);
	}
	package(godot) static GodotMethod!(PoolVector3Array, Vector3, Vector3, Vector3, Vector3) _GODOT_get_closest_points_between_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_points_between_segments") = _GODOT_get_closest_points_between_segments;
	/**
	Given the two 3d segments (`p1`, `p2`) and (`q1`, `q2`), finds those two points on the two segments that are closest to each other. Returns a $(D PoolVector3Array) that contains this point on (`p1`, `p2`) as well the accompanying point on (`q1`, `q2`).
	*/
	PoolVector3Array getClosestPointsBetweenSegments(in Vector3 p1, in Vector3 p2, in Vector3 q1, in Vector3 q2)
	{
		_GODOT_get_closest_points_between_segments.bind("_Geometry", "get_closest_points_between_segments");
		return ptrcall!(PoolVector3Array)(_GODOT_get_closest_points_between_segments, _godot_object, p1, p2, q1, q2);
	}
	package(godot) static GodotMethod!(Vector2, Vector2, Vector2, Vector2) _GODOT_get_closest_point_to_segment_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_to_segment_2d") = _GODOT_get_closest_point_to_segment_2d;
	/**
	Returns the 2d point on the 2d segment (`s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.
	*/
	Vector2 getClosestPointToSegment2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		_GODOT_get_closest_point_to_segment_2d.bind("_Geometry", "get_closest_point_to_segment_2d");
		return ptrcall!(Vector2)(_GODOT_get_closest_point_to_segment_2d, _godot_object, point, s1, s2);
	}
	package(godot) static GodotMethod!(Vector3, Vector3, Vector3, Vector3) _GODOT_get_closest_point_to_segment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_to_segment") = _GODOT_get_closest_point_to_segment;
	/**
	Returns the 3d point on the 3d segment (`s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.
	*/
	Vector3 getClosestPointToSegment(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		_GODOT_get_closest_point_to_segment.bind("_Geometry", "get_closest_point_to_segment");
		return ptrcall!(Vector3)(_GODOT_get_closest_point_to_segment, _godot_object, point, s1, s2);
	}
	package(godot) static GodotMethod!(Vector2, Vector2, Vector2, Vector2) _GODOT_get_closest_point_to_segment_uncapped_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_to_segment_uncapped_2d") = _GODOT_get_closest_point_to_segment_uncapped_2d;
	/**
	Returns the 2d point on the 2d line defined by (`s1`, `s2`) that is closest to `point`. The returned point can be inside the segment (`s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.
	*/
	Vector2 getClosestPointToSegmentUncapped2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		_GODOT_get_closest_point_to_segment_uncapped_2d.bind("_Geometry", "get_closest_point_to_segment_uncapped_2d");
		return ptrcall!(Vector2)(_GODOT_get_closest_point_to_segment_uncapped_2d, _godot_object, point, s1, s2);
	}
	package(godot) static GodotMethod!(Vector3, Vector3, Vector3, Vector3) _GODOT_get_closest_point_to_segment_uncapped;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_to_segment_uncapped") = _GODOT_get_closest_point_to_segment_uncapped;
	/**
	Returns the 3d point on the 3d line defined by (`s1`, `s2`) that is closest to `point`. The returned point can be inside the segment (`s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.
	*/
	Vector3 getClosestPointToSegmentUncapped(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		_GODOT_get_closest_point_to_segment_uncapped.bind("_Geometry", "get_closest_point_to_segment_uncapped");
		return ptrcall!(Vector3)(_GODOT_get_closest_point_to_segment_uncapped, _godot_object, point, s1, s2);
	}
	package(godot) static GodotMethod!(long, Vector3) _GODOT_get_uv84_normal_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv84_normal_bit") = _GODOT_get_uv84_normal_bit;
	/**
	
	*/
	long getUv84NormalBit(in Vector3 normal)
	{
		_GODOT_get_uv84_normal_bit.bind("_Geometry", "get_uv84_normal_bit");
		return ptrcall!(long)(_GODOT_get_uv84_normal_bit, _godot_object, normal);
	}
	package(godot) static GodotMethod!(Variant, Vector3, Vector3, Vector3, Vector3, Vector3) _GODOT_ray_intersects_triangle;
	package(godot) alias _GODOT_methodBindInfo(string name : "ray_intersects_triangle") = _GODOT_ray_intersects_triangle;
	/**
	Tests if the 3d ray starting at `from` with the direction of `dir` intersects the triangle specified by `a`, `b` and `c`. If yes, returns the point of intersection as $(D Vector3). If no intersection takes place, an empty $(D Variant) is returned.
	*/
	Variant rayIntersectsTriangle(in Vector3 from, in Vector3 dir, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		_GODOT_ray_intersects_triangle.bind("_Geometry", "ray_intersects_triangle");
		return ptrcall!(Variant)(_GODOT_ray_intersects_triangle, _godot_object, from, dir, a, b, c);
	}
	package(godot) static GodotMethod!(Variant, Vector3, Vector3, Vector3, Vector3, Vector3) _GODOT_segment_intersects_triangle;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_triangle") = _GODOT_segment_intersects_triangle;
	/**
	Tests if the segment (`from`, `to`) intersects the triangle `a`, `b`, `c`. If yes, returns the point of intersection as $(D Vector3). If no intersection takes place, an empty $(D Variant) is returned.
	*/
	Variant segmentIntersectsTriangle(in Vector3 from, in Vector3 to, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		_GODOT_segment_intersects_triangle.bind("_Geometry", "segment_intersects_triangle");
		return ptrcall!(Variant)(_GODOT_segment_intersects_triangle, _godot_object, from, to, a, b, c);
	}
	package(godot) static GodotMethod!(PoolVector3Array, Vector3, Vector3, Vector3, double) _GODOT_segment_intersects_sphere;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_sphere") = _GODOT_segment_intersects_sphere;
	/**
	Checks if the segment (`from`, `to`) intersects the sphere that is located at `sphere_position` and has radius `sphere_radius`. If no, returns an empty $(D PoolVector3Array). If yes, returns a $(D PoolVector3Array) containing the point of intersection and the sphere's normal at the point of intersection.
	*/
	PoolVector3Array segmentIntersectsSphere(in Vector3 from, in Vector3 to, in Vector3 sphere_position, in double sphere_radius)
	{
		_GODOT_segment_intersects_sphere.bind("_Geometry", "segment_intersects_sphere");
		return ptrcall!(PoolVector3Array)(_GODOT_segment_intersects_sphere, _godot_object, from, to, sphere_position, sphere_radius);
	}
	package(godot) static GodotMethod!(PoolVector3Array, Vector3, Vector3, double, double) _GODOT_segment_intersects_cylinder;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_cylinder") = _GODOT_segment_intersects_cylinder;
	/**
	Checks if the segment (`from`, `to`) intersects the cylinder with height `height` that is centered at the origin and has radius `radius`. If no, returns an empty $(D PoolVector3Array). If an intersection takes place, the returned array contains the point of intersection and the cylinder's normal at the point of intersection.
	*/
	PoolVector3Array segmentIntersectsCylinder(in Vector3 from, in Vector3 to, in double height, in double radius)
	{
		_GODOT_segment_intersects_cylinder.bind("_Geometry", "segment_intersects_cylinder");
		return ptrcall!(PoolVector3Array)(_GODOT_segment_intersects_cylinder, _godot_object, from, to, height, radius);
	}
	package(godot) static GodotMethod!(PoolVector3Array, Vector3, Vector3, Array) _GODOT_segment_intersects_convex;
	package(godot) alias _GODOT_methodBindInfo(string name : "segment_intersects_convex") = _GODOT_segment_intersects_convex;
	/**
	Given a convex hull defined though the $(D Plane)s in the array `planes`, tests if the segment (`from`, `to`) intersects with that hull. If an intersection is found, returns a $(D PoolVector3Array) containing the point the intersection and the hull's normal. If no intersecion is found, an the returned array is empty.
	*/
	PoolVector3Array segmentIntersectsConvex(in Vector3 from, in Vector3 to, in Array planes)
	{
		_GODOT_segment_intersects_convex.bind("_Geometry", "segment_intersects_convex");
		return ptrcall!(PoolVector3Array)(_GODOT_segment_intersects_convex, _godot_object, from, to, planes);
	}
	package(godot) static GodotMethod!(bool, Vector2, Vector2, Vector2, Vector2) _GODOT_point_is_inside_triangle;
	package(godot) alias _GODOT_methodBindInfo(string name : "point_is_inside_triangle") = _GODOT_point_is_inside_triangle;
	/**
	Returns if `point` is inside the triangle specified by `a`, `b` and `c`.
	*/
	bool pointIsInsideTriangle(in Vector2 point, in Vector2 a, in Vector2 b, in Vector2 c) const
	{
		_GODOT_point_is_inside_triangle.bind("_Geometry", "point_is_inside_triangle");
		return ptrcall!(bool)(_GODOT_point_is_inside_triangle, _godot_object, point, a, b, c);
	}
	package(godot) static GodotMethod!(PoolIntArray, PoolVector2Array) _GODOT_triangulate_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "triangulate_polygon") = _GODOT_triangulate_polygon;
	/**
	Triangulates the polygon specified by the points in `polygon`. Returns a $(D PoolIntArray) where each triangle consists of three consecutive point indices into `polygon` (i.e. the returned array will have `n * 3` elements, with `n` being the number of found triangles). If the triangulation did not succeed, an empty $(D PoolIntArray) is returned.
	*/
	PoolIntArray triangulatePolygon(in PoolVector2Array polygon)
	{
		_GODOT_triangulate_polygon.bind("_Geometry", "triangulate_polygon");
		return ptrcall!(PoolIntArray)(_GODOT_triangulate_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(PoolVector2Array, PoolVector2Array) _GODOT_convex_hull_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "convex_hull_2d") = _GODOT_convex_hull_2d;
	/**
	Given an array of $(D Vector2)s, returns the convex hull as a list of points in counter-clockwise order. The last point is the same as the first one.
	*/
	PoolVector2Array convexHull2d(in PoolVector2Array points)
	{
		_GODOT_convex_hull_2d.bind("_Geometry", "convex_hull_2d");
		return ptrcall!(PoolVector2Array)(_GODOT_convex_hull_2d, _godot_object, points);
	}
	package(godot) static GodotMethod!(PoolVector3Array, PoolVector3Array, Plane) _GODOT_clip_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "clip_polygon") = _GODOT_clip_polygon;
	/**
	Clips the polygon defined by the points in `points` against the `plane` and returns the points of the clipped polygon.
	*/
	PoolVector3Array clipPolygon(in PoolVector3Array points, in Plane plane)
	{
		_GODOT_clip_polygon.bind("_Geometry", "clip_polygon");
		return ptrcall!(PoolVector3Array)(_GODOT_clip_polygon, _godot_object, points, plane);
	}
	package(godot) static GodotMethod!(Dictionary, PoolVector2Array) _GODOT_make_atlas;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_atlas") = _GODOT_make_atlas;
	/**
	Given an array of $(D Vector2)s representing tiles, builds an atlas. The returned dictionary has two keys: `points` is a vector of $(D Vector2) that specifies the positions of each tile, `size` contains the overall size of the whole atlas as $(D Vector2).
	*/
	Dictionary makeAtlas(in PoolVector2Array sizes)
	{
		_GODOT_make_atlas.bind("_Geometry", "make_atlas");
		return ptrcall!(Dictionary)(_GODOT_make_atlas, _godot_object, sizes);
	}
}
/// Returns: the GeometrySingleton
@property @nogc nothrow pragma(inline, true)
GeometrySingleton Geometry()
{
	return GeometrySingleton._GODOT_singleton();
}
