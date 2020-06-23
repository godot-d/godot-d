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
import godot.reference;
import godot.image;
/**
Texture for 2D and 3D.

A texture works by registering an image in the video hardware, which then can be used in 3D models or 2D $(D Sprite) or GUI $(D Control).
Textures are often created by loading them from a file. See $(D @GDScript.load).
$(D Texture) is a base for other resources. It cannot be used directly.
*/
@GodotBaseClass struct Texture
{
	package(godot) enum string _GODOT_internal_name = "Texture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("draw") GodotMethod!(void, RID, Vector2, Color, bool, Texture) draw;
		@GodotName("draw_rect") GodotMethod!(void, RID, Rect2, bool, Color, bool, Texture) drawRect;
		@GodotName("draw_rect_region") GodotMethod!(void, RID, Rect2, Rect2, Color, bool, Texture, bool) drawRectRegion;
		@GodotName("get_data") GodotMethod!(Image) getData;
		@GodotName("get_flags") GodotMethod!(long) getFlags;
		@GodotName("get_height") GodotMethod!(long) getHeight;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("get_width") GodotMethod!(long) getWidth;
		@GodotName("has_alpha") GodotMethod!(bool) hasAlpha;
		@GodotName("set_flags") GodotMethod!(void, long) setFlags;
	}
	/// 
	pragma(inline, true) bool opEquals(in Texture other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) Texture opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of Texture.
	/// Note: use `memnew!Texture` instead.
	static Texture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Texture");
		if(constructor is null) return typeof(this).init;
		return cast(Texture)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Flags : int
	{
		/**
		Generates mipmaps, which are smaller versions of the same texture to use when zoomed out, keeping the aspect ratio.
		*/
		flagMipmaps = 1,
		/**
		Repeats the texture (instead of clamp to edge).
		*/
		flagRepeat = 2,
		/**
		Uses a magnifying filter, to enable smooth zooming in of the texture.
		*/
		flagFilter = 4,
		/**
		Default flags. $(D constant FLAG_MIPMAPS), $(D constant FLAG_REPEAT) and $(D constant FLAG_FILTER) are enabled.
		*/
		flagsDefault = 7,
		/**
		Uses anisotropic mipmap filtering. Generates smaller versions of the same texture with different aspect ratios.
		This results in better-looking textures when viewed from oblique angles.
		*/
		flagAnisotropicFilter = 8,
		/**
		Converts the texture to the sRGB color space.
		*/
		flagConvertToLinear = 16,
		/**
		Repeats the texture with alternate sections mirrored.
		*/
		flagMirroredRepeat = 32,
		/**
		Texture is a video surface.
		*/
		flagVideoSurface = 2048,
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
		flagVideoSurface = 2048,
	}
	/**
	Draws the texture using a $(D CanvasItem) with the $(D VisualServer) API at the specified `position`. Equivalent to $(D VisualServer.canvasItemAddTextureRect) with a rect at `position` and the size of this $(D Texture).
	*/
	void draw(in RID canvas_item, in Vector2 position, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.draw, _godot_object, canvas_item, position, modulate, transpose, normal_map);
	}
	/**
	Draws the texture using a $(D CanvasItem) with the $(D VisualServer) API. Equivalent to $(D VisualServer.canvasItemAddTextureRect).
	*/
	void drawRect(in RID canvas_item, in Rect2 rect, in bool tile, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawRect, _godot_object, canvas_item, rect, tile, modulate, transpose, normal_map);
	}
	/**
	Draws a part of the texture using a $(D CanvasItem) with the $(D VisualServer) API. Equivalent to $(D VisualServer.canvasItemAddTextureRectRegion).
	*/
	void drawRectRegion(in RID canvas_item, in Rect2 rect, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init, in bool clip_uv = true) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawRectRegion, _godot_object, canvas_item, rect, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	/**
	Returns an $(D Image) with the data from this $(D Texture). $(D Image)s can be accessed and manipulated directly.
	*/
	Ref!Image getData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(GDNativeClassBinding.getData, _godot_object);
	}
	/**
	
	*/
	long getFlags() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFlags, _godot_object);
	}
	/**
	Returns the texture height.
	*/
	long getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getHeight, _godot_object);
	}
	/**
	Returns the texture size.
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	Returns the texture width.
	*/
	long getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getWidth, _godot_object);
	}
	/**
	Returns `true` if this $(D Texture) has an alpha channel.
	*/
	bool hasAlpha() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAlpha, _godot_object);
	}
	/**
	
	*/
	void setFlags(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlags, _godot_object, flags);
	}
	/**
	The texture's $(D flags). $(D flags) are used to set various properties of the $(D Texture).
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
