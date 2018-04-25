/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigationmesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.mesh;
/**

*/
@GodotBaseClass struct NavigationMesh
{
	static immutable string _GODOT_internal_name = "NavigationMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in NavigationMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NavigationMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NavigationMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NavigationMesh");
		if(constructor is null) return typeof(this).init;
		return cast(NavigationMesh)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/**
		
		*/
		samplePartitionWatershed = 0,
		/**
		
		*/
		samplePartitionMonotone = 1,
		/**
		
		*/
		samplePartitionLayers = 2,
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_sample_partition_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sample_partition_type") = _GODOT_set_sample_partition_type;
	/**
	
	*/
	void setSamplePartitionType(in long sample_partition_type)
	{
		_GODOT_set_sample_partition_type.bind("NavigationMesh", "set_sample_partition_type");
		ptrcall!(void)(_GODOT_set_sample_partition_type, _godot_object, sample_partition_type);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_sample_partition_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sample_partition_type") = _GODOT_get_sample_partition_type;
	/**
	
	*/
	long getSamplePartitionType() const
	{
		_GODOT_get_sample_partition_type.bind("NavigationMesh", "get_sample_partition_type");
		return ptrcall!(long)(_GODOT_get_sample_partition_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_size") = _GODOT_set_cell_size;
	/**
	
	*/
	void setCellSize(in double cell_size)
	{
		_GODOT_set_cell_size.bind("NavigationMesh", "set_cell_size");
		ptrcall!(void)(_GODOT_set_cell_size, _godot_object, cell_size);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_size") = _GODOT_get_cell_size;
	/**
	
	*/
	double getCellSize() const
	{
		_GODOT_get_cell_size.bind("NavigationMesh", "get_cell_size");
		return ptrcall!(double)(_GODOT_get_cell_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_cell_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_height") = _GODOT_set_cell_height;
	/**
	
	*/
	void setCellHeight(in double cell_height)
	{
		_GODOT_set_cell_height.bind("NavigationMesh", "set_cell_height");
		ptrcall!(void)(_GODOT_set_cell_height, _godot_object, cell_height);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_cell_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_height") = _GODOT_get_cell_height;
	/**
	
	*/
	double getCellHeight() const
	{
		_GODOT_get_cell_height.bind("NavigationMesh", "get_cell_height");
		return ptrcall!(double)(_GODOT_get_cell_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_agent_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_agent_height") = _GODOT_set_agent_height;
	/**
	
	*/
	void setAgentHeight(in double agent_height)
	{
		_GODOT_set_agent_height.bind("NavigationMesh", "set_agent_height");
		ptrcall!(void)(_GODOT_set_agent_height, _godot_object, agent_height);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_agent_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_agent_height") = _GODOT_get_agent_height;
	/**
	
	*/
	double getAgentHeight() const
	{
		_GODOT_get_agent_height.bind("NavigationMesh", "get_agent_height");
		return ptrcall!(double)(_GODOT_get_agent_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_agent_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_agent_radius") = _GODOT_set_agent_radius;
	/**
	
	*/
	void setAgentRadius(in double agent_radius)
	{
		_GODOT_set_agent_radius.bind("NavigationMesh", "set_agent_radius");
		ptrcall!(void)(_GODOT_set_agent_radius, _godot_object, agent_radius);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_agent_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_agent_radius") = _GODOT_get_agent_radius;
	/**
	
	*/
	double getAgentRadius()
	{
		_GODOT_get_agent_radius.bind("NavigationMesh", "get_agent_radius");
		return ptrcall!(double)(_GODOT_get_agent_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_agent_max_climb;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_agent_max_climb") = _GODOT_set_agent_max_climb;
	/**
	
	*/
	void setAgentMaxClimb(in double agent_max_climb)
	{
		_GODOT_set_agent_max_climb.bind("NavigationMesh", "set_agent_max_climb");
		ptrcall!(void)(_GODOT_set_agent_max_climb, _godot_object, agent_max_climb);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_agent_max_climb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_agent_max_climb") = _GODOT_get_agent_max_climb;
	/**
	
	*/
	double getAgentMaxClimb() const
	{
		_GODOT_get_agent_max_climb.bind("NavigationMesh", "get_agent_max_climb");
		return ptrcall!(double)(_GODOT_get_agent_max_climb, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_agent_max_slope;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_agent_max_slope") = _GODOT_set_agent_max_slope;
	/**
	
	*/
	void setAgentMaxSlope(in double agent_max_slope)
	{
		_GODOT_set_agent_max_slope.bind("NavigationMesh", "set_agent_max_slope");
		ptrcall!(void)(_GODOT_set_agent_max_slope, _godot_object, agent_max_slope);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_agent_max_slope;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_agent_max_slope") = _GODOT_get_agent_max_slope;
	/**
	
	*/
	double getAgentMaxSlope() const
	{
		_GODOT_get_agent_max_slope.bind("NavigationMesh", "get_agent_max_slope");
		return ptrcall!(double)(_GODOT_get_agent_max_slope, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_region_min_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_min_size") = _GODOT_set_region_min_size;
	/**
	
	*/
	void setRegionMinSize(in double region_min_size)
	{
		_GODOT_set_region_min_size.bind("NavigationMesh", "set_region_min_size");
		ptrcall!(void)(_GODOT_set_region_min_size, _godot_object, region_min_size);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_region_min_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_min_size") = _GODOT_get_region_min_size;
	/**
	
	*/
	double getRegionMinSize() const
	{
		_GODOT_get_region_min_size.bind("NavigationMesh", "get_region_min_size");
		return ptrcall!(double)(_GODOT_get_region_min_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_region_merge_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_merge_size") = _GODOT_set_region_merge_size;
	/**
	
	*/
	void setRegionMergeSize(in double region_merge_size)
	{
		_GODOT_set_region_merge_size.bind("NavigationMesh", "set_region_merge_size");
		ptrcall!(void)(_GODOT_set_region_merge_size, _godot_object, region_merge_size);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_region_merge_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_merge_size") = _GODOT_get_region_merge_size;
	/**
	
	*/
	double getRegionMergeSize() const
	{
		_GODOT_get_region_merge_size.bind("NavigationMesh", "get_region_merge_size");
		return ptrcall!(double)(_GODOT_get_region_merge_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_edge_max_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_edge_max_length") = _GODOT_set_edge_max_length;
	/**
	
	*/
	void setEdgeMaxLength(in double edge_max_length)
	{
		_GODOT_set_edge_max_length.bind("NavigationMesh", "set_edge_max_length");
		ptrcall!(void)(_GODOT_set_edge_max_length, _godot_object, edge_max_length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_edge_max_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edge_max_length") = _GODOT_get_edge_max_length;
	/**
	
	*/
	double getEdgeMaxLength() const
	{
		_GODOT_get_edge_max_length.bind("NavigationMesh", "get_edge_max_length");
		return ptrcall!(double)(_GODOT_get_edge_max_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_edge_max_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_edge_max_error") = _GODOT_set_edge_max_error;
	/**
	
	*/
	void setEdgeMaxError(in double edge_max_error)
	{
		_GODOT_set_edge_max_error.bind("NavigationMesh", "set_edge_max_error");
		ptrcall!(void)(_GODOT_set_edge_max_error, _godot_object, edge_max_error);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_edge_max_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edge_max_error") = _GODOT_get_edge_max_error;
	/**
	
	*/
	double getEdgeMaxError() const
	{
		_GODOT_get_edge_max_error.bind("NavigationMesh", "get_edge_max_error");
		return ptrcall!(double)(_GODOT_get_edge_max_error, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_verts_per_poly;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_verts_per_poly") = _GODOT_set_verts_per_poly;
	/**
	
	*/
	void setVertsPerPoly(in double verts_per_poly)
	{
		_GODOT_set_verts_per_poly.bind("NavigationMesh", "set_verts_per_poly");
		ptrcall!(void)(_GODOT_set_verts_per_poly, _godot_object, verts_per_poly);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_verts_per_poly;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_verts_per_poly") = _GODOT_get_verts_per_poly;
	/**
	
	*/
	double getVertsPerPoly() const
	{
		_GODOT_get_verts_per_poly.bind("NavigationMesh", "get_verts_per_poly");
		return ptrcall!(double)(_GODOT_get_verts_per_poly, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_detail_sample_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_detail_sample_distance") = _GODOT_set_detail_sample_distance;
	/**
	
	*/
	void setDetailSampleDistance(in double detail_sample_dist)
	{
		_GODOT_set_detail_sample_distance.bind("NavigationMesh", "set_detail_sample_distance");
		ptrcall!(void)(_GODOT_set_detail_sample_distance, _godot_object, detail_sample_dist);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_detail_sample_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_detail_sample_distance") = _GODOT_get_detail_sample_distance;
	/**
	
	*/
	double getDetailSampleDistance() const
	{
		_GODOT_get_detail_sample_distance.bind("NavigationMesh", "get_detail_sample_distance");
		return ptrcall!(double)(_GODOT_get_detail_sample_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_detail_sample_max_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_detail_sample_max_error") = _GODOT_set_detail_sample_max_error;
	/**
	
	*/
	void setDetailSampleMaxError(in double detail_sample_max_error)
	{
		_GODOT_set_detail_sample_max_error.bind("NavigationMesh", "set_detail_sample_max_error");
		ptrcall!(void)(_GODOT_set_detail_sample_max_error, _godot_object, detail_sample_max_error);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_detail_sample_max_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_detail_sample_max_error") = _GODOT_get_detail_sample_max_error;
	/**
	
	*/
	double getDetailSampleMaxError() const
	{
		_GODOT_get_detail_sample_max_error.bind("NavigationMesh", "get_detail_sample_max_error");
		return ptrcall!(double)(_GODOT_get_detail_sample_max_error, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_filter_low_hanging_obstacles;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_filter_low_hanging_obstacles") = _GODOT_set_filter_low_hanging_obstacles;
	/**
	
	*/
	void setFilterLowHangingObstacles(in bool filter_low_hanging_obstacles)
	{
		_GODOT_set_filter_low_hanging_obstacles.bind("NavigationMesh", "set_filter_low_hanging_obstacles");
		ptrcall!(void)(_GODOT_set_filter_low_hanging_obstacles, _godot_object, filter_low_hanging_obstacles);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_filter_low_hanging_obstacles;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filter_low_hanging_obstacles") = _GODOT_get_filter_low_hanging_obstacles;
	/**
	
	*/
	bool getFilterLowHangingObstacles() const
	{
		_GODOT_get_filter_low_hanging_obstacles.bind("NavigationMesh", "get_filter_low_hanging_obstacles");
		return ptrcall!(bool)(_GODOT_get_filter_low_hanging_obstacles, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_filter_ledge_spans;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_filter_ledge_spans") = _GODOT_set_filter_ledge_spans;
	/**
	
	*/
	void setFilterLedgeSpans(in bool filter_ledge_spans)
	{
		_GODOT_set_filter_ledge_spans.bind("NavigationMesh", "set_filter_ledge_spans");
		ptrcall!(void)(_GODOT_set_filter_ledge_spans, _godot_object, filter_ledge_spans);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_filter_ledge_spans;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filter_ledge_spans") = _GODOT_get_filter_ledge_spans;
	/**
	
	*/
	bool getFilterLedgeSpans() const
	{
		_GODOT_get_filter_ledge_spans.bind("NavigationMesh", "get_filter_ledge_spans");
		return ptrcall!(bool)(_GODOT_get_filter_ledge_spans, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_filter_walkable_low_height_spans;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_filter_walkable_low_height_spans") = _GODOT_set_filter_walkable_low_height_spans;
	/**
	
	*/
	void setFilterWalkableLowHeightSpans(in bool filter_walkable_low_height_spans)
	{
		_GODOT_set_filter_walkable_low_height_spans.bind("NavigationMesh", "set_filter_walkable_low_height_spans");
		ptrcall!(void)(_GODOT_set_filter_walkable_low_height_spans, _godot_object, filter_walkable_low_height_spans);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_filter_walkable_low_height_spans;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filter_walkable_low_height_spans") = _GODOT_get_filter_walkable_low_height_spans;
	/**
	
	*/
	bool getFilterWalkableLowHeightSpans() const
	{
		_GODOT_get_filter_walkable_low_height_spans.bind("NavigationMesh", "get_filter_walkable_low_height_spans");
		return ptrcall!(bool)(_GODOT_get_filter_walkable_low_height_spans, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array) _GODOT_set_vertices;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertices") = _GODOT_set_vertices;
	/**
	
	*/
	void setVertices(in PoolVector3Array vertices)
	{
		_GODOT_set_vertices.bind("NavigationMesh", "set_vertices");
		ptrcall!(void)(_GODOT_set_vertices, _godot_object, vertices);
	}
	package(godot) static GodotMethod!(PoolVector3Array) _GODOT_get_vertices;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertices") = _GODOT_get_vertices;
	/**
	
	*/
	PoolVector3Array getVertices() const
	{
		_GODOT_get_vertices.bind("NavigationMesh", "get_vertices");
		return ptrcall!(PoolVector3Array)(_GODOT_get_vertices, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT_add_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_polygon") = _GODOT_add_polygon;
	/**
	
	*/
	void addPolygon(in PoolIntArray polygon)
	{
		_GODOT_add_polygon.bind("NavigationMesh", "add_polygon");
		ptrcall!(void)(_GODOT_add_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_polygon_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon_count") = _GODOT_get_polygon_count;
	/**
	
	*/
	long getPolygonCount() const
	{
		_GODOT_get_polygon_count.bind("NavigationMesh", "get_polygon_count");
		return ptrcall!(long)(_GODOT_get_polygon_count, _godot_object);
	}
	package(godot) static GodotMethod!(PoolIntArray, long) _GODOT_get_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon") = _GODOT_get_polygon;
	/**
	
	*/
	PoolIntArray getPolygon(in long idx)
	{
		_GODOT_get_polygon.bind("NavigationMesh", "get_polygon");
		return ptrcall!(PoolIntArray)(_GODOT_get_polygon, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_polygons;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_polygons") = _GODOT_clear_polygons;
	/**
	
	*/
	void clearPolygons()
	{
		_GODOT_clear_polygons.bind("NavigationMesh", "clear_polygons");
		ptrcall!(void)(_GODOT_clear_polygons, _godot_object);
	}
	package(godot) static GodotMethod!(void, Mesh) _GODOT_create_from_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from_mesh") = _GODOT_create_from_mesh;
	/**
	
	*/
	void createFromMesh(Mesh mesh)
	{
		_GODOT_create_from_mesh.bind("NavigationMesh", "create_from_mesh");
		ptrcall!(void)(_GODOT_create_from_mesh, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_polygons;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_polygons") = _GODOT__set_polygons;
	/**
	
	*/
	void _setPolygons(in Array polygons)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(polygons);
		String _GODOT_method_name = String("_set_polygons");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_polygons;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_polygons") = _GODOT__get_polygons;
	/**
	
	*/
	Array _getPolygons() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_polygons");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	@property PoolVector3Array vertices()
	{
		return getVertices();
	}
	/// ditto
	@property void vertices(PoolVector3Array v)
	{
		setVertices(v);
	}
	/**
	
	*/
	@property Array polygons()
	{
		return _getPolygons();
	}
	/// ditto
	@property void polygons(Array v)
	{
		_setPolygons(v);
	}
	/**
	
	*/
	@property long samplePartitionTypeSamplePartitionType()
	{
		return getSamplePartitionType();
	}
	/// ditto
	@property void samplePartitionTypeSamplePartitionType(long v)
	{
		setSamplePartitionType(v);
	}
	/**
	
	*/
	@property double cellSize()
	{
		return getCellSize();
	}
	/// ditto
	@property void cellSize(double v)
	{
		setCellSize(v);
	}
	/**
	
	*/
	@property double cellHeight()
	{
		return getCellHeight();
	}
	/// ditto
	@property void cellHeight(double v)
	{
		setCellHeight(v);
	}
	/**
	
	*/
	@property double agentHeight()
	{
		return getAgentHeight();
	}
	/// ditto
	@property void agentHeight(double v)
	{
		setAgentHeight(v);
	}
	/**
	
	*/
	@property double agentRadius()
	{
		return getAgentRadius();
	}
	/// ditto
	@property void agentRadius(double v)
	{
		setAgentRadius(v);
	}
	/**
	
	*/
	@property double agentMaxClimb()
	{
		return getAgentMaxClimb();
	}
	/// ditto
	@property void agentMaxClimb(double v)
	{
		setAgentMaxClimb(v);
	}
	/**
	
	*/
	@property double agentMaxSlope()
	{
		return getAgentMaxSlope();
	}
	/// ditto
	@property void agentMaxSlope(double v)
	{
		setAgentMaxSlope(v);
	}
	/**
	
	*/
	@property double regionMinSize()
	{
		return getRegionMinSize();
	}
	/// ditto
	@property void regionMinSize(double v)
	{
		setRegionMinSize(v);
	}
	/**
	
	*/
	@property double regionMergeSize()
	{
		return getRegionMergeSize();
	}
	/// ditto
	@property void regionMergeSize(double v)
	{
		setRegionMergeSize(v);
	}
	/**
	
	*/
	@property double edgeMaxLength()
	{
		return getEdgeMaxLength();
	}
	/// ditto
	@property void edgeMaxLength(double v)
	{
		setEdgeMaxLength(v);
	}
	/**
	
	*/
	@property double edgeMaxError()
	{
		return getEdgeMaxError();
	}
	/// ditto
	@property void edgeMaxError(double v)
	{
		setEdgeMaxError(v);
	}
	/**
	
	*/
	@property double polygonVertsPerPoly()
	{
		return getVertsPerPoly();
	}
	/// ditto
	@property void polygonVertsPerPoly(double v)
	{
		setVertsPerPoly(v);
	}
	/**
	
	*/
	@property double detailSampleDistance()
	{
		return getDetailSampleDistance();
	}
	/// ditto
	@property void detailSampleDistance(double v)
	{
		setDetailSampleDistance(v);
	}
	/**
	
	*/
	@property double detailSampleMaxError()
	{
		return getDetailSampleMaxError();
	}
	/// ditto
	@property void detailSampleMaxError(double v)
	{
		setDetailSampleMaxError(v);
	}
	/**
	
	*/
	@property bool filterLowHangingObstacles()
	{
		return getFilterLowHangingObstacles();
	}
	/// ditto
	@property void filterLowHangingObstacles(bool v)
	{
		setFilterLowHangingObstacles(v);
	}
	/**
	
	*/
	@property bool filterLedgeSpans()
	{
		return getFilterLedgeSpans();
	}
	/// ditto
	@property void filterLedgeSpans(bool v)
	{
		setFilterLedgeSpans(v);
	}
	/**
	
	*/
	@property bool filterFilterWalkableLowHeightSpans()
	{
		return getFilterWalkableLowHeightSpans();
	}
	/// ditto
	@property void filterFilterWalkableLowHeightSpans(bool v)
	{
		setFilterWalkableLowHeightSpans(v);
	}
}
