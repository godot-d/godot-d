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
import godot.d.traits;
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

GridMap lets you place meshes on a grid interactively. It works both from the editor and from scripts, which can help you create in-game level editors.
GridMaps use a $(D MeshLibrary) which contains a list of tiles. Each tile is a mesh with materials plus optional collision and navigation shapes.
A GridMap contains a collection of cells. Each grid cell refers to a tile in the $(D MeshLibrary). All cells in the map have the same dimensions.
Internally, a GridMap is split into a sparse collection of octants for efficient rendering and physics processing. Every octant has the same dimensions and can contain several cells.
$(B Note:) GridMap doesn't extend $(D VisualInstance) and therefore can't be hidden or cull masked based on $(D VisualInstance.layers). If you make a light not affect the first layer, the whole GridMap won't be lit by the light in question.
*/
@GodotBaseClass struct GridMap
{
	package(godot) enum string _GODOT_internal_name = "GridMap";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_update_octants_callback") GodotMethod!(void) _updateOctantsCallback;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("clear_baked_meshes") GodotMethod!(void) clearBakedMeshes;
		@GodotName("get_bake_mesh_instance") GodotMethod!(RID, long) getBakeMeshInstance;
		@GodotName("get_bake_meshes") GodotMethod!(Array) getBakeMeshes;
		@GodotName("get_cell_item") GodotMethod!(long, long, long, long) getCellItem;
		@GodotName("get_cell_item_orientation") GodotMethod!(long, long, long, long) getCellItemOrientation;
		@GodotName("get_cell_scale") GodotMethod!(double) getCellScale;
		@GodotName("get_cell_size") GodotMethod!(Vector3) getCellSize;
		@GodotName("get_center_x") GodotMethod!(bool) getCenterX;
		@GodotName("get_center_y") GodotMethod!(bool) getCenterY;
		@GodotName("get_center_z") GodotMethod!(bool) getCenterZ;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("get_mesh_library") GodotMethod!(MeshLibrary) getMeshLibrary;
		@GodotName("get_meshes") GodotMethod!(Array) getMeshes;
		@GodotName("get_octant_size") GodotMethod!(long) getOctantSize;
		@GodotName("get_use_in_baked_light") GodotMethod!(bool) getUseInBakedLight;
		@GodotName("get_used_cells") GodotMethod!(Array) getUsedCells;
		@GodotName("make_baked_meshes") GodotMethod!(void, bool, double) makeBakedMeshes;
		@GodotName("map_to_world") GodotMethod!(Vector3, long, long, long) mapToWorld;
		@GodotName("resource_changed") GodotMethod!(void, Resource) resourceChanged;
		@GodotName("set_cell_item") GodotMethod!(void, long, long, long, long, long) setCellItem;
		@GodotName("set_cell_scale") GodotMethod!(void, double) setCellScale;
		@GodotName("set_cell_size") GodotMethod!(void, Vector3) setCellSize;
		@GodotName("set_center_x") GodotMethod!(void, bool) setCenterX;
		@GodotName("set_center_y") GodotMethod!(void, bool) setCenterY;
		@GodotName("set_center_z") GodotMethod!(void, bool) setCenterZ;
		@GodotName("set_clip") GodotMethod!(void, bool, bool, long, long) setClip;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("set_mesh_library") GodotMethod!(void, MeshLibrary) setMeshLibrary;
		@GodotName("set_octant_size") GodotMethod!(void, long) setOctantSize;
		@GodotName("set_use_in_baked_light") GodotMethod!(void, bool) setUseInBakedLight;
		@GodotName("world_to_map") GodotMethod!(Vector3, Vector3) worldToMap;
	}
	/// 
	pragma(inline, true) bool opEquals(in GridMap other) const
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
	/// Construct a new instance of GridMap.
	/// Note: use `memnew!GridMap` instead.
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
	void _updateOctantsCallback()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_octants_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Clear all cells.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	void clearBakedMeshes()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearBakedMeshes, _godot_object);
	}
	/**
	
	*/
	RID getBakeMeshInstance(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getBakeMeshInstance, _godot_object, idx);
	}
	/**
	Returns an array of $(D ArrayMesh)es and $(D Transform) references of all bake meshes that exist within the current GridMap.
	*/
	Array getBakeMeshes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getBakeMeshes, _godot_object);
	}
	/**
	The $(D MeshLibrary) item index located at the grid-based X, Y and Z coordinates. If the cell is empty, $(D constant INVALID_CELL_ITEM) will be returned.
	*/
	long getCellItem(in long x, in long y, in long z) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCellItem, _godot_object, x, y, z);
	}
	/**
	The orientation of the cell at the grid-based X, Y and Z coordinates. -1 is returned if the cell is empty.
	*/
	long getCellItemOrientation(in long x, in long y, in long z) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCellItemOrientation, _godot_object, x, y, z);
	}
	/**
	
	*/
	double getCellScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCellScale, _godot_object);
	}
	/**
	
	*/
	Vector3 getCellSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getCellSize, _godot_object);
	}
	/**
	
	*/
	bool getCenterX() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCenterX, _godot_object);
	}
	/**
	
	*/
	bool getCenterY() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCenterY, _godot_object);
	}
	/**
	
	*/
	bool getCenterZ() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCenterZ, _godot_object);
	}
	/**
	
	*/
	long getCollisionLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionLayer, _godot_object);
	}
	/**
	Returns an individual bit on the $(D collisionLayer).
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionLayerBit, _godot_object, bit);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionMask, _godot_object);
	}
	/**
	Returns an individual bit on the $(D collisionMask).
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	
	*/
	Ref!MeshLibrary getMeshLibrary() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MeshLibrary)(GDNativeClassBinding.getMeshLibrary, _godot_object);
	}
	/**
	Returns an array of $(D Transform) and $(D Mesh) references corresponding to the non-empty cells in the grid. The transforms are specified in world space.
	*/
	Array getMeshes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getMeshes, _godot_object);
	}
	/**
	
	*/
	long getOctantSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOctantSize, _godot_object);
	}
	/**
	
	*/
	bool getUseInBakedLight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseInBakedLight, _godot_object);
	}
	/**
	Returns an array of $(D Vector3) with the non-empty cell coordinates in the grid map.
	*/
	Array getUsedCells() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getUsedCells, _godot_object);
	}
	/**
	
	*/
	void makeBakedMeshes(in bool gen_lightmap_uv = false, in double lightmap_uv_texel_size = 0.1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.makeBakedMeshes, _godot_object, gen_lightmap_uv, lightmap_uv_texel_size);
	}
	/**
	Returns the position of a grid cell in the GridMap's local coordinate space.
	*/
	Vector3 mapToWorld(in long x, in long y, in long z) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.mapToWorld, _godot_object, x, y, z);
	}
	/**
	
	*/
	void resourceChanged(Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resourceChanged, _godot_object, resource);
	}
	/**
	Sets the mesh index for the cell referenced by its grid-based X, Y and Z coordinates.
	A negative item index such as $(D constant INVALID_CELL_ITEM) will clear the cell.
	Optionally, the item's orientation can be passed. For valid orientation values, see $(D Basis.getOrthogonalIndex).
	*/
	void setCellItem(in long x, in long y, in long z, in long item, in long orientation = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellItem, _godot_object, x, y, z, item, orientation);
	}
	/**
	
	*/
	void setCellScale(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellScale, _godot_object, scale);
	}
	/**
	
	*/
	void setCellSize(in Vector3 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellSize, _godot_object, size);
	}
	/**
	
	*/
	void setCenterX(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCenterX, _godot_object, enable);
	}
	/**
	
	*/
	void setCenterY(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCenterY, _godot_object, enable);
	}
	/**
	
	*/
	void setCenterZ(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCenterZ, _godot_object, enable);
	}
	/**
	
	*/
	void setClip(in bool enabled, in bool clipabove = true, in long floor = 0, in long axis = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClip, _godot_object, enabled, clipabove, floor, axis);
	}
	/**
	
	*/
	void setCollisionLayer(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionLayer, _godot_object, layer);
	}
	/**
	Sets an individual bit on the $(D collisionLayer).
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionLayerBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	Sets an individual bit on the $(D collisionMask).
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setMeshLibrary(MeshLibrary mesh_library)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMeshLibrary, _godot_object, mesh_library);
	}
	/**
	
	*/
	void setOctantSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOctantSize, _godot_object, size);
	}
	/**
	
	*/
	void setUseInBakedLight(in bool use_in_baked_light)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseInBakedLight, _godot_object, use_in_baked_light);
	}
	/**
	Returns the coordinates of the grid cell containing the given point.
	`pos` should be in the GridMap's local coordinate space.
	*/
	Vector3 worldToMap(in Vector3 pos) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.worldToMap, _godot_object, pos);
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
	The scale of the cell items.
	This does not affect the size of the grid cells themselves, only the items in them. This can be used to make cell items overlap their neighbors.
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
	The dimensions of the grid's cells.
	This does not affect the size of the meshes. See $(D cellScale).
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
	The physics layers this GridMap is in.
	GridMaps act as static bodies, meaning they aren't affected by gravity or other forces. They only affect other physics bodies that collide with them.
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
	The physics layers this GridMap detects collisions in. See $(D url=https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks)Collision layers and masks$(D /url) in the documentation for more information.
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
	Controls whether this GridMap will be baked in a $(D BakedLightmap) or not.
	*/
	@property bool useInBakedLight()
	{
		return getUseInBakedLight();
	}
	/// ditto
	@property void useInBakedLight(bool v)
	{
		setUseInBakedLight(v);
	}
}
