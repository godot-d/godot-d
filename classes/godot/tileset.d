/**
Tile library for tilemaps.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.tileset;
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
import godot.texture;
import godot.shadermaterial;
import godot.shape2d;
import godot.navigationpolygon;
import godot.occluderpolygon2d;
import godot.reference;
/**
Tile library for tilemaps.

A TileSet is a library of tiles for a $(D TileMap). It contains a list of tiles, each consisting of a sprite and optional collision shapes.
Tiles are referenced by a unique integer ID.
*/
@GodotBaseClass struct TileSet
{
	enum string _GODOT_internal_name = "TileSet";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_is_tile_bound") GodotMethod!(bool, long, long) _isTileBound;
		@GodotName("_forward_subtile_selection") GodotMethod!(Vector2, long, long, GodotObject, Vector2) _forwardSubtileSelection;
		@GodotName("create_tile") GodotMethod!(void, long) createTile;
		@GodotName("autotile_set_bitmask_mode") GodotMethod!(void, long, long) autotileSetBitmaskMode;
		@GodotName("autotile_get_bitmask_mode") GodotMethod!(TileSet.BitmaskMode, long) autotileGetBitmaskMode;
		@GodotName("autotile_set_size") GodotMethod!(void, long, Vector2) autotileSetSize;
		@GodotName("autotile_get_size") GodotMethod!(Vector2, long) autotileGetSize;
		@GodotName("tile_set_name") GodotMethod!(void, long, String) tileSetName;
		@GodotName("tile_get_name") GodotMethod!(String, long) tileGetName;
		@GodotName("tile_set_texture") GodotMethod!(void, long, Texture) tileSetTexture;
		@GodotName("tile_get_texture") GodotMethod!(Texture, long) tileGetTexture;
		@GodotName("tile_set_normal_map") GodotMethod!(void, long, Texture) tileSetNormalMap;
		@GodotName("tile_get_normal_map") GodotMethod!(Texture, long) tileGetNormalMap;
		@GodotName("tile_set_material") GodotMethod!(void, long, ShaderMaterial) tileSetMaterial;
		@GodotName("tile_get_material") GodotMethod!(ShaderMaterial, long) tileGetMaterial;
		@GodotName("tile_set_modulate") GodotMethod!(void, long, Color) tileSetModulate;
		@GodotName("tile_get_modulate") GodotMethod!(Color, long) tileGetModulate;
		@GodotName("tile_set_texture_offset") GodotMethod!(void, long, Vector2) tileSetTextureOffset;
		@GodotName("tile_get_texture_offset") GodotMethod!(Vector2, long) tileGetTextureOffset;
		@GodotName("tile_set_region") GodotMethod!(void, long, Rect2) tileSetRegion;
		@GodotName("tile_get_region") GodotMethod!(Rect2, long) tileGetRegion;
		@GodotName("tile_set_shape") GodotMethod!(void, long, long, Shape2D) tileSetShape;
		@GodotName("tile_get_shape") GodotMethod!(Shape2D, long, long) tileGetShape;
		@GodotName("tile_set_shape_offset") GodotMethod!(void, long, long, Vector2) tileSetShapeOffset;
		@GodotName("tile_get_shape_offset") GodotMethod!(Vector2, long, long) tileGetShapeOffset;
		@GodotName("tile_set_shape_transform") GodotMethod!(void, long, long, Transform2D) tileSetShapeTransform;
		@GodotName("tile_get_shape_transform") GodotMethod!(Transform2D, long, long) tileGetShapeTransform;
		@GodotName("tile_set_shape_one_way") GodotMethod!(void, long, long, bool) tileSetShapeOneWay;
		@GodotName("tile_get_shape_one_way") GodotMethod!(bool, long, long) tileGetShapeOneWay;
		@GodotName("tile_add_shape") GodotMethod!(void, long, Shape2D, Transform2D, bool, Vector2) tileAddShape;
		@GodotName("tile_get_shape_count") GodotMethod!(long, long) tileGetShapeCount;
		@GodotName("tile_set_shapes") GodotMethod!(void, long, Array) tileSetShapes;
		@GodotName("tile_get_shapes") GodotMethod!(Array, long) tileGetShapes;
		@GodotName("tile_set_tile_mode") GodotMethod!(void, long, long) tileSetTileMode;
		@GodotName("tile_get_tile_mode") GodotMethod!(TileSet.TileMode, long) tileGetTileMode;
		@GodotName("tile_set_navigation_polygon") GodotMethod!(void, long, NavigationPolygon) tileSetNavigationPolygon;
		@GodotName("tile_get_navigation_polygon") GodotMethod!(NavigationPolygon, long) tileGetNavigationPolygon;
		@GodotName("tile_set_navigation_polygon_offset") GodotMethod!(void, long, Vector2) tileSetNavigationPolygonOffset;
		@GodotName("tile_get_navigation_polygon_offset") GodotMethod!(Vector2, long) tileGetNavigationPolygonOffset;
		@GodotName("tile_set_light_occluder") GodotMethod!(void, long, OccluderPolygon2D) tileSetLightOccluder;
		@GodotName("tile_get_light_occluder") GodotMethod!(OccluderPolygon2D, long) tileGetLightOccluder;
		@GodotName("tile_set_occluder_offset") GodotMethod!(void, long, Vector2) tileSetOccluderOffset;
		@GodotName("tile_get_occluder_offset") GodotMethod!(Vector2, long) tileGetOccluderOffset;
		@GodotName("tile_set_z_index") GodotMethod!(void, long, long) tileSetZIndex;
		@GodotName("tile_get_z_index") GodotMethod!(long, long) tileGetZIndex;
		@GodotName("remove_tile") GodotMethod!(void, long) removeTile;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_last_unused_tile_id") GodotMethod!(long) getLastUnusedTileId;
		@GodotName("find_tile_by_name") GodotMethod!(long, String) findTileByName;
		@GodotName("get_tiles_ids") GodotMethod!(Array) getTilesIds;
	}
	bool opEquals(in TileSet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TileSet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TileSet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TileSet");
		if(constructor is null) return typeof(this).init;
		return cast(TileSet)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum TileMode : int
	{
		/**
		
		*/
		singleTile = 0,
		/**
		
		*/
		autoTile = 1,
		/**
		
		*/
		atlasTile = 2,
	}
	/// 
	enum AutotileBindings : int
	{
		/**
		
		*/
		bindTopleft = 1,
		/**
		
		*/
		bindTop = 2,
		/**
		
		*/
		bindTopright = 4,
		/**
		
		*/
		bindLeft = 8,
		/**
		
		*/
		bindRight = 32,
		/**
		
		*/
		bindBottomleft = 64,
		/**
		
		*/
		bindBottom = 128,
		/**
		
		*/
		bindBottomright = 256,
	}
	/// 
	enum BitmaskMode : int
	{
		/**
		
		*/
		bitmask2x2 = 0,
		/**
		
		*/
		bitmask3x3Minimal = 1,
		/**
		
		*/
		bitmask3x3 = 2,
	}
	/// 
	enum Constants : int
	{
		singleTile = 0,
		bitmask2x2 = 0,
		bitmask3x3Minimal = 1,
		bindTopleft = 1,
		autoTile = 1,
		bindTop = 2,
		bitmask3x3 = 2,
		atlasTile = 2,
		bindTopright = 4,
		bindLeft = 8,
		bindRight = 32,
		bindBottomleft = 64,
		bindBottom = 128,
		bindBottomright = 256,
	}
	/**
	
	*/
	bool _isTileBound(in long drawn_id, in long neighbor_id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(drawn_id);
		_GODOT_args.append(neighbor_id);
		String _GODOT_method_name = String("_is_tile_bound");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	Vector2 _forwardSubtileSelection(in long autotile_id, in long bitmask, GodotObject tilemap, in Vector2 tile_location)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(autotile_id);
		_GODOT_args.append(bitmask);
		_GODOT_args.append(tilemap);
		_GODOT_args.append(tile_location);
		String _GODOT_method_name = String("_forward_subtile_selection");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	/**
	Creates a new tile with the given ID.
	*/
	void createTile(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createTile, _godot_object, id);
	}
	/**
	
	*/
	void autotileSetBitmaskMode(in long id, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.autotileSetBitmaskMode, _godot_object, id, mode);
	}
	/**
	
	*/
	TileSet.BitmaskMode autotileGetBitmaskMode(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileSet.BitmaskMode)(_classBinding.autotileGetBitmaskMode, _godot_object, id);
	}
	/**
	
	*/
	void autotileSetSize(in long id, in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.autotileSetSize, _godot_object, id, size);
	}
	/**
	
	*/
	Vector2 autotileGetSize(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.autotileGetSize, _godot_object, id);
	}
	/**
	Sets the tile's name.
	*/
	void tileSetName(StringArg1)(in long id, in StringArg1 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetName, _godot_object, id, name);
	}
	/**
	Returns the tile's name.
	*/
	String tileGetName(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.tileGetName, _godot_object, id);
	}
	/**
	Sets the tile's texture.
	*/
	void tileSetTexture(in long id, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetTexture, _godot_object, id, texture);
	}
	/**
	Returns the tile's texture.
	*/
	Ref!Texture tileGetTexture(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.tileGetTexture, _godot_object, id);
	}
	/**
	Sets the tile's normal map texture.
	*/
	void tileSetNormalMap(in long id, Texture normal_map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetNormalMap, _godot_object, id, normal_map);
	}
	/**
	Returns the tile's normal map texture.
	*/
	Ref!Texture tileGetNormalMap(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.tileGetNormalMap, _godot_object, id);
	}
	/**
	Sets the tile's material.
	*/
	void tileSetMaterial(in long id, ShaderMaterial material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetMaterial, _godot_object, id, material);
	}
	/**
	Returns the tile's material.
	*/
	Ref!ShaderMaterial tileGetMaterial(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ShaderMaterial)(_classBinding.tileGetMaterial, _godot_object, id);
	}
	/**
	Sets the tile's modulation color.
	*/
	void tileSetModulate(in long id, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetModulate, _godot_object, id, color);
	}
	/**
	Returns the tile's modulation color.
	*/
	Color tileGetModulate(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.tileGetModulate, _godot_object, id);
	}
	/**
	Sets the tile's texture offset.
	*/
	void tileSetTextureOffset(in long id, in Vector2 texture_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetTextureOffset, _godot_object, id, texture_offset);
	}
	/**
	Returns the texture offset of the tile.
	*/
	Vector2 tileGetTextureOffset(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.tileGetTextureOffset, _godot_object, id);
	}
	/**
	Sets the tile's sub-region in the texture. This is common in texture atlases.
	*/
	void tileSetRegion(in long id, in Rect2 region)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetRegion, _godot_object, id, region);
	}
	/**
	Returns the tile sub-region in the texture.
	*/
	Rect2 tileGetRegion(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.tileGetRegion, _godot_object, id);
	}
	/**
	Sets a shape for the tile, enabling collision.
	*/
	void tileSetShape(in long id, in long shape_id, Shape2D shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetShape, _godot_object, id, shape_id, shape);
	}
	/**
	Returns a tile's given shape.
	*/
	Ref!Shape2D tileGetShape(in long id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape2D)(_classBinding.tileGetShape, _godot_object, id, shape_id);
	}
	/**
	Sets the offset of a tile's shape.
	*/
	void tileSetShapeOffset(in long id, in long shape_id, in Vector2 shape_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetShapeOffset, _godot_object, id, shape_id, shape_offset);
	}
	/**
	Returns the offset of a tile's shape.
	*/
	Vector2 tileGetShapeOffset(in long id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.tileGetShapeOffset, _godot_object, id, shape_id);
	}
	/**
	Sets a $(D Transform2D) on a tile's shape.
	*/
	void tileSetShapeTransform(in long id, in long shape_id, in Transform2D shape_transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetShapeTransform, _godot_object, id, shape_id, shape_transform);
	}
	/**
	Returns the $(D Transform2D) of a tile's shape.
	*/
	Transform2D tileGetShapeTransform(in long id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.tileGetShapeTransform, _godot_object, id, shape_id);
	}
	/**
	Enables one-way collision on a tile's shape.
	*/
	void tileSetShapeOneWay(in long id, in long shape_id, in bool one_way)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetShapeOneWay, _godot_object, id, shape_id, one_way);
	}
	/**
	Returns the one-way collision value of a tile's shape.
	*/
	bool tileGetShapeOneWay(in long id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.tileGetShapeOneWay, _godot_object, id, shape_id);
	}
	/**
	Adds a shape to the tile.
	*/
	void tileAddShape(in long id, Shape2D shape, in Transform2D shape_transform, in bool one_way = false, in Vector2 autotile_coord = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileAddShape, _godot_object, id, shape, shape_transform, one_way, autotile_coord);
	}
	/**
	Returns the number of shapes assigned to a tile.
	*/
	long tileGetShapeCount(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.tileGetShapeCount, _godot_object, id);
	}
	/**
	Sets an array of shapes for the tile, enabling collision.
	*/
	void tileSetShapes(in long id, in Array shapes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetShapes, _godot_object, id, shapes);
	}
	/**
	Returns an array of the tile's shapes.
	*/
	Array tileGetShapes(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.tileGetShapes, _godot_object, id);
	}
	/**
	Sets the tile's $(D tilemode).
	*/
	void tileSetTileMode(in long id, in long tilemode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetTileMode, _godot_object, id, tilemode);
	}
	/**
	Returns the tile's $(D tilemode).
	*/
	TileSet.TileMode tileGetTileMode(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileSet.TileMode)(_classBinding.tileGetTileMode, _godot_object, id);
	}
	/**
	Sets the tile's navigation polygon.
	*/
	void tileSetNavigationPolygon(in long id, NavigationPolygon navigation_polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetNavigationPolygon, _godot_object, id, navigation_polygon);
	}
	/**
	Returns the navigation polygon of the tile.
	*/
	Ref!NavigationPolygon tileGetNavigationPolygon(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NavigationPolygon)(_classBinding.tileGetNavigationPolygon, _godot_object, id);
	}
	/**
	Sets an offset for the tile's navigation polygon.
	*/
	void tileSetNavigationPolygonOffset(in long id, in Vector2 navigation_polygon_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetNavigationPolygonOffset, _godot_object, id, navigation_polygon_offset);
	}
	/**
	Returns the offset of the tile's navigation polygon.
	*/
	Vector2 tileGetNavigationPolygonOffset(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.tileGetNavigationPolygonOffset, _godot_object, id);
	}
	/**
	Sets a light occluder for the tile.
	*/
	void tileSetLightOccluder(in long id, OccluderPolygon2D light_occluder)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetLightOccluder, _godot_object, id, light_occluder);
	}
	/**
	Returns the tile's light occluder.
	*/
	Ref!OccluderPolygon2D tileGetLightOccluder(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OccluderPolygon2D)(_classBinding.tileGetLightOccluder, _godot_object, id);
	}
	/**
	Sets an offset for the tile's light occluder.
	*/
	void tileSetOccluderOffset(in long id, in Vector2 occluder_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetOccluderOffset, _godot_object, id, occluder_offset);
	}
	/**
	Returns the offset of the tile's light occluder.
	*/
	Vector2 tileGetOccluderOffset(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.tileGetOccluderOffset, _godot_object, id);
	}
	/**
	Sets the tile's drawing index.
	*/
	void tileSetZIndex(in long id, in long z_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.tileSetZIndex, _godot_object, id, z_index);
	}
	/**
	Returns the tile's z-index (drawing layer).
	*/
	long tileGetZIndex(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.tileGetZIndex, _godot_object, id);
	}
	/**
	Removes the given tile ID.
	*/
	void removeTile(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeTile, _godot_object, id);
	}
	/**
	Clears all tiles.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Returns the ID following the last currently used ID, useful when creating a new tile.
	*/
	long getLastUnusedTileId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLastUnusedTileId, _godot_object);
	}
	/**
	Returns the first tile matching the given name.
	*/
	long findTileByName(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.findTileByName, _godot_object, name);
	}
	/**
	Returns an array of all currently used tile IDs.
	*/
	Array getTilesIds() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getTilesIds, _godot_object);
	}
}
