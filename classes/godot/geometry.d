/**
Helper node to calculate generic geometry operations.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.geometry;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
/**
Helper node to calculate generic geometry operations.

Geometry provides users with a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations.
*/
@GodotBaseClass struct GeometrySingleton
{
	package(godot) enum string _GODOT_internal_name = "_Geometry";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "Geometry";
		@GodotName("build_box_planes") GodotMethod!(Array, Vector3) buildBoxPlanes;
		@GodotName("build_capsule_planes") GodotMethod!(Array, double, double, long, long, long) buildCapsulePlanes;
		@GodotName("build_cylinder_planes") GodotMethod!(Array, double, double, long, long) buildCylinderPlanes;
		@GodotName("clip_polygon") GodotMethod!(PoolVector3Array, PoolVector3Array, Plane) clipPolygon;
		@GodotName("clip_polygons_2d") GodotMethod!(Array, PoolVector2Array, PoolVector2Array) clipPolygons2d;
		@GodotName("clip_polyline_with_polygon_2d") GodotMethod!(Array, PoolVector2Array, PoolVector2Array) clipPolylineWithPolygon2d;
		@GodotName("convex_hull_2d") GodotMethod!(PoolVector2Array, PoolVector2Array) convexHull2d;
		@GodotName("exclude_polygons_2d") GodotMethod!(Array, PoolVector2Array, PoolVector2Array) excludePolygons2d;
		@GodotName("get_closest_point_to_segment") GodotMethod!(Vector3, Vector3, Vector3, Vector3) getClosestPointToSegment;
		@GodotName("get_closest_point_to_segment_2d") GodotMethod!(Vector2, Vector2, Vector2, Vector2) getClosestPointToSegment2d;
		@GodotName("get_closest_point_to_segment_uncapped") GodotMethod!(Vector3, Vector3, Vector3, Vector3) getClosestPointToSegmentUncapped;
		@GodotName("get_closest_point_to_segment_uncapped_2d") GodotMethod!(Vector2, Vector2, Vector2, Vector2) getClosestPointToSegmentUncapped2d;
		@GodotName("get_closest_points_between_segments") GodotMethod!(PoolVector3Array, Vector3, Vector3, Vector3, Vector3) getClosestPointsBetweenSegments;
		@GodotName("get_closest_points_between_segments_2d") GodotMethod!(PoolVector2Array, Vector2, Vector2, Vector2, Vector2) getClosestPointsBetweenSegments2d;
		@GodotName("get_uv84_normal_bit") GodotMethod!(long, Vector3) getUv84NormalBit;
		@GodotName("intersect_polygons_2d") GodotMethod!(Array, PoolVector2Array, PoolVector2Array) intersectPolygons2d;
		@GodotName("intersect_polyline_with_polygon_2d") GodotMethod!(Array, PoolVector2Array, PoolVector2Array) intersectPolylineWithPolygon2d;
		@GodotName("is_point_in_circle") GodotMethod!(bool, Vector2, Vector2, double) isPointInCircle;
		@GodotName("is_point_in_polygon") GodotMethod!(bool, Vector2, PoolVector2Array) isPointInPolygon;
		@GodotName("is_polygon_clockwise") GodotMethod!(bool, PoolVector2Array) isPolygonClockwise;
		@GodotName("line_intersects_line_2d") GodotMethod!(Variant, Vector2, Vector2, Vector2, Vector2) lineIntersectsLine2d;
		@GodotName("make_atlas") GodotMethod!(Dictionary, PoolVector2Array) makeAtlas;
		@GodotName("merge_polygons_2d") GodotMethod!(Array, PoolVector2Array, PoolVector2Array) mergePolygons2d;
		@GodotName("offset_polygon_2d") GodotMethod!(Array, PoolVector2Array, double, long) offsetPolygon2d;
		@GodotName("offset_polyline_2d") GodotMethod!(Array, PoolVector2Array, double, long, long) offsetPolyline2d;
		@GodotName("point_is_inside_triangle") GodotMethod!(bool, Vector2, Vector2, Vector2, Vector2) pointIsInsideTriangle;
		@GodotName("ray_intersects_triangle") GodotMethod!(Variant, Vector3, Vector3, Vector3, Vector3, Vector3) rayIntersectsTriangle;
		@GodotName("segment_intersects_circle") GodotMethod!(double, Vector2, Vector2, Vector2, double) segmentIntersectsCircle;
		@GodotName("segment_intersects_convex") GodotMethod!(PoolVector3Array, Vector3, Vector3, Array) segmentIntersectsConvex;
		@GodotName("segment_intersects_cylinder") GodotMethod!(PoolVector3Array, Vector3, Vector3, double, double) segmentIntersectsCylinder;
		@GodotName("segment_intersects_segment_2d") GodotMethod!(Variant, Vector2, Vector2, Vector2, Vector2) segmentIntersectsSegment2d;
		@GodotName("segment_intersects_sphere") GodotMethod!(PoolVector3Array, Vector3, Vector3, Vector3, double) segmentIntersectsSphere;
		@GodotName("segment_intersects_triangle") GodotMethod!(Variant, Vector3, Vector3, Vector3, Vector3, Vector3) segmentIntersectsTriangle;
		@GodotName("triangulate_delaunay_2d") GodotMethod!(PoolIntArray, PoolVector2Array) triangulateDelaunay2d;
		@GodotName("triangulate_polygon") GodotMethod!(PoolIntArray, PoolVector2Array) triangulatePolygon;
	}
	/// 
	pragma(inline, true) bool opEquals(in GeometrySingleton other) const
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
	/// Construct a new instance of GeometrySingleton.
	/// Note: use `memnew!GeometrySingleton` instead.
	static GeometrySingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Geometry");
		if(constructor is null) return typeof(this).init;
		return cast(GeometrySingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum PolyEndType : int
	{
		/**
		Endpoints are joined using the $(D polyjointype) value and the path filled as a polygon.
		*/
		endPolygon = 0,
		/**
		Endpoints are joined using the $(D polyjointype) value and the path filled as a polyline.
		*/
		endJoined = 1,
		/**
		Endpoints are squared off with no extension.
		*/
		endButt = 2,
		/**
		Endpoints are squared off and extended by `delta` units.
		*/
		endSquare = 3,
		/**
		Endpoints are rounded off and extended by `delta` units.
		*/
		endRound = 4,
	}
	/// 
	enum PolyBooleanOperation : int
	{
		/**
		Create regions where either subject or clip polygons (or both) are filled.
		*/
		operationUnion = 0,
		/**
		Create regions where subject polygons are filled except where clip polygons are filled.
		*/
		operationDifference = 1,
		/**
		Create regions where both subject and clip polygons are filled.
		*/
		operationIntersection = 2,
		/**
		Create regions where either subject or clip polygons are filled but not where both are filled.
		*/
		operationXor = 3,
	}
	/// 
	enum PolyJoinType : int
	{
		/**
		Squaring is applied uniformally at all convex edge joins at `1 * delta`.
		*/
		joinSquare = 0,
		/**
		While flattened paths can never perfectly trace an arc, they are approximated by a series of arc chords.
		*/
		joinRound = 1,
		/**
		There's a necessary limit to mitered joins since offsetting edges that join at very acute angles will produce excessively long and narrow "spikes". For any given edge join, when miter offsetting would exceed that maximum distance, "square" joining is applied.
		*/
		joinMiter = 2,
	}
	/// 
	enum Constants : int
	{
		endPolygon = 0,
		operationUnion = 0,
		joinSquare = 0,
		endJoined = 1,
		operationDifference = 1,
		joinRound = 1,
		endButt = 2,
		joinMiter = 2,
		operationIntersection = 2,
		endSquare = 3,
		operationXor = 3,
		endRound = 4,
	}
	/**
	Returns an array with 6 $(D Plane)s that describe the sides of a box centered at the origin. The box size is defined by `extents`, which represents one (positive) corner of the box (i.e. half its actual size).
	*/
	Array buildBoxPlanes(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.buildBoxPlanes, _godot_object, extents);
	}
	/**
	Returns an array of $(D Plane)s closely bounding a faceted capsule centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the side part of the capsule, whereas `lats` gives the number of latitudinal steps at the bottom and top of the capsule. The parameter `axis` describes the axis along which the capsule is oriented (0 for X, 1 for Y, 2 for Z).
	*/
	Array buildCapsulePlanes(in double radius, in double height, in long sides, in long lats, in long axis = 2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.buildCapsulePlanes, _godot_object, radius, height, sides, lats, axis);
	}
	/**
	Returns an array of $(D Plane)s closely bounding a faceted cylinder centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the round part of the cylinder. The parameter `axis` describes the axis along which the cylinder is oriented (0 for X, 1 for Y, 2 for Z).
	*/
	Array buildCylinderPlanes(in double radius, in double height, in long sides, in long axis = 2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.buildCylinderPlanes, _godot_object, radius, height, sides, axis);
	}
	/**
	Clips the polygon defined by the points in `points` against the `plane` and returns the points of the clipped polygon.
	*/
	PoolVector3Array clipPolygon(in PoolVector3Array points, in Plane plane)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.clipPolygon, _godot_object, points, plane);
	}
	/**
	Clips `polygon_a` against `polygon_b` and returns an array of clipped polygons. This performs $(D constant OPERATION_DIFFERENCE) between polygons. Returns an empty array if `polygon_b` completely overlaps `polygon_a`.
	If `polygon_b` is enclosed by `polygon_a`, returns an outer polygon (boundary) and inner polygon (hole) which could be distinguished by calling $(D isPolygonClockwise).
	*/
	Array clipPolygons2d(in PoolVector2Array polygon_a, in PoolVector2Array polygon_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.clipPolygons2d, _godot_object, polygon_a, polygon_b);
	}
	/**
	Clips `polyline` against `polygon` and returns an array of clipped polylines. This performs $(D constant OPERATION_DIFFERENCE) between the polyline and the polygon. This operation can be thought of as cutting a line with a closed shape.
	*/
	Array clipPolylineWithPolygon2d(in PoolVector2Array polyline, in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.clipPolylineWithPolygon2d, _godot_object, polyline, polygon);
	}
	/**
	Given an array of $(D Vector2)s, returns the convex hull as a list of points in counterclockwise order. The last point is the same as the first one.
	*/
	PoolVector2Array convexHull2d(in PoolVector2Array points)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.convexHull2d, _godot_object, points);
	}
	/**
	Mutually excludes common area defined by intersection of `polygon_a` and `polygon_b` (see $(D intersectPolygons2d)) and returns an array of excluded polygons. This performs $(D constant OPERATION_XOR) between polygons. In other words, returns all but common area between polygons.
	The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling $(D isPolygonClockwise).
	*/
	Array excludePolygons2d(in PoolVector2Array polygon_a, in PoolVector2Array polygon_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.excludePolygons2d, _godot_object, polygon_a, polygon_b);
	}
	/**
	Returns the 3D point on the 3D segment (`s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.
	*/
	Vector3 getClosestPointToSegment(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getClosestPointToSegment, _godot_object, point, s1, s2);
	}
	/**
	Returns the 2D point on the 2D segment (`s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.
	*/
	Vector2 getClosestPointToSegment2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getClosestPointToSegment2d, _godot_object, point, s1, s2);
	}
	/**
	Returns the 3D point on the 3D line defined by (`s1`, `s2`) that is closest to `point`. The returned point can be inside the segment (`s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.
	*/
	Vector3 getClosestPointToSegmentUncapped(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getClosestPointToSegmentUncapped, _godot_object, point, s1, s2);
	}
	/**
	Returns the 2D point on the 2D line defined by (`s1`, `s2`) that is closest to `point`. The returned point can be inside the segment (`s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.
	*/
	Vector2 getClosestPointToSegmentUncapped2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getClosestPointToSegmentUncapped2d, _godot_object, point, s1, s2);
	}
	/**
	Given the two 3D segments (`p1`, `p2`) and (`q1`, `q2`), finds those two points on the two segments that are closest to each other. Returns a $(D PoolVector3Array) that contains this point on (`p1`, `p2`) as well the accompanying point on (`q1`, `q2`).
	*/
	PoolVector3Array getClosestPointsBetweenSegments(in Vector3 p1, in Vector3 p2, in Vector3 q1, in Vector3 q2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getClosestPointsBetweenSegments, _godot_object, p1, p2, q1, q2);
	}
	/**
	Given the two 2D segments (`p1`, `q1`) and (`p2`, `q2`), finds those two points on the two segments that are closest to each other. Returns a $(D PoolVector2Array) that contains this point on (`p1`, `q1`) as well the accompanying point on (`p2`, `q2`).
	*/
	PoolVector2Array getClosestPointsBetweenSegments2d(in Vector2 p1, in Vector2 q1, in Vector2 p2, in Vector2 q2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getClosestPointsBetweenSegments2d, _godot_object, p1, q1, p2, q2);
	}
	/**
	Used internally by the engine.
	*/
	long getUv84NormalBit(in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getUv84NormalBit, _godot_object, normal);
	}
	/**
	Intersects `polygon_a` with `polygon_b` and returns an array of intersected polygons. This performs $(D constant OPERATION_INTERSECTION) between polygons. In other words, returns common area shared by polygons. Returns an empty array if no intersection occurs.
	The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling $(D isPolygonClockwise).
	*/
	Array intersectPolygons2d(in PoolVector2Array polygon_a, in PoolVector2Array polygon_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.intersectPolygons2d, _godot_object, polygon_a, polygon_b);
	}
	/**
	Intersects `polyline` with `polygon` and returns an array of intersected polylines. This performs $(D constant OPERATION_INTERSECTION) between the polyline and the polygon. This operation can be thought of as chopping a line with a closed shape.
	*/
	Array intersectPolylineWithPolygon2d(in PoolVector2Array polyline, in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.intersectPolylineWithPolygon2d, _godot_object, polyline, polygon);
	}
	/**
	Returns `true` if `point` is inside the circle or if it's located exactly $(I on) the circle's boundary, otherwise returns `false`.
	*/
	bool isPointInCircle(in Vector2 point, in Vector2 circle_position, in double circle_radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPointInCircle, _godot_object, point, circle_position, circle_radius);
	}
	/**
	Returns `true` if `point` is inside `polygon` or if it's located exactly $(I on) polygon's boundary, otherwise returns `false`.
	*/
	bool isPointInPolygon(in Vector2 point, in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPointInPolygon, _godot_object, point, polygon);
	}
	/**
	Returns `true` if `polygon`'s vertices are ordered in clockwise order, otherwise returns `false`.
	*/
	bool isPolygonClockwise(in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPolygonClockwise, _godot_object, polygon);
	}
	/**
	Checks if the two lines (`from_a`, `dir_a`) and (`from_b`, `dir_b`) intersect. If yes, return the point of intersection as $(D Vector2). If no intersection takes place, returns an empty $(D Variant).
	$(B Note:) The lines are specified using direction vectors, not end points.
	*/
	Variant lineIntersectsLine2d(in Vector2 from_a, in Vector2 dir_a, in Vector2 from_b, in Vector2 dir_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.lineIntersectsLine2d, _godot_object, from_a, dir_a, from_b, dir_b);
	}
	/**
	Given an array of $(D Vector2)s representing tiles, builds an atlas. The returned dictionary has two keys: `points` is a vector of $(D Vector2) that specifies the positions of each tile, `size` contains the overall size of the whole atlas as $(D Vector2).
	*/
	Dictionary makeAtlas(in PoolVector2Array sizes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.makeAtlas, _godot_object, sizes);
	}
	/**
	Merges (combines) `polygon_a` and `polygon_b` and returns an array of merged polygons. This performs $(D constant OPERATION_UNION) between polygons.
	The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling $(D isPolygonClockwise).
	*/
	Array mergePolygons2d(in PoolVector2Array polygon_a, in PoolVector2Array polygon_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.mergePolygons2d, _godot_object, polygon_a, polygon_b);
	}
	/**
	Inflates or deflates `polygon` by `delta` units (pixels). If `delta` is positive, makes the polygon grow outward. If `delta` is negative, shrinks the polygon inward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. Returns an empty array if `delta` is negative and the absolute value of it approximately exceeds the minimum bounding rectangle dimensions of the polygon.
	Each polygon's vertices will be rounded as determined by `join_type`, see $(D polyjointype).
	The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling $(D isPolygonClockwise).
	$(B Note:) To translate the polygon's vertices specifically, use the $(D Transform2D.xform) method:
	
	
	var polygon = PoolVector2Array($(D Vector2(0, 0), Vector2(100, 0), Vector2(100, 100), Vector2(0, 100)))
	var offset = Vector2(50, 50)
	polygon = Transform2D(0, offset).xform(polygon)
	print(polygon) # prints $(D Vector2(50, 50), Vector2(150, 50), Vector2(150, 150), Vector2(50, 150))
	
	
	*/
	Array offsetPolygon2d(in PoolVector2Array polygon, in double delta, in long join_type = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.offsetPolygon2d, _godot_object, polygon, delta, join_type);
	}
	/**
	Inflates or deflates `polyline` by `delta` units (pixels), producing polygons. If `delta` is positive, makes the polyline grow outward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. If `delta` is negative, returns an empty array.
	Each polygon's vertices will be rounded as determined by `join_type`, see $(D polyjointype).
	Each polygon's endpoints will be rounded as determined by `end_type`, see $(D polyendtype).
	The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling $(D isPolygonClockwise).
	*/
	Array offsetPolyline2d(in PoolVector2Array polyline, in double delta, in long join_type = 0, in long end_type = 3)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.offsetPolyline2d, _godot_object, polyline, delta, join_type, end_type);
	}
	/**
	Returns if `point` is inside the triangle specified by `a`, `b` and `c`.
	*/
	bool pointIsInsideTriangle(in Vector2 point, in Vector2 a, in Vector2 b, in Vector2 c) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.pointIsInsideTriangle, _godot_object, point, a, b, c);
	}
	/**
	Tests if the 3D ray starting at `from` with the direction of `dir` intersects the triangle specified by `a`, `b` and `c`. If yes, returns the point of intersection as $(D Vector3). If no intersection takes place, an empty $(D Variant) is returned.
	*/
	Variant rayIntersectsTriangle(in Vector3 from, in Vector3 dir, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.rayIntersectsTriangle, _godot_object, from, dir, a, b, c);
	}
	/**
	Given the 2D segment (`segment_from`, `segment_to`), returns the position on the segment (as a number between 0 and 1) at which the segment hits the circle that is located at position `circle_position` and has radius `circle_radius`. If the segment does not intersect the circle, -1 is returned (this is also the case if the line extending the segment would intersect the circle, but the segment does not).
	*/
	double segmentIntersectsCircle(in Vector2 segment_from, in Vector2 segment_to, in Vector2 circle_position, in double circle_radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.segmentIntersectsCircle, _godot_object, segment_from, segment_to, circle_position, circle_radius);
	}
	/**
	Given a convex hull defined though the $(D Plane)s in the array `planes`, tests if the segment (`from`, `to`) intersects with that hull. If an intersection is found, returns a $(D PoolVector3Array) containing the point the intersection and the hull's normal. If no intersecion is found, an the returned array is empty.
	*/
	PoolVector3Array segmentIntersectsConvex(in Vector3 from, in Vector3 to, in Array planes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.segmentIntersectsConvex, _godot_object, from, to, planes);
	}
	/**
	Checks if the segment (`from`, `to`) intersects the cylinder with height `height` that is centered at the origin and has radius `radius`. If no, returns an empty $(D PoolVector3Array). If an intersection takes place, the returned array contains the point of intersection and the cylinder's normal at the point of intersection.
	*/
	PoolVector3Array segmentIntersectsCylinder(in Vector3 from, in Vector3 to, in double height, in double radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.segmentIntersectsCylinder, _godot_object, from, to, height, radius);
	}
	/**
	Checks if the two segments (`from_a`, `to_a`) and (`from_b`, `to_b`) intersect. If yes, return the point of intersection as $(D Vector2). If no intersection takes place, returns an empty $(D Variant).
	*/
	Variant segmentIntersectsSegment2d(in Vector2 from_a, in Vector2 to_a, in Vector2 from_b, in Vector2 to_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.segmentIntersectsSegment2d, _godot_object, from_a, to_a, from_b, to_b);
	}
	/**
	Checks if the segment (`from`, `to`) intersects the sphere that is located at `sphere_position` and has radius `sphere_radius`. If no, returns an empty $(D PoolVector3Array). If yes, returns a $(D PoolVector3Array) containing the point of intersection and the sphere's normal at the point of intersection.
	*/
	PoolVector3Array segmentIntersectsSphere(in Vector3 from, in Vector3 to, in Vector3 sphere_position, in double sphere_radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.segmentIntersectsSphere, _godot_object, from, to, sphere_position, sphere_radius);
	}
	/**
	Tests if the segment (`from`, `to`) intersects the triangle `a`, `b`, `c`. If yes, returns the point of intersection as $(D Vector3). If no intersection takes place, an empty $(D Variant) is returned.
	*/
	Variant segmentIntersectsTriangle(in Vector3 from, in Vector3 to, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.segmentIntersectsTriangle, _godot_object, from, to, a, b, c);
	}
	/**
	Triangulates the area specified by discrete set of `points` such that no point is inside the circumcircle of any resulting triangle. Returns a $(D PoolIntArray) where each triangle consists of three consecutive point indices into `points` (i.e. the returned array will have `n * 3` elements, with `n` being the number of found triangles). If the triangulation did not succeed, an empty $(D PoolIntArray) is returned.
	*/
	PoolIntArray triangulateDelaunay2d(in PoolVector2Array points)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.triangulateDelaunay2d, _godot_object, points);
	}
	/**
	Triangulates the polygon specified by the points in `polygon`. Returns a $(D PoolIntArray) where each triangle consists of three consecutive point indices into `polygon` (i.e. the returned array will have `n * 3` elements, with `n` being the number of found triangles). If the triangulation did not succeed, an empty $(D PoolIntArray) is returned.
	*/
	PoolIntArray triangulatePolygon(in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.triangulatePolygon, _godot_object, polygon);
	}
}
/// Returns: the GeometrySingleton
@property @nogc nothrow pragma(inline, true)
GeometrySingleton Geometry()
{
	checkClassBinding!GeometrySingleton();
	return GeometrySingleton(GeometrySingleton.GDNativeClassBinding._singleton);
}
