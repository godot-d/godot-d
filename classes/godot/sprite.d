/**
General purpose Sprite node.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.sprite;
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
import godot.texture;
/**
General purpose Sprite node.

A node that displays a 2D texture. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.
*/
@GodotBaseClass struct Sprite
{
	static immutable string _GODOT_internal_name = "Sprite";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Sprite other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Sprite opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Sprite _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Sprite");
		if(constructor is null) return typeof(this).init;
		return cast(Sprite)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(Texture texture)
	{
		_GODOT_set_texture.bind("Sprite", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		_GODOT_get_texture.bind("Sprite", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_map") = _GODOT_set_normal_map;
	/**
	
	*/
	void setNormalMap(Texture normal_map)
	{
		_GODOT_set_normal_map.bind("Sprite", "set_normal_map");
		ptrcall!(void)(_GODOT_set_normal_map, _godot_object, normal_map);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_map") = _GODOT_get_normal_map;
	/**
	
	*/
	Ref!Texture getNormalMap() const
	{
		_GODOT_get_normal_map.bind("Sprite", "get_normal_map");
		return ptrcall!(Texture)(_GODOT_get_normal_map, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_centered") = _GODOT_set_centered;
	/**
	
	*/
	void setCentered(in bool centered)
	{
		_GODOT_set_centered.bind("Sprite", "set_centered");
		ptrcall!(void)(_GODOT_set_centered, _godot_object, centered);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_centered") = _GODOT_is_centered;
	/**
	
	*/
	bool isCentered() const
	{
		_GODOT_is_centered.bind("Sprite", "is_centered");
		return ptrcall!(bool)(_GODOT_is_centered, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("Sprite", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	/**
	
	*/
	Vector2 getOffset() const
	{
		_GODOT_get_offset.bind("Sprite", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flip_h;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flip_h") = _GODOT_set_flip_h;
	/**
	
	*/
	void setFlipH(in bool flip_h)
	{
		_GODOT_set_flip_h.bind("Sprite", "set_flip_h");
		ptrcall!(void)(_GODOT_set_flip_h, _godot_object, flip_h);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flipped_h;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flipped_h") = _GODOT_is_flipped_h;
	/**
	
	*/
	bool isFlippedH() const
	{
		_GODOT_is_flipped_h.bind("Sprite", "is_flipped_h");
		return ptrcall!(bool)(_GODOT_is_flipped_h, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flip_v;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flip_v") = _GODOT_set_flip_v;
	/**
	
	*/
	void setFlipV(in bool flip_v)
	{
		_GODOT_set_flip_v.bind("Sprite", "set_flip_v");
		ptrcall!(void)(_GODOT_set_flip_v, _godot_object, flip_v);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flipped_v;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flipped_v") = _GODOT_is_flipped_v;
	/**
	
	*/
	bool isFlippedV() const
	{
		_GODOT_is_flipped_v.bind("Sprite", "is_flipped_v");
		return ptrcall!(bool)(_GODOT_is_flipped_v, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region") = _GODOT_set_region;
	/**
	
	*/
	void setRegion(in bool enabled)
	{
		_GODOT_set_region.bind("Sprite", "set_region");
		ptrcall!(void)(_GODOT_set_region, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_region") = _GODOT_is_region;
	/**
	
	*/
	bool isRegion() const
	{
		_GODOT_is_region.bind("Sprite", "is_region");
		return ptrcall!(bool)(_GODOT_is_region, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_rect") = _GODOT_set_region_rect;
	/**
	
	*/
	void setRegionRect(in Rect2 rect)
	{
		_GODOT_set_region_rect.bind("Sprite", "set_region_rect");
		ptrcall!(void)(_GODOT_set_region_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_rect") = _GODOT_get_region_rect;
	/**
	
	*/
	Rect2 getRegionRect() const
	{
		_GODOT_get_region_rect.bind("Sprite", "get_region_rect");
		return ptrcall!(Rect2)(_GODOT_get_region_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_region_filter_clip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_filter_clip") = _GODOT_set_region_filter_clip;
	/**
	
	*/
	void setRegionFilterClip(in bool enabled)
	{
		_GODOT_set_region_filter_clip.bind("Sprite", "set_region_filter_clip");
		ptrcall!(void)(_GODOT_set_region_filter_clip, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_region_filter_clip_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_region_filter_clip_enabled") = _GODOT_is_region_filter_clip_enabled;
	/**
	
	*/
	bool isRegionFilterClipEnabled() const
	{
		_GODOT_is_region_filter_clip_enabled.bind("Sprite", "is_region_filter_clip_enabled");
		return ptrcall!(bool)(_GODOT_is_region_filter_clip_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_frame") = _GODOT_set_frame;
	/**
	
	*/
	void setFrame(in long frame)
	{
		_GODOT_set_frame.bind("Sprite", "set_frame");
		ptrcall!(void)(_GODOT_set_frame, _godot_object, frame);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame") = _GODOT_get_frame;
	/**
	
	*/
	long getFrame() const
	{
		_GODOT_get_frame.bind("Sprite", "get_frame");
		return ptrcall!(long)(_GODOT_get_frame, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_vframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vframes") = _GODOT_set_vframes;
	/**
	
	*/
	void setVframes(in long vframes)
	{
		_GODOT_set_vframes.bind("Sprite", "set_vframes");
		ptrcall!(void)(_GODOT_set_vframes, _godot_object, vframes);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_vframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vframes") = _GODOT_get_vframes;
	/**
	
	*/
	long getVframes() const
	{
		_GODOT_get_vframes.bind("Sprite", "get_vframes");
		return ptrcall!(long)(_GODOT_get_vframes, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_hframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hframes") = _GODOT_set_hframes;
	/**
	
	*/
	void setHframes(in long hframes)
	{
		_GODOT_set_hframes.bind("Sprite", "set_hframes");
		ptrcall!(void)(_GODOT_set_hframes, _godot_object, hframes);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_hframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hframes") = _GODOT_get_hframes;
	/**
	
	*/
	long getHframes() const
	{
		_GODOT_get_hframes.bind("Sprite", "get_hframes");
		return ptrcall!(long)(_GODOT_get_hframes, _godot_object);
	}
	/**
	$(D Texture) object to draw.
	*/
	@property Texture texture()
	{
		return getTexture();
	}
	/// ditto
	@property void texture(Texture v)
	{
		setTexture(v);
	}
	/**
	The normal map gives depth to the Sprite.
	*/
	@property Texture normalMap()
	{
		return getNormalMap();
	}
	/// ditto
	@property void normalMap(Texture v)
	{
		setNormalMap(v);
	}
	/**
	If `true` texture is centered. Default value: `true`.
	*/
	@property bool centered()
	{
		return isCentered();
	}
	/// ditto
	@property void centered(bool v)
	{
		setCentered(v);
	}
	/**
	The texture's drawing offset.
	*/
	@property Vector2 offset()
	{
		return getOffset();
	}
	/// ditto
	@property void offset(Vector2 v)
	{
		setOffset(v);
	}
	/**
	If `true` texture is flipped horizontally. Default value: `false`.
	*/
	@property bool flipH()
	{
		return isFlippedH();
	}
	/// ditto
	@property void flipH(bool v)
	{
		setFlipH(v);
	}
	/**
	If `true` texture is flipped vertically. Default value: `false`.
	*/
	@property bool flipV()
	{
		return isFlippedV();
	}
	/// ditto
	@property void flipV(bool v)
	{
		setFlipV(v);
	}
	/**
	The number of rows in the sprite sheet.
	*/
	@property long vframes()
	{
		return getVframes();
	}
	/// ditto
	@property void vframes(long v)
	{
		setVframes(v);
	}
	/**
	The number of columns in the sprite sheet.
	*/
	@property long hframes()
	{
		return getHframes();
	}
	/// ditto
	@property void hframes(long v)
	{
		setHframes(v);
	}
	/**
	Current frame to display from sprite sheet. $(D vframes) or $(D hframes) must be greater than 1.
	*/
	@property long frame()
	{
		return getFrame();
	}
	/// ditto
	@property void frame(long v)
	{
		setFrame(v);
	}
	/**
	If `true` texture is cut from a larger atlas texture. See `region_rect`. Default value: `false`.
	*/
	@property bool regionEnabled()
	{
		return isRegion();
	}
	/// ditto
	@property void regionEnabled(bool v)
	{
		setRegion(v);
	}
	/**
	The region of the atlas texture to display. $(D regionEnabled) must be `true`.
	*/
	@property Rect2 regionRect()
	{
		return getRegionRect();
	}
	/// ditto
	@property void regionRect(Rect2 v)
	{
		setRegionRect(v);
	}
	/**
	If `true` the outermost pixels get blurred out.
	*/
	@property bool regionFilterClip()
	{
		return isRegionFilterClipEnabled();
	}
	/// ditto
	@property void regionFilterClip(bool v)
	{
		setRegionFilterClip(v);
	}
}
