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
/**
Tile library for tilemaps.

A TileSet is a library of tiles for a $(D TileMap). It contains a list of tiles, each consisting of a sprite and optional collision shapes.
Tiles are referenced by a unique integer ID.
*/
@GodotBaseClass struct TileSet
{
	static immutable string _GODOT_internal_name = "TileSet";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		bitmask3x3 = 1,
	}
	/// 
	enum Constants : int
	{
		bitmask2x2 = 0,
		bindTopleft = 1,
		bitmask3x3 = 1,
		bindTop = 2,
		bindTopright = 4,
		bindLeft = 8,
		bindRight = 32,
		bindBottomleft = 64,
		bindBottom = 128,
		bindBottomright = 256,
	}
	package(godot) static GodotMethod!(bool, long, long) _GODOT__is_tile_bound;
	package(godot) alias _GODOT_methodBindInfo(string name : "_is_tile_bound") = _GODOT__is_tile_bound;
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
	package(godot) static GodotMethod!(Vector2, long, long, GodotObject, Vector2) _GODOT__forward_subtile_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "_forward_subtile_selection") = _GODOT__forward_subtile_selection;
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
	package(godot) static GodotMethod!(void, long) _GODOT_create_tile;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_tile") = _GODOT_create_tile;
	/**
	Create a new tile which will be referenced by the given ID.
	*/
	void createTile(in long id)
	{
		_GODOT_create_tile.bind("TileSet", "create_tile");
		ptrcall!(void)(_GODOT_create_tile, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_autotile_set_bitmask_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "autotile_set_bitmask_mode") = _GODOT_autotile_set_bitmask_mode;
	/**
	
	*/
	void autotileSetBitmaskMode(in long id, in long mode)
	{
		_GODOT_autotile_set_bitmask_mode.bind("TileSet", "autotile_set_bitmask_mode");
		ptrcall!(void)(_GODOT_autotile_set_bitmask_mode, _godot_object, id, mode);
	}
	package(godot) static GodotMethod!(TileSet.BitmaskMode, long) _GODOT_autotile_get_bitmask_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "autotile_get_bitmask_mode") = _GODOT_autotile_get_bitmask_mode;
	/**
	
	*/
	TileSet.BitmaskMode autotileGetBitmaskMode(in long id) const
	{
		_GODOT_autotile_get_bitmask_mode.bind("TileSet", "autotile_get_bitmask_mode");
		return ptrcall!(TileSet.BitmaskMode)(_GODOT_autotile_get_bitmask_mode, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_tile_set_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_name") = _GODOT_tile_set_name;
	/**
	Set the name of the tile, for descriptive purposes.
	*/
	void tileSetName(StringArg1)(in long id, in StringArg1 name)
	{
		_GODOT_tile_set_name.bind("TileSet", "tile_set_name");
		ptrcall!(void)(_GODOT_tile_set_name, _godot_object, id, name);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_tile_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_name") = _GODOT_tile_get_name;
	/**
	Return the name of the tile.
	*/
	String tileGetName(in long id) const
	{
		_GODOT_tile_get_name.bind("TileSet", "tile_get_name");
		return ptrcall!(String)(_GODOT_tile_get_name, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_tile_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_texture") = _GODOT_tile_set_texture;
	/**
	Set the texture of the tile.
	*/
	void tileSetTexture(in long id, Texture texture)
	{
		_GODOT_tile_set_texture.bind("TileSet", "tile_set_texture");
		ptrcall!(void)(_GODOT_tile_set_texture, _godot_object, id, texture);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_tile_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_texture") = _GODOT_tile_get_texture;
	/**
	Return the texture of the tile.
	*/
	Ref!Texture tileGetTexture(in long id) const
	{
		_GODOT_tile_get_texture.bind("TileSet", "tile_get_texture");
		return ptrcall!(Texture)(_GODOT_tile_get_texture, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_tile_set_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_normal_map") = _GODOT_tile_set_normal_map;
	/**
	
	*/
	void tileSetNormalMap(in long id, Texture normal_map)
	{
		_GODOT_tile_set_normal_map.bind("TileSet", "tile_set_normal_map");
		ptrcall!(void)(_GODOT_tile_set_normal_map, _godot_object, id, normal_map);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_tile_get_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_normal_map") = _GODOT_tile_get_normal_map;
	/**
	
	*/
	Ref!Texture tileGetNormalMap(in long id) const
	{
		_GODOT_tile_get_normal_map.bind("TileSet", "tile_get_normal_map");
		return ptrcall!(Texture)(_GODOT_tile_get_normal_map, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, ShaderMaterial) _GODOT_tile_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_material") = _GODOT_tile_set_material;
	/**
	Set the material of the tile.
	*/
	void tileSetMaterial(in long id, ShaderMaterial material)
	{
		_GODOT_tile_set_material.bind("TileSet", "tile_set_material");
		ptrcall!(void)(_GODOT_tile_set_material, _godot_object, id, material);
	}
	package(godot) static GodotMethod!(ShaderMaterial, long) _GODOT_tile_get_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_material") = _GODOT_tile_get_material;
	/**
	Return the material of the tile.
	*/
	Ref!ShaderMaterial tileGetMaterial(in long id) const
	{
		_GODOT_tile_get_material.bind("TileSet", "tile_get_material");
		return ptrcall!(ShaderMaterial)(_GODOT_tile_get_material, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, Vector2) _GODOT_tile_set_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_texture_offset") = _GODOT_tile_set_texture_offset;
	/**
	Set the texture offset of the tile.
	*/
	void tileSetTextureOffset(in long id, in Vector2 texture_offset)
	{
		_GODOT_tile_set_texture_offset.bind("TileSet", "tile_set_texture_offset");
		ptrcall!(void)(_GODOT_tile_set_texture_offset, _godot_object, id, texture_offset);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_tile_get_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_texture_offset") = _GODOT_tile_get_texture_offset;
	/**
	Return the texture offset of the tile.
	*/
	Vector2 tileGetTextureOffset(in long id) const
	{
		_GODOT_tile_get_texture_offset.bind("TileSet", "tile_get_texture_offset");
		return ptrcall!(Vector2)(_GODOT_tile_get_texture_offset, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, Rect2) _GODOT_tile_set_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_region") = _GODOT_tile_set_region;
	/**
	Set the tile sub-region in the texture. This is common in texture atlases.
	*/
	void tileSetRegion(in long id, in Rect2 region)
	{
		_GODOT_tile_set_region.bind("TileSet", "tile_set_region");
		ptrcall!(void)(_GODOT_tile_set_region, _godot_object, id, region);
	}
	package(godot) static GodotMethod!(Rect2, long) _GODOT_tile_get_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_region") = _GODOT_tile_get_region;
	/**
	Return the tile sub-region in the texture.
	*/
	Rect2 tileGetRegion(in long id) const
	{
		_GODOT_tile_get_region.bind("TileSet", "tile_get_region");
		return ptrcall!(Rect2)(_GODOT_tile_get_region, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, long, Shape2D) _GODOT_tile_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_shape") = _GODOT_tile_set_shape;
	/**
	
	*/
	void tileSetShape(in long id, in long shape_id, Shape2D shape)
	{
		_GODOT_tile_set_shape.bind("TileSet", "tile_set_shape");
		ptrcall!(void)(_GODOT_tile_set_shape, _godot_object, id, shape_id, shape);
	}
	package(godot) static GodotMethod!(Shape2D, long, long) _GODOT_tile_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_shape") = _GODOT_tile_get_shape;
	/**
	
	*/
	Ref!Shape2D tileGetShape(in long id, in long shape_id) const
	{
		_GODOT_tile_get_shape.bind("TileSet", "tile_get_shape");
		return ptrcall!(Shape2D)(_GODOT_tile_get_shape, _godot_object, id, shape_id);
	}
	package(godot) static GodotMethod!(void, long, long, Transform2D) _GODOT_tile_set_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_shape_transform") = _GODOT_tile_set_shape_transform;
	/**
	
	*/
	void tileSetShapeTransform(in long id, in long shape_id, in Transform2D shape_transform)
	{
		_GODOT_tile_set_shape_transform.bind("TileSet", "tile_set_shape_transform");
		ptrcall!(void)(_GODOT_tile_set_shape_transform, _godot_object, id, shape_id, shape_transform);
	}
	package(godot) static GodotMethod!(Transform2D, long, long) _GODOT_tile_get_shape_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_shape_transform") = _GODOT_tile_get_shape_transform;
	/**
	
	*/
	Transform2D tileGetShapeTransform(in long id, in long shape_id) const
	{
		_GODOT_tile_get_shape_transform.bind("TileSet", "tile_get_shape_transform");
		return ptrcall!(Transform2D)(_GODOT_tile_get_shape_transform, _godot_object, id, shape_id);
	}
	package(godot) static GodotMethod!(void, long, long, bool) _GODOT_tile_set_shape_one_way;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_shape_one_way") = _GODOT_tile_set_shape_one_way;
	/**
	
	*/
	void tileSetShapeOneWay(in long id, in long shape_id, in bool one_way)
	{
		_GODOT_tile_set_shape_one_way.bind("TileSet", "tile_set_shape_one_way");
		ptrcall!(void)(_GODOT_tile_set_shape_one_way, _godot_object, id, shape_id, one_way);
	}
	package(godot) static GodotMethod!(bool, long, long) _GODOT_tile_get_shape_one_way;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_shape_one_way") = _GODOT_tile_get_shape_one_way;
	/**
	
	*/
	bool tileGetShapeOneWay(in long id, in long shape_id) const
	{
		_GODOT_tile_get_shape_one_way.bind("TileSet", "tile_get_shape_one_way");
		return ptrcall!(bool)(_GODOT_tile_get_shape_one_way, _godot_object, id, shape_id);
	}
	package(godot) static GodotMethod!(void, long, Shape2D, Transform2D, bool, Vector2) _GODOT_tile_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_add_shape") = _GODOT_tile_add_shape;
	/**
	
	*/
	void tileAddShape(in long id, Shape2D shape, in Transform2D shape_transform, in bool one_way = false, in Vector2 autotile_coord = Vector2(0, 0))
	{
		_GODOT_tile_add_shape.bind("TileSet", "tile_add_shape");
		ptrcall!(void)(_GODOT_tile_add_shape, _godot_object, id, shape, shape_transform, one_way, autotile_coord);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_tile_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_shape_count") = _GODOT_tile_get_shape_count;
	/**
	
	*/
	long tileGetShapeCount(in long id) const
	{
		_GODOT_tile_get_shape_count.bind("TileSet", "tile_get_shape_count");
		return ptrcall!(long)(_GODOT_tile_get_shape_count, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, Array) _GODOT_tile_set_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_shapes") = _GODOT_tile_set_shapes;
	/**
	Set an array of shapes for the tile, enabling physics to collide with it.
	*/
	void tileSetShapes(in long id, in Array shapes)
	{
		_GODOT_tile_set_shapes.bind("TileSet", "tile_set_shapes");
		ptrcall!(void)(_GODOT_tile_set_shapes, _godot_object, id, shapes);
	}
	package(godot) static GodotMethod!(Array, long) _GODOT_tile_get_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_shapes") = _GODOT_tile_get_shapes;
	/**
	Return the array of shapes of the tile.
	*/
	Array tileGetShapes(in long id) const
	{
		_GODOT_tile_get_shapes.bind("TileSet", "tile_get_shapes");
		return ptrcall!(Array)(_GODOT_tile_get_shapes, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, NavigationPolygon) _GODOT_tile_set_navigation_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_navigation_polygon") = _GODOT_tile_set_navigation_polygon;
	/**
	Set a navigation polygon for the tile.
	*/
	void tileSetNavigationPolygon(in long id, NavigationPolygon navigation_polygon)
	{
		_GODOT_tile_set_navigation_polygon.bind("TileSet", "tile_set_navigation_polygon");
		ptrcall!(void)(_GODOT_tile_set_navigation_polygon, _godot_object, id, navigation_polygon);
	}
	package(godot) static GodotMethod!(NavigationPolygon, long) _GODOT_tile_get_navigation_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_navigation_polygon") = _GODOT_tile_get_navigation_polygon;
	/**
	Return the navigation polygon of the tile.
	*/
	Ref!NavigationPolygon tileGetNavigationPolygon(in long id) const
	{
		_GODOT_tile_get_navigation_polygon.bind("TileSet", "tile_get_navigation_polygon");
		return ptrcall!(NavigationPolygon)(_GODOT_tile_get_navigation_polygon, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, Vector2) _GODOT_tile_set_navigation_polygon_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_navigation_polygon_offset") = _GODOT_tile_set_navigation_polygon_offset;
	/**
	Set an offset for the tile's navigation polygon.
	*/
	void tileSetNavigationPolygonOffset(in long id, in Vector2 navigation_polygon_offset)
	{
		_GODOT_tile_set_navigation_polygon_offset.bind("TileSet", "tile_set_navigation_polygon_offset");
		ptrcall!(void)(_GODOT_tile_set_navigation_polygon_offset, _godot_object, id, navigation_polygon_offset);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_tile_get_navigation_polygon_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_navigation_polygon_offset") = _GODOT_tile_get_navigation_polygon_offset;
	/**
	Return the offset of the tile's navigation polygon.
	*/
	Vector2 tileGetNavigationPolygonOffset(in long id) const
	{
		_GODOT_tile_get_navigation_polygon_offset.bind("TileSet", "tile_get_navigation_polygon_offset");
		return ptrcall!(Vector2)(_GODOT_tile_get_navigation_polygon_offset, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, OccluderPolygon2D) _GODOT_tile_set_light_occluder;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_light_occluder") = _GODOT_tile_set_light_occluder;
	/**
	Set a light occluder for the tile.
	*/
	void tileSetLightOccluder(in long id, OccluderPolygon2D light_occluder)
	{
		_GODOT_tile_set_light_occluder.bind("TileSet", "tile_set_light_occluder");
		ptrcall!(void)(_GODOT_tile_set_light_occluder, _godot_object, id, light_occluder);
	}
	package(godot) static GodotMethod!(OccluderPolygon2D, long) _GODOT_tile_get_light_occluder;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_light_occluder") = _GODOT_tile_get_light_occluder;
	/**
	Return the light occluder of the tile.
	*/
	Ref!OccluderPolygon2D tileGetLightOccluder(in long id) const
	{
		_GODOT_tile_get_light_occluder.bind("TileSet", "tile_get_light_occluder");
		return ptrcall!(OccluderPolygon2D)(_GODOT_tile_get_light_occluder, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, Vector2) _GODOT_tile_set_occluder_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_set_occluder_offset") = _GODOT_tile_set_occluder_offset;
	/**
	Set an offset for the tile's light occluder.
	*/
	void tileSetOccluderOffset(in long id, in Vector2 occluder_offset)
	{
		_GODOT_tile_set_occluder_offset.bind("TileSet", "tile_set_occluder_offset");
		ptrcall!(void)(_GODOT_tile_set_occluder_offset, _godot_object, id, occluder_offset);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_tile_get_occluder_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "tile_get_occluder_offset") = _GODOT_tile_get_occluder_offset;
	/**
	Return the offset of the tile's light occluder.
	*/
	Vector2 tileGetOccluderOffset(in long id) const
	{
		_GODOT_tile_get_occluder_offset.bind("TileSet", "tile_get_occluder_offset");
		return ptrcall!(Vector2)(_GODOT_tile_get_occluder_offset, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_tile;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_tile") = _GODOT_remove_tile;
	/**
	Remove the tile referenced by the given ID.
	*/
	void removeTile(in long id)
	{
		_GODOT_remove_tile.bind("TileSet", "remove_tile");
		ptrcall!(void)(_GODOT_remove_tile, _godot_object, id);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clear all tiles.
	*/
	void clear()
	{
		_GODOT_clear.bind("TileSet", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_last_unused_tile_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_last_unused_tile_id") = _GODOT_get_last_unused_tile_id;
	/**
	Return the ID following the last currently used ID, useful when creating a new tile.
	*/
	long getLastUnusedTileId() const
	{
		_GODOT_get_last_unused_tile_id.bind("TileSet", "get_last_unused_tile_id");
		return ptrcall!(long)(_GODOT_get_last_unused_tile_id, _godot_object);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_find_tile_by_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_tile_by_name") = _GODOT_find_tile_by_name;
	/**
	Find the first tile matching the given name.
	*/
	long findTileByName(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_tile_by_name.bind("TileSet", "find_tile_by_name");
		return ptrcall!(long)(_GODOT_find_tile_by_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_tiles_ids;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tiles_ids") = _GODOT_get_tiles_ids;
	/**
	Return an array of all currently used tile IDs.
	*/
	Array getTilesIds() const
	{
		_GODOT_get_tiles_ids.bind("TileSet", "get_tiles_ids");
		return ptrcall!(Array)(_GODOT_get_tiles_ids, _godot_object);
	}
}
