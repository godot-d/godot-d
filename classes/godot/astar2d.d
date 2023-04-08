/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.astar2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.reference;
/**

*/
@GodotBaseClass struct AStar2D
{
	package(godot) enum string _GODOT_internal_name = "AStar2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_compute_cost") GodotMethod!(double, long, long) _computeCost;
		@GodotName("_estimate_cost") GodotMethod!(double, long, long) _estimateCost;
		@GodotName("add_point") GodotMethod!(void, long, Vector2, double) addPoint;
		@GodotName("are_points_connected") GodotMethod!(bool, long, long, bool) arePointsConnected;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("connect_points") GodotMethod!(void, long, long, bool) connectPoints;
		@GodotName("disconnect_points") GodotMethod!(void, long, long, bool) disconnectPoints;
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
	/// 
	pragma(inline, true) bool opEquals(in AStar2D other) const
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
	/// Construct a new instance of AStar2D.
	/// Note: use `memnew!AStar2D` instead.
	static AStar2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AStar2D");
		if(constructor is null) return typeof(this).init;
		return cast(AStar2D)(constructor());
	}
	/**
	
	*/
	double _computeCost(in long from_id, in long to_id)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(from_id);
		_GODOT_args.append(to_id);
		String _GODOT_method_name = String("_compute_cost");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	double _estimateCost(in long from_id, in long to_id)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(from_id);
		_GODOT_args.append(to_id);
		String _GODOT_method_name = String("_estimate_cost");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	void addPoint(in long id, in Vector2 position, in double weight_scale = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPoint, _godot_object, id, position, weight_scale);
	}
	/**
	
	*/
	bool arePointsConnected(in long id, in long to_id, in bool bidirectional = true) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.arePointsConnected, _godot_object, id, to_id, bidirectional);
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	void connectPoints(in long id, in long to_id, in bool bidirectional = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.connectPoints, _godot_object, id, to_id, bidirectional);
	}
	/**
	
	*/
	void disconnectPoints(in long id, in long to_id, in bool bidirectional = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnectPoints, _godot_object, id, to_id, bidirectional);
	}
	/**
	
	*/
	long getAvailablePointId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAvailablePointId, _godot_object);
	}
	/**
	
	*/
	long getClosestPoint(in Vector2 to_position, in bool include_disabled = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getClosestPoint, _godot_object, to_position, include_disabled);
	}
	/**
	
	*/
	Vector2 getClosestPositionInSegment(in Vector2 to_position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getClosestPositionInSegment, _godot_object, to_position);
	}
	/**
	
	*/
	PoolIntArray getIdPath(in long from_id, in long to_id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getIdPath, _godot_object, from_id, to_id);
	}
	/**
	
	*/
	long getPointCapacity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPointCapacity, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getPointConnections(in long id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getPointConnections, _godot_object, id);
	}
	/**
	
	*/
	long getPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPointCount, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getPointPath(in long from_id, in long to_id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getPointPath, _godot_object, from_id, to_id);
	}
	/**
	
	*/
	Vector2 getPointPosition(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPointPosition, _godot_object, id);
	}
	/**
	
	*/
	double getPointWeightScale(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPointWeightScale, _godot_object, id);
	}
	/**
	
	*/
	Array getPoints()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getPoints, _godot_object);
	}
	/**
	
	*/
	bool hasPoint(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasPoint, _godot_object, id);
	}
	/**
	
	*/
	bool isPointDisabled(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPointDisabled, _godot_object, id);
	}
	/**
	
	*/
	void removePoint(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removePoint, _godot_object, id);
	}
	/**
	
	*/
	void reserveSpace(in long num_nodes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reserveSpace, _godot_object, num_nodes);
	}
	/**
	
	*/
	void setPointDisabled(in long id, in bool disabled = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointDisabled, _godot_object, id, disabled);
	}
	/**
	
	*/
	void setPointPosition(in long id, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointPosition, _godot_object, id, position);
	}
	/**
	
	*/
	void setPointWeightScale(in long id, in double weight_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointWeightScale, _godot_object, id, weight_scale);
	}
}
