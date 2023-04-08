/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.tilemap;
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
import godot.node2d;
import godot.canvasitem;
import godot.node;
import godot.tileset;
/**

*/
@GodotBaseClass struct TileMap
{
	package(godot) enum string _GODOT_internal_name = "TileMap";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_clear_quadrants") GodotMethod!(void) _clearQuadrants;
		@GodotName("_get_old_cell_size") GodotMethod!(long) _getOldCellSize;
		@GodotName("_get_tile_data") GodotMethod!(PoolIntArray) _getTileData;
		@GodotName("_recreate_quadrants") GodotMethod!(void) _recreateQuadrants;
		@GodotName("_set_celld") GodotMethod!(void, Vector2, Dictionary) _setCelld;
		@GodotName("_set_old_cell_size") GodotMethod!(void, long) _setOldCellSize;
		@GodotName("_set_tile_data") GodotMethod!(void, PoolIntArray) _setTileData;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("fix_invalid_tiles") GodotMethod!(void) fixInvalidTiles;
		@GodotName("get_cell") GodotMethod!(long, long, long) getCell;
		@GodotName("get_cell_autotile_coord") GodotMethod!(Vector2, long, long) getCellAutotileCoord;
		@GodotName("get_cell_size") GodotMethod!(Vector2) getCellSize;
		@GodotName("get_cellv") GodotMethod!(long, Vector2) getCellv;
		@GodotName("get_clip_uv") GodotMethod!(bool) getClipUv;
		@GodotName("get_collision_bounce") GodotMethod!(double) getCollisionBounce;
		@GodotName("get_collision_friction") GodotMethod!(double) getCollisionFriction;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("get_collision_use_kinematic") GodotMethod!(bool) getCollisionUseKinematic;
		@GodotName("get_collision_use_parent") GodotMethod!(bool) getCollisionUseParent;
		@GodotName("get_custom_transform") GodotMethod!(Transform2D) getCustomTransform;
		@GodotName("get_half_offset") GodotMethod!(TileMap.HalfOffset) getHalfOffset;
		@GodotName("get_mode") GodotMethod!(TileMap.Mode) getMode;
		@GodotName("get_navigation_layers") GodotMethod!(long) getNavigationLayers;
		@GodotName("get_occluder_light_mask") GodotMethod!(long) getOccluderLightMask;
		@GodotName("get_quadrant_size") GodotMethod!(long) getQuadrantSize;
		@GodotName("get_tile_origin") GodotMethod!(TileMap.TileOrigin) getTileOrigin;
		@GodotName("get_tileset") GodotMethod!(TileSet) getTileset;
		@GodotName("get_used_cells") GodotMethod!(Array) getUsedCells;
		@GodotName("get_used_cells_by_id") GodotMethod!(Array, long) getUsedCellsById;
		@GodotName("get_used_rect") GodotMethod!(Rect2) getUsedRect;
		@GodotName("is_baking_navigation") GodotMethod!(bool) isBakingNavigation;
		@GodotName("is_cell_transposed") GodotMethod!(bool, long, long) isCellTransposed;
		@GodotName("is_cell_x_flipped") GodotMethod!(bool, long, long) isCellXFlipped;
		@GodotName("is_cell_y_flipped") GodotMethod!(bool, long, long) isCellYFlipped;
		@GodotName("is_centered_textures_enabled") GodotMethod!(bool) isCenteredTexturesEnabled;
		@GodotName("is_compatibility_mode_enabled") GodotMethod!(bool) isCompatibilityModeEnabled;
		@GodotName("is_show_collision_enabled") GodotMethod!(bool) isShowCollisionEnabled;
		@GodotName("is_y_sort_mode_enabled") GodotMethod!(bool) isYSortModeEnabled;
		@GodotName("map_to_world") GodotMethod!(Vector2, Vector2, bool) mapToWorld;
		@GodotName("set_bake_navigation") GodotMethod!(void, bool) setBakeNavigation;
		@GodotName("set_cell") GodotMethod!(void, long, long, long, bool, bool, bool, Vector2) setCell;
		@GodotName("set_cell_size") GodotMethod!(void, Vector2) setCellSize;
		@GodotName("set_cellv") GodotMethod!(void, Vector2, long, bool, bool, bool, Vector2) setCellv;
		@GodotName("set_centered_textures") GodotMethod!(void, bool) setCenteredTextures;
		@GodotName("set_clip_uv") GodotMethod!(void, bool) setClipUv;
		@GodotName("set_collision_bounce") GodotMethod!(void, double) setCollisionBounce;
		@GodotName("set_collision_friction") GodotMethod!(void, double) setCollisionFriction;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("set_collision_use_kinematic") GodotMethod!(void, bool) setCollisionUseKinematic;
		@GodotName("set_collision_use_parent") GodotMethod!(void, bool) setCollisionUseParent;
		@GodotName("set_compatibility_mode") GodotMethod!(void, bool) setCompatibilityMode;
		@GodotName("set_custom_transform") GodotMethod!(void, Transform2D) setCustomTransform;
		@GodotName("set_half_offset") GodotMethod!(void, long) setHalfOffset;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("set_navigation_layers") GodotMethod!(void, long) setNavigationLayers;
		@GodotName("set_occluder_light_mask") GodotMethod!(void, long) setOccluderLightMask;
		@GodotName("set_quadrant_size") GodotMethod!(void, long) setQuadrantSize;
		@GodotName("set_show_collision") GodotMethod!(void, bool) setShowCollision;
		@GodotName("set_tile_origin") GodotMethod!(void, long) setTileOrigin;
		@GodotName("set_tileset") GodotMethod!(void, TileSet) setTileset;
		@GodotName("set_y_sort_mode") GodotMethod!(void, bool) setYSortMode;
		@GodotName("update_bitmask_area") GodotMethod!(void, Vector2) updateBitmaskArea;
		@GodotName("update_bitmask_region") GodotMethod!(void, Vector2, Vector2) updateBitmaskRegion;
		@GodotName("update_dirty_quadrants") GodotMethod!(void) updateDirtyQuadrants;
		@GodotName("world_to_map") GodotMethod!(Vector2, Vector2) worldToMap;
	}
	/// 
	pragma(inline, true) bool opEquals(in TileMap other) const
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
	/// Construct a new instance of TileMap.
	/// Note: use `memnew!TileMap` instead.
	static TileMap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TileMap");
		if(constructor is null) return typeof(this).init;
		return cast(TileMap)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Mode : int
	{
		/** */
		modeSquare = 0,
		/** */
		modeIsometric = 1,
		/** */
		modeCustom = 2,
	}
	/// 
	enum TileOrigin : int
	{
		/** */
		tileOriginTopLeft = 0,
		/** */
		tileOriginCenter = 1,
		/** */
		tileOriginBottomLeft = 2,
	}
	/// 
	enum HalfOffset : int
	{
		/** */
		halfOffsetX = 0,
		/** */
		halfOffsetY = 1,
		/** */
		halfOffsetDisabled = 2,
		/** */
		halfOffsetNegativeX = 3,
		/** */
		halfOffsetNegativeY = 4,
	}
	/// 
	enum Constants : int
	{
		/** */
		invalidCell = -1,
		tileOriginTopLeft = 0,
		halfOffsetX = 0,
		modeSquare = 0,
		tileOriginCenter = 1,
		modeIsometric = 1,
		halfOffsetY = 1,
		tileOriginBottomLeft = 2,
		halfOffsetDisabled = 2,
		modeCustom = 2,
		halfOffsetNegativeX = 3,
		halfOffsetNegativeY = 4,
	}
	/**
	
	*/
	void _clearQuadrants()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_clear_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long _getOldCellSize() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_old_cell_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	PoolIntArray _getTileData() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_tile_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolIntArray);
	}
	/**
	
	*/
	void _recreateQuadrants()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_recreate_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setCelld(in Vector2 position, in Dictionary data)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(position);
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_celld");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setOldCellSize(in long size)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(size);
		String _GODOT_method_name = String("_set_old_cell_size");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setTileData(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_tile_data");
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
	void fixInvalidTiles()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.fixInvalidTiles, _godot_object);
	}
	/**
	
	*/
	long getCell(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCell, _godot_object, x, y);
	}
	/**
	
	*/
	Vector2 getCellAutotileCoord(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCellAutotileCoord, _godot_object, x, y);
	}
	/**
	
	*/
	Vector2 getCellSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCellSize, _godot_object);
	}
	/**
	
	*/
	long getCellv(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCellv, _godot_object, position);
	}
	/**
	
	*/
	bool getClipUv() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getClipUv, _godot_object);
	}
	/**
	
	*/
	double getCollisionBounce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCollisionBounce, _godot_object);
	}
	/**
	
	*/
	double getCollisionFriction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCollisionFriction, _godot_object);
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
	bool getCollisionUseKinematic() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionUseKinematic, _godot_object);
	}
	/**
	
	*/
	bool getCollisionUseParent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionUseParent, _godot_object);
	}
	/**
	
	*/
	Transform2D getCustomTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getCustomTransform, _godot_object);
	}
	/**
	
	*/
	TileMap.HalfOffset getHalfOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileMap.HalfOffset)(GDNativeClassBinding.getHalfOffset, _godot_object);
	}
	/**
	
	*/
	TileMap.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileMap.Mode)(GDNativeClassBinding.getMode, _godot_object);
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
	long getOccluderLightMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOccluderLightMask, _godot_object);
	}
	/**
	
	*/
	long getQuadrantSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getQuadrantSize, _godot_object);
	}
	/**
	
	*/
	TileMap.TileOrigin getTileOrigin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileMap.TileOrigin)(GDNativeClassBinding.getTileOrigin, _godot_object);
	}
	/**
	
	*/
	Ref!TileSet getTileset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileSet)(GDNativeClassBinding.getTileset, _godot_object);
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
	Array getUsedCellsById(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getUsedCellsById, _godot_object, id);
	}
	/**
	
	*/
	Rect2 getUsedRect()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getUsedRect, _godot_object);
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
	bool isCellTransposed(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCellTransposed, _godot_object, x, y);
	}
	/**
	
	*/
	bool isCellXFlipped(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCellXFlipped, _godot_object, x, y);
	}
	/**
	
	*/
	bool isCellYFlipped(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCellYFlipped, _godot_object, x, y);
	}
	/**
	
	*/
	bool isCenteredTexturesEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCenteredTexturesEnabled, _godot_object);
	}
	/**
	
	*/
	bool isCompatibilityModeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCompatibilityModeEnabled, _godot_object);
	}
	/**
	
	*/
	bool isShowCollisionEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isShowCollisionEnabled, _godot_object);
	}
	/**
	
	*/
	bool isYSortModeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isYSortModeEnabled, _godot_object);
	}
	/**
	
	*/
	Vector2 mapToWorld(in Vector2 map_position, in bool ignore_half_ofs = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.mapToWorld, _godot_object, map_position, ignore_half_ofs);
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
	void setCell(in long x, in long y, in long tile, in bool flip_x = false, in bool flip_y = false, in bool transpose = false, in Vector2 autotile_coord = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCell, _godot_object, x, y, tile, flip_x, flip_y, transpose, autotile_coord);
	}
	/**
	
	*/
	void setCellSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellSize, _godot_object, size);
	}
	/**
	
	*/
	void setCellv(in Vector2 position, in long tile, in bool flip_x = false, in bool flip_y = false, in bool transpose = false, in Vector2 autotile_coord = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellv, _godot_object, position, tile, flip_x, flip_y, transpose, autotile_coord);
	}
	/**
	
	*/
	void setCenteredTextures(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCenteredTextures, _godot_object, enable);
	}
	/**
	
	*/
	void setClipUv(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClipUv, _godot_object, enable);
	}
	/**
	
	*/
	void setCollisionBounce(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionBounce, _godot_object, value);
	}
	/**
	
	*/
	void setCollisionFriction(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionFriction, _godot_object, value);
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
	void setCollisionUseKinematic(in bool use_kinematic)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionUseKinematic, _godot_object, use_kinematic);
	}
	/**
	
	*/
	void setCollisionUseParent(in bool use_parent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionUseParent, _godot_object, use_parent);
	}
	/**
	
	*/
	void setCompatibilityMode(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCompatibilityMode, _godot_object, enable);
	}
	/**
	
	*/
	void setCustomTransform(in Transform2D custom_transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomTransform, _godot_object, custom_transform);
	}
	/**
	
	*/
	void setHalfOffset(in long half_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHalfOffset, _godot_object, half_offset);
	}
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMode, _godot_object, mode);
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
	void setOccluderLightMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOccluderLightMask, _godot_object, mask);
	}
	/**
	
	*/
	void setQuadrantSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setQuadrantSize, _godot_object, size);
	}
	/**
	
	*/
	void setShowCollision(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShowCollision, _godot_object, enable);
	}
	/**
	
	*/
	void setTileOrigin(in long origin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTileOrigin, _godot_object, origin);
	}
	/**
	
	*/
	void setTileset(TileSet tileset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTileset, _godot_object, tileset);
	}
	/**
	
	*/
	void setYSortMode(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setYSortMode, _godot_object, enable);
	}
	/**
	
	*/
	void updateBitmaskArea(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateBitmaskArea, _godot_object, position);
	}
	/**
	
	*/
	void updateBitmaskRegion(in Vector2 start = Vector2(0, 0), in Vector2 end = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateBitmaskRegion, _godot_object, start, end);
	}
	/**
	
	*/
	void updateDirtyQuadrants()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateDirtyQuadrants, _godot_object);
	}
	/**
	
	*/
	Vector2 worldToMap(in Vector2 world_position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.worldToMap, _godot_object, world_position);
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
	@property bool cellClipUv()
	{
		return getClipUv();
	}
	/// ditto
	@property void cellClipUv(bool v)
	{
		setClipUv(v);
	}
	/**
	
	*/
	@property Transform2D cellCustomTransform()
	{
		return getCustomTransform();
	}
	/// ditto
	@property void cellCustomTransform(Transform2D v)
	{
		setCustomTransform(v);
	}
	/**
	
	*/
	@property TileMap.HalfOffset cellHalfOffset()
	{
		return getHalfOffset();
	}
	/// ditto
	@property void cellHalfOffset(long v)
	{
		setHalfOffset(v);
	}
	/**
	
	*/
	@property long cellQuadrantSize()
	{
		return getQuadrantSize();
	}
	/// ditto
	@property void cellQuadrantSize(long v)
	{
		setQuadrantSize(v);
	}
	/**
	
	*/
	@property Vector2 cellSize()
	{
		return getCellSize();
	}
	/// ditto
	@property void cellSize(Vector2 v)
	{
		setCellSize(v);
	}
	/**
	
	*/
	@property TileMap.TileOrigin cellTileOrigin()
	{
		return getTileOrigin();
	}
	/// ditto
	@property void cellTileOrigin(long v)
	{
		setTileOrigin(v);
	}
	/**
	
	*/
	@property bool cellYSort()
	{
		return isYSortModeEnabled();
	}
	/// ditto
	@property void cellYSort(bool v)
	{
		setYSortMode(v);
	}
	/**
	
	*/
	@property bool centeredTextures()
	{
		return isCenteredTexturesEnabled();
	}
	/// ditto
	@property void centeredTextures(bool v)
	{
		setCenteredTextures(v);
	}
	/**
	
	*/
	@property double collisionBounce()
	{
		return getCollisionBounce();
	}
	/// ditto
	@property void collisionBounce(double v)
	{
		setCollisionBounce(v);
	}
	/**
	
	*/
	@property double collisionFriction()
	{
		return getCollisionFriction();
	}
	/// ditto
	@property void collisionFriction(double v)
	{
		setCollisionFriction(v);
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
	@property bool collisionUseKinematic()
	{
		return getCollisionUseKinematic();
	}
	/// ditto
	@property void collisionUseKinematic(bool v)
	{
		setCollisionUseKinematic(v);
	}
	/**
	
	*/
	@property bool collisionUseParent()
	{
		return getCollisionUseParent();
	}
	/// ditto
	@property void collisionUseParent(bool v)
	{
		setCollisionUseParent(v);
	}
	/**
	
	*/
	@property bool compatibilityMode()
	{
		return isCompatibilityModeEnabled();
	}
	/// ditto
	@property void compatibilityMode(bool v)
	{
		setCompatibilityMode(v);
	}
	/**
	
	*/
	@property TileMap.Mode mode()
	{
		return getMode();
	}
	/// ditto
	@property void mode(long v)
	{
		setMode(v);
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
	@property long occluderLightMask()
	{
		return getOccluderLightMask();
	}
	/// ditto
	@property void occluderLightMask(long v)
	{
		setOccluderLightMask(v);
	}
	/**
	
	*/
	@property bool showCollision()
	{
		return isShowCollisionEnabled();
	}
	/// ditto
	@property void showCollision(bool v)
	{
		setShowCollision(v);
	}
	/**
	
	*/
	@property TileSet tileSet()
	{
		return getTileset();
	}
	/// ditto
	@property void tileSet(TileSet v)
	{
		setTileset(v);
	}
}
