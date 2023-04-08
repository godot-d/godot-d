/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigationagent;
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
import godot.node;
/**

*/
@GodotBaseClass struct NavigationAgent
{
	package(godot) enum string _GODOT_internal_name = "NavigationAgent";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_avoidance_done") GodotMethod!(void, Vector3) _avoidanceDone;
		@GodotName("distance_to_target") GodotMethod!(double) distanceToTarget;
		@GodotName("get_agent_height_offset") GodotMethod!(double) getAgentHeightOffset;
		@GodotName("get_avoidance_enabled") GodotMethod!(bool) getAvoidanceEnabled;
		@GodotName("get_final_location") GodotMethod!(Vector3) getFinalLocation;
		@GodotName("get_ignore_y") GodotMethod!(bool) getIgnoreY;
		@GodotName("get_max_neighbors") GodotMethod!(long) getMaxNeighbors;
		@GodotName("get_max_speed") GodotMethod!(double) getMaxSpeed;
		@GodotName("get_nav_path") GodotMethod!(PoolVector3Array) getNavPath;
		@GodotName("get_nav_path_index") GodotMethod!(long) getNavPathIndex;
		@GodotName("get_navigation") GodotMethod!(Node) getNavigation;
		@GodotName("get_navigation_layers") GodotMethod!(long) getNavigationLayers;
		@GodotName("get_navigation_map") GodotMethod!(RID) getNavigationMap;
		@GodotName("get_neighbor_dist") GodotMethod!(double) getNeighborDist;
		@GodotName("get_next_location") GodotMethod!(Vector3) getNextLocation;
		@GodotName("get_path_desired_distance") GodotMethod!(double) getPathDesiredDistance;
		@GodotName("get_path_max_distance") GodotMethod!(double) getPathMaxDistance;
		@GodotName("get_radius") GodotMethod!(double) getRadius;
		@GodotName("get_rid") GodotMethod!(RID) getRid;
		@GodotName("get_target_desired_distance") GodotMethod!(double) getTargetDesiredDistance;
		@GodotName("get_target_location") GodotMethod!(Vector3) getTargetLocation;
		@GodotName("get_time_horizon") GodotMethod!(double) getTimeHorizon;
		@GodotName("is_navigation_finished") GodotMethod!(bool) isNavigationFinished;
		@GodotName("is_target_reachable") GodotMethod!(bool) isTargetReachable;
		@GodotName("is_target_reached") GodotMethod!(bool) isTargetReached;
		@GodotName("set_agent_height_offset") GodotMethod!(void, double) setAgentHeightOffset;
		@GodotName("set_avoidance_enabled") GodotMethod!(void, bool) setAvoidanceEnabled;
		@GodotName("set_ignore_y") GodotMethod!(void, bool) setIgnoreY;
		@GodotName("set_max_neighbors") GodotMethod!(void, long) setMaxNeighbors;
		@GodotName("set_max_speed") GodotMethod!(void, double) setMaxSpeed;
		@GodotName("set_navigation") GodotMethod!(void, Node) setNavigation;
		@GodotName("set_navigation_layers") GodotMethod!(void, long) setNavigationLayers;
		@GodotName("set_navigation_map") GodotMethod!(void, RID) setNavigationMap;
		@GodotName("set_neighbor_dist") GodotMethod!(void, double) setNeighborDist;
		@GodotName("set_path_desired_distance") GodotMethod!(void, double) setPathDesiredDistance;
		@GodotName("set_path_max_distance") GodotMethod!(void, double) setPathMaxDistance;
		@GodotName("set_radius") GodotMethod!(void, double) setRadius;
		@GodotName("set_target_desired_distance") GodotMethod!(void, double) setTargetDesiredDistance;
		@GodotName("set_target_location") GodotMethod!(void, Vector3) setTargetLocation;
		@GodotName("set_time_horizon") GodotMethod!(void, double) setTimeHorizon;
		@GodotName("set_velocity") GodotMethod!(void, Vector3) setVelocity;
	}
	/// 
	pragma(inline, true) bool opEquals(in NavigationAgent other) const
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
	/// Construct a new instance of NavigationAgent.
	/// Note: use `memnew!NavigationAgent` instead.
	static NavigationAgent _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NavigationAgent");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationAgent)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _avoidanceDone(in Vector3 new_velocity)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(new_velocity);
		String _GODOT_method_name = String("_avoidance_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double distanceToTarget() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.distanceToTarget, _godot_object);
	}
	/**
	
	*/
	double getAgentHeightOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAgentHeightOffset, _godot_object);
	}
	/**
	
	*/
	bool getAvoidanceEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAvoidanceEnabled, _godot_object);
	}
	/**
	
	*/
	Vector3 getFinalLocation()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getFinalLocation, _godot_object);
	}
	/**
	
	*/
	bool getIgnoreY() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getIgnoreY, _godot_object);
	}
	/**
	
	*/
	long getMaxNeighbors() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxNeighbors, _godot_object);
	}
	/**
	
	*/
	double getMaxSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMaxSpeed, _godot_object);
	}
	/**
	
	*/
	PoolVector3Array getNavPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getNavPath, _godot_object);
	}
	/**
	
	*/
	long getNavPathIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNavPathIndex, _godot_object);
	}
	/**
	
	*/
	Node getNavigation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getNavigation, _godot_object);
	}
	/**
	
	*/
	long getNavigationLayers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNavigationLayers, _godot_object);
	}
	/**
	
	*/
	RID getNavigationMap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getNavigationMap, _godot_object);
	}
	/**
	
	*/
	double getNeighborDist() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getNeighborDist, _godot_object);
	}
	/**
	
	*/
	Vector3 getNextLocation()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getNextLocation, _godot_object);
	}
	/**
	
	*/
	double getPathDesiredDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPathDesiredDistance, _godot_object);
	}
	/**
	
	*/
	double getPathMaxDistance()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPathMaxDistance, _godot_object);
	}
	/**
	
	*/
	double getRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRadius, _godot_object);
	}
	/**
	
	*/
	RID getRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getRid, _godot_object);
	}
	/**
	
	*/
	double getTargetDesiredDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTargetDesiredDistance, _godot_object);
	}
	/**
	
	*/
	Vector3 getTargetLocation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getTargetLocation, _godot_object);
	}
	/**
	
	*/
	double getTimeHorizon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTimeHorizon, _godot_object);
	}
	/**
	
	*/
	bool isNavigationFinished()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isNavigationFinished, _godot_object);
	}
	/**
	
	*/
	bool isTargetReachable()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isTargetReachable, _godot_object);
	}
	/**
	
	*/
	bool isTargetReached() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isTargetReached, _godot_object);
	}
	/**
	
	*/
	void setAgentHeightOffset(in double agent_height_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAgentHeightOffset, _godot_object, agent_height_offset);
	}
	/**
	
	*/
	void setAvoidanceEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAvoidanceEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setIgnoreY(in bool ignore)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIgnoreY, _godot_object, ignore);
	}
	/**
	
	*/
	void setMaxNeighbors(in long max_neighbors)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxNeighbors, _godot_object, max_neighbors);
	}
	/**
	
	*/
	void setMaxSpeed(in double max_speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxSpeed, _godot_object, max_speed);
	}
	/**
	
	*/
	void setNavigation(Node navigation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNavigation, _godot_object, navigation);
	}
	/**
	
	*/
	void setNavigationLayers(in long navigation_layers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNavigationLayers, _godot_object, navigation_layers);
	}
	/**
	
	*/
	void setNavigationMap(in RID navigation_map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNavigationMap, _godot_object, navigation_map);
	}
	/**
	
	*/
	void setNeighborDist(in double neighbor_dist)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNeighborDist, _godot_object, neighbor_dist);
	}
	/**
	
	*/
	void setPathDesiredDistance(in double desired_distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPathDesiredDistance, _godot_object, desired_distance);
	}
	/**
	
	*/
	void setPathMaxDistance(in double max_speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPathMaxDistance, _godot_object, max_speed);
	}
	/**
	
	*/
	void setRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRadius, _godot_object, radius);
	}
	/**
	
	*/
	void setTargetDesiredDistance(in double desired_distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTargetDesiredDistance, _godot_object, desired_distance);
	}
	/**
	
	*/
	void setTargetLocation(in Vector3 location)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTargetLocation, _godot_object, location);
	}
	/**
	
	*/
	void setTimeHorizon(in double time_horizon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTimeHorizon, _godot_object, time_horizon);
	}
	/**
	
	*/
	void setVelocity(in Vector3 velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVelocity, _godot_object, velocity);
	}
	/**
	
	*/
	@property double agentHeightOffset()
	{
		return getAgentHeightOffset();
	}
	/// ditto
	@property void agentHeightOffset(double v)
	{
		setAgentHeightOffset(v);
	}
	/**
	
	*/
	@property bool avoidanceEnabled()
	{
		return getAvoidanceEnabled();
	}
	/// ditto
	@property void avoidanceEnabled(bool v)
	{
		setAvoidanceEnabled(v);
	}
	/**
	
	*/
	@property bool ignoreY()
	{
		return getIgnoreY();
	}
	/// ditto
	@property void ignoreY(bool v)
	{
		setIgnoreY(v);
	}
	/**
	
	*/
	@property long maxNeighbors()
	{
		return getMaxNeighbors();
	}
	/// ditto
	@property void maxNeighbors(long v)
	{
		setMaxNeighbors(v);
	}
	/**
	
	*/
	@property double maxSpeed()
	{
		return getMaxSpeed();
	}
	/// ditto
	@property void maxSpeed(double v)
	{
		setMaxSpeed(v);
	}
	/**
	
	*/
	@property long navigationLayers()
	{
		return getNavigationLayers();
	}
	/// ditto
	@property void navigationLayers(long v)
	{
		setNavigationLayers(v);
	}
	/**
	
	*/
	@property double neighborDist()
	{
		return getNeighborDist();
	}
	/// ditto
	@property void neighborDist(double v)
	{
		setNeighborDist(v);
	}
	/**
	
	*/
	@property double pathDesiredDistance()
	{
		return getPathDesiredDistance();
	}
	/// ditto
	@property void pathDesiredDistance(double v)
	{
		setPathDesiredDistance(v);
	}
	/**
	
	*/
	@property double pathMaxDistance()
	{
		return getPathMaxDistance();
	}
	/// ditto
	@property void pathMaxDistance(double v)
	{
		setPathMaxDistance(v);
	}
	/**
	
	*/
	@property double radius()
	{
		return getRadius();
	}
	/// ditto
	@property void radius(double v)
	{
		setRadius(v);
	}
	/**
	
	*/
	@property double targetDesiredDistance()
	{
		return getTargetDesiredDistance();
	}
	/// ditto
	@property void targetDesiredDistance(double v)
	{
		setTargetDesiredDistance(v);
	}
	/**
	
	*/
	@property double timeHorizon()
	{
		return getTimeHorizon();
	}
	/// ditto
	@property void timeHorizon(double v)
	{
		setTimeHorizon(v);
	}
}
