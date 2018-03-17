/**
Texture for 2D and 3D.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.texture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
import godot.image;
/**
Texture for 2D and 3D.

A texture works by registering an image in the video hardware, which then can be used in 3D models or 2D $(D Sprite) or GUI $(D Control).
*/
@GodotBaseClass struct Texture
{
	static immutable string _GODOT_internal_name = "Texture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Texture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Texture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Texture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Texture");
		if(constructor is null) return typeof(this).init;
		return cast(Texture)(constructor());
	}
	/// 
	enum Flags : int
	{
		/**
		Generate mipmaps, which are smaller versions of the same texture to use when zoomed out, keeping the aspect ratio.
		*/
		flagMipmaps = 1,
		/**
		Repeats texture (instead of clamp to edge).
		*/
		flagRepeat = 2,
		/**
		Magnifying filter, to enable smooth zooming in of the texture.
		*/
		flagFilter = 4,
		/**
		Default flags. Generate mipmaps, repeat, and filter are enabled.
		*/
		flagsDefault = 7,
		/**
		Anisotropic mipmap filtering. Generates smaller versions of the same texture with different aspect ratios.
		More effective on planes often shown going to the horrizon as those textures (Walls or Ground for example) get squashed in the viewport to different aspect ratios and regular mipmaps keep the aspect ratio so they don't optimize storage that well in those cases.
		*/
		flagAnisotropicFilter = 8,
		/**
		Converts texture to SRGB color space.
		*/
		flagConvertToLinear = 16,
		/**
		Repeats texture with alternate sections mirrored.
		*/
		flagMirroredRepeat = 32,
		/**
		Texture is a video surface.
		*/
		flagVideoSurface = 4096,
	}
	/// 
	enum Constants : int
	{
		flagMipmaps = 1,
		flagRepeat = 2,
		flagFilter = 4,
		flagsDefault = 7,
		flagAnisotropicFilter = 8,
		flagConvertToLinear = 16,
		flagMirroredRepeat = 32,
		flagVideoSurface = 4096,
	}
	package(godot) static GodotMethod!(long) _GODOT_get_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_width") = _GODOT_get_width;
	/**
	Return the texture width.
	*/
	long getWidth() const
	{
		_GODOT_get_width.bind("Texture", "get_width");
		return ptrcall!(long)(_GODOT_get_width, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	/**
	Return the texture height.
	*/
	long getHeight() const
	{
		_GODOT_get_height.bind("Texture", "get_height");
		return ptrcall!(long)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	Return the texture size.
	*/
	Vector2 getSize() const
	{
		_GODOT_get_size.bind("Texture", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_alpha") = _GODOT_has_alpha;
	/**
	
	*/
	bool hasAlpha() const
	{
		_GODOT_has_alpha.bind("Texture", "has_alpha");
		return ptrcall!(bool)(_GODOT_has_alpha, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flags") = _GODOT_set_flags;
	/**
	
	*/
	void setFlags(in long flags)
	{
		_GODOT_set_flags.bind("Texture", "set_flags");
		ptrcall!(void)(_GODOT_set_flags, _godot_object, flags);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flags") = _GODOT_get_flags;
	/**
	
	*/
	long getFlags() const
	{
		_GODOT_get_flags.bind("Texture", "get_flags");
		return ptrcall!(long)(_GODOT_get_flags, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, Vector2, Color, bool, Texture) _GODOT_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw") = _GODOT_draw;
	/**
	
	*/
	void draw(in RID canvas_item, in Vector2 position, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init) const
	{
		_GODOT_draw.bind("Texture", "draw");
		ptrcall!(void)(_GODOT_draw, _godot_object, canvas_item, position, modulate, transpose, normal_map);
	}
	package(godot) static GodotMethod!(void, RID, Rect2, bool, Color, bool, Texture) _GODOT_draw_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_rect") = _GODOT_draw_rect;
	/**
	
	*/
	void drawRect(in RID canvas_item, in Rect2 rect, in bool tile, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init) const
	{
		_GODOT_draw_rect.bind("Texture", "draw_rect");
		ptrcall!(void)(_GODOT_draw_rect, _godot_object, canvas_item, rect, tile, modulate, transpose, normal_map);
	}
	package(godot) static GodotMethod!(void, RID, Rect2, Rect2, Color, bool, Texture, bool) _GODOT_draw_rect_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_rect_region") = _GODOT_draw_rect_region;
	/**
	
	*/
	void drawRectRegion(in RID canvas_item, in Rect2 rect, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init, in bool clip_uv = true) const
	{
		_GODOT_draw_rect_region.bind("Texture", "draw_rect_region");
		ptrcall!(void)(_GODOT_draw_rect_region, _godot_object, canvas_item, rect, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	package(godot) static GodotMethod!(Image) _GODOT_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_data") = _GODOT_get_data;
	/**
	
	*/
	Ref!Image getData() const
	{
		_GODOT_get_data.bind("Texture", "get_data");
		return ptrcall!(Image)(_GODOT_get_data, _godot_object);
	}
	/**
	The texture's flags.
	*/
	@property long flags()
	{
		return getFlags();
	}
	/// ditto
	@property void flags(long v)
	{
		setFlags(v);
	}
}
