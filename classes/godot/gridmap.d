/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.meshlibrary;
import godot.physicsmaterial;
import godot.resource;
/**

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
		@GodotName("get_navigation_layers") GodotMethod!(long) getNavigationLayers;
		@GodotName("get_octant_size") GodotMethod!(long) getOctantSize;
		@GodotName("get_physics_material") GodotMethod!(PhysicsMaterial) getPhysicsMaterial;
		@GodotName("get_use_in_baked_light") GodotMethod!(bool) getUseInBakedLight;
		@GodotName("get_used_cells") GodotMethod!(Array) getUsedCells;
		@GodotName("get_used_cells_by_item") GodotMethod!(Array, long) getUsedCellsByItem;
		@GodotName("is_baking_navigation") GodotMethod!(bool) isBakingNavigation;
		@GodotName("make_baked_meshes") GodotMethod!(void, bool, double) makeBakedMeshes;
		@GodotName("map_to_world") GodotMethod!(Vector3, long, long, long) mapToWorld;
		@GodotName("resource_changed") GodotMethod!(void, Resource) resourceChanged;
		@GodotName("set_bake_navigation") GodotMethod!(void, bool) setBakeNavigation;
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
		@GodotName("set_navigation_layers") GodotMethod!(void, long) setNavigationLayers;
		@GodotName("set_octant_size") GodotMethod!(void, long) setOctantSize;
		@GodotName("set_physics_material") GodotMethod!(void, PhysicsMaterial) setPhysicsMaterial;
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
		/** */
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
	
	*/
	Array getBakeMeshes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getBakeMeshes, _godot_object);
	}
	/**
	
	*/
	long getCellItem(in long x, in long y, in long z) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCellItem, _godot_object, x, y, z);
	}
	/**
	
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
	
	*/
	Array getMeshes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getMeshes, _godot_object);
	}
	/**
	
	*/
	long getNavigationLayers()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNavigationLayers, _godot_object);
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
	Ref!PhysicsMaterial getPhysicsMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsMaterial)(GDNativeClassBinding.getPhysicsMaterial, _godot_object);
	}
	/**
	
	*/
	bool getUseInBakedLight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseInBakedLight, _godot_object);
	}
	/**
	
	*/
	Array getUsedCells() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getUsedCells, _godot_object);
	}
	/**
	
	*/
	Array getUsedCellsByItem(in long item) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getUsedCellsByItem, _godot_object, item);
	}
	/**
	
	*/
	bool isBakingNavigation()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBakingNavigation, _godot_object);
	}
	/**
	
	*/
	void makeBakedMeshes(in bool gen_lightmap_uv = false, in double lightmap_uv_texel_size = 0.1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.makeBakedMeshes, _godot_object, gen_lightmap_uv, lightmap_uv_texel_size);
	}
	/**
	
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
	
	*/
	void setBakeNavigation(in bool bake_navigation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBakeNavigation, _godot_object, bake_navigation);
	}
	/**
	
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
	void setNavigationLayers(in long navigation_layers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNavigationLayers, _godot_object, navigation_layers);
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
	void setPhysicsMaterial(PhysicsMaterial material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicsMaterial, _godot_object, material);
	}
	/**
	
	*/
	void setUseInBakedLight(in bool use_in_baked_light)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseInBakedLight, _godot_object, use_in_baked_light);
	}
	/**
	
	*/
	Vector3 worldToMap(in Vector3 pos) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.worldToMap, _godot_object, pos);
	}
	/**
	
	*/
	@property bool bakeNavigation()
	{
		return isBakingNavigation();
	}
	/// ditto
	@property void bakeNavigation(bool v)
	{
		setBakeNavigation(v);
	}
	/**
	
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
	/**
	
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
	@property PhysicsMaterial physicsMaterial()
	{
		return getPhysicsMaterial();
	}
	/// ditto
	@property void physicsMaterial(PhysicsMaterial v)
	{
		setPhysicsMaterial(v);
	}
	/**
	
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
