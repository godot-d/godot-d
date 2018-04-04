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
	static immutable string _GODOT_internal_name = "AStar";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(double, long, long) _GODOT__estimate_cost;
	package(godot) alias _GODOT_methodBindInfo(string name : "_estimate_cost") = _GODOT__estimate_cost;
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
	package(godot) static GodotMethod!(double, long, long) _GODOT__compute_cost;
	package(godot) alias _GODOT_methodBindInfo(string name : "_compute_cost") = _GODOT__compute_cost;
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
	package(godot) static GodotMethod!(long) _GODOT_get_available_point_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_available_point_id") = _GODOT_get_available_point_id;
	/**
	Returns the next available point id with no point associated to it.
	*/
	long getAvailablePointId() const
	{
		_GODOT_get_available_point_id.bind("AStar", "get_available_point_id");
		return ptrcall!(long)(_GODOT_get_available_point_id, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, Vector3, double) _GODOT_add_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_point") = _GODOT_add_point;
	/**
	Adds a new point at the given position with the given identifier. The algorithm prefers points with lower `weight_scale` to form a path. The `id` must be 0 or larger, and the `weight_scale` must be 1 or larger.
	
	
	var as = AStar.new()
	
	as.add_point(1, Vector3(1,0,0), 4) # Adds the point (1,0,0) with weight_scale=4 and id=1
	
	
	If there already exists a point for the given id, its position and weight scale are updated to the given values.
	*/
	void addPoint(in long id, in Vector3 position, in double weight_scale = 1)
	{
		_GODOT_add_point.bind("AStar", "add_point");
		ptrcall!(void)(_GODOT_add_point, _godot_object, id, position, weight_scale);
	}
	package(godot) static GodotMethod!(Vector3, long) _GODOT_get_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_position") = _GODOT_get_point_position;
	/**
	Returns the position of the point associated with the given id.
	*/
	Vector3 getPointPosition(in long id) const
	{
		_GODOT_get_point_position.bind("AStar", "get_point_position");
		return ptrcall!(Vector3)(_GODOT_get_point_position, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, Vector3) _GODOT_set_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_position") = _GODOT_set_point_position;
	/**
	Sets the position for the point with the given id.
	*/
	void setPointPosition(in long id, in Vector3 position)
	{
		_GODOT_set_point_position.bind("AStar", "set_point_position");
		ptrcall!(void)(_GODOT_set_point_position, _godot_object, id, position);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_point_weight_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_weight_scale") = _GODOT_get_point_weight_scale;
	/**
	Returns the weight scale of the point associated with the given id.
	*/
	double getPointWeightScale(in long id) const
	{
		_GODOT_get_point_weight_scale.bind("AStar", "get_point_weight_scale");
		return ptrcall!(double)(_GODOT_get_point_weight_scale, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_point_weight_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_weight_scale") = _GODOT_set_point_weight_scale;
	/**
	Sets the `weight_scale` for the point with the given id.
	*/
	void setPointWeightScale(in long id, in double weight_scale)
	{
		_GODOT_set_point_weight_scale.bind("AStar", "set_point_weight_scale");
		ptrcall!(void)(_GODOT_set_point_weight_scale, _godot_object, id, weight_scale);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_point") = _GODOT_remove_point;
	/**
	Removes the point associated with the given id from the points pool.
	*/
	void removePoint(in long id)
	{
		_GODOT_remove_point.bind("AStar", "remove_point");
		ptrcall!(void)(_GODOT_remove_point, _godot_object, id);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_has_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_point") = _GODOT_has_point;
	/**
	Returns whether a point associated with the given id exists.
	*/
	bool hasPoint(in long id) const
	{
		_GODOT_has_point.bind("AStar", "has_point");
		return ptrcall!(bool)(_GODOT_has_point, _godot_object, id);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_points") = _GODOT_get_points;
	/**
	Returns an array of all points.
	*/
	Array getPoints()
	{
		_GODOT_get_points.bind("AStar", "get_points");
		return ptrcall!(Array)(_GODOT_get_points, _godot_object);
	}
	package(godot) static GodotMethod!(PoolIntArray, long) _GODOT_get_point_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_connections") = _GODOT_get_point_connections;
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
		_GODOT_get_point_connections.bind("AStar", "get_point_connections");
		return ptrcall!(PoolIntArray)(_GODOT_get_point_connections, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, long, bool) _GODOT_connect_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_points") = _GODOT_connect_points;
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
		_GODOT_connect_points.bind("AStar", "connect_points");
		ptrcall!(void)(_GODOT_connect_points, _godot_object, id, to_id, bidirectional);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_disconnect_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_points") = _GODOT_disconnect_points;
	/**
	Deletes the segment between the given points.
	*/
	void disconnectPoints(in long id, in long to_id)
	{
		_GODOT_disconnect_points.bind("AStar", "disconnect_points");
		ptrcall!(void)(_GODOT_disconnect_points, _godot_object, id, to_id);
	}
	package(godot) static GodotMethod!(bool, long, long) _GODOT_are_points_connected;
	package(godot) alias _GODOT_methodBindInfo(string name : "are_points_connected") = _GODOT_are_points_connected;
	/**
	Returns whether there is a connection/segment between the given points.
	*/
	bool arePointsConnected(in long id, in long to_id) const
	{
		_GODOT_are_points_connected.bind("AStar", "are_points_connected");
		return ptrcall!(bool)(_GODOT_are_points_connected, _godot_object, id, to_id);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clears all the points and segments.
	*/
	void clear()
	{
		_GODOT_clear.bind("AStar", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(long, Vector3) _GODOT_get_closest_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point") = _GODOT_get_closest_point;
	/**
	Returns the id of the closest point to `to_position`. Returns -1 if there are no points in the points pool.
	*/
	long getClosestPoint(in Vector3 to_position) const
	{
		_GODOT_get_closest_point.bind("AStar", "get_closest_point");
		return ptrcall!(long)(_GODOT_get_closest_point, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_get_closest_position_in_segment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_position_in_segment") = _GODOT_get_closest_position_in_segment;
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
		_GODOT_get_closest_position_in_segment.bind("AStar", "get_closest_position_in_segment");
		return ptrcall!(Vector3)(_GODOT_get_closest_position_in_segment, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(PoolVector3Array, long, long) _GODOT_get_point_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_path") = _GODOT_get_point_path;
	/**
	Returns an array with the points that are in the path found by AStar between the given points. The array is ordered from the starting point to the ending point of the path.
	*/
	PoolVector3Array getPointPath(in long from_id, in long to_id)
	{
		_GODOT_get_point_path.bind("AStar", "get_point_path");
		return ptrcall!(PoolVector3Array)(_GODOT_get_point_path, _godot_object, from_id, to_id);
	}
	package(godot) static GodotMethod!(PoolIntArray, long, long) _GODOT_get_id_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_id_path") = _GODOT_get_id_path;
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
		_GODOT_get_id_path.bind("AStar", "get_id_path");
		return ptrcall!(PoolIntArray)(_GODOT_get_id_path, _godot_object, from_id, to_id);
	}
}
