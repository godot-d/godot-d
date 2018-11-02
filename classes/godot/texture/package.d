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
import godot.reference;
/**
Texture for 2D and 3D.

A texture works by registering an image in the video hardware, which then can be used in 3D models or 2D $(D Sprite) or GUI $(D Control).
Textures are often created by loading them from a file. See $(D @GDScript.load).
*/
@GodotBaseClass struct Texture
{
	enum string _GODOT_internal_name = "Texture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_width") GodotMethod!(long) getWidth;
		@GodotName("get_height") GodotMethod!(long) getHeight;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("has_alpha") GodotMethod!(bool) hasAlpha;
		@GodotName("set_flags") GodotMethod!(void, long) setFlags;
		@GodotName("get_flags") GodotMethod!(long) getFlags;
		@GodotName("draw") GodotMethod!(void, RID, Vector2, Color, bool, Texture) draw;
		@GodotName("draw_rect") GodotMethod!(void, RID, Rect2, bool, Color, bool, Texture) drawRect;
		@GodotName("draw_rect_region") GodotMethod!(void, RID, Rect2, Rect2, Color, bool, Texture, bool) drawRectRegion;
		@GodotName("get_data") GodotMethod!(Image) getData;
	}
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
	@disable new(size_t s);
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
	Return the texture width.
	*/
	long getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getWidth, _godot_object);
	}
	/**
	Return the texture height.
	*/
	long getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getHeight, _godot_object);
	}
	/**
	Return the texture size.
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getSize, _godot_object);
	}
	/**
	
	*/
	bool hasAlpha() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasAlpha, _godot_object);
	}
	/**
	
	*/
	void setFlags(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlags, _godot_object, flags);
	}
	/**
	
	*/
	long getFlags() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFlags, _godot_object);
	}
	/**
	
	*/
	void draw(in RID canvas_item, in Vector2 position, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.draw, _godot_object, canvas_item, position, modulate, transpose, normal_map);
	}
	/**
	
	*/
	void drawRect(in RID canvas_item, in Rect2 rect, in bool tile, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawRect, _godot_object, canvas_item, rect, tile, modulate, transpose, normal_map);
	}
	/**
	
	*/
	void drawRectRegion(in RID canvas_item, in Rect2 rect, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init, in bool clip_uv = true) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawRectRegion, _godot_object, canvas_item, rect, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	/**
	
	*/
	Ref!Image getData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(_classBinding.getData, _godot_object);
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
