/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigation2dserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.navigationpolygon;
/**

*/
@GodotBaseClass struct Navigation2DServerSingleton
{
	package(godot) enum string _GODOT_internal_name = "Navigation2DServer";
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
		immutable char* _singletonName = "Navigation2DServer";
		@GodotName("_emit_map_changed") GodotMethod!(void, RID) _emitMapChanged;
		@GodotName("agent_create") GodotMethod!(RID) agentCreate;
		@GodotName("agent_get_map") GodotMethod!(RID, RID) agentGetMap;
		@GodotName("agent_is_map_changed") GodotMethod!(bool, RID) agentIsMapChanged;
		@GodotName("agent_set_callback") GodotMethod!(void, RID, GodotObject, String, Variant) agentSetCallback;
		@GodotName("agent_set_map") GodotMethod!(void, RID, RID) agentSetMap;
		@GodotName("agent_set_max_neighbors") GodotMethod!(void, RID, long) agentSetMaxNeighbors;
		@GodotName("agent_set_max_speed") GodotMethod!(void, RID, double) agentSetMaxSpeed;
		@GodotName("agent_set_neighbor_dist") GodotMethod!(void, RID, double) agentSetNeighborDist;
		@GodotName("agent_set_position") GodotMethod!(void, RID, Vector2) agentSetPosition;
		@GodotName("agent_set_radius") GodotMethod!(void, RID, double) agentSetRadius;
		@GodotName("agent_set_target_velocity") GodotMethod!(void, RID, Vector2) agentSetTargetVelocity;
		@GodotName("agent_set_time_horizon") GodotMethod!(void, RID, double) agentSetTimeHorizon;
		@GodotName("agent_set_velocity") GodotMethod!(void, RID, Vector2) agentSetVelocity;
		@GodotName("free_rid") GodotMethod!(void, RID) freeRid;
		@GodotName("get_maps") GodotMethod!(Array) getMaps;
		@GodotName("map_create") GodotMethod!(RID) mapCreate;
		@GodotName("map_force_update") GodotMethod!(void, RID) mapForceUpdate;
		@GodotName("map_get_agents") GodotMethod!(Array, RID) mapGetAgents;
		@GodotName("map_get_cell_height") GodotMethod!(double, RID) mapGetCellHeight;
		@GodotName("map_get_cell_size") GodotMethod!(double, RID) mapGetCellSize;
		@GodotName("map_get_closest_point") GodotMethod!(Vector2, RID, Vector2) mapGetClosestPoint;
		@GodotName("map_get_closest_point_owner") GodotMethod!(RID, RID, Vector2) mapGetClosestPointOwner;
		@GodotName("map_get_edge_connection_margin") GodotMethod!(double, RID) mapGetEdgeConnectionMargin;
		@GodotName("map_get_path") GodotMethod!(PoolVector2Array, RID, Vector2, Vector2, bool, long) mapGetPath;
		@GodotName("map_get_regions") GodotMethod!(Array, RID) mapGetRegions;
		@GodotName("map_is_active") GodotMethod!(bool, RID) mapIsActive;
		@GodotName("map_set_active") GodotMethod!(void, RID, bool) mapSetActive;
		@GodotName("map_set_cell_height") GodotMethod!(void, RID, double) mapSetCellHeight;
		@GodotName("map_set_cell_size") GodotMethod!(void, RID, double) mapSetCellSize;
		@GodotName("map_set_edge_connection_margin") GodotMethod!(void, RID, double) mapSetEdgeConnectionMargin;
		@GodotName("region_create") GodotMethod!(RID) regionCreate;
		@GodotName("region_get_connection_pathway_end") GodotMethod!(Vector2, RID, long) regionGetConnectionPathwayEnd;
		@GodotName("region_get_connection_pathway_start") GodotMethod!(Vector2, RID, long) regionGetConnectionPathwayStart;
		@GodotName("region_get_connections_count") GodotMethod!(long, RID) regionGetConnectionsCount;
		@GodotName("region_get_enter_cost") GodotMethod!(double, RID) regionGetEnterCost;
		@GodotName("region_get_map") GodotMethod!(RID, RID) regionGetMap;
		@GodotName("region_get_navigation_layers") GodotMethod!(long, RID) regionGetNavigationLayers;
		@GodotName("region_get_travel_cost") GodotMethod!(double, RID) regionGetTravelCost;
		@GodotName("region_owns_point") GodotMethod!(bool, RID, Vector2) regionOwnsPoint;
		@GodotName("region_set_enter_cost") GodotMethod!(void, RID, double) regionSetEnterCost;
		@GodotName("region_set_map") GodotMethod!(void, RID, RID) regionSetMap;
		@GodotName("region_set_navigation_layers") GodotMethod!(void, RID, long) regionSetNavigationLayers;
		@GodotName("region_set_navpoly") GodotMethod!(void, RID, NavigationPolygon) regionSetNavpoly;
		@GodotName("region_set_transform") GodotMethod!(void, RID, Transform2D) regionSetTransform;
		@GodotName("region_set_travel_cost") GodotMethod!(void, RID, double) regionSetTravelCost;
	}
	/// 
	pragma(inline, true) bool opEquals(in Navigation2DServerSingleton other) const
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
	/// Construct a new instance of Navigation2DServerSingleton.
	/// Note: use `memnew!Navigation2DServerSingleton` instead.
	static Navigation2DServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Navigation2DServer");
		if(constructor is null) return typeof(this).init;
		return cast(Navigation2DServerSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _emitMapChanged(in RID arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_emit_map_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	RID agentCreate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.agentCreate, _godot_object);
	}
	/**
	
	*/
	RID agentGetMap(in RID agent) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.agentGetMap, _godot_object, agent);
	}
	/**
	
	*/
	bool agentIsMapChanged(in RID agent) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.agentIsMapChanged, _godot_object, agent);
	}
	/**
	
	*/
	void agentSetCallback(VariantArg3)(in RID agent, GodotObject receiver, in String method, in VariantArg3 userdata = Variant.nil) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.agentSetCallback, _godot_object, agent, receiver, method, userdata);
	}
	/**
	
	*/
	void agentSetMap(in RID agent, in RID map) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.agentSetMap, _godot_object, agent, map);
	}
	/**
	
	*/
	void agentSetMaxNeighbors(in RID agent, in long count) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.agentSetMaxNeighbors, _godot_object, agent, count);
	}
	/**
	
	*/
	void agentSetMaxSpeed(in RID agent, in double max_speed) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.agentSetMaxSpeed, _godot_object, agent, max_speed);
	}
	/**
	
	*/
	void agentSetNeighborDist(in RID agent, in double dist) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.agentSetNeighborDist, _godot_object, agent, dist);
	}
	/**
	
	*/
	void agentSetPosition(in RID agent, in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.agentSetPosition, _godot_object, agent, position);
	}
	/**
	
	*/
	void agentSetRadius(in RID agent, in double radius) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.agentSetRadius, _godot_object, agent, radius);
	}
	/**
	
	*/
	void agentSetTargetVelocity(in RID agent, in Vector2 target_velocity) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.agentSetTargetVelocity, _godot_object, agent, target_velocity);
	}
	/**
	
	*/
	void agentSetTimeHorizon(in RID agent, in double time) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.agentSetTimeHorizon, _godot_object, agent, time);
	}
	/**
	
	*/
	void agentSetVelocity(in RID agent, in Vector2 velocity) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.agentSetVelocity, _godot_object, agent, velocity);
	}
	/**
	
	*/
	void freeRid(in RID rid) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.freeRid, _godot_object, rid);
	}
	/**
	
	*/
	Array getMaps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getMaps, _godot_object);
	}
	/**
	
	*/
	RID mapCreate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.mapCreate, _godot_object);
	}
	/**
	
	*/
	void mapForceUpdate(in RID map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.mapForceUpdate, _godot_object, map);
	}
	/**
	
	*/
	Array mapGetAgents(in RID map) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.mapGetAgents, _godot_object, map);
	}
	/**
	
	*/
	double mapGetCellHeight(in RID map) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.mapGetCellHeight, _godot_object, map);
	}
	/**
	
	*/
	double mapGetCellSize(in RID map) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.mapGetCellSize, _godot_object, map);
	}
	/**
	
	*/
	Vector2 mapGetClosestPoint(in RID map, in Vector2 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.mapGetClosestPoint, _godot_object, map, to_point);
	}
	/**
	
	*/
	RID mapGetClosestPointOwner(in RID map, in Vector2 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.mapGetClosestPointOwner, _godot_object, map, to_point);
	}
	/**
	
	*/
	double mapGetEdgeConnectionMargin(in RID map) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.mapGetEdgeConnectionMargin, _godot_object, map);
	}
	/**
	
	*/
	PoolVector2Array mapGetPath(in RID map, in Vector2 origin, in Vector2 destination, in bool optimize, in long navigation_layers = 1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.mapGetPath, _godot_object, map, origin, destination, optimize, navigation_layers);
	}
	/**
	
	*/
	Array mapGetRegions(in RID map) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.mapGetRegions, _godot_object, map);
	}
	/**
	
	*/
	bool mapIsActive(in RID map) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.mapIsActive, _godot_object, map);
	}
	/**
	
	*/
	void mapSetActive(in RID map, in bool active) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.mapSetActive, _godot_object, map, active);
	}
	/**
	
	*/
	void mapSetCellHeight(in RID map, in double cell_height) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.mapSetCellHeight, _godot_object, map, cell_height);
	}
	/**
	
	*/
	void mapSetCellSize(in RID map, in double cell_size) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.mapSetCellSize, _godot_object, map, cell_size);
	}
	/**
	
	*/
	void mapSetEdgeConnectionMargin(in RID map, in double margin) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.mapSetEdgeConnectionMargin, _godot_object, map, margin);
	}
	/**
	
	*/
	RID regionCreate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.regionCreate, _godot_object);
	}
	/**
	
	*/
	Vector2 regionGetConnectionPathwayEnd(in RID region, in long connection) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.regionGetConnectionPathwayEnd, _godot_object, region, connection);
	}
	/**
	
	*/
	Vector2 regionGetConnectionPathwayStart(in RID region, in long connection) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.regionGetConnectionPathwayStart, _godot_object, region, connection);
	}
	/**
	
	*/
	long regionGetConnectionsCount(in RID region) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.regionGetConnectionsCount, _godot_object, region);
	}
	/**
	
	*/
	double regionGetEnterCost(in RID region) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.regionGetEnterCost, _godot_object, region);
	}
	/**
	
	*/
	RID regionGetMap(in RID region) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.regionGetMap, _godot_object, region);
	}
	/**
	
	*/
	long regionGetNavigationLayers(in RID region) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.regionGetNavigationLayers, _godot_object, region);
	}
	/**
	
	*/
	double regionGetTravelCost(in RID region) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.regionGetTravelCost, _godot_object, region);
	}
	/**
	
	*/
	bool regionOwnsPoint(in RID region, in Vector2 point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.regionOwnsPoint, _godot_object, region, point);
	}
	/**
	
	*/
	void regionSetEnterCost(in RID region, in double enter_cost) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.regionSetEnterCost, _godot_object, region, enter_cost);
	}
	/**
	
	*/
	void regionSetMap(in RID region, in RID map) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.regionSetMap, _godot_object, region, map);
	}
	/**
	
	*/
	void regionSetNavigationLayers(in RID region, in long navigation_layers) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.regionSetNavigationLayers, _godot_object, region, navigation_layers);
	}
	/**
	
	*/
	void regionSetNavpoly(in RID region, NavigationPolygon nav_poly) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.regionSetNavpoly, _godot_object, region, nav_poly);
	}
	/**
	
	*/
	void regionSetTransform(in RID region, in Transform2D transform) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.regionSetTransform, _godot_object, region, transform);
	}
	/**
	
	*/
	void regionSetTravelCost(in RID region, in double travel_cost) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.regionSetTravelCost, _godot_object, region, travel_cost);
	}
}
/// Returns: the Navigation2DServerSingleton
@property @nogc nothrow pragma(inline, true)
Navigation2DServerSingleton Navigation2DServer()
{
	checkClassBinding!Navigation2DServerSingleton();
	return Navigation2DServerSingleton(Navigation2DServerSingleton.GDNativeClassBinding._singleton);
}
