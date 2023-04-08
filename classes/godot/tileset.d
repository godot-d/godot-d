/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.tileset;
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
import godot.resource;
import godot.reference;
import godot.occluderpolygon2d;
import godot.navigationpolygon;
import godot.shape2d;
import godot.shadermaterial;
import godot.texture;
/**

*/
@GodotBaseClass struct TileSet
{
	package(godot) enum string _GODOT_internal_name = "TileSet";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_forward_atlas_subtile_selection") GodotMethod!(Vector2, long, GodotObject, Vector2) _forwardAtlasSubtileSelection;
		@GodotName("_forward_subtile_selection") GodotMethod!(Vector2, long, long, GodotObject, Vector2) _forwardSubtileSelection;
		@GodotName("_is_tile_bound") GodotMethod!(bool, long, long) _isTileBound;
		@GodotName("autotile_clear_bitmask_map") GodotMethod!(void, long) autotileClearBitmaskMap;
		@GodotName("autotile_get_bitmask") GodotMethod!(long, long, Vector2) autotileGetBitmask;
		@GodotName("autotile_get_bitmask_mode") GodotMethod!(TileSet.BitmaskMode, long) autotileGetBitmaskMode;
		@GodotName("autotile_get_icon_coordinate") GodotMethod!(Vector2, long) autotileGetIconCoordinate;
		@GodotName("autotile_get_light_occluder") GodotMethod!(OccluderPolygon2D, long, Vector2) autotileGetLightOccluder;
		@GodotName("autotile_get_navigation_polygon") GodotMethod!(NavigationPolygon, long, Vector2) autotileGetNavigationPolygon;
		@GodotName("autotile_get_size") GodotMethod!(Vector2, long) autotileGetSize;
		@GodotName("autotile_get_spacing") GodotMethod!(long, long) autotileGetSpacing;
		@GodotName("autotile_get_subtile_priority") GodotMethod!(long, long, Vector2) autotileGetSubtilePriority;
		@GodotName("autotile_get_z_index") GodotMethod!(long, long, Vector2) autotileGetZIndex;
		@GodotName("autotile_set_bitmask") GodotMethod!(void, long, Vector2, long) autotileSetBitmask;
		@GodotName("autotile_set_bitmask_mode") GodotMethod!(void, long, long) autotileSetBitmaskMode;
		@GodotName("autotile_set_icon_coordinate") GodotMethod!(void, long, Vector2) autotileSetIconCoordinate;
		@GodotName("autotile_set_light_occluder") GodotMethod!(void, long, OccluderPolygon2D, Vector2) autotileSetLightOccluder;
		@GodotName("autotile_set_navigation_polygon") GodotMethod!(void, long, NavigationPolygon, Vector2) autotileSetNavigationPolygon;
		@GodotName("autotile_set_size") GodotMethod!(void, long, Vector2) autotileSetSize;
		@GodotName("autotile_set_spacing") GodotMethod!(void, long, long) autotileSetSpacing;
		@GodotName("autotile_set_subtile_priority") GodotMethod!(void, long, Vector2, long) autotileSetSubtilePriority;
		@GodotName("autotile_set_z_index") GodotMethod!(void, long, Vector2, long) autotileSetZIndex;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("create_tile") GodotMethod!(void, long) createTile;
		@GodotName("find_tile_by_name") GodotMethod!(long, String) findTileByName;
		@GodotName("get_last_unused_tile_id") GodotMethod!(long) getLastUnusedTileId;
		@GodotName("get_tiles_ids") GodotMethod!(Array) getTilesIds;
		@GodotName("remove_tile") GodotMethod!(void, long) removeTile;
		@GodotName("tile_add_shape") GodotMethod!(void, long, Shape2D, Transform2D, bool, Vector2) tileAddShape;
		@GodotName("tile_get_light_occluder") GodotMethod!(OccluderPolygon2D, long) tileGetLightOccluder;
		@GodotName("tile_get_material") GodotMethod!(ShaderMaterial, long) tileGetMaterial;
		@GodotName("tile_get_modulate") GodotMethod!(Color, long) tileGetModulate;
		@GodotName("tile_get_name") GodotMethod!(String, long) tileGetName;
		@GodotName("tile_get_navigation_polygon") GodotMethod!(NavigationPolygon, long) tileGetNavigationPolygon;
		@GodotName("tile_get_navigation_polygon_offset") GodotMethod!(Vector2, long) tileGetNavigationPolygonOffset;
		@GodotName("tile_get_normal_map") GodotMethod!(Texture, long) tileGetNormalMap;
		@GodotName("tile_get_occluder_offset") GodotMethod!(Vector2, long) tileGetOccluderOffset;
		@GodotName("tile_get_region") GodotMethod!(Rect2, long) tileGetRegion;
		@GodotName("tile_get_shape") GodotMethod!(Shape2D, long, long) tileGetShape;
		@GodotName("tile_get_shape_count") GodotMethod!(long, long) tileGetShapeCount;
		@GodotName("tile_get_shape_offset") GodotMethod!(Vector2, long, long) tileGetShapeOffset;
		@GodotName("tile_get_shape_one_way") GodotMethod!(bool, long, long) tileGetShapeOneWay;
		@GodotName("tile_get_shape_one_way_margin") GodotMethod!(double, long, long) tileGetShapeOneWayMargin;
		@GodotName("tile_get_shape_transform") GodotMethod!(Transform2D, long, long) tileGetShapeTransform;
		@GodotName("tile_get_shapes") GodotMethod!(Array, long) tileGetShapes;
		@GodotName("tile_get_texture") GodotMethod!(Texture, long) tileGetTexture;
		@GodotName("tile_get_texture_offset") GodotMethod!(Vector2, long) tileGetTextureOffset;
		@GodotName("tile_get_tile_mode") GodotMethod!(TileSet.TileMode, long) tileGetTileMode;
		@GodotName("tile_get_z_index") GodotMethod!(long, long) tileGetZIndex;
		@GodotName("tile_set_light_occluder") GodotMethod!(void, long, OccluderPolygon2D) tileSetLightOccluder;
		@GodotName("tile_set_material") GodotMethod!(void, long, ShaderMaterial) tileSetMaterial;
		@GodotName("tile_set_modulate") GodotMethod!(void, long, Color) tileSetModulate;
		@GodotName("tile_set_name") GodotMethod!(void, long, String) tileSetName;
		@GodotName("tile_set_navigation_polygon") GodotMethod!(void, long, NavigationPolygon) tileSetNavigationPolygon;
		@GodotName("tile_set_navigation_polygon_offset") GodotMethod!(void, long, Vector2) tileSetNavigationPolygonOffset;
		@GodotName("tile_set_normal_map") GodotMethod!(void, long, Texture) tileSetNormalMap;
		@GodotName("tile_set_occluder_offset") GodotMethod!(void, long, Vector2) tileSetOccluderOffset;
		@GodotName("tile_set_region") GodotMethod!(void, long, Rect2) tileSetRegion;
		@GodotName("tile_set_shape") GodotMethod!(void, long, long, Shape2D) tileSetShape;
		@GodotName("tile_set_shape_offset") GodotMethod!(void, long, long, Vector2) tileSetShapeOffset;
		@GodotName("tile_set_shape_one_way") GodotMethod!(void, long, long, bool) tileSetShapeOneWay;
		@GodotName("tile_set_shape_one_way_margin") GodotMethod!(void, long, long, double) tileSetShapeOneWayMargin;
		@GodotName("tile_set_shape_transform") GodotMethod!(void, long, long, Transform2D) tileSetShapeTransform;
		@GodotName("tile_set_shapes") GodotMethod!(void, long, Array) tileSetShapes;
		@GodotName("tile_set_texture") GodotMethod!(void, long, Texture) tileSetTexture;
		@GodotName("tile_set_texture_offset") GodotMethod!(void, long, Vector2) tileSetTextureOffset;
		@GodotName("tile_set_tile_mode") GodotMethod!(void, long, long) tileSetTileMode;
		@GodotName("tile_set_z_index") GodotMethod!(void, long, long) tileSetZIndex;
	}
	/// 
	pragma(inline, true) bool opEquals(in TileSet other) const
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
	/// Construct a new instance of TileSet.
	/// Note: use `memnew!TileSet` instead.
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
		/** */
		singleTile = 0,
		/** */
		autoTile = 1,
		/** */
		atlasTile = 2,
	}
	/// 
	enum AutotileBindings : int
	{
		/** */
		bindTopleft = 1,
		/** */
		bindTop = 2,
		/** */
		bindTopright = 4,
		/** */
		bindLeft = 8,
		/** */
		bindCenter = 16,
		/** */
		bindRight = 32,
		/** */
		bindBottomleft = 64,
		/** */
		bindBottom = 128,
		/** */
		bindBottomright = 256,
	}
	/// 
	enum BitmaskMode : int
	{
		/** */
		bitmask2x2 = 0,
		/** */
		bitmask3x3Minimal = 1,
		/** */
		bitmask3x3 = 2,
	}
	/// 
	enum Constants : int
	{
		singleTile = 0,
		bitmask2x2 = 0,
		autoTile = 1,
		bitmask3x3Minimal = 1,
		bindTopleft = 1,
		bindTop = 2,
		bitmask3x3 = 2,
		atlasTile = 2,
		bindTopright = 4,
		bindLeft = 8,
		bindCenter = 16,
		bindRight = 32,
		bindBottomleft = 64,
		bindBottom = 128,
		bindBottomright = 256,
	}
	/**
	
	*/
	Vector2 _forwardAtlasSubtileSelection(in long atlastile_id, GodotObject tilemap, in Vector2 tile_location)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(atlastile_id);
		_GODOT_args.append(tilemap);
		_GODOT_args.append(tile_location);
		String _GODOT_method_name = String("_forward_atlas_subtile_selection");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	/**
	
	*/
	Vector2 _forwardSubtileSelection(in long autotile_id, in long bitmask, GodotObject tilemap, in Vector2 tile_location)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(autotile_id);
		_GODOT_args.append(bitmask);
		_GODOT_args.append(tilemap);
		_GODOT_args.append(tile_location);
		String _GODOT_method_name = String("_forward_subtile_selection");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	/**
	
	*/
	bool _isTileBound(in long drawn_id, in long neighbor_id)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(drawn_id);
		_GODOT_args.append(neighbor_id);
		String _GODOT_method_name = String("_is_tile_bound");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void autotileClearBitmaskMap(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.autotileClearBitmaskMap, _godot_object, id);
	}
	/**
	
	*/
	long autotileGetBitmask(in long id, in Vector2 coord)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.autotileGetBitmask, _godot_object, id, coord);
	}
	/**
	
	*/
	TileSet.BitmaskMode autotileGetBitmaskMode(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileSet.BitmaskMode)(GDNativeClassBinding.autotileGetBitmaskMode, _godot_object, id);
	}
	/**
	
	*/
	Vector2 autotileGetIconCoordinate(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.autotileGetIconCoordinate, _godot_object, id);
	}
	/**
	
	*/
	Ref!OccluderPolygon2D autotileGetLightOccluder(in long id, in Vector2 coord) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OccluderPolygon2D)(GDNativeClassBinding.autotileGetLightOccluder, _godot_object, id, coord);
	}
	/**
	
	*/
	Ref!NavigationPolygon autotileGetNavigationPolygon(in long id, in Vector2 coord) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NavigationPolygon)(GDNativeClassBinding.autotileGetNavigationPolygon, _godot_object, id, coord);
	}
	/**
	
	*/
	Vector2 autotileGetSize(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.autotileGetSize, _godot_object, id);
	}
	/**
	
	*/
	long autotileGetSpacing(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.autotileGetSpacing, _godot_object, id);
	}
	/**
	
	*/
	long autotileGetSubtilePriority(in long id, in Vector2 coord)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.autotileGetSubtilePriority, _godot_object, id, coord);
	}
	/**
	
	*/
	long autotileGetZIndex(in long id, in Vector2 coord)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.autotileGetZIndex, _godot_object, id, coord);
	}
	/**
	
	*/
	void autotileSetBitmask(in long id, in Vector2 bitmask, in long flag)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.autotileSetBitmask, _godot_object, id, bitmask, flag);
	}
	/**
	
	*/
	void autotileSetBitmaskMode(in long id, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.autotileSetBitmaskMode, _godot_object, id, mode);
	}
	/**
	
	*/
	void autotileSetIconCoordinate(in long id, in Vector2 coord)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.autotileSetIconCoordinate, _godot_object, id, coord);
	}
	/**
	
	*/
	void autotileSetLightOccluder(in long id, OccluderPolygon2D light_occluder, in Vector2 coord)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.autotileSetLightOccluder, _godot_object, id, light_occluder, coord);
	}
	/**
	
	*/
	void autotileSetNavigationPolygon(in long id, NavigationPolygon navigation_polygon, in Vector2 coord)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.autotileSetNavigationPolygon, _godot_object, id, navigation_polygon, coord);
	}
	/**
	
	*/
	void autotileSetSize(in long id, in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.autotileSetSize, _godot_object, id, size);
	}
	/**
	
	*/
	void autotileSetSpacing(in long id, in long spacing)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.autotileSetSpacing, _godot_object, id, spacing);
	}
	/**
	
	*/
	void autotileSetSubtilePriority(in long id, in Vector2 coord, in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.autotileSetSubtilePriority, _godot_object, id, coord, priority);
	}
	/**
	
	*/
	void autotileSetZIndex(in long id, in Vector2 coord, in long z_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.autotileSetZIndex, _godot_object, id, coord, z_index);
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
	void createTile(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createTile, _godot_object, id);
	}
	/**
	
	*/
	long findTileByName(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.findTileByName, _godot_object, name);
	}
	/**
	
	*/
	long getLastUnusedTileId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLastUnusedTileId, _godot_object);
	}
	/**
	
	*/
	Array getTilesIds() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getTilesIds, _godot_object);
	}
	/**
	
	*/
	void removeTile(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeTile, _godot_object, id);
	}
	/**
	
	*/
	void tileAddShape(in long id, Shape2D shape, in Transform2D shape_transform, in bool one_way = false, in Vector2 autotile_coord = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileAddShape, _godot_object, id, shape, shape_transform, one_way, autotile_coord);
	}
	/**
	
	*/
	Ref!OccluderPolygon2D tileGetLightOccluder(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OccluderPolygon2D)(GDNativeClassBinding.tileGetLightOccluder, _godot_object, id);
	}
	/**
	
	*/
	Ref!ShaderMaterial tileGetMaterial(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ShaderMaterial)(GDNativeClassBinding.tileGetMaterial, _godot_object, id);
	}
	/**
	
	*/
	Color tileGetModulate(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.tileGetModulate, _godot_object, id);
	}
	/**
	
	*/
	String tileGetName(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.tileGetName, _godot_object, id);
	}
	/**
	
	*/
	Ref!NavigationPolygon tileGetNavigationPolygon(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NavigationPolygon)(GDNativeClassBinding.tileGetNavigationPolygon, _godot_object, id);
	}
	/**
	
	*/
	Vector2 tileGetNavigationPolygonOffset(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.tileGetNavigationPolygonOffset, _godot_object, id);
	}
	/**
	
	*/
	Ref!Texture tileGetNormalMap(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.tileGetNormalMap, _godot_object, id);
	}
	/**
	
	*/
	Vector2 tileGetOccluderOffset(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.tileGetOccluderOffset, _godot_object, id);
	}
	/**
	
	*/
	Rect2 tileGetRegion(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.tileGetRegion, _godot_object, id);
	}
	/**
	
	*/
	Ref!Shape2D tileGetShape(in long id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape2D)(GDNativeClassBinding.tileGetShape, _godot_object, id, shape_id);
	}
	/**
	
	*/
	long tileGetShapeCount(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.tileGetShapeCount, _godot_object, id);
	}
	/**
	
	*/
	Vector2 tileGetShapeOffset(in long id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.tileGetShapeOffset, _godot_object, id, shape_id);
	}
	/**
	
	*/
	bool tileGetShapeOneWay(in long id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.tileGetShapeOneWay, _godot_object, id, shape_id);
	}
	/**
	
	*/
	double tileGetShapeOneWayMargin(in long id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.tileGetShapeOneWayMargin, _godot_object, id, shape_id);
	}
	/**
	
	*/
	Transform2D tileGetShapeTransform(in long id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.tileGetShapeTransform, _godot_object, id, shape_id);
	}
	/**
	
	*/
	Array tileGetShapes(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.tileGetShapes, _godot_object, id);
	}
	/**
	
	*/
	Ref!Texture tileGetTexture(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.tileGetTexture, _godot_object, id);
	}
	/**
	
	*/
	Vector2 tileGetTextureOffset(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.tileGetTextureOffset, _godot_object, id);
	}
	/**
	
	*/
	TileSet.TileMode tileGetTileMode(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TileSet.TileMode)(GDNativeClassBinding.tileGetTileMode, _godot_object, id);
	}
	/**
	
	*/
	long tileGetZIndex(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.tileGetZIndex, _godot_object, id);
	}
	/**
	
	*/
	void tileSetLightOccluder(in long id, OccluderPolygon2D light_occluder)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetLightOccluder, _godot_object, id, light_occluder);
	}
	/**
	
	*/
	void tileSetMaterial(in long id, ShaderMaterial material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetMaterial, _godot_object, id, material);
	}
	/**
	
	*/
	void tileSetModulate(in long id, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetModulate, _godot_object, id, color);
	}
	/**
	
	*/
	void tileSetName(in long id, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetName, _godot_object, id, name);
	}
	/**
	
	*/
	void tileSetNavigationPolygon(in long id, NavigationPolygon navigation_polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetNavigationPolygon, _godot_object, id, navigation_polygon);
	}
	/**
	
	*/
	void tileSetNavigationPolygonOffset(in long id, in Vector2 navigation_polygon_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetNavigationPolygonOffset, _godot_object, id, navigation_polygon_offset);
	}
	/**
	
	*/
	void tileSetNormalMap(in long id, Texture normal_map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetNormalMap, _godot_object, id, normal_map);
	}
	/**
	
	*/
	void tileSetOccluderOffset(in long id, in Vector2 occluder_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetOccluderOffset, _godot_object, id, occluder_offset);
	}
	/**
	
	*/
	void tileSetRegion(in long id, in Rect2 region)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetRegion, _godot_object, id, region);
	}
	/**
	
	*/
	void tileSetShape(in long id, in long shape_id, Shape2D shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetShape, _godot_object, id, shape_id, shape);
	}
	/**
	
	*/
	void tileSetShapeOffset(in long id, in long shape_id, in Vector2 shape_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetShapeOffset, _godot_object, id, shape_id, shape_offset);
	}
	/**
	
	*/
	void tileSetShapeOneWay(in long id, in long shape_id, in bool one_way)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetShapeOneWay, _godot_object, id, shape_id, one_way);
	}
	/**
	
	*/
	void tileSetShapeOneWayMargin(in long id, in long shape_id, in double one_way)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetShapeOneWayMargin, _godot_object, id, shape_id, one_way);
	}
	/**
	
	*/
	void tileSetShapeTransform(in long id, in long shape_id, in Transform2D shape_transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetShapeTransform, _godot_object, id, shape_id, shape_transform);
	}
	/**
	
	*/
	void tileSetShapes(in long id, in Array shapes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetShapes, _godot_object, id, shapes);
	}
	/**
	
	*/
	void tileSetTexture(in long id, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetTexture, _godot_object, id, texture);
	}
	/**
	
	*/
	void tileSetTextureOffset(in long id, in Vector2 texture_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetTextureOffset, _godot_object, id, texture_offset);
	}
	/**
	
	*/
	void tileSetTileMode(in long id, in long tilemode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetTileMode, _godot_object, id, tilemode);
	}
	/**
	
	*/
	void tileSetZIndex(in long id, in long z_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.tileSetZIndex, _godot_object, id, z_index);
	}
}
