/**
Node for 3D tile-based maps.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gridmap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.meshlibrary;
import godot.resource;
import godot.node;
/**
Node for 3D tile-based maps.

GridMap lets you place meshes on a grid interactively. It works both from the editor and can help you create in-game level editors.
GridMaps use a $(D MeshLibrary) which contain a list of tiles: meshes with materials plus optional collisions and extra elements.
A GridMap contains a collection of cells. Each grid cell refers to a $(D MeshLibrary) item. All cells in the map have the same dimensions.
A GridMap is split into a sparse collection of octants for efficient rendering and physics processing. Every octant has the same dimensions and can contain several cells.
*/
@GodotBaseClass struct GridMap
{
	enum string _GODOT_internal_name = "GridMap";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("set_theme") GodotMethod!(void, MeshLibrary) setTheme;
		@GodotName("get_theme") GodotMethod!(MeshLibrary) getTheme;
		@GodotName("set_mesh_library") GodotMethod!(void, MeshLibrary) setMeshLibrary;
		@GodotName("get_mesh_library") GodotMethod!(MeshLibrary) getMeshLibrary;
		@GodotName("set_cell_size") GodotMethod!(void, Vector3) setCellSize;
		@GodotName("get_cell_size") GodotMethod!(Vector3) getCellSize;
		@GodotName("set_cell_scale") GodotMethod!(void, double) setCellScale;
		@GodotName("get_cell_scale") GodotMethod!(double) getCellScale;
		@GodotName("set_octant_size") GodotMethod!(void, long) setOctantSize;
		@GodotName("get_octant_size") GodotMethod!(long) getOctantSize;
		@GodotName("set_cell_item") GodotMethod!(void, long, long, long, long, long) setCellItem;
		@GodotName("get_cell_item") GodotMethod!(long, long, long, long) getCellItem;
		@GodotName("get_cell_item_orientation") GodotMethod!(long, long, long, long) getCellItemOrientation;
		@GodotName("world_to_map") GodotMethod!(Vector3, Vector3) worldToMap;
		@GodotName("map_to_world") GodotMethod!(Vector3, long, long, long) mapToWorld;
		@GodotName("_update_octants_callback") GodotMethod!(void) _updateOctantsCallback;
		@GodotName("resource_changed") GodotMethod!(void, Resource) resourceChanged;
		@GodotName("set_center_x") GodotMethod!(void, bool) setCenterX;
		@GodotName("get_center_x") GodotMethod!(bool) getCenterX;
		@GodotName("set_center_y") GodotMethod!(void, bool) setCenterY;
		@GodotName("get_center_y") GodotMethod!(bool) getCenterY;
		@GodotName("set_center_z") GodotMethod!(void, bool) setCenterZ;
		@GodotName("get_center_z") GodotMethod!(bool) getCenterZ;
		@GodotName("set_clip") GodotMethod!(void, bool, bool, long, long) setClip;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_used_cells") GodotMethod!(Array) getUsedCells;
		@GodotName("get_meshes") GodotMethod!(Array) getMeshes;
		@GodotName("get_bake_meshes") GodotMethod!(Array) getBakeMeshes;
		@GodotName("get_bake_mesh_instance") GodotMethod!(RID, long) getBakeMeshInstance;
		@GodotName("clear_baked_meshes") GodotMethod!(void) clearBakedMeshes;
		@GodotName("make_baked_meshes") GodotMethod!(void, bool, double) makeBakedMeshes;
	}
	bool opEquals(in GridMap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GridMap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GridMap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GridMap");
		if(constructor is null) return typeof(this).init;
		return cast(GridMap)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/**
		Invalid cell item that can be used in $(D setCellItem) to clear cells (or represent an empty cell in $(D getCellItem)).
		*/
		invalidCellItem = -1,
	}
	/**
	
	*/
	void setCollisionLayer(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionLayer, _godot_object, layer);
	}
	/**
	
	*/
	long getCollisionLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionLayer, _godot_object);
	}
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionMask, _godot_object);
	}
	/**
	
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionLayerBit, _godot_object, bit, value);
	}
	/**
	
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionLayerBit, _godot_object, bit);
	}
	/**
	
	*/
	void setTheme(MeshLibrary theme)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTheme, _godot_object, theme);
	}
	/**
	
	*/
	Ref!MeshLibrary getTheme() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MeshLibrary)(_classBinding.getTheme, _godot_object);
	}
	/**
	
	*/
	void setMeshLibrary(MeshLibrary mesh_library)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMeshLibrary, _godot_object, mesh_library);
	}
	/**
	
	*/
	Ref!MeshLibrary getMeshLibrary() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MeshLibrary)(_classBinding.getMeshLibrary, _godot_object);
	}
	/**
	
	*/
	void setCellSize(in Vector3 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCellSize, _godot_object, size);
	}
	/**
	
	*/
	Vector3 getCellSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getCellSize, _godot_object);
	}
	/**
	
	*/
	void setCellScale(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCellScale, _godot_object, scale);
	}
	/**
	
	*/
	double getCellScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getCellScale, _godot_object);
	}
	/**
	
	*/
	void setOctantSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOctantSize, _godot_object, size);
	}
	/**
	
	*/
	long getOctantSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOctantSize, _godot_object);
	}
	/**
	Set the mesh index for the cell referenced by its grid-based X, Y and Z coordinates.
	A negative item index will clear the cell.
	Optionally, the item's orientation can be passed.
	*/
	void setCellItem(in long x, in long y, in long z, in long item, in long orientation = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCellItem, _godot_object, x, y, z, item, orientation);
	}
	/**
	The $(D MeshLibrary) item index located at the grid-based X, Y and Z coordinates. If the cell is empty, $(D constant INVALID_CELL_ITEM) will be returned.
	*/
	long getCellItem(in long x, in long y, in long z) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCellItem, _godot_object, x, y, z);
	}
	/**
	The orientation of the cell at the grid-based X, Y and Z coordinates. -1 is returned if the cell is empty.
	*/
	long getCellItemOrientation(in long x, in long y, in long z) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCellItemOrientation, _godot_object, x, y, z);
	}
	/**
	
	*/
	Vector3 worldToMap(in Vector3 pos) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.worldToMap, _godot_object, pos);
	}
	/**
	
	*/
	Vector3 mapToWorld(in long x, in long y, in long z) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.mapToWorld, _godot_object, x, y, z);
	}
	/**
	
	*/
	void _updateOctantsCallback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_octants_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void resourceChanged(Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.resourceChanged, _godot_object, resource);
	}
	/**
	
	*/
	void setCenterX(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCenterX, _godot_object, enable);
	}
	/**
	
	*/
	bool getCenterX() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCenterX, _godot_object);
	}
	/**
	
	*/
	void setCenterY(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCenterY, _godot_object, enable);
	}
	/**
	
	*/
	bool getCenterY() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCenterY, _godot_object);
	}
	/**
	
	*/
	void setCenterZ(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCenterZ, _godot_object, enable);
	}
	/**
	
	*/
	bool getCenterZ() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCenterZ, _godot_object);
	}
	/**
	
	*/
	void setClip(in bool enabled, in bool clipabove = true, in long floor = 0, in long axis = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClip, _godot_object, enabled, clipabove, floor, axis);
	}
	/**
	Clear all cells.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Array of $(D Vector3) with the non empty cell coordinates in the grid map.
	*/
	Array getUsedCells() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getUsedCells, _godot_object);
	}
	/**
	Array of $(D Transform) and $(D Mesh) references corresponding to the non empty cells in the grid. The transforms are specified in world space.
	*/
	Array getMeshes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getMeshes, _godot_object);
	}
	/**
	
	*/
	Array getBakeMeshes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getBakeMeshes, _godot_object);
	}
	/**
	
	*/
	RID getBakeMeshInstance(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getBakeMeshInstance, _godot_object, idx);
	}
	/**
	
	*/
	void clearBakedMeshes()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearBakedMeshes, _godot_object);
	}
	/**
	
	*/
	void makeBakedMeshes(in bool gen_lightmap_uv = false, in double lightmap_uv_texel_size = 0.1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.makeBakedMeshes, _godot_object, gen_lightmap_uv, lightmap_uv_texel_size);
	}
	/**
	Deprecated, use $(D meshLibrary) instead.
	*/
	@property MeshLibrary theme()
	{
		return getTheme();
	}
	/// ditto
	@property void theme(MeshLibrary v)
	{
		setTheme(v);
	}
	/**
	The assigned $(D MeshLibrary).
	*/
	@property MeshLibrary meshLibrary()
	{
		return getMeshLibrary();
	}
	/// ditto
	@property void meshLibrary(MeshLibrary v)
	{
		setMeshLibrary(v);
	}
	/**
	The dimensions of the grid's cells.
	*/
	@property Vector3 cellSize()
	{
		return getCellSize();
	}
	/// ditto
	@property void cellSize(Vector3 v)
	{
		setCellSize(v);
	}
	/**
	The size of each octant measured in number of cells. This applies to all three axis.
	*/
	@property long cellOctantSize()
	{
		return getOctantSize();
	}
	/// ditto
	@property void cellOctantSize(long v)
	{
		setOctantSize(v);
	}
	/**
	If `true`, grid items are centered on the X axis.
	*/
	@property bool cellCenterX()
	{
		return getCenterX();
	}
	/// ditto
	@property void cellCenterX(bool v)
	{
		setCenterX(v);
	}
	/**
	If `true`, grid items are centered on the Y axis.
	*/
	@property bool cellCenterY()
	{
		return getCenterY();
	}
	/// ditto
	@property void cellCenterY(bool v)
	{
		setCenterY(v);
	}
	/**
	If `true`, grid items are centered on the Z axis.
	*/
	@property bool cellCenterZ()
	{
		return getCenterZ();
	}
	/// ditto
	@property void cellCenterZ(bool v)
	{
		setCenterZ(v);
	}
	/**
	
	*/
	@property double cellScale()
	{
		return getCellScale();
	}
	/// ditto
	@property void cellScale(double v)
	{
		setCellScale(v);
	}
	/**
	
	*/
	@property long collisionLayer()
	{
		return getCollisionLayer();
	}
	/// ditto
	@property void collisionLayer(long v)
	{
		setCollisionLayer(v);
	}
	/**
	
	*/
	@property long collisionMask()
	{
		return getCollisionMask();
	}
	/// ditto
	@property void collisionMask(long v)
	{
		setCollisionMask(v);
	}
}
