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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.tileset;
import godot.canvasitem;
import godot.node;
/**
Node for 2D tile-based maps.

Tilemaps use a $(D TileSet) which contain a list of tiles (textures plus optional collision, navigation, and/or occluder shapes) which are used to create grid-based maps.
*/
@GodotBaseClass struct TileMap
{
	enum string _GODOT_internal_name = "TileMap";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_tileset") GodotMethod!(void, TileSet) setTileset;
		@GodotName("get_tileset") GodotMethod!(TileSet) getTileset;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("get_mode") GodotMethod!(TileMap.Mode) getMode;
		@GodotName("set_half_offset") GodotMethod!(void, long) setHalfOffset;
		@GodotName("get_half_offset") GodotMethod!(TileMap.HalfOffset) getHalfOffset;
		@GodotName("set_custom_transform") GodotMethod!(void, Transform2D) setCustomTransform;
		@GodotName("get_custom_transform") GodotMethod!(Transform2D) getCustomTransform;
		@GodotName("set_cell_size") GodotMethod!(void, Vector2) setCellSize;
		@GodotName("get_cell_size") GodotMethod!(Vector2) getCellSize;
		@GodotName("_set_old_cell_size") GodotMethod!(void, long) _setOldCellSize;
		@GodotName("_get_old_cell_size") GodotMethod!(long) _getOldCellSize;
		@GodotName("set_quadrant_size") GodotMethod!(void, long) setQuadrantSize;
		@GodotName("get_quadrant_size") GodotMethod!(long) getQuadrantSize;
		@GodotName("set_tile_origin") GodotMethod!(void, long) setTileOrigin;
		@GodotName("get_tile_origin") GodotMethod!(TileMap.TileOrigin) getTileOrigin;
		@GodotName("set_clip_uv") GodotMethod!(void, bool) setClipUv;
		@GodotName("get_clip_uv") GodotMethod!(bool) getClipUv;
		@GodotName("set_y_sort_mode") GodotMethod!(void, bool) setYSortMode;
		@GodotName("is_y_sort_mode_enabled") GodotMethod!(bool) isYSortModeEnabled;
		@GodotName("set_collision_use_kinematic") GodotMethod!(void, bool) setCollisionUseKinematic;
		@GodotName("get_collision_use_kinematic") GodotMethod!(bool) getCollisionUseKinematic;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("set_collision_friction") GodotMethod!(void, double) setCollisionFriction;
		@GodotName("get_collision_friction") GodotMethod!(double) getCollisionFriction;
		@GodotName("set_collision_bounce") GodotMethod!(void, double) setCollisionBounce;
		@GodotName("get_collision_bounce") GodotMethod!(double) getCollisionBounce;
		@GodotName("set_occluder_light_mask") GodotMethod!(void, long) setOccluderLightMask;
		@GodotName("get_occluder_light_mask") GodotMethod!(long) getOccluderLightMask;
		@GodotName("set_cell") GodotMethod!(void, long, long, long, bool, bool, bool, Vector2) setCell;
		@GodotName("set_cellv") GodotMethod!(void, Vector2, long, bool, bool, bool) setCellv;
		@GodotName("_set_celld") GodotMethod!(void, Vector2, Dictionary) _setCelld;
		@GodotName("get_cell") GodotMethod!(long, long, long) getCell;
		@GodotName("get_cellv") GodotMethod!(long, Vector2) getCellv;
		@GodotName("is_cell_x_flipped") GodotMethod!(bool, long, long) isCellXFlipped;
		@GodotName("is_cell_y_flipped") GodotMethod!(bool, long, long) isCellYFlipped;
		@GodotName("is_cell_transposed") GodotMethod!(bool, long, long) isCellTransposed;
		@GodotName("fix_invalid_tiles") GodotMethod!(void) fixInvalidTiles;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_used_cells") GodotMethod!(Array) getUsedCells;
		@GodotName("get_used_cells_by_id") GodotMethod!(Array, long) getUsedCellsById;
		@GodotName("get_used_rect") GodotMethod!(Rect2) getUsedRect;
		@GodotName("map_to_world") GodotMethod!(Vector2, Vector2, bool) mapToWorld;
		@GodotName("world_to_map") GodotMethod!(Vector2, Vector2) worldToMap;
		@GodotName("_clear_quadrants") GodotMethod!(void) _clearQuadrants;
		@GodotName("_recreate_quadrants") GodotMethod!(void) _recreateQuadrants;
		@GodotName("update_dirty_quadrants") GodotMethod!(void) updateDirtyQuadrants;
		@GodotName("update_bitmask_area") GodotMethod!(void, Vector2) updateBitmaskArea;
		@GodotName("update_bitmask_region") GodotMethod!(void, Vector2, Vector2) updateBitmaskRegion;
		@GodotName("_set_tile_data") GodotMethod!(void, PoolIntArray) _setTileData;
		@GodotName("_get_tile_data") GodotMethod!(PoolIntArray) _getTileData;
	}
	bool opEquals(in TileMap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TileMap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	}
	/**
	
	*/
	void setTileset(TileSet tileset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTileset, _godot_object, tileset);
	}
	/**
	
	*/
	Ref!TileSet getTileset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileSet)(_classBinding.getTileset, _godot_object);
	}
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	TileMap.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileMap.Mode)(_classBinding.getMode, _godot_object);
	}
	/**
	
	*/
	void setHalfOffset(in long half_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHalfOffset, _godot_object, half_offset);
	}
	/**
	
	*/
	TileMap.HalfOffset getHalfOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileMap.HalfOffset)(_classBinding.getHalfOffset, _godot_object);
	}
	/**
	
	*/
	void setCustomTransform(in Transform2D custom_transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomTransform, _godot_object, custom_transform);
	}
	/**
	
	*/
	Transform2D getCustomTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getCustomTransform, _godot_object);
	}
	/**
	
	*/
	void setCellSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCellSize, _godot_object, size);
	}
	/**
	
	*/
	Vector2 getCellSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getCellSize, _godot_object);
	}
	/**
	
	*/
	void _setOldCellSize(in long size)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(size);
		String _GODOT_method_name = String("_set_old_cell_size");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long _getOldCellSize() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_old_cell_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	void setQuadrantSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setQuadrantSize, _godot_object, size);
	}
	/**
	
	*/
	long getQuadrantSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getQuadrantSize, _godot_object);
	}
	/**
	
	*/
	void setTileOrigin(in long origin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTileOrigin, _godot_object, origin);
	}
	/**
	
	*/
	TileMap.TileOrigin getTileOrigin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileMap.TileOrigin)(_classBinding.getTileOrigin, _godot_object);
	}
	/**
	
	*/
	void setClipUv(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClipUv, _godot_object, enable);
	}
	/**
	
	*/
	bool getClipUv() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getClipUv, _godot_object);
	}
	/**
	
	*/
	void setYSortMode(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setYSortMode, _godot_object, enable);
	}
	/**
	
	*/
	bool isYSortModeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isYSortModeEnabled, _godot_object);
	}
	/**
	
	*/
	void setCollisionUseKinematic(in bool use_kinematic)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionUseKinematic, _godot_object, use_kinematic);
	}
	/**
	
	*/
	bool getCollisionUseKinematic() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionUseKinematic, _godot_object);
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
	Sets the given collision layer bit.
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionLayerBit, _godot_object, bit, value);
	}
	/**
	Returns `true` if the given collision layer bit is set.
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionLayerBit, _godot_object, bit);
	}
	/**
	Sets the given collision mask bit.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	Returns `true` if the given collision mask bit is set.
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	
	*/
	void setCollisionFriction(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionFriction, _godot_object, value);
	}
	/**
	
	*/
	double getCollisionFriction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getCollisionFriction, _godot_object);
	}
	/**
	
	*/
	void setCollisionBounce(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionBounce, _godot_object, value);
	}
	/**
	
	*/
	double getCollisionBounce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getCollisionBounce, _godot_object);
	}
	/**
	
	*/
	void setOccluderLightMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOccluderLightMask, _godot_object, mask);
	}
	/**
	
	*/
	long getOccluderLightMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOccluderLightMask, _godot_object);
	}
	/**
	Sets the tile index for the cell given by a Vector2.
	An index of `-1` clears the cell.
	Optionally, the tile can also be flipped, transposed, or given autotile coordinates.
	Note that data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
	If you need these to be immediately updated, you can call $(D updateDirtyQuadrants).
	*/
	void setCell(in long x, in long y, in long tile, in bool flip_x = false, in bool flip_y = false, in bool transpose = false, in Vector2 autotile_coord = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCell, _godot_object, x, y, tile, flip_x, flip_y, transpose, autotile_coord);
	}
	/**
	Sets the tile index for the given cell.
	An index of `-1` clears the cell.
	Optionally, the tile can also be flipped or transposed.
	Note that data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
	If you need these to be immediately updated, you can call $(D updateDirtyQuadrants).
	*/
	void setCellv(in Vector2 position, in long tile, in bool flip_x = false, in bool flip_y = false, in bool transpose = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCellv, _godot_object, position, tile, flip_x, flip_y, transpose);
	}
	/**
	
	*/
	void _setCelld(in Vector2 position, in Dictionary data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(position);
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_celld");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns the tile index of the given cell.
	*/
	long getCell(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCell, _godot_object, x, y);
	}
	/**
	Returns the tile index of the cell given by a Vector2.
	*/
	long getCellv(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCellv, _godot_object, position);
	}
	/**
	Returns `true` if the given cell is flipped in the x axis.
	*/
	bool isCellXFlipped(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCellXFlipped, _godot_object, x, y);
	}
	/**
	Returns `true` if the given cell is flipped in the y axis.
	*/
	bool isCellYFlipped(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCellYFlipped, _godot_object, x, y);
	}
	/**
	Returns `true` if the given cell is transposed, i.e. the x and y axes are swapped.
	*/
	bool isCellTransposed(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCellTransposed, _godot_object, x, y);
	}
	/**
	Clears cells that do not exist in the tileset.
	*/
	void fixInvalidTiles()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.fixInvalidTiles, _godot_object);
	}
	/**
	Clears all cells.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Returns a $(D Vector2) array with the positions of all cells containing a tile from the tileset (i.e. a tile index different from `-1`).
	*/
	Array getUsedCells() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getUsedCells, _godot_object);
	}
	/**
	Returns an array of all cells with the given tile id.
	*/
	Array getUsedCellsById(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getUsedCellsById, _godot_object, id);
	}
	/**
	Returns a rectangle enclosing the used (non-empty) tiles of the map.
	*/
	Rect2 getUsedRect()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getUsedRect, _godot_object);
	}
	/**
	Returns the global position corresponding to the given tilemap (grid-based) coordinates.
	Optionally, the tilemap's half offset can be ignored.
	*/
	Vector2 mapToWorld(in Vector2 map_position, in bool ignore_half_ofs = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.mapToWorld, _godot_object, map_position, ignore_half_ofs);
	}
	/**
	Returns the tilemap (grid-based) coordinatescorresponding to the given global position.
	*/
	Vector2 worldToMap(in Vector2 world_position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.worldToMap, _godot_object, world_position);
	}
	/**
	
	*/
	void _clearQuadrants()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_clear_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _recreateQuadrants()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_recreate_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Updates the tile map's quadrants, allowing things such as navigation and collision shapes to be immediately used if modified.
	*/
	void updateDirtyQuadrants()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.updateDirtyQuadrants, _godot_object);
	}
	/**
	Applies autotiling rules to the cell (and its adjacent cells) referenced by its grid-based x and y coordinates.
	*/
	void updateBitmaskArea(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.updateBitmaskArea, _godot_object, position);
	}
	/**
	Applies autotiling rules to the cells in the given region (specified by grid-based x and y coordinates).
	Calling with invalid (or missing) parameters applies autotiling rules for the entire tilemap.
	*/
	void updateBitmaskRegion(in Vector2 start = Vector2(0, 0), in Vector2 end = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.updateBitmaskRegion, _godot_object, start, end);
	}
	/**
	
	*/
	void _setTileData(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_tile_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	PoolIntArray _getTileData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_tile_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolIntArray);
	}
	/**
	The TileMap orientation mode. Uses MODE_* constants. Default value: MODE_SQUARE.
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
	The TileMap's quadrant size. Optimizes drawing by batching, using chunks of this size. Default value: 16.
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
	Amount to offset alternating tiles. Uses HALF_OFFSET_* constants. Default value: HALF_OFFSET_DISABLED.
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
	Position for tile origin. Uses TILE_ORIGIN_* constants. Default value: TILE_ORIGIN_TOP_LEFT.
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
	If `true` the TileMap's children will be drawn in order of their Y coordinate. Default value: `false`.
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
	If `true` TileMap collisions will be handled as a kinematic body. If `false` collisions will be handled as static body. Default value: `false`.
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
	Friction value for static body collisions (see `collision_use_kinematic`). Default value: 1.
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
	Bounce value for static body collisions (see `collision_use_kinematic`). Default value: 0.
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
	The collision layer(s) for all colliders in the TileMap.
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
	The collision mask(s) for all colliders in the TileMap.
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
}
