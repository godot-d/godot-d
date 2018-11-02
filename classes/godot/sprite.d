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
import godot.canvasitem;
import godot.node;
/**
General purpose Sprite node.

A node that displays a 2D texture. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.
*/
@GodotBaseClass struct Sprite
{
	enum string _GODOT_internal_name = "Sprite";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("set_normal_map") GodotMethod!(void, Texture) setNormalMap;
		@GodotName("get_normal_map") GodotMethod!(Texture) getNormalMap;
		@GodotName("set_centered") GodotMethod!(void, bool) setCentered;
		@GodotName("is_centered") GodotMethod!(bool) isCentered;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("set_flip_h") GodotMethod!(void, bool) setFlipH;
		@GodotName("is_flipped_h") GodotMethod!(bool) isFlippedH;
		@GodotName("set_flip_v") GodotMethod!(void, bool) setFlipV;
		@GodotName("is_flipped_v") GodotMethod!(bool) isFlippedV;
		@GodotName("set_region") GodotMethod!(void, bool) setRegion;
		@GodotName("is_region") GodotMethod!(bool) isRegion;
		@GodotName("is_pixel_opaque") GodotMethod!(bool, Vector2) isPixelOpaque;
		@GodotName("set_region_rect") GodotMethod!(void, Rect2) setRegionRect;
		@GodotName("get_region_rect") GodotMethod!(Rect2) getRegionRect;
		@GodotName("set_region_filter_clip") GodotMethod!(void, bool) setRegionFilterClip;
		@GodotName("is_region_filter_clip_enabled") GodotMethod!(bool) isRegionFilterClipEnabled;
		@GodotName("set_frame") GodotMethod!(void, long) setFrame;
		@GodotName("get_frame") GodotMethod!(long) getFrame;
		@GodotName("set_vframes") GodotMethod!(void, long) setVframes;
		@GodotName("get_vframes") GodotMethod!(long) getVframes;
		@GodotName("set_hframes") GodotMethod!(void, long) setHframes;
		@GodotName("get_hframes") GodotMethod!(long) getHframes;
		@GodotName("get_rect") GodotMethod!(Rect2) getRect;
	}
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
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTexture, _godot_object, texture);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	void setNormalMap(Texture normal_map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNormalMap, _godot_object, normal_map);
	}
	/**
	
	*/
	Ref!Texture getNormalMap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getNormalMap, _godot_object);
	}
	/**
	
	*/
	void setCentered(in bool centered)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCentered, _godot_object, centered);
	}
	/**
	
	*/
	bool isCentered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCentered, _godot_object);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	void setFlipH(in bool flip_h)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlipH, _godot_object, flip_h);
	}
	/**
	
	*/
	bool isFlippedH() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFlippedH, _godot_object);
	}
	/**
	
	*/
	void setFlipV(in bool flip_v)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlipV, _godot_object, flip_v);
	}
	/**
	
	*/
	bool isFlippedV() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFlippedV, _godot_object);
	}
	/**
	
	*/
	void setRegion(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRegion, _godot_object, enabled);
	}
	/**
	
	*/
	bool isRegion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRegion, _godot_object);
	}
	/**
	
	*/
	bool isPixelOpaque(in Vector2 pos) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPixelOpaque, _godot_object, pos);
	}
	/**
	
	*/
	void setRegionRect(in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRegionRect, _godot_object, rect);
	}
	/**
	
	*/
	Rect2 getRegionRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getRegionRect, _godot_object);
	}
	/**
	
	*/
	void setRegionFilterClip(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRegionFilterClip, _godot_object, enabled);
	}
	/**
	
	*/
	bool isRegionFilterClipEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRegionFilterClipEnabled, _godot_object);
	}
	/**
	
	*/
	void setFrame(in long frame)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFrame, _godot_object, frame);
	}
	/**
	
	*/
	long getFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFrame, _godot_object);
	}
	/**
	
	*/
	void setVframes(in long vframes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVframes, _godot_object, vframes);
	}
	/**
	
	*/
	long getVframes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVframes, _godot_object);
	}
	/**
	
	*/
	void setHframes(in long hframes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHframes, _godot_object, hframes);
	}
	/**
	
	*/
	long getHframes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getHframes, _godot_object);
	}
	/**
	Returns a Rect2 representing the Sprite's boundary relative to its local coordinates.
	*/
	Rect2 getRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getRect, _godot_object);
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
