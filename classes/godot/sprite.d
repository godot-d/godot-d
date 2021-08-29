/**
General-purpose sprite node.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.sprite;
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
import godot.node2d;
import godot.canvasitem;
import godot.node;
import godot.texture;
/**
General-purpose sprite node.

A node that displays a 2D texture. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.
*/
@GodotBaseClass struct Sprite
{
	package(godot) enum string _GODOT_internal_name = "Sprite";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_texture_changed") GodotMethod!(void) _textureChanged;
		@GodotName("get_frame") GodotMethod!(long) getFrame;
		@GodotName("get_frame_coords") GodotMethod!(Vector2) getFrameCoords;
		@GodotName("get_hframes") GodotMethod!(long) getHframes;
		@GodotName("get_normal_map") GodotMethod!(Texture) getNormalMap;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("get_rect") GodotMethod!(Rect2) getRect;
		@GodotName("get_region_rect") GodotMethod!(Rect2) getRegionRect;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("get_vframes") GodotMethod!(long) getVframes;
		@GodotName("is_centered") GodotMethod!(bool) isCentered;
		@GodotName("is_flipped_h") GodotMethod!(bool) isFlippedH;
		@GodotName("is_flipped_v") GodotMethod!(bool) isFlippedV;
		@GodotName("is_pixel_opaque") GodotMethod!(bool, Vector2) isPixelOpaque;
		@GodotName("is_region") GodotMethod!(bool) isRegion;
		@GodotName("is_region_filter_clip_enabled") GodotMethod!(bool) isRegionFilterClipEnabled;
		@GodotName("set_centered") GodotMethod!(void, bool) setCentered;
		@GodotName("set_flip_h") GodotMethod!(void, bool) setFlipH;
		@GodotName("set_flip_v") GodotMethod!(void, bool) setFlipV;
		@GodotName("set_frame") GodotMethod!(void, long) setFrame;
		@GodotName("set_frame_coords") GodotMethod!(void, Vector2) setFrameCoords;
		@GodotName("set_hframes") GodotMethod!(void, long) setHframes;
		@GodotName("set_normal_map") GodotMethod!(void, Texture) setNormalMap;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("set_region") GodotMethod!(void, bool) setRegion;
		@GodotName("set_region_filter_clip") GodotMethod!(void, bool) setRegionFilterClip;
		@GodotName("set_region_rect") GodotMethod!(void, Rect2) setRegionRect;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("set_vframes") GodotMethod!(void, long) setVframes;
	}
	/// 
	pragma(inline, true) bool opEquals(in Sprite other) const
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
	/// Construct a new instance of Sprite.
	/// Note: use `memnew!Sprite` instead.
	static Sprite _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Sprite");
		if(constructor is null) return typeof(this).init;
		return cast(Sprite)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _textureChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_texture_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long getFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFrame, _godot_object);
	}
	/**
	
	*/
	Vector2 getFrameCoords() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getFrameCoords, _godot_object);
	}
	/**
	
	*/
	long getHframes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getHframes, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getNormalMap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getNormalMap, _godot_object);
	}
	/**
	
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getOffset, _godot_object);
	}
	/**
	Returns a $(D Rect2) representing the Sprite's boundary in local coordinates. Can be used to detect if the Sprite was clicked. Example:
	
	
	func _input(event):
	    if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
	        if get_rect().has_point(to_local(event.position)):
	            print("A click!")
	
	
	*/
	Rect2 getRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getRect, _godot_object);
	}
	/**
	
	*/
	Rect2 getRegionRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getRegionRect, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	long getVframes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVframes, _godot_object);
	}
	/**
	
	*/
	bool isCentered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCentered, _godot_object);
	}
	/**
	
	*/
	bool isFlippedH() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFlippedH, _godot_object);
	}
	/**
	
	*/
	bool isFlippedV() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFlippedV, _godot_object);
	}
	/**
	Returns `true`, if the pixel at the given position is opaque and `false` in other case.
	$(B Note:) It also returns `false`, if the sprite's texture is `null` or if the given position is invalid.
	*/
	bool isPixelOpaque(in Vector2 pos) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPixelOpaque, _godot_object, pos);
	}
	/**
	
	*/
	bool isRegion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRegion, _godot_object);
	}
	/**
	
	*/
	bool isRegionFilterClipEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRegionFilterClipEnabled, _godot_object);
	}
	/**
	
	*/
	void setCentered(in bool centered)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCentered, _godot_object, centered);
	}
	/**
	
	*/
	void setFlipH(in bool flip_h)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlipH, _godot_object, flip_h);
	}
	/**
	
	*/
	void setFlipV(in bool flip_v)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlipV, _godot_object, flip_v);
	}
	/**
	
	*/
	void setFrame(in long frame)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrame, _godot_object, frame);
	}
	/**
	
	*/
	void setFrameCoords(in Vector2 coords)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrameCoords, _godot_object, coords);
	}
	/**
	
	*/
	void setHframes(in long hframes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHframes, _godot_object, hframes);
	}
	/**
	
	*/
	void setNormalMap(Texture normal_map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNormalMap, _godot_object, normal_map);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setRegion(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRegion, _godot_object, enabled);
	}
	/**
	
	*/
	void setRegionFilterClip(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRegionFilterClip, _godot_object, enabled);
	}
	/**
	
	*/
	void setRegionRect(in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRegionRect, _godot_object, rect);
	}
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setVframes(in long vframes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVframes, _godot_object, vframes);
	}
	/**
	If `true`, texture is centered.
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
	If `true`, texture is flipped horizontally.
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
	If `true`, texture is flipped vertically.
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
	Current frame to display from sprite sheet. $(D hframes) or $(D vframes) must be greater than 1.
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
	Coordinates of the frame to display from sprite sheet. This is as an alias for the $(D frame) property. $(D hframes) or $(D vframes) must be greater than 1.
	*/
	@property Vector2 frameCoords()
	{
		return getFrameCoords();
	}
	/// ditto
	@property void frameCoords(Vector2 v)
	{
		setFrameCoords(v);
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
	The normal map gives depth to the Sprite.
	$(B Note:) Godot expects the normal map to use X+, Y-, and Z+ coordinates. See $(D url=http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates)this page$(D /url) for a comparison of normal map coordinates expected by popular engines.
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
	If `true`, texture is cut from a larger atlas texture. See $(D regionRect).
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
	If `true`, the outermost pixels get blurred out.
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
}
