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
/**
Node for 2D tile-based maps.

Tilemaps use a $(D TileSet) which contain a list of tiles (textures plus optional collision, navigation, and/or occluder shapes) which are used to create grid-based maps.
*/
@GodotBaseClass struct TileMap
{
	static immutable string _GODOT_internal_name = "TileMap";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		modeSquare = 0,
		halfOffsetX = 0,
		tileOriginTopLeft = 0,
		tileOriginCenter = 1,
		modeIsometric = 1,
		halfOffsetY = 1,
		modeCustom = 2,
		halfOffsetDisabled = 2,
		tileOriginBottomLeft = 2,
	}
	package(godot) static GodotMethod!(void, TileSet) _GODOT_set_tileset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tileset") = _GODOT_set_tileset;
	/**
	
	*/
	void setTileset(TileSet tileset)
	{
		_GODOT_set_tileset.bind("TileMap", "set_tileset");
		ptrcall!(void)(_GODOT_set_tileset, _godot_object, tileset);
	}
	package(godot) static GodotMethod!(TileSet) _GODOT_get_tileset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tileset") = _GODOT_get_tileset;
	/**
	
	*/
	Ref!TileSet getTileset() const
	{
		_GODOT_get_tileset.bind("TileMap", "get_tileset");
		return ptrcall!(TileSet)(_GODOT_get_tileset, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode") = _GODOT_set_mode;
	/**
	
	*/
	void setMode(in long mode)
	{
		_GODOT_set_mode.bind("TileMap", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(TileMap.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	/**
	
	*/
	TileMap.Mode getMode() const
	{
		_GODOT_get_mode.bind("TileMap", "get_mode");
		return ptrcall!(TileMap.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_half_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_half_offset") = _GODOT_set_half_offset;
	/**
	
	*/
	void setHalfOffset(in long half_offset)
	{
		_GODOT_set_half_offset.bind("TileMap", "set_half_offset");
		ptrcall!(void)(_GODOT_set_half_offset, _godot_object, half_offset);
	}
	package(godot) static GodotMethod!(TileMap.HalfOffset) _GODOT_get_half_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_half_offset") = _GODOT_get_half_offset;
	/**
	
	*/
	TileMap.HalfOffset getHalfOffset() const
	{
		_GODOT_get_half_offset.bind("TileMap", "get_half_offset");
		return ptrcall!(TileMap.HalfOffset)(_GODOT_get_half_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_custom_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_transform") = _GODOT_set_custom_transform;
	/**
	
	*/
	void setCustomTransform(in Transform2D custom_transform)
	{
		_GODOT_set_custom_transform.bind("TileMap", "set_custom_transform");
		ptrcall!(void)(_GODOT_set_custom_transform, _godot_object, custom_transform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_custom_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_transform") = _GODOT_get_custom_transform;
	/**
	
	*/
	Transform2D getCustomTransform() const
	{
		_GODOT_get_custom_transform.bind("TileMap", "get_custom_transform");
		return ptrcall!(Transform2D)(_GODOT_get_custom_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_size") = _GODOT_set_cell_size;
	/**
	
	*/
	void setCellSize(in Vector2 size)
	{
		_GODOT_set_cell_size.bind("TileMap", "set_cell_size");
		ptrcall!(void)(_GODOT_set_cell_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_size") = _GODOT_get_cell_size;
	/**
	
	*/
	Vector2 getCellSize() const
	{
		_GODOT_get_cell_size.bind("TileMap", "get_cell_size");
		return ptrcall!(Vector2)(_GODOT_get_cell_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__set_old_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_old_cell_size") = _GODOT__set_old_cell_size;
	/**
	
	*/
	void _setOldCellSize(in long size)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(size);
		String _GODOT_method_name = String("_set_old_cell_size");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(long) _GODOT__get_old_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_old_cell_size") = _GODOT__get_old_cell_size;
	/**
	
	*/
	long _getOldCellSize() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_old_cell_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_quadrant_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_quadrant_size") = _GODOT_set_quadrant_size;
	/**
	
	*/
	void setQuadrantSize(in long size)
	{
		_GODOT_set_quadrant_size.bind("TileMap", "set_quadrant_size");
		ptrcall!(void)(_GODOT_set_quadrant_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_quadrant_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_quadrant_size") = _GODOT_get_quadrant_size;
	/**
	
	*/
	long getQuadrantSize() const
	{
		_GODOT_get_quadrant_size.bind("TileMap", "get_quadrant_size");
		return ptrcall!(long)(_GODOT_get_quadrant_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_tile_origin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tile_origin") = _GODOT_set_tile_origin;
	/**
	
	*/
	void setTileOrigin(in long origin)
	{
		_GODOT_set_tile_origin.bind("TileMap", "set_tile_origin");
		ptrcall!(void)(_GODOT_set_tile_origin, _godot_object, origin);
	}
	package(godot) static GodotMethod!(TileMap.TileOrigin) _GODOT_get_tile_origin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tile_origin") = _GODOT_get_tile_origin;
	/**
	
	*/
	TileMap.TileOrigin getTileOrigin() const
	{
		_GODOT_get_tile_origin.bind("TileMap", "get_tile_origin");
		return ptrcall!(TileMap.TileOrigin)(_GODOT_get_tile_origin, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_clip_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clip_uv") = _GODOT_set_clip_uv;
	/**
	
	*/
	void setClipUv(in bool enable)
	{
		_GODOT_set_clip_uv.bind("TileMap", "set_clip_uv");
		ptrcall!(void)(_GODOT_set_clip_uv, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_clip_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_clip_uv") = _GODOT_get_clip_uv;
	/**
	
	*/
	bool getClipUv() const
	{
		_GODOT_get_clip_uv.bind("TileMap", "get_clip_uv");
		return ptrcall!(bool)(_GODOT_get_clip_uv, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_y_sort_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_y_sort_mode") = _GODOT_set_y_sort_mode;
	/**
	
	*/
	void setYSortMode(in bool enable)
	{
		_GODOT_set_y_sort_mode.bind("TileMap", "set_y_sort_mode");
		ptrcall!(void)(_GODOT_set_y_sort_mode, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_y_sort_mode_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_y_sort_mode_enabled") = _GODOT_is_y_sort_mode_enabled;
	/**
	
	*/
	bool isYSortModeEnabled() const
	{
		_GODOT_is_y_sort_mode_enabled.bind("TileMap", "is_y_sort_mode_enabled");
		return ptrcall!(bool)(_GODOT_is_y_sort_mode_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_collision_use_kinematic;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_use_kinematic") = _GODOT_set_collision_use_kinematic;
	/**
	
	*/
	void setCollisionUseKinematic(in bool use_kinematic)
	{
		_GODOT_set_collision_use_kinematic.bind("TileMap", "set_collision_use_kinematic");
		ptrcall!(void)(_GODOT_set_collision_use_kinematic, _godot_object, use_kinematic);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_collision_use_kinematic;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_use_kinematic") = _GODOT_get_collision_use_kinematic;
	/**
	
	*/
	bool getCollisionUseKinematic() const
	{
		_GODOT_get_collision_use_kinematic.bind("TileMap", "get_collision_use_kinematic");
		return ptrcall!(bool)(_GODOT_get_collision_use_kinematic, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer") = _GODOT_set_collision_layer;
	/**
	
	*/
	void setCollisionLayer(in long layer)
	{
		_GODOT_set_collision_layer.bind("TileMap", "set_collision_layer");
		ptrcall!(void)(_GODOT_set_collision_layer, _godot_object, layer);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer") = _GODOT_get_collision_layer;
	/**
	
	*/
	long getCollisionLayer() const
	{
		_GODOT_get_collision_layer.bind("TileMap", "get_collision_layer");
		return ptrcall!(long)(_GODOT_get_collision_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask") = _GODOT_set_collision_mask;
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		_GODOT_set_collision_mask.bind("TileMap", "set_collision_mask");
		ptrcall!(void)(_GODOT_set_collision_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask") = _GODOT_get_collision_mask;
	/**
	
	*/
	long getCollisionMask() const
	{
		_GODOT_get_collision_mask.bind("TileMap", "get_collision_mask");
		return ptrcall!(long)(_GODOT_get_collision_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer_bit") = _GODOT_set_collision_layer_bit;
	/**
	Sets the given collision layer bit.
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		_GODOT_set_collision_layer_bit.bind("TileMap", "set_collision_layer_bit");
		ptrcall!(void)(_GODOT_set_collision_layer_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer_bit") = _GODOT_get_collision_layer_bit;
	/**
	Returns `true` if the given collision layer bit is set.
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		_GODOT_get_collision_layer_bit.bind("TileMap", "get_collision_layer_bit");
		return ptrcall!(bool)(_GODOT_get_collision_layer_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask_bit") = _GODOT_set_collision_mask_bit;
	/**
	Sets the given collision mask bit.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		_GODOT_set_collision_mask_bit.bind("TileMap", "set_collision_mask_bit");
		ptrcall!(void)(_GODOT_set_collision_mask_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask_bit") = _GODOT_get_collision_mask_bit;
	/**
	Returns `true` if the given collision mask bit is set.
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		_GODOT_get_collision_mask_bit.bind("TileMap", "get_collision_mask_bit");
		return ptrcall!(bool)(_GODOT_get_collision_mask_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_collision_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_friction") = _GODOT_set_collision_friction;
	/**
	
	*/
	void setCollisionFriction(in double value)
	{
		_GODOT_set_collision_friction.bind("TileMap", "set_collision_friction");
		ptrcall!(void)(_GODOT_set_collision_friction, _godot_object, value);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_collision_friction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_friction") = _GODOT_get_collision_friction;
	/**
	
	*/
	double getCollisionFriction() const
	{
		_GODOT_get_collision_friction.bind("TileMap", "get_collision_friction");
		return ptrcall!(double)(_GODOT_get_collision_friction, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_collision_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_bounce") = _GODOT_set_collision_bounce;
	/**
	
	*/
	void setCollisionBounce(in double value)
	{
		_GODOT_set_collision_bounce.bind("TileMap", "set_collision_bounce");
		ptrcall!(void)(_GODOT_set_collision_bounce, _godot_object, value);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_collision_bounce;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_bounce") = _GODOT_get_collision_bounce;
	/**
	
	*/
	double getCollisionBounce() const
	{
		_GODOT_get_collision_bounce.bind("TileMap", "get_collision_bounce");
		return ptrcall!(double)(_GODOT_get_collision_bounce, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_occluder_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_occluder_light_mask") = _GODOT_set_occluder_light_mask;
	/**
	
	*/
	void setOccluderLightMask(in long mask)
	{
		_GODOT_set_occluder_light_mask.bind("TileMap", "set_occluder_light_mask");
		ptrcall!(void)(_GODOT_set_occluder_light_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_occluder_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_occluder_light_mask") = _GODOT_get_occluder_light_mask;
	/**
	
	*/
	long getOccluderLightMask() const
	{
		_GODOT_get_occluder_light_mask.bind("TileMap", "get_occluder_light_mask");
		return ptrcall!(long)(_GODOT_get_occluder_light_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long, long, bool, bool, bool, Vector2) _GODOT_set_cell;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell") = _GODOT_set_cell;
	/**
	Sets the tile index for the cell given by a Vector2.
	An index of `-1` clears the cell.
	Optionally, the tile can also be flipped, transposed, or given autotile coordinates.
	*/
	void setCell(in long x, in long y, in long tile, in bool flip_x = false, in bool flip_y = false, in bool transpose = false, in Vector2 autotile_coord = Vector2(0, 0))
	{
		_GODOT_set_cell.bind("TileMap", "set_cell");
		ptrcall!(void)(_GODOT_set_cell, _godot_object, x, y, tile, flip_x, flip_y, transpose, autotile_coord);
	}
	package(godot) static GodotMethod!(void, Vector2, long, bool, bool, bool) _GODOT_set_cellv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cellv") = _GODOT_set_cellv;
	/**
	Sets the tile index for the given cell.
	An index of `-1` clears the cell.
	Optionally, the tile can also be flipped or transposed.
	*/
	void setCellv(in Vector2 position, in long tile, in bool flip_x = false, in bool flip_y = false, in bool transpose = false)
	{
		_GODOT_set_cellv.bind("TileMap", "set_cellv");
		ptrcall!(void)(_GODOT_set_cellv, _godot_object, position, tile, flip_x, flip_y, transpose);
	}
	package(godot) static GodotMethod!(long, long, long) _GODOT_get_cell;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell") = _GODOT_get_cell;
	/**
	Returns the tile index of the given cell.
	*/
	long getCell(in long x, in long y) const
	{
		_GODOT_get_cell.bind("TileMap", "get_cell");
		return ptrcall!(long)(_GODOT_get_cell, _godot_object, x, y);
	}
	package(godot) static GodotMethod!(long, Vector2) _GODOT_get_cellv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cellv") = _GODOT_get_cellv;
	/**
	Returns the tile index of the cell given by a Vector2.
	*/
	long getCellv(in Vector2 position) const
	{
		_GODOT_get_cellv.bind("TileMap", "get_cellv");
		return ptrcall!(long)(_GODOT_get_cellv, _godot_object, position);
	}
	package(godot) static GodotMethod!(bool, long, long) _GODOT_is_cell_x_flipped;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_cell_x_flipped") = _GODOT_is_cell_x_flipped;
	/**
	Returns `true` if the given cell is flipped in the x axis.
	*/
	bool isCellXFlipped(in long x, in long y) const
	{
		_GODOT_is_cell_x_flipped.bind("TileMap", "is_cell_x_flipped");
		return ptrcall!(bool)(_GODOT_is_cell_x_flipped, _godot_object, x, y);
	}
	package(godot) static GodotMethod!(bool, long, long) _GODOT_is_cell_y_flipped;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_cell_y_flipped") = _GODOT_is_cell_y_flipped;
	/**
	Returns `true` if the given cell is flipped in the y axis.
	*/
	bool isCellYFlipped(in long x, in long y) const
	{
		_GODOT_is_cell_y_flipped.bind("TileMap", "is_cell_y_flipped");
		return ptrcall!(bool)(_GODOT_is_cell_y_flipped, _godot_object, x, y);
	}
	package(godot) static GodotMethod!(bool, long, long) _GODOT_is_cell_transposed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_cell_transposed") = _GODOT_is_cell_transposed;
	/**
	Returns `true` if the given cell is transposed, i.e. the x and y axes are swapped.
	*/
	bool isCellTransposed(in long x, in long y) const
	{
		_GODOT_is_cell_transposed.bind("TileMap", "is_cell_transposed");
		return ptrcall!(bool)(_GODOT_is_cell_transposed, _godot_object, x, y);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clears all cells.
	*/
	void clear()
	{
		_GODOT_clear.bind("TileMap", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_used_cells;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_used_cells") = _GODOT_get_used_cells;
	/**
	Returns an array of all cells containing a tile from the tileset (i.e. a tile index different from `-1`).
	*/
	Array getUsedCells() const
	{
		_GODOT_get_used_cells.bind("TileMap", "get_used_cells");
		return ptrcall!(Array)(_GODOT_get_used_cells, _godot_object);
	}
	package(godot) static GodotMethod!(Array, long) _GODOT_get_used_cells_by_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_used_cells_by_id") = _GODOT_get_used_cells_by_id;
	/**
	Returns an array of all cells with the given tile id.
	*/
	Array getUsedCellsById(in long id) const
	{
		_GODOT_get_used_cells_by_id.bind("TileMap", "get_used_cells_by_id");
		return ptrcall!(Array)(_GODOT_get_used_cells_by_id, _godot_object, id);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_used_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_used_rect") = _GODOT_get_used_rect;
	/**
	Returns a rectangle enclosing the used (non-empty) tiles of the map.
	*/
	Rect2 getUsedRect()
	{
		_GODOT_get_used_rect.bind("TileMap", "get_used_rect");
		return ptrcall!(Rect2)(_GODOT_get_used_rect, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, Vector2, bool) _GODOT_map_to_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "map_to_world") = _GODOT_map_to_world;
	/**
	Returns the global position corresponding to the given tilemap (grid-based) coordinates.
	Optionally, the tilemap's half offset can be ignored.
	*/
	Vector2 mapToWorld(in Vector2 map_position, in bool ignore_half_ofs = false) const
	{
		_GODOT_map_to_world.bind("TileMap", "map_to_world");
		return ptrcall!(Vector2)(_GODOT_map_to_world, _godot_object, map_position, ignore_half_ofs);
	}
	package(godot) static GodotMethod!(Vector2, Vector2) _GODOT_world_to_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "world_to_map") = _GODOT_world_to_map;
	/**
	Returns the tilemap (grid-based) coordinatescorresponding to the given global position.
	*/
	Vector2 worldToMap(in Vector2 world_position) const
	{
		_GODOT_world_to_map.bind("TileMap", "world_to_map");
		return ptrcall!(Vector2)(_GODOT_world_to_map, _godot_object, world_position);
	}
	package(godot) static GodotMethod!(void) _GODOT__clear_quadrants;
	package(godot) alias _GODOT_methodBindInfo(string name : "_clear_quadrants") = _GODOT__clear_quadrants;
	/**
	
	*/
	void _clearQuadrants()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_clear_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__recreate_quadrants;
	package(godot) alias _GODOT_methodBindInfo(string name : "_recreate_quadrants") = _GODOT__recreate_quadrants;
	/**
	
	*/
	void _recreateQuadrants()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_recreate_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_dirty_quadrants;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_dirty_quadrants") = _GODOT__update_dirty_quadrants;
	/**
	
	*/
	void _updateDirtyQuadrants()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_dirty_quadrants");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_update_bitmask_area;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_bitmask_area") = _GODOT_update_bitmask_area;
	/**
	Applies autotiling rules to the cell (and its adjacent cells) referenced by its grid-based x and y coordinates.
	*/
	void updateBitmaskArea(in Vector2 position)
	{
		_GODOT_update_bitmask_area.bind("TileMap", "update_bitmask_area");
		ptrcall!(void)(_GODOT_update_bitmask_area, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, Vector2, Vector2) _GODOT_update_bitmask_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_bitmask_region") = _GODOT_update_bitmask_region;
	/**
	Applies autotiling rules to the cells in the given region (specified by grid-based x and y coordinates).
	Calling with invalid (or missing) parameters applies autotiling rules for the entire tilemap.
	*/
	void updateBitmaskRegion(in Vector2 start = Vector2(0, 0), in Vector2 end = Vector2(0, 0))
	{
		_GODOT_update_bitmask_region.bind("TileMap", "update_bitmask_region");
		ptrcall!(void)(_GODOT_update_bitmask_region, _godot_object, start, end);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT__set_tile_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_tile_data") = _GODOT__set_tile_data;
	/**
	
	*/
	void _setTileData(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_tile_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT__get_tile_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_tile_data") = _GODOT__get_tile_data;
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
	The TileMap's quadrant size.  Optimizes drawing by batching, using chunks of this size. Default value: 16.
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
	The light mask assigned to all light occluders in the TileMap.  The TileSet's light occluders will cast shadows only from Light2D(s) that have the same light mask(s).
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
