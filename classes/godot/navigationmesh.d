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
import godot.d.traits;
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
	package(godot) enum string _GODOT_internal_name = "NavigationMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_polygons") GodotMethod!(Array) _getPolygons;
		@GodotName("_set_polygons") GodotMethod!(void, Array) _setPolygons;
		@GodotName("add_polygon") GodotMethod!(void, PoolIntArray) addPolygon;
		@GodotName("clear_polygons") GodotMethod!(void) clearPolygons;
		@GodotName("create_from_mesh") GodotMethod!(void, Mesh) createFromMesh;
		@GodotName("get_agent_height") GodotMethod!(double) getAgentHeight;
		@GodotName("get_agent_max_climb") GodotMethod!(double) getAgentMaxClimb;
		@GodotName("get_agent_max_slope") GodotMethod!(double) getAgentMaxSlope;
		@GodotName("get_agent_radius") GodotMethod!(double) getAgentRadius;
		@GodotName("get_cell_height") GodotMethod!(double) getCellHeight;
		@GodotName("get_cell_size") GodotMethod!(double) getCellSize;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("get_detail_sample_distance") GodotMethod!(double) getDetailSampleDistance;
		@GodotName("get_detail_sample_max_error") GodotMethod!(double) getDetailSampleMaxError;
		@GodotName("get_edge_max_error") GodotMethod!(double) getEdgeMaxError;
		@GodotName("get_edge_max_length") GodotMethod!(double) getEdgeMaxLength;
		@GodotName("get_filter_ledge_spans") GodotMethod!(bool) getFilterLedgeSpans;
		@GodotName("get_filter_low_hanging_obstacles") GodotMethod!(bool) getFilterLowHangingObstacles;
		@GodotName("get_filter_walkable_low_height_spans") GodotMethod!(bool) getFilterWalkableLowHeightSpans;
		@GodotName("get_parsed_geometry_type") GodotMethod!(long) getParsedGeometryType;
		@GodotName("get_polygon") GodotMethod!(PoolIntArray, long) getPolygon;
		@GodotName("get_polygon_count") GodotMethod!(long) getPolygonCount;
		@GodotName("get_region_merge_size") GodotMethod!(double) getRegionMergeSize;
		@GodotName("get_region_min_size") GodotMethod!(double) getRegionMinSize;
		@GodotName("get_sample_partition_type") GodotMethod!(long) getSamplePartitionType;
		@GodotName("get_source_geometry_mode") GodotMethod!(long) getSourceGeometryMode;
		@GodotName("get_source_group_name") GodotMethod!(String) getSourceGroupName;
		@GodotName("get_vertices") GodotMethod!(PoolVector3Array) getVertices;
		@GodotName("get_verts_per_poly") GodotMethod!(double) getVertsPerPoly;
		@GodotName("set_agent_height") GodotMethod!(void, double) setAgentHeight;
		@GodotName("set_agent_max_climb") GodotMethod!(void, double) setAgentMaxClimb;
		@GodotName("set_agent_max_slope") GodotMethod!(void, double) setAgentMaxSlope;
		@GodotName("set_agent_radius") GodotMethod!(void, double) setAgentRadius;
		@GodotName("set_cell_height") GodotMethod!(void, double) setCellHeight;
		@GodotName("set_cell_size") GodotMethod!(void, double) setCellSize;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("set_detail_sample_distance") GodotMethod!(void, double) setDetailSampleDistance;
		@GodotName("set_detail_sample_max_error") GodotMethod!(void, double) setDetailSampleMaxError;
		@GodotName("set_edge_max_error") GodotMethod!(void, double) setEdgeMaxError;
		@GodotName("set_edge_max_length") GodotMethod!(void, double) setEdgeMaxLength;
		@GodotName("set_filter_ledge_spans") GodotMethod!(void, bool) setFilterLedgeSpans;
		@GodotName("set_filter_low_hanging_obstacles") GodotMethod!(void, bool) setFilterLowHangingObstacles;
		@GodotName("set_filter_walkable_low_height_spans") GodotMethod!(void, bool) setFilterWalkableLowHeightSpans;
		@GodotName("set_parsed_geometry_type") GodotMethod!(void, long) setParsedGeometryType;
		@GodotName("set_region_merge_size") GodotMethod!(void, double) setRegionMergeSize;
		@GodotName("set_region_min_size") GodotMethod!(void, double) setRegionMinSize;
		@GodotName("set_sample_partition_type") GodotMethod!(void, long) setSamplePartitionType;
		@GodotName("set_source_geometry_mode") GodotMethod!(void, long) setSourceGeometryMode;
		@GodotName("set_source_group_name") GodotMethod!(void, String) setSourceGroupName;
		@GodotName("set_vertices") GodotMethod!(void, PoolVector3Array) setVertices;
		@GodotName("set_verts_per_poly") GodotMethod!(void, double) setVertsPerPoly;
	}
	/// 
	pragma(inline, true) bool opEquals(in NavigationMesh other) const
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
	/// Construct a new instance of NavigationMesh.
	/// Note: use `memnew!NavigationMesh` instead.
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
		parsedGeometryMeshInstances = 0,
		/**
		
		*/
		parsedGeometryStaticColliders = 1,
		/**
		
		*/
		samplePartitionMonotone = 1,
		/**
		
		*/
		parsedGeometryBoth = 2,
		/**
		
		*/
		samplePartitionLayers = 2,
	}
	/**
	
	*/
	Array _getPolygons() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_polygons");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setPolygons(in Array polygons)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(polygons);
		String _GODOT_method_name = String("_set_polygons");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addPolygon(in PoolIntArray polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPolygon, _godot_object, polygon);
	}
	/**
	
	*/
	void clearPolygons()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearPolygons, _godot_object);
	}
	/**
	
	*/
	void createFromMesh(Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createFromMesh, _godot_object, mesh);
	}
	/**
	
	*/
	double getAgentHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAgentHeight, _godot_object);
	}
	/**
	
	*/
	double getAgentMaxClimb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAgentMaxClimb, _godot_object);
	}
	/**
	
	*/
	double getAgentMaxSlope() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAgentMaxSlope, _godot_object);
	}
	/**
	
	*/
	double getAgentRadius()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAgentRadius, _godot_object);
	}
	/**
	
	*/
	double getCellHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCellHeight, _godot_object);
	}
	/**
	
	*/
	double getCellSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCellSize, _godot_object);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionMask, _godot_object);
	}
	/**
	
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	
	*/
	double getDetailSampleDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDetailSampleDistance, _godot_object);
	}
	/**
	
	*/
	double getDetailSampleMaxError() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDetailSampleMaxError, _godot_object);
	}
	/**
	
	*/
	double getEdgeMaxError() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEdgeMaxError, _godot_object);
	}
	/**
	
	*/
	double getEdgeMaxLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEdgeMaxLength, _godot_object);
	}
	/**
	
	*/
	bool getFilterLedgeSpans() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFilterLedgeSpans, _godot_object);
	}
	/**
	
	*/
	bool getFilterLowHangingObstacles() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFilterLowHangingObstacles, _godot_object);
	}
	/**
	
	*/
	bool getFilterWalkableLowHeightSpans() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFilterWalkableLowHeightSpans, _godot_object);
	}
	/**
	
	*/
	long getParsedGeometryType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getParsedGeometryType, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getPolygon(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getPolygon, _godot_object, idx);
	}
	/**
	
	*/
	long getPolygonCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPolygonCount, _godot_object);
	}
	/**
	
	*/
	double getRegionMergeSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRegionMergeSize, _godot_object);
	}
	/**
	
	*/
	double getRegionMinSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRegionMinSize, _godot_object);
	}
	/**
	
	*/
	long getSamplePartitionType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSamplePartitionType, _godot_object);
	}
	/**
	
	*/
	long getSourceGeometryMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSourceGeometryMode, _godot_object);
	}
	/**
	
	*/
	String getSourceGroupName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSourceGroupName, _godot_object);
	}
	/**
	
	*/
	PoolVector3Array getVertices() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getVertices, _godot_object);
	}
	/**
	
	*/
	double getVertsPerPoly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVertsPerPoly, _godot_object);
	}
	/**
	
	*/
	void setAgentHeight(in double agent_height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAgentHeight, _godot_object, agent_height);
	}
	/**
	
	*/
	void setAgentMaxClimb(in double agent_max_climb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAgentMaxClimb, _godot_object, agent_max_climb);
	}
	/**
	
	*/
	void setAgentMaxSlope(in double agent_max_slope)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAgentMaxSlope, _godot_object, agent_max_slope);
	}
	/**
	
	*/
	void setAgentRadius(in double agent_radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAgentRadius, _godot_object, agent_radius);
	}
	/**
	
	*/
	void setCellHeight(in double cell_height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellHeight, _godot_object, cell_height);
	}
	/**
	
	*/
	void setCellSize(in double cell_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellSize, _godot_object, cell_size);
	}
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setDetailSampleDistance(in double detail_sample_dist)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDetailSampleDistance, _godot_object, detail_sample_dist);
	}
	/**
	
	*/
	void setDetailSampleMaxError(in double detail_sample_max_error)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDetailSampleMaxError, _godot_object, detail_sample_max_error);
	}
	/**
	
	*/
	void setEdgeMaxError(in double edge_max_error)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEdgeMaxError, _godot_object, edge_max_error);
	}
	/**
	
	*/
	void setEdgeMaxLength(in double edge_max_length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEdgeMaxLength, _godot_object, edge_max_length);
	}
	/**
	
	*/
	void setFilterLedgeSpans(in bool filter_ledge_spans)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFilterLedgeSpans, _godot_object, filter_ledge_spans);
	}
	/**
	
	*/
	void setFilterLowHangingObstacles(in bool filter_low_hanging_obstacles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFilterLowHangingObstacles, _godot_object, filter_low_hanging_obstacles);
	}
	/**
	
	*/
	void setFilterWalkableLowHeightSpans(in bool filter_walkable_low_height_spans)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFilterWalkableLowHeightSpans, _godot_object, filter_walkable_low_height_spans);
	}
	/**
	
	*/
	void setParsedGeometryType(in long geometry_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParsedGeometryType, _godot_object, geometry_type);
	}
	/**
	
	*/
	void setRegionMergeSize(in double region_merge_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRegionMergeSize, _godot_object, region_merge_size);
	}
	/**
	
	*/
	void setRegionMinSize(in double region_min_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRegionMinSize, _godot_object, region_min_size);
	}
	/**
	
	*/
	void setSamplePartitionType(in long sample_partition_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSamplePartitionType, _godot_object, sample_partition_type);
	}
	/**
	
	*/
	void setSourceGeometryMode(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSourceGeometryMode, _godot_object, mask);
	}
	/**
	
	*/
	void setSourceGroupName(in String mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSourceGroupName, _godot_object, mask);
	}
	/**
	
	*/
	void setVertices(in PoolVector3Array vertices)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertices, _godot_object, vertices);
	}
	/**
	
	*/
	void setVertsPerPoly(in double verts_per_poly)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertsPerPoly, _godot_object, verts_per_poly);
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
	@property bool filterFilterWalkableLowHeightSpans()
	{
		return getFilterWalkableLowHeightSpans();
	}
	/// ditto
	@property void filterFilterWalkableLowHeightSpans(bool v)
	{
		setFilterWalkableLowHeightSpans(v);
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
	@property long geometryCollisionMask()
	{
		return getCollisionMask();
	}
	/// ditto
	@property void geometryCollisionMask(long v)
	{
		setCollisionMask(v);
	}
	/**
	
	*/
	@property long geometryParsedGeometryType()
	{
		return getParsedGeometryType();
	}
	/// ditto
	@property void geometryParsedGeometryType(long v)
	{
		setParsedGeometryType(v);
	}
	/**
	
	*/
	@property long geometrySourceGeometryMode()
	{
		return getSourceGeometryMode();
	}
	/// ditto
	@property void geometrySourceGeometryMode(long v)
	{
		setSourceGeometryMode(v);
	}
	/**
	
	*/
	@property String geometrySourceGroupName()
	{
		return getSourceGroupName();
	}
	/// ditto
	@property void geometrySourceGroupName(String v)
	{
		setSourceGroupName(v);
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
	@property PoolVector3Array vertices()
	{
		return getVertices();
	}
	/// ditto
	@property void vertices(PoolVector3Array v)
	{
		setVertices(v);
	}
}
