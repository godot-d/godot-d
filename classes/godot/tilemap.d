/**
Node for 2D tile-based maps.

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
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.canvasitem;
import godot.node;
import godot.tileset;
/**
Node for 2D tile-based maps.

Tilemaps use a $(D TileSet) which contain a list of tiles (textures plus optional collision, navigation, and/or occluder shapes) which are used to create grid-based maps.
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
		@GodotName("get_occluder_light_mask") GodotMethod!(long) getOccluderLightMask;
		@GodotName("get_quadrant_size") GodotMethod!(long) getQuadrantSize;
		@GodotName("get_tile_origin") GodotMethod!(TileMap.TileOrigin) getTileOrigin;
		@GodotName("get_tileset") GodotMethod!(TileSet) getTileset;
		@GodotName("get_used_cells") GodotMethod!(Array) getUsedCells;
		@GodotName("get_used_cells_by_id") GodotMethod!(Array, long) getUsedCellsById;
		@GodotName("get_used_rect") GodotMethod!(Rect2) getUsedRect;
		@GodotName("is_cell_transposed") GodotMethod!(bool, long, long) isCellTransposed;
		@GodotName("is_cell_x_flipped") GodotMethod!(bool, long, long) isCellXFlipped;
		@GodotName("is_cell_y_flipped") GodotMethod!(bool, long, long) isCellYFlipped;
		@GodotName("is_centered_textures_enabled") GodotMethod!(bool) isCenteredTexturesEnabled;
		@GodotName("is_compatibility_mode_enabled") GodotMethod!(bool) isCompatibilityModeEnabled;
		@GodotName("is_y_sort_mode_enabled") GodotMethod!(bool) isYSortModeEnabled;
		@GodotName("map_to_world") GodotMethod!(Vector2, Vector2, bool) mapToWorld;
		@GodotName("set_cell") GodotMethod!(void, long, long, long, bool, bool, bool, Vector2) setCell;
		@GodotName("set_cell_size") GodotMethod!(void, Vector2) setCellSize;
		@GodotName("set_cellv") GodotMethod!(void, Vector2, long, bool, bool, bool) setCellv;
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
		@GodotName("set_occluder_light_mask") GodotMethod!(void, long) setOccluderLightMask;
		@GodotName("set_quadrant_size") GodotMethod!(void, long) setQuadrantSize;
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
		/**
		Orthogonal orientation mode.
		*/
		modeSquare = 0,
		/**
		Isometric orientation mode.
		*/
		modeIsometric = 1,
		/**
		Custom orientation mode.
		*/
		modeCustom = 2,
	}
	/// 
	enum TileOrigin : int
	{
		/**
		Tile origin at its top-left corner.
		*/
		tileOriginTopLeft = 0,
		/**
		Tile origin at its center.
		*/
		tileOriginCenter = 1,
		/**
		Tile origin at its bottom-left corner.
		*/
		tileOriginBottomLeft = 2,
	}
	/// 
	enum HalfOffset : int
	{
		/**
		Half offset on the X coordinate.
		*/
		halfOffsetX = 0,
		/**
		Half offset on the Y coordinate.
		*/
		halfOffsetY = 1,
		/**
		Half offset disabled.
		*/
		halfOffsetDisabled = 2,
		/**
		Half offset on the X coordinate (negative).
		*/
		halfOffsetNegativeX = 3,
		/**
		Half offset on the Y coordinate (negative).
		*/
		halfOffsetNegativeY = 4,
	}
	/// 
	enum Constants : int
	{
		/**
		Returned when a cell doesn't exist.
		*/
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
	Clears all cells.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	Clears cells that do not exist in the tileset.
	*/
	void fixInvalidTiles()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.fixInvalidTiles, _godot_object);
	}
	/**
	Returns the tile index of the given cell. If no tile exists in the cell, returns $(D constant INVALID_CELL).
	*/
	long getCell(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCell, _godot_object, x, y);
	}
	/**
	Returns the coordinate (subtile column and row) of the autotile variation in the tileset. Returns a zero vector if the cell doesn't have autotiling.
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
	Returns the tile index of the cell given by a Vector2. If no tile exists in the cell, returns $(D constant INVALID_CELL).
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
	Returns `true` if the given collision layer bit is set.
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
	Returns `true` if the given collision mask bit is set.
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
	Returns a $(D Vector2) array with the positions of all cells containing a tile from the tileset (i.e. a tile index different from `-1`).
	*/
	Array getUsedCells() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getUsedCells, _godot_object);
	}
	/**
	Returns an array of all cells with the given tile index specified in `id`.
	*/
	Array getUsedCellsById(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getUsedCellsById, _godot_object, id);
	}
	/**
	Returns a rectangle enclosing the used (non-empty) tiles of the map.
	*/
	Rect2 getUsedRect()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getUsedRect, _godot_object);
	}
	/**
	Returns `true` if the given cell is transposed, i.e. the X and Y axes are swapped.
	*/
	bool isCellTransposed(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCellTransposed, _godot_object, x, y);
	}
	/**
	Returns `true` if the given cell is flipped in the X axis.
	*/
	bool isCellXFlipped(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCellXFlipped, _godot_object, x, y);
	}
	/**
	Returns `true` if the given cell is flipped in the Y axis.
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
	bool isYSortModeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isYSortModeEnabled, _godot_object);
	}
	/**
	Returns the global position corresponding to the given tilemap (grid-based) coordinates.
	Optionally, the tilemap's half offset can be ignored.
	*/
	Vector2 mapToWorld(in Vector2 map_position, in bool ignore_half_ofs = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.mapToWorld, _godot_object, map_position, ignore_half_ofs);
	}
	/**
	Sets the tile index for the cell given by a Vector2.
	An index of `-1` clears the cell.
	Optionally, the tile can also be flipped, transposed, or given autotile coordinates. The autotile coordinate refers to the column and row of the subtile.
	$(B Note:) Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
	If you need these to be immediately updated, you can call $(D updateDirtyQuadrants).
	Overriding this method also overrides it internally, allowing custom logic to be implemented when tiles are placed/removed:
	
	
	func set_cell(x, y, tile, flip_x=false, flip_y=false, transpose=false, autotile_coord=Vector2())
	    # Write your custom logic here.
	    # To call the default method:
	    .set_cell(x, y, tile, flip_x, flip_y, transpose, autotile_coord)
	
	
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
	Sets the tile index for the given cell.
	An index of `-1` clears the cell.
	Optionally, the tile can also be flipped or transposed.
	$(B Note:) Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
	If you need these to be immediately updated, you can call $(D updateDirtyQuadrants).
	*/
	void setCellv(in Vector2 position, in long tile, in bool flip_x = false, in bool flip_y = false, in bool transpose = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellv, _godot_object, position, tile, flip_x, flip_y, transpose);
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
	Sets the given collision layer bit.
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
	Sets the given collision mask bit.
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
	Applies autotiling rules to the cell (and its adjacent cells) referenced by its grid-based X and Y coordinates.
	*/
	void updateBitmaskArea(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateBitmaskArea, _godot_object, position);
	}
	/**
	Applies autotiling rules to the cells in the given region (specified by grid-based X and Y coordinates).
	Calling with invalid (or missing) parameters applies autotiling rules for the entire tilemap.
	*/
	void updateBitmaskRegion(in Vector2 start = Vector2(0, 0), in Vector2 end = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateBitmaskRegion, _godot_object, start, end);
	}
	/**
	Updates the tile map's quadrants, allowing things such as navigation and collision shapes to be immediately used if modified.
	*/
	void updateDirtyQuadrants()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateDirtyQuadrants, _godot_object);
	}
	/**
	Returns the tilemap (grid-based) coordinates corresponding to the given local position.
	*/
	Vector2 worldToMap(in Vector2 world_position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.worldToMap, _godot_object, world_position);
	}
	/**
	If `true`, the cell's UVs will be clipped.
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
	The custom $(D Transform2D) to be applied to the TileMap's cells.
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
	Amount to offset alternating tiles. See $(D halfoffset) for possible values.
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
	The TileMap's quadrant size. Optimizes drawing by batching, using chunks of this size.
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
	The TileMap's cell size.
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
	Position for tile origin. See $(D tileorigin) for possible values.
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
	If `true`, the TileMap's direct children will be drawn in order of their Y coordinate.
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
	If `true`, the textures will be centered in the middle of each tile. This is useful for certain isometric or top-down modes when textures are made larger or smaller than the tiles (e.g. to avoid flickering on tile edges). The offset is still applied, but from the center of the tile. If used, $(D compatibilityMode) is ignored.
	If `false`, the texture position start in the top-left corner unless $(D compatibilityMode) is enabled.
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
	Bounce value for static body collisions (see `collision_use_kinematic`).
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
	Friction value for static body collisions (see `collision_use_kinematic`).
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
	The collision layer(s) for all colliders in the TileMap. See $(D url=https://docs.godotengine.org/en/3.2/tutorials/physics/physics_introduction.html#collision-layers-and-masks)Collision layers and masks$(D /url) in the documentation for more information.
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
	The collision mask(s) for all colliders in the TileMap. See $(D url=https://docs.godotengine.org/en/3.2/tutorials/physics/physics_introduction.html#collision-layers-and-masks)Collision layers and masks$(D /url) in the documentation for more information.
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
	If `true`, TileMap collisions will be handled as a kinematic body. If `false`, collisions will be handled as static body.
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
	If `true`, this tilemap's collision shape will be added to the collision shape of the parent. The parent has to be a $(D CollisionObject2D).
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
	If `true`, the compatibility with the tilemaps made in Godot 3.1 or earlier is maintained (textures move when the tile origin changes and rotate if the texture size is not homogeneous). This mode presents problems when doing `flip_h`, `flip_v` and `transpose` tile operations on non-homogeneous isometric tiles (e.g. 2:1), in which the texture could not coincide with the collision, thus it is not recommended for isometric or non-square tiles.
	If `false`, the textures do not move when doing `flip_h`, `flip_v` operations if no offset is used, nor when changing the tile origin.
	The compatibility mode doesn't work with the $(D centeredTextures) option, because displacing textures with the $(D cellTileOrigin) option or in irregular tiles is not relevant when centering those textures.
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
	The TileMap orientation mode. See $(D mode) for possible values.
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
	The light mask assigned to all light occluders in the TileMap. The TileSet's light occluders will cast shadows only from Light2D(s) that have the same light mask(s).
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
	The assigned $(D TileSet).
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
