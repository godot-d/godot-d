/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigationserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.navigationmesh;
import godot.node;
/**

*/
@GodotBaseClass struct NavigationServerSingleton
{
	package(godot) enum string _GODOT_internal_name = "NavigationServer";
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
		immutable char* _singletonName = "NavigationServer";
		@GodotName("agent_create") GodotMethod!(RID) agentCreate;
		@GodotName("agent_get_map") GodotMethod!(RID, RID) agentGetMap;
		@GodotName("agent_is_map_changed") GodotMethod!(bool, RID) agentIsMapChanged;
		@GodotName("agent_set_callback") GodotMethod!(void, RID, GodotObject, String, Variant) agentSetCallback;
		@GodotName("agent_set_map") GodotMethod!(void, RID, RID) agentSetMap;
		@GodotName("agent_set_max_neighbors") GodotMethod!(void, RID, long) agentSetMaxNeighbors;
		@GodotName("agent_set_max_speed") GodotMethod!(void, RID, double) agentSetMaxSpeed;
		@GodotName("agent_set_neighbor_dist") GodotMethod!(void, RID, double) agentSetNeighborDist;
		@GodotName("agent_set_position") GodotMethod!(void, RID, Vector3) agentSetPosition;
		@GodotName("agent_set_radius") GodotMethod!(void, RID, double) agentSetRadius;
		@GodotName("agent_set_target_velocity") GodotMethod!(void, RID, Vector3) agentSetTargetVelocity;
		@GodotName("agent_set_time_horizon") GodotMethod!(void, RID, double) agentSetTimeHorizon;
		@GodotName("agent_set_velocity") GodotMethod!(void, RID, Vector3) agentSetVelocity;
		@GodotName("free_rid") GodotMethod!(void, RID) freeRid;
		@GodotName("get_maps") GodotMethod!(Array) getMaps;
		@GodotName("map_create") GodotMethod!(RID) mapCreate;
		@GodotName("map_force_update") GodotMethod!(void, RID) mapForceUpdate;
		@GodotName("map_get_agents") GodotMethod!(Array, RID) mapGetAgents;
		@GodotName("map_get_cell_height") GodotMethod!(double, RID) mapGetCellHeight;
		@GodotName("map_get_cell_size") GodotMethod!(double, RID) mapGetCellSize;
		@GodotName("map_get_closest_point") GodotMethod!(Vector3, RID, Vector3) mapGetClosestPoint;
		@GodotName("map_get_closest_point_normal") GodotMethod!(Vector3, RID, Vector3) mapGetClosestPointNormal;
		@GodotName("map_get_closest_point_owner") GodotMethod!(RID, RID, Vector3) mapGetClosestPointOwner;
		@GodotName("map_get_closest_point_to_segment") GodotMethod!(Vector3, RID, Vector3, Vector3, bool) mapGetClosestPointToSegment;
		@GodotName("map_get_edge_connection_margin") GodotMethod!(double, RID) mapGetEdgeConnectionMargin;
		@GodotName("map_get_path") GodotMethod!(PoolVector3Array, RID, Vector3, Vector3, bool, long) mapGetPath;
		@GodotName("map_get_regions") GodotMethod!(Array, RID) mapGetRegions;
		@GodotName("map_get_up") GodotMethod!(Vector3, RID) mapGetUp;
		@GodotName("map_is_active") GodotMethod!(bool, RID) mapIsActive;
		@GodotName("map_set_active") GodotMethod!(void, RID, bool) mapSetActive;
		@GodotName("map_set_cell_height") GodotMethod!(void, RID, double) mapSetCellHeight;
		@GodotName("map_set_cell_size") GodotMethod!(void, RID, double) mapSetCellSize;
		@GodotName("map_set_edge_connection_margin") GodotMethod!(void, RID, double) mapSetEdgeConnectionMargin;
		@GodotName("map_set_up") GodotMethod!(void, RID, Vector3) mapSetUp;
		@GodotName("process") GodotMethod!(void, double) process;
		@GodotName("region_bake_navmesh") GodotMethod!(void, NavigationMesh, Node) regionBakeNavmesh;
		@GodotName("region_create") GodotMethod!(RID) regionCreate;
		@GodotName("region_get_connection_pathway_end") GodotMethod!(Vector3, RID, long) regionGetConnectionPathwayEnd;
		@GodotName("region_get_connection_pathway_start") GodotMethod!(Vector3, RID, long) regionGetConnectionPathwayStart;
		@GodotName("region_get_connections_count") GodotMethod!(long, RID) regionGetConnectionsCount;
		@GodotName("region_get_enter_cost") GodotMethod!(double, RID) regionGetEnterCost;
		@GodotName("region_get_map") GodotMethod!(RID, RID) regionGetMap;
		@GodotName("region_get_navigation_layers") GodotMethod!(long, RID) regionGetNavigationLayers;
		@GodotName("region_get_travel_cost") GodotMethod!(double, RID) regionGetTravelCost;
		@GodotName("region_owns_point") GodotMethod!(bool, RID, Vector3) regionOwnsPoint;
		@GodotName("region_set_enter_cost") GodotMethod!(void, RID, double) regionSetEnterCost;
		@GodotName("region_set_map") GodotMethod!(void, RID, RID) regionSetMap;
		@GodotName("region_set_navigation_layers") GodotMethod!(void, RID, long) regionSetNavigationLayers;
		@GodotName("region_set_navmesh") GodotMethod!(void, RID, NavigationMesh) regionSetNavmesh;
		@GodotName("region_set_transform") GodotMethod!(void, RID, Transform) regionSetTransform;
		@GodotName("region_set_travel_cost") GodotMethod!(void, RID, double) regionSetTravelCost;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
	}
	/// 
	pragma(inline, true) bool opEquals(in NavigationServerSingleton other) const
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
	/// Construct a new instance of NavigationServerSingleton.
	/// Note: use `memnew!NavigationServerSingleton` instead.
	static NavigationServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NavigationServer");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationServerSingleton)(constructor());
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
	void agentSetPosition(in RID agent, in Vector3 position) const
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
	void agentSetTargetVelocity(in RID agent, in Vector3 target_velocity) const
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
	void agentSetVelocity(in RID agent, in Vector3 velocity) const
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
	Vector3 mapGetClosestPoint(in RID map, in Vector3 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.mapGetClosestPoint, _godot_object, map, to_point);
	}
	/**
	
	*/
	Vector3 mapGetClosestPointNormal(in RID map, in Vector3 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.mapGetClosestPointNormal, _godot_object, map, to_point);
	}
	/**
	
	*/
	RID mapGetClosestPointOwner(in RID map, in Vector3 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.mapGetClosestPointOwner, _godot_object, map, to_point);
	}
	/**
	
	*/
	Vector3 mapGetClosestPointToSegment(in RID map, in Vector3 start, in Vector3 end, in bool use_collision = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.mapGetClosestPointToSegment, _godot_object, map, start, end, use_collision);
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
	PoolVector3Array mapGetPath(in RID map, in Vector3 origin, in Vector3 destination, in bool optimize, in long navigation_layers = 1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.mapGetPath, _godot_object, map, origin, destination, optimize, navigation_layers);
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
	Vector3 mapGetUp(in RID map) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.mapGetUp, _godot_object, map);
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
	void mapSetUp(in RID map, in Vector3 up) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.mapSetUp, _godot_object, map, up);
	}
	/**
	
	*/
	void process(in double delta_time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.process, _godot_object, delta_time);
	}
	/**
	
	*/
	void regionBakeNavmesh(NavigationMesh mesh, Node node) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.regionBakeNavmesh, _godot_object, mesh, node);
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
	Vector3 regionGetConnectionPathwayEnd(in RID region, in long connection) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.regionGetConnectionPathwayEnd, _godot_object, region, connection);
	}
	/**
	
	*/
	Vector3 regionGetConnectionPathwayStart(in RID region, in long connection) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.regionGetConnectionPathwayStart, _godot_object, region, connection);
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
	bool regionOwnsPoint(in RID region, in Vector3 point) const
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
	void regionSetNavmesh(in RID region, NavigationMesh nav_mesh) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.regionSetNavmesh, _godot_object, region, nav_mesh);
	}
	/**
	
	*/
	void regionSetTransform(in RID region, in Transform transform) const
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
	/**
	
	*/
	void setActive(in bool active) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setActive, _godot_object, active);
	}
}
/// Returns: the NavigationServerSingleton
@property @nogc nothrow pragma(inline, true)
NavigationServerSingleton NavigationServer()
{
	checkClassBinding!NavigationServerSingleton();
	return NavigationServerSingleton(NavigationServerSingleton.GDNativeClassBinding._singleton);
}
