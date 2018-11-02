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
import godot.reference;
/**

*/
@GodotBaseClass struct NavigationMesh
{
	enum string _GODOT_internal_name = "NavigationMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_sample_partition_type") GodotMethod!(void, long) setSamplePartitionType;
		@GodotName("get_sample_partition_type") GodotMethod!(long) getSamplePartitionType;
		@GodotName("set_cell_size") GodotMethod!(void, double) setCellSize;
		@GodotName("get_cell_size") GodotMethod!(double) getCellSize;
		@GodotName("set_cell_height") GodotMethod!(void, double) setCellHeight;
		@GodotName("get_cell_height") GodotMethod!(double) getCellHeight;
		@GodotName("set_agent_height") GodotMethod!(void, double) setAgentHeight;
		@GodotName("get_agent_height") GodotMethod!(double) getAgentHeight;
		@GodotName("set_agent_radius") GodotMethod!(void, double) setAgentRadius;
		@GodotName("get_agent_radius") GodotMethod!(double) getAgentRadius;
		@GodotName("set_agent_max_climb") GodotMethod!(void, double) setAgentMaxClimb;
		@GodotName("get_agent_max_climb") GodotMethod!(double) getAgentMaxClimb;
		@GodotName("set_agent_max_slope") GodotMethod!(void, double) setAgentMaxSlope;
		@GodotName("get_agent_max_slope") GodotMethod!(double) getAgentMaxSlope;
		@GodotName("set_region_min_size") GodotMethod!(void, double) setRegionMinSize;
		@GodotName("get_region_min_size") GodotMethod!(double) getRegionMinSize;
		@GodotName("set_region_merge_size") GodotMethod!(void, double) setRegionMergeSize;
		@GodotName("get_region_merge_size") GodotMethod!(double) getRegionMergeSize;
		@GodotName("set_edge_max_length") GodotMethod!(void, double) setEdgeMaxLength;
		@GodotName("get_edge_max_length") GodotMethod!(double) getEdgeMaxLength;
		@GodotName("set_edge_max_error") GodotMethod!(void, double) setEdgeMaxError;
		@GodotName("get_edge_max_error") GodotMethod!(double) getEdgeMaxError;
		@GodotName("set_verts_per_poly") GodotMethod!(void, double) setVertsPerPoly;
		@GodotName("get_verts_per_poly") GodotMethod!(double) getVertsPerPoly;
		@GodotName("set_detail_sample_distance") GodotMethod!(void, double) setDetailSampleDistance;
		@GodotName("get_detail_sample_distance") GodotMethod!(double) getDetailSampleDistance;
		@GodotName("set_detail_sample_max_error") GodotMethod!(void, double) setDetailSampleMaxError;
		@GodotName("get_detail_sample_max_error") GodotMethod!(double) getDetailSampleMaxError;
		@GodotName("set_filter_low_hanging_obstacles") GodotMethod!(void, bool) setFilterLowHangingObstacles;
		@GodotName("get_filter_low_hanging_obstacles") GodotMethod!(bool) getFilterLowHangingObstacles;
		@GodotName("set_filter_ledge_spans") GodotMethod!(void, bool) setFilterLedgeSpans;
		@GodotName("get_filter_ledge_spans") GodotMethod!(bool) getFilterLedgeSpans;
		@GodotName("set_filter_walkable_low_height_spans") GodotMethod!(void, bool) setFilterWalkableLowHeightSpans;
		@GodotName("get_filter_walkable_low_height_spans") GodotMethod!(bool) getFilterWalkableLowHeightSpans;
		@GodotName("set_vertices") GodotMethod!(void, PoolVector3Array) setVertices;
		@GodotName("get_vertices") GodotMethod!(PoolVector3Array) getVertices;
		@GodotName("add_polygon") GodotMethod!(void, PoolIntArray) addPolygon;
		@GodotName("get_polygon_count") GodotMethod!(long) getPolygonCount;
		@GodotName("get_polygon") GodotMethod!(PoolIntArray, long) getPolygon;
		@GodotName("clear_polygons") GodotMethod!(void) clearPolygons;
		@GodotName("create_from_mesh") GodotMethod!(void, Mesh) createFromMesh;
		@GodotName("_set_polygons") GodotMethod!(void, Array) _setPolygons;
		@GodotName("_get_polygons") GodotMethod!(Array) _getPolygons;
	}
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
	/**
	
	*/
	void setSamplePartitionType(in long sample_partition_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSamplePartitionType, _godot_object, sample_partition_type);
	}
	/**
	
	*/
	long getSamplePartitionType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSamplePartitionType, _godot_object);
	}
	/**
	
	*/
	void setCellSize(in double cell_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCellSize, _godot_object, cell_size);
	}
	/**
	
	*/
	double getCellSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getCellSize, _godot_object);
	}
	/**
	
	*/
	void setCellHeight(in double cell_height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCellHeight, _godot_object, cell_height);
	}
	/**
	
	*/
	double getCellHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getCellHeight, _godot_object);
	}
	/**
	
	*/
	void setAgentHeight(in double agent_height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAgentHeight, _godot_object, agent_height);
	}
	/**
	
	*/
	double getAgentHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAgentHeight, _godot_object);
	}
	/**
	
	*/
	void setAgentRadius(in double agent_radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAgentRadius, _godot_object, agent_radius);
	}
	/**
	
	*/
	double getAgentRadius()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAgentRadius, _godot_object);
	}
	/**
	
	*/
	void setAgentMaxClimb(in double agent_max_climb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAgentMaxClimb, _godot_object, agent_max_climb);
	}
	/**
	
	*/
	double getAgentMaxClimb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAgentMaxClimb, _godot_object);
	}
	/**
	
	*/
	void setAgentMaxSlope(in double agent_max_slope)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAgentMaxSlope, _godot_object, agent_max_slope);
	}
	/**
	
	*/
	double getAgentMaxSlope() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAgentMaxSlope, _godot_object);
	}
	/**
	
	*/
	void setRegionMinSize(in double region_min_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRegionMinSize, _godot_object, region_min_size);
	}
	/**
	
	*/
	double getRegionMinSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRegionMinSize, _godot_object);
	}
	/**
	
	*/
	void setRegionMergeSize(in double region_merge_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRegionMergeSize, _godot_object, region_merge_size);
	}
	/**
	
	*/
	double getRegionMergeSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRegionMergeSize, _godot_object);
	}
	/**
	
	*/
	void setEdgeMaxLength(in double edge_max_length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEdgeMaxLength, _godot_object, edge_max_length);
	}
	/**
	
	*/
	double getEdgeMaxLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getEdgeMaxLength, _godot_object);
	}
	/**
	
	*/
	void setEdgeMaxError(in double edge_max_error)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEdgeMaxError, _godot_object, edge_max_error);
	}
	/**
	
	*/
	double getEdgeMaxError() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getEdgeMaxError, _godot_object);
	}
	/**
	
	*/
	void setVertsPerPoly(in double verts_per_poly)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertsPerPoly, _godot_object, verts_per_poly);
	}
	/**
	
	*/
	double getVertsPerPoly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getVertsPerPoly, _godot_object);
	}
	/**
	
	*/
	void setDetailSampleDistance(in double detail_sample_dist)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDetailSampleDistance, _godot_object, detail_sample_dist);
	}
	/**
	
	*/
	double getDetailSampleDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDetailSampleDistance, _godot_object);
	}
	/**
	
	*/
	void setDetailSampleMaxError(in double detail_sample_max_error)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDetailSampleMaxError, _godot_object, detail_sample_max_error);
	}
	/**
	
	*/
	double getDetailSampleMaxError() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDetailSampleMaxError, _godot_object);
	}
	/**
	
	*/
	void setFilterLowHangingObstacles(in bool filter_low_hanging_obstacles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFilterLowHangingObstacles, _godot_object, filter_low_hanging_obstacles);
	}
	/**
	
	*/
	bool getFilterLowHangingObstacles() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getFilterLowHangingObstacles, _godot_object);
	}
	/**
	
	*/
	void setFilterLedgeSpans(in bool filter_ledge_spans)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFilterLedgeSpans, _godot_object, filter_ledge_spans);
	}
	/**
	
	*/
	bool getFilterLedgeSpans() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getFilterLedgeSpans, _godot_object);
	}
	/**
	
	*/
	void setFilterWalkableLowHeightSpans(in bool filter_walkable_low_height_spans)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFilterWalkableLowHeightSpans, _godot_object, filter_walkable_low_height_spans);
	}
	/**
	
	*/
	bool getFilterWalkableLowHeightSpans() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getFilterWalkableLowHeightSpans, _godot_object);
	}
	/**
	
	*/
	void setVertices(in PoolVector3Array vertices)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertices, _godot_object, vertices);
	}
	/**
	
	*/
	PoolVector3Array getVertices() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.getVertices, _godot_object);
	}
	/**
	
	*/
	void addPolygon(in PoolIntArray polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPolygon, _godot_object, polygon);
	}
	/**
	
	*/
	long getPolygonCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPolygonCount, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getPolygon(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getPolygon, _godot_object, idx);
	}
	/**
	
	*/
	void clearPolygons()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearPolygons, _godot_object);
	}
	/**
	
	*/
	void createFromMesh(Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createFromMesh, _godot_object, mesh);
	}
	/**
	
	*/
	void _setPolygons(in Array polygons)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(polygons);
		String _GODOT_method_name = String("_set_polygons");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
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
