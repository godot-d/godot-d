/**
AStar class representation that uses 2D vectors as edges.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.astar2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
AStar class representation that uses 2D vectors as edges.

This is a wrapper for the $(D AStar) class which uses 2D vectors instead of 3D vectors.
*/
@GodotBaseClass struct AStar2D
{
	enum string _GODOT_internal_name = "AStar2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_point") GodotMethod!(void, long, Vector2, double) addPoint;
		@GodotName("are_points_connected") GodotMethod!(bool, long, long) arePointsConnected;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("connect_points") GodotMethod!(void, long, long, bool) connectPoints;
		@GodotName("disconnect_points") GodotMethod!(void, long, long) disconnectPoints;
		@GodotName("get_available_point_id") GodotMethod!(long) getAvailablePointId;
		@GodotName("get_closest_point") GodotMethod!(long, Vector2, bool) getClosestPoint;
		@GodotName("get_closest_position_in_segment") GodotMethod!(Vector2, Vector2) getClosestPositionInSegment;
		@GodotName("get_id_path") GodotMethod!(PoolIntArray, long, long) getIdPath;
		@GodotName("get_point_capacity") GodotMethod!(long) getPointCapacity;
		@GodotName("get_point_connections") GodotMethod!(PoolIntArray, long) getPointConnections;
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("get_point_path") GodotMethod!(PoolVector2Array, long, long) getPointPath;
		@GodotName("get_point_position") GodotMethod!(Vector2, long) getPointPosition;
		@GodotName("get_point_weight_scale") GodotMethod!(double, long) getPointWeightScale;
		@GodotName("get_points") GodotMethod!(Array) getPoints;
		@GodotName("has_point") GodotMethod!(bool, long) hasPoint;
		@GodotName("is_point_disabled") GodotMethod!(bool, long) isPointDisabled;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("reserve_space") GodotMethod!(void, long) reserveSpace;
		@GodotName("set_point_disabled") GodotMethod!(void, long, bool) setPointDisabled;
		@GodotName("set_point_position") GodotMethod!(void, long, Vector2) setPointPosition;
		@GodotName("set_point_weight_scale") GodotMethod!(void, long, double) setPointWeightScale;
	}
	bool opEquals(in AStar2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AStar2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AStar2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AStar2D");
		if(constructor is null) return typeof(this).init;
		return cast(AStar2D)(constructor());
	}
	@disable new(size_t s);
	/**
	Adds a new point at the given position with the given identifier. The algorithm prefers points with lower `weight_scale` to form a path. The `id` must be 0 or larger, and the `weight_scale` must be 1 or larger.
	
	
	var astar = AStar2D.new()
	astar.add_point(1, Vector2(1, 0), 4) # Adds the point (1, 0) with weight_scale 4 and id 1
	
	
	If there already exists a point for the given `id`, its position and weight scale are updated to the given values.
	*/
	void addPoint(in long id, in Vector2 position, in double weight_scale = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPoint, _godot_object, id, position, weight_scale);
	}
	/**
	Returns whether there is a connection/segment between the given points.
	*/
	bool arePointsConnected(in long id, in long to_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.arePointsConnected, _godot_object, id, to_id);
	}
	/**
	Clears all the points and segments.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Creates a segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is allowed, not the reverse direction.
	
	
	var astar = AStar2D.new()
	astar.add_point(1, Vector2(1, 1))
	astar.add_point(2, Vector2(0, 5))
	astar.connect_points(1, 2, false)
	
	
	*/
	void connectPoints(in long id, in long to_id, in bool bidirectional = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.connectPoints, _godot_object, id, to_id, bidirectional);
	}
	/**
	Deletes the segment between the given points.
	*/
	void disconnectPoints(in long id, in long to_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectPoints, _godot_object, id, to_id);
	}
	/**
	Returns the next available point ID with no point associated to it.
	*/
	long getAvailablePointId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAvailablePointId, _godot_object);
	}
	/**
	Returns the ID of the closest point to `to_position`, optionally taking disabled points into account. Returns -1 if there are no points in the points pool.
	*/
	long getClosestPoint(in Vector2 to_position, in bool include_disabled = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getClosestPoint, _godot_object, to_position, include_disabled);
	}
	/**
	Returns the closest position to `to_position` that resides inside a segment between two connected points.
	
	
	var astar = AStar2D.new()
	astar.add_point(1, Vector2(0, 0))
	astar.add_point(2, Vector2(0, 5))
	astar.connect_points(1, 2)
	var res = astar.get_closest_position_in_segment(Vector2(3, 3)) # Returns (0, 3)
	
	
	The result is in the segment that goes from `y = 0` to `y = 5`. It's the closest position in the segment to the given point.
	*/
	Vector2 getClosestPositionInSegment(in Vector2 to_position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getClosestPositionInSegment, _godot_object, to_position);
	}
	/**
	Returns an array with the IDs of the points that form the path found by AStar2D between the given points. The array is ordered from the starting point to the ending point of the path.
	
	
	var astar = AStar2D.new()
	astar.add_point(1, Vector2(0, 0))
	astar.add_point(2, Vector2(0, 1), 1) # Default weight is 1
	astar.add_point(3, Vector2(1, 1))
	astar.add_point(4, Vector2(2, 0))
	
	astar.connect_points(1, 2, false)
	astar.connect_points(2, 3, false)
	astar.connect_points(4, 3, false)
	astar.connect_points(1, 4, false)
	
	var res = astar.get_id_path(1, 3) # Returns $(D 1, 2, 3)
	
	
	If you change the 2nd point's weight to 3, then the result will be `$(D 1, 4, 3)` instead, because now even though the distance is longer, it's "easier" to get through point 4 than through point 2.
	*/
	PoolIntArray getIdPath(in long from_id, in long to_id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getIdPath, _godot_object, from_id, to_id);
	}
	/**
	Returns the capacity of the structure backing the points, useful in conjunction with `reserve_space`.
	*/
	long getPointCapacity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPointCapacity, _godot_object);
	}
	/**
	Returns an array with the IDs of the points that form the connection with the given point.
	
	
	var astar = AStar2D.new()
	astar.add_point(1, Vector2(0, 0))
	astar.add_point(2, Vector2(0, 1))
	astar.add_point(3, Vector2(1, 1))
	astar.add_point(4, Vector2(2, 0))
	
	astar.connect_points(1, 2, true)
	astar.connect_points(1, 3, true)
	
	var neighbors = astar.get_point_connections(1) # Returns $(D 2, 3)
	
	
	*/
	PoolIntArray getPointConnections(in long id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getPointConnections, _godot_object, id);
	}
	/**
	Returns the number of points currently in the points pool.
	*/
	long getPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPointCount, _godot_object);
	}
	/**
	Returns an array with the points that are in the path found by AStar2D between the given points. The array is ordered from the starting point to the ending point of the path.
	*/
	PoolVector2Array getPointPath(in long from_id, in long to_id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getPointPath, _godot_object, from_id, to_id);
	}
	/**
	Returns the position of the point associated with the given `id`.
	*/
	Vector2 getPointPosition(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getPointPosition, _godot_object, id);
	}
	/**
	Returns the weight scale of the point associated with the given `id`.
	*/
	double getPointWeightScale(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPointWeightScale, _godot_object, id);
	}
	/**
	Returns an array of all points.
	*/
	Array getPoints()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getPoints, _godot_object);
	}
	/**
	Returns whether a point associated with the given `id` exists.
	*/
	bool hasPoint(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasPoint, _godot_object, id);
	}
	/**
	Returns whether a point is disabled or not for pathfinding. By default, all points are enabled.
	*/
	bool isPointDisabled(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPointDisabled, _godot_object, id);
	}
	/**
	Removes the point associated with the given `id` from the points pool.
	*/
	void removePoint(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removePoint, _godot_object, id);
	}
	/**
	Reserves space internally for `num_nodes` points, useful if you're adding a known large number of points at once, for a grid for instance. New capacity must be greater or equals to old capacity.
	*/
	void reserveSpace(in long num_nodes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reserveSpace, _godot_object, num_nodes);
	}
	/**
	Disables or enables the specified point for pathfinding. Useful for making a temporary obstacle.
	*/
	void setPointDisabled(in long id, in bool disabled = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointDisabled, _godot_object, id, disabled);
	}
	/**
	Sets the `position` for the point with the given `id`.
	*/
	void setPointPosition(in long id, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointPosition, _godot_object, id, position);
	}
	/**
	Sets the `weight_scale` for the point with the given `id`.
	*/
	void setPointWeightScale(in long id, in double weight_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointWeightScale, _godot_object, id, weight_scale);
	}
}
