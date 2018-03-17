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
/**
Node for 3D tile-based maps.

GridMap lets you place meshes on a grid interactively. It works both from the editor and can help you create in-game level editors.
GridMaps use a $(D MeshLibrary) which contain a list of tiles: meshes with materials plus optional collisions and extra elements.
A GridMap contains a collection of cells. Each grid cell refers to a $(D MeshLibrary) item. All cells in the map have the same dimensions.
A GridMap is split into a sparse collection of octants for efficient rendering and physics processing. Every octant has the same dimensions and can contain several cells.
*/
@GodotBaseClass struct GridMap
{
	static immutable string _GODOT_internal_name = "GridMap";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	/// 
	enum Constants : int
	{
		/**
		Invalid cell item that can be used in $(D setCellItem) to clear cells (or represent an empty cell in $(D getCellItem)).
		*/
		invalidCellItem = -1,
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer") = _GODOT_set_collision_layer;
	/**
	
	*/
	void setCollisionLayer(in long layer)
	{
		_GODOT_set_collision_layer.bind("GridMap", "set_collision_layer");
		ptrcall!(void)(_GODOT_set_collision_layer, _godot_object, layer);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer") = _GODOT_get_collision_layer;
	/**
	
	*/
	long getCollisionLayer() const
	{
		_GODOT_get_collision_layer.bind("GridMap", "get_collision_layer");
		return ptrcall!(long)(_GODOT_get_collision_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask") = _GODOT_set_collision_mask;
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		_GODOT_set_collision_mask.bind("GridMap", "set_collision_mask");
		ptrcall!(void)(_GODOT_set_collision_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask") = _GODOT_get_collision_mask;
	/**
	
	*/
	long getCollisionMask() const
	{
		_GODOT_get_collision_mask.bind("GridMap", "get_collision_mask");
		return ptrcall!(long)(_GODOT_get_collision_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask_bit") = _GODOT_set_collision_mask_bit;
	/**
	
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		_GODOT_set_collision_mask_bit.bind("GridMap", "set_collision_mask_bit");
		ptrcall!(void)(_GODOT_set_collision_mask_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask_bit") = _GODOT_get_collision_mask_bit;
	/**
	
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		_GODOT_get_collision_mask_bit.bind("GridMap", "get_collision_mask_bit");
		return ptrcall!(bool)(_GODOT_get_collision_mask_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer_bit") = _GODOT_set_collision_layer_bit;
	/**
	
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		_GODOT_set_collision_layer_bit.bind("GridMap", "set_collision_layer_bit");
		ptrcall!(void)(_GODOT_set_collision_layer_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer_bit") = _GODOT_get_collision_layer_bit;
	/**
	
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		_GODOT_get_collision_layer_bit.bind("GridMap", "get_collision_layer_bit");
		return ptrcall!(bool)(_GODOT_get_collision_layer_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, MeshLibrary) _GODOT_set_theme;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_theme") = _GODOT_set_theme;
	/**
	
	*/
	void setTheme(MeshLibrary theme)
	{
		_GODOT_set_theme.bind("GridMap", "set_theme");
		ptrcall!(void)(_GODOT_set_theme, _godot_object, theme);
	}
	package(godot) static GodotMethod!(MeshLibrary) _GODOT_get_theme;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_theme") = _GODOT_get_theme;
	/**
	
	*/
	Ref!MeshLibrary getTheme() const
	{
		_GODOT_get_theme.bind("GridMap", "get_theme");
		return ptrcall!(MeshLibrary)(_GODOT_get_theme, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_size") = _GODOT_set_cell_size;
	/**
	
	*/
	void setCellSize(in Vector3 size)
	{
		_GODOT_set_cell_size.bind("GridMap", "set_cell_size");
		ptrcall!(void)(_GODOT_set_cell_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_size") = _GODOT_get_cell_size;
	/**
	
	*/
	Vector3 getCellSize() const
	{
		_GODOT_get_cell_size.bind("GridMap", "get_cell_size");
		return ptrcall!(Vector3)(_GODOT_get_cell_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_cell_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_scale") = _GODOT_set_cell_scale;
	/**
	
	*/
	void setCellScale(in double scale)
	{
		_GODOT_set_cell_scale.bind("GridMap", "set_cell_scale");
		ptrcall!(void)(_GODOT_set_cell_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_cell_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_scale") = _GODOT_get_cell_scale;
	/**
	
	*/
	double getCellScale() const
	{
		_GODOT_get_cell_scale.bind("GridMap", "get_cell_scale");
		return ptrcall!(double)(_GODOT_get_cell_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_octant_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_octant_size") = _GODOT_set_octant_size;
	/**
	
	*/
	void setOctantSize(in long size)
	{
		_GODOT_set_octant_size.bind("GridMap", "set_octant_size");
		ptrcall!(void)(_GODOT_set_octant_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_octant_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_octant_size") = _GODOT_get_octant_size;
	/**
	
	*/
	long getOctantSize() const
	{
		_GODOT_get_octant_size.bind("GridMap", "get_octant_size");
		return ptrcall!(long)(_GODOT_get_octant_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long, long, long, long) _GODOT_set_cell_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_item") = _GODOT_set_cell_item;
	/**
	Set the mesh index for the cell referenced by its grid-based X, Y and Z coordinates.
	A negative item index will clear the cell.
	Optionally, the item's orientation can be passed.
	*/
	void setCellItem(in long x, in long y, in long z, in long item, in long orientation = 0)
	{
		_GODOT_set_cell_item.bind("GridMap", "set_cell_item");
		ptrcall!(void)(_GODOT_set_cell_item, _godot_object, x, y, z, item, orientation);
	}
	package(godot) static GodotMethod!(long, long, long, long) _GODOT_get_cell_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_item") = _GODOT_get_cell_item;
	/**
	The $(D MeshLibrary) item index located at the grid-based X, Y and Z coordinates. If the cell is empty, $(D INVALID_CELL_ITEM) will be returned.
	*/
	long getCellItem(in long x, in long y, in long z) const
	{
		_GODOT_get_cell_item.bind("GridMap", "get_cell_item");
		return ptrcall!(long)(_GODOT_get_cell_item, _godot_object, x, y, z);
	}
	package(godot) static GodotMethod!(long, long, long, long) _GODOT_get_cell_item_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_item_orientation") = _GODOT_get_cell_item_orientation;
	/**
	The orientation of the cell at the grid-based X, Y and Z coordinates. -1 is retuned if the cell is empty.
	*/
	long getCellItemOrientation(in long x, in long y, in long z) const
	{
		_GODOT_get_cell_item_orientation.bind("GridMap", "get_cell_item_orientation");
		return ptrcall!(long)(_GODOT_get_cell_item_orientation, _godot_object, x, y, z);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_world_to_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "world_to_map") = _GODOT_world_to_map;
	/**
	
	*/
	Vector3 worldToMap(in Vector3 pos) const
	{
		_GODOT_world_to_map.bind("GridMap", "world_to_map");
		return ptrcall!(Vector3)(_GODOT_world_to_map, _godot_object, pos);
	}
	package(godot) static GodotMethod!(Vector3, long, long, long) _GODOT_map_to_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "map_to_world") = _GODOT_map_to_world;
	/**
	
	*/
	Vector3 mapToWorld(in long x, in long y, in long z) const
	{
		_GODOT_map_to_world.bind("GridMap", "map_to_world");
		return ptrcall!(Vector3)(_GODOT_map_to_world, _godot_object, x, y, z);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_octants_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_octants_callback") = _GODOT__update_octants_callback;
	/**
	
	*/
	void _updateOctantsCallback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_octants_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT_resource_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "resource_changed") = _GODOT_resource_changed;
	/**
	
	*/
	void resourceChanged(Resource resource)
	{
		_GODOT_resource_changed.bind("GridMap", "resource_changed");
		ptrcall!(void)(_GODOT_resource_changed, _godot_object, resource);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_center_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_center_x") = _GODOT_set_center_x;
	/**
	
	*/
	void setCenterX(in bool enable)
	{
		_GODOT_set_center_x.bind("GridMap", "set_center_x");
		ptrcall!(void)(_GODOT_set_center_x, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_center_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_center_x") = _GODOT_get_center_x;
	/**
	
	*/
	bool getCenterX() const
	{
		_GODOT_get_center_x.bind("GridMap", "get_center_x");
		return ptrcall!(bool)(_GODOT_get_center_x, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_center_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_center_y") = _GODOT_set_center_y;
	/**
	
	*/
	void setCenterY(in bool enable)
	{
		_GODOT_set_center_y.bind("GridMap", "set_center_y");
		ptrcall!(void)(_GODOT_set_center_y, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_center_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_center_y") = _GODOT_get_center_y;
	/**
	
	*/
	bool getCenterY() const
	{
		_GODOT_get_center_y.bind("GridMap", "get_center_y");
		return ptrcall!(bool)(_GODOT_get_center_y, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_center_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_center_z") = _GODOT_set_center_z;
	/**
	
	*/
	void setCenterZ(in bool enable)
	{
		_GODOT_set_center_z.bind("GridMap", "set_center_z");
		ptrcall!(void)(_GODOT_set_center_z, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_center_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_center_z") = _GODOT_get_center_z;
	/**
	
	*/
	bool getCenterZ() const
	{
		_GODOT_get_center_z.bind("GridMap", "get_center_z");
		return ptrcall!(bool)(_GODOT_get_center_z, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool, bool, long, long) _GODOT_set_clip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clip") = _GODOT_set_clip;
	/**
	
	*/
	void setClip(in bool enabled, in bool clipabove = true, in long floor = 0, in long axis = 0)
	{
		_GODOT_set_clip.bind("GridMap", "set_clip");
		ptrcall!(void)(_GODOT_set_clip, _godot_object, enabled, clipabove, floor, axis);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clear all cells.
	*/
	void clear()
	{
		_GODOT_clear.bind("GridMap", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_used_cells;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_used_cells") = _GODOT_get_used_cells;
	/**
	Array of $(D Vector3) with the non empty cell coordinates in the grid map.
	*/
	Array getUsedCells() const
	{
		_GODOT_get_used_cells.bind("GridMap", "get_used_cells");
		return ptrcall!(Array)(_GODOT_get_used_cells, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_meshes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_meshes") = _GODOT_get_meshes;
	/**
	Array of $(D Transform) and $(D Mesh) references corresponding to the non empty cells in the grid. The transforms are specified in world space.
	*/
	Array getMeshes()
	{
		_GODOT_get_meshes.bind("GridMap", "get_meshes");
		return ptrcall!(Array)(_GODOT_get_meshes, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_bake_meshes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bake_meshes") = _GODOT_get_bake_meshes;
	/**
	
	*/
	Array getBakeMeshes()
	{
		_GODOT_get_bake_meshes.bind("GridMap", "get_bake_meshes");
		return ptrcall!(Array)(_GODOT_get_bake_meshes, _godot_object);
	}
	package(godot) static GodotMethod!(RID, long) _GODOT_get_bake_mesh_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bake_mesh_instance") = _GODOT_get_bake_mesh_instance;
	/**
	
	*/
	RID getBakeMeshInstance(in long idx)
	{
		_GODOT_get_bake_mesh_instance.bind("GridMap", "get_bake_mesh_instance");
		return ptrcall!(RID)(_GODOT_get_bake_mesh_instance, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_baked_meshes;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_baked_meshes") = _GODOT_clear_baked_meshes;
	/**
	
	*/
	void clearBakedMeshes()
	{
		_GODOT_clear_baked_meshes.bind("GridMap", "clear_baked_meshes");
		ptrcall!(void)(_GODOT_clear_baked_meshes, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool, double) _GODOT_make_baked_meshes;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_baked_meshes") = _GODOT_make_baked_meshes;
	/**
	
	*/
	void makeBakedMeshes(in bool gen_lightmap_uv = false, in double lightmap_uv_texel_size = 0.1)
	{
		_GODOT_make_baked_meshes.bind("GridMap", "make_baked_meshes");
		ptrcall!(void)(_GODOT_make_baked_meshes, _godot_object, gen_lightmap_uv, lightmap_uv_texel_size);
	}
	/**
	The assigned $(D MeshLibrary).
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
	If `true` grid items are centered on the X axis.
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
	If `true` grid items are centered on the Y axis.
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
	If `true` grid items are centered on the Z axis.
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
