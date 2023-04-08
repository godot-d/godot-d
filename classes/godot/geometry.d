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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
/**

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
		/** */
		endPolygon = 0,
		/** */
		endJoined = 1,
		/** */
		endButt = 2,
		/** */
		endSquare = 3,
		/** */
		endRound = 4,
	}
	/// 
	enum PolyBooleanOperation : int
	{
		/** */
		operationUnion = 0,
		/** */
		operationDifference = 1,
		/** */
		operationIntersection = 2,
		/** */
		operationXor = 3,
	}
	/// 
	enum PolyJoinType : int
	{
		/** */
		joinSquare = 0,
		/** */
		joinRound = 1,
		/** */
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
	
	*/
	Array buildBoxPlanes(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.buildBoxPlanes, _godot_object, extents);
	}
	/**
	
	*/
	Array buildCapsulePlanes(in double radius, in double height, in long sides, in long lats, in long axis = 2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.buildCapsulePlanes, _godot_object, radius, height, sides, lats, axis);
	}
	/**
	
	*/
	Array buildCylinderPlanes(in double radius, in double height, in long sides, in long axis = 2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.buildCylinderPlanes, _godot_object, radius, height, sides, axis);
	}
	/**
	
	*/
	PoolVector3Array clipPolygon(in PoolVector3Array points, in Plane plane)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.clipPolygon, _godot_object, points, plane);
	}
	/**
	
	*/
	Array clipPolygons2d(in PoolVector2Array polygon_a, in PoolVector2Array polygon_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.clipPolygons2d, _godot_object, polygon_a, polygon_b);
	}
	/**
	
	*/
	Array clipPolylineWithPolygon2d(in PoolVector2Array polyline, in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.clipPolylineWithPolygon2d, _godot_object, polyline, polygon);
	}
	/**
	
	*/
	PoolVector2Array convexHull2d(in PoolVector2Array points)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.convexHull2d, _godot_object, points);
	}
	/**
	
	*/
	Array excludePolygons2d(in PoolVector2Array polygon_a, in PoolVector2Array polygon_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.excludePolygons2d, _godot_object, polygon_a, polygon_b);
	}
	/**
	
	*/
	Vector3 getClosestPointToSegment(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getClosestPointToSegment, _godot_object, point, s1, s2);
	}
	/**
	
	*/
	Vector2 getClosestPointToSegment2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getClosestPointToSegment2d, _godot_object, point, s1, s2);
	}
	/**
	
	*/
	Vector3 getClosestPointToSegmentUncapped(in Vector3 point, in Vector3 s1, in Vector3 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getClosestPointToSegmentUncapped, _godot_object, point, s1, s2);
	}
	/**
	
	*/
	Vector2 getClosestPointToSegmentUncapped2d(in Vector2 point, in Vector2 s1, in Vector2 s2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getClosestPointToSegmentUncapped2d, _godot_object, point, s1, s2);
	}
	/**
	
	*/
	PoolVector3Array getClosestPointsBetweenSegments(in Vector3 p1, in Vector3 p2, in Vector3 q1, in Vector3 q2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getClosestPointsBetweenSegments, _godot_object, p1, p2, q1, q2);
	}
	/**
	
	*/
	PoolVector2Array getClosestPointsBetweenSegments2d(in Vector2 p1, in Vector2 q1, in Vector2 p2, in Vector2 q2)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getClosestPointsBetweenSegments2d, _godot_object, p1, q1, p2, q2);
	}
	/**
	
	*/
	long getUv84NormalBit(in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getUv84NormalBit, _godot_object, normal);
	}
	/**
	
	*/
	Array intersectPolygons2d(in PoolVector2Array polygon_a, in PoolVector2Array polygon_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.intersectPolygons2d, _godot_object, polygon_a, polygon_b);
	}
	/**
	
	*/
	Array intersectPolylineWithPolygon2d(in PoolVector2Array polyline, in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.intersectPolylineWithPolygon2d, _godot_object, polyline, polygon);
	}
	/**
	
	*/
	bool isPointInCircle(in Vector2 point, in Vector2 circle_position, in double circle_radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPointInCircle, _godot_object, point, circle_position, circle_radius);
	}
	/**
	
	*/
	bool isPointInPolygon(in Vector2 point, in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPointInPolygon, _godot_object, point, polygon);
	}
	/**
	
	*/
	bool isPolygonClockwise(in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPolygonClockwise, _godot_object, polygon);
	}
	/**
	
	*/
	Variant lineIntersectsLine2d(in Vector2 from_a, in Vector2 dir_a, in Vector2 from_b, in Vector2 dir_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.lineIntersectsLine2d, _godot_object, from_a, dir_a, from_b, dir_b);
	}
	/**
	
	*/
	Dictionary makeAtlas(in PoolVector2Array sizes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.makeAtlas, _godot_object, sizes);
	}
	/**
	
	*/
	Array mergePolygons2d(in PoolVector2Array polygon_a, in PoolVector2Array polygon_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.mergePolygons2d, _godot_object, polygon_a, polygon_b);
	}
	/**
	
	*/
	Array offsetPolygon2d(in PoolVector2Array polygon, in double delta, in long join_type = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.offsetPolygon2d, _godot_object, polygon, delta, join_type);
	}
	/**
	
	*/
	Array offsetPolyline2d(in PoolVector2Array polyline, in double delta, in long join_type = 0, in long end_type = 3)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.offsetPolyline2d, _godot_object, polyline, delta, join_type, end_type);
	}
	/**
	
	*/
	bool pointIsInsideTriangle(in Vector2 point, in Vector2 a, in Vector2 b, in Vector2 c) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.pointIsInsideTriangle, _godot_object, point, a, b, c);
	}
	/**
	
	*/
	Variant rayIntersectsTriangle(in Vector3 from, in Vector3 dir, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.rayIntersectsTriangle, _godot_object, from, dir, a, b, c);
	}
	/**
	
	*/
	double segmentIntersectsCircle(in Vector2 segment_from, in Vector2 segment_to, in Vector2 circle_position, in double circle_radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.segmentIntersectsCircle, _godot_object, segment_from, segment_to, circle_position, circle_radius);
	}
	/**
	
	*/
	PoolVector3Array segmentIntersectsConvex(in Vector3 from, in Vector3 to, in Array planes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.segmentIntersectsConvex, _godot_object, from, to, planes);
	}
	/**
	
	*/
	PoolVector3Array segmentIntersectsCylinder(in Vector3 from, in Vector3 to, in double height, in double radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.segmentIntersectsCylinder, _godot_object, from, to, height, radius);
	}
	/**
	
	*/
	Variant segmentIntersectsSegment2d(in Vector2 from_a, in Vector2 to_a, in Vector2 from_b, in Vector2 to_b)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.segmentIntersectsSegment2d, _godot_object, from_a, to_a, from_b, to_b);
	}
	/**
	
	*/
	PoolVector3Array segmentIntersectsSphere(in Vector3 from, in Vector3 to, in Vector3 sphere_position, in double sphere_radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.segmentIntersectsSphere, _godot_object, from, to, sphere_position, sphere_radius);
	}
	/**
	
	*/
	Variant segmentIntersectsTriangle(in Vector3 from, in Vector3 to, in Vector3 a, in Vector3 b, in Vector3 c)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.segmentIntersectsTriangle, _godot_object, from, to, a, b, c);
	}
	/**
	
	*/
	PoolIntArray triangulateDelaunay2d(in PoolVector2Array points)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.triangulateDelaunay2d, _godot_object, points);
	}
	/**
	
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
