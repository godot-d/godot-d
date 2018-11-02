/**
AStar class representation that uses vectors as edges.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.astar;
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
AStar class representation that uses vectors as edges.

A* (A star) is a computer algorithm that is widely used in pathfinding and graph traversal, the process of plotting an efficiently directed path between multiple points. It enjoys widespread use due to its performance and accuracy. Godot's A* implementation make use of vectors as points.
You must add points manually with $(D AStar.addPoint) and create segments manually with $(D AStar.connectPoints). So you can test if there is a path between two points with the $(D AStar.arePointsConnected) function, get the list of existing ids in the found path with $(D AStar.getIdPath), or the points list with $(D AStar.getPointPath).
*/
@GodotBaseClass struct AStar
{
	enum string _GODOT_internal_name = "AStar";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_estimate_cost") GodotMethod!(double, long, long) _estimateCost;
		@GodotName("_compute_cost") GodotMethod!(double, long, long) _computeCost;
		@GodotName("get_available_point_id") GodotMethod!(long) getAvailablePointId;
		@GodotName("add_point") GodotMethod!(void, long, Vector3, double) addPoint;
		@GodotName("get_point_position") GodotMethod!(Vector3, long) getPointPosition;
		@GodotName("set_point_position") GodotMethod!(void, long, Vector3) setPointPosition;
		@GodotName("get_point_weight_scale") GodotMethod!(double, long) getPointWeightScale;
		@GodotName("set_point_weight_scale") GodotMethod!(void, long, double) setPointWeightScale;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("has_point") GodotMethod!(bool, long) hasPoint;
		@GodotName("get_points") GodotMethod!(Array) getPoints;
		@GodotName("get_point_connections") GodotMethod!(PoolIntArray, long) getPointConnections;
		@GodotName("connect_points") GodotMethod!(void, long, long, bool) connectPoints;
		@GodotName("disconnect_points") GodotMethod!(void, long, long) disconnectPoints;
		@GodotName("are_points_connected") GodotMethod!(bool, long, long) arePointsConnected;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_closest_point") GodotMethod!(long, Vector3) getClosestPoint;
		@GodotName("get_closest_position_in_segment") GodotMethod!(Vector3, Vector3) getClosestPositionInSegment;
		@GodotName("get_point_path") GodotMethod!(PoolVector3Array, long, long) getPointPath;
		@GodotName("get_id_path") GodotMethod!(PoolIntArray, long, long) getIdPath;
	}
	bool opEquals(in AStar other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AStar opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AStar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AStar");
		if(constructor is null) return typeof(this).init;
		return cast(AStar)(constructor());
	}
	@disable new(size_t s);
	/**
	Called when estimating the cost between a point and the path's ending point.
	*/
	double _estimateCost(in long from_id, in long to_id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(from_id);
		_GODOT_args.append(to_id);
		String _GODOT_method_name = String("_estimate_cost");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	Called when computing the cost between two connected points.
	*/
	double _computeCost(in long from_id, in long to_id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(from_id);
		_GODOT_args.append(to_id);
		String _GODOT_method_name = String("_compute_cost");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	Returns the next available point id with no point associated to it.
	*/
	long getAvailablePointId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAvailablePointId, _godot_object);
	}
	/**
	Adds a new point at the given position with the given identifier. The algorithm prefers points with lower `weight_scale` to form a path. The `id` must be 0 or larger, and the `weight_scale` must be 1 or larger.
	
	
	var as = AStar.new()
	
	as.add_point(1, Vector3(1,0,0), 4) # Adds the point (1,0,0) with weight_scale=4 and id=1
	
	
	If there already exists a point for the given id, its position and weight scale are updated to the given values.
	*/
	void addPoint(in long id, in Vector3 position, in double weight_scale = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPoint, _godot_object, id, position, weight_scale);
	}
	/**
	Returns the position of the point associated with the given id.
	*/
	Vector3 getPointPosition(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getPointPosition, _godot_object, id);
	}
	/**
	Sets the position for the point with the given id.
	*/
	void setPointPosition(in long id, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointPosition, _godot_object, id, position);
	}
	/**
	Returns the weight scale of the point associated with the given id.
	*/
	double getPointWeightScale(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPointWeightScale, _godot_object, id);
	}
	/**
	Sets the `weight_scale` for the point with the given id.
	*/
	void setPointWeightScale(in long id, in double weight_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointWeightScale, _godot_object, id, weight_scale);
	}
	/**
	Removes the point associated with the given id from the points pool.
	*/
	void removePoint(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removePoint, _godot_object, id);
	}
	/**
	Returns whether a point associated with the given id exists.
	*/
	bool hasPoint(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasPoint, _godot_object, id);
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
	Returns an array with the ids of the points that form the connect with the given point.
	
	
	var as = AStar.new()
	
	as.add_point(1, Vector3(0,0,0))
	as.add_point(2, Vector3(0,1,0))
	as.add_point(3, Vector3(1,1,0))
	as.add_point(4, Vector3(2,0,0))
	
	as.connect_points(1, 2, true)
	as.connect_points(1, 3, true)
	
	var neighbors = as.get_point_connections(1) # returns $(D 2, 3)
	
	
	*/
	PoolIntArray getPointConnections(in long id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getPointConnections, _godot_object, id);
	}
	/**
	Creates a segment between the given points.
	
	
	var as = AStar.new()
	
	as.add_point(1, Vector3(1,1,0))
	as.add_point(2, Vector3(0,5,0))
	
	as.connect_points(1, 2, false) # If bidirectional=false it's only possible to go from point 1 to point 2
	                               # and not from point 2 to point 1.
	
	
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
	Returns the id of the closest point to `to_position`. Returns -1 if there are no points in the points pool.
	*/
	long getClosestPoint(in Vector3 to_position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getClosestPoint, _godot_object, to_position);
	}
	/**
	Returns the closest position to `to_position` that resides inside a segment between two connected points.
	
	
	var as = AStar.new()
	
	as.add_point(1, Vector3(0,0,0))
	as.add_point(2, Vector3(0,5,0))
	
	as.connect_points(1, 2)
	
	var res = as.get_closest_position_in_segment(Vector3(3,3,0)) # returns (0, 3, 0)
	
	
	The result is in the segment that goes from `y=0` to `y=5`. It's the closest position in the segment to the given point.
	*/
	Vector3 getClosestPositionInSegment(in Vector3 to_position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getClosestPositionInSegment, _godot_object, to_position);
	}
	/**
	Returns an array with the points that are in the path found by AStar between the given points. The array is ordered from the starting point to the ending point of the path.
	*/
	PoolVector3Array getPointPath(in long from_id, in long to_id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.getPointPath, _godot_object, from_id, to_id);
	}
	/**
	Returns an array with the ids of the points that form the path found by AStar between the given points. The array is ordered from the starting point to the ending point of the path.
	
	
	var as = AStar.new()
	
	as.add_point(1, Vector3(0,0,0))
	as.add_point(2, Vector3(0,1,0), 1) # default weight is 1
	as.add_point(3, Vector3(1,1,0))
	as.add_point(4, Vector3(2,0,0))
	
	as.connect_points(1, 2, false)
	as.connect_points(2, 3, false)
	as.connect_points(4, 3, false)
	as.connect_points(1, 4, false)
	as.connect_points(5, 4, false)
	
	var res = as.get_id_path(1, 3) # returns $(D 1, 2, 3)
	
	
	If you change the 2nd point's weight to 3, then the result will be `$(D 1, 4, 3)` instead, because now even though the distance is longer, it's "easier" to get through point 4 than through point 2.
	*/
	PoolIntArray getIdPath(in long from_id, in long to_id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getIdPath, _godot_object, from_id, to_id);
	}
}
