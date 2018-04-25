/**
2D Sprite node in 3D environment.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spritebase3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.geometryinstance;
/**
2D Sprite node in 3D environment.

A node that displays 2D texture information in a 3D environment.
*/
@GodotBaseClass struct SpriteBase3D
{
	static immutable string _GODOT_internal_name = "SpriteBase3D";
public:
@nogc nothrow:
	union { godot_object _godot_object; GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in SpriteBase3D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpriteBase3D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SpriteBase3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpriteBase3D");
		if(constructor is null) return typeof(this).init;
		return cast(SpriteBase3D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum DrawFlags : int
	{
		/**
		If set, the texture's transparency and the opacity are used to make those parts of the Sprite invisible.
		*/
		flagTransparent = 0,
		/**
		If set, the Light in the Environment has effects on the Sprite.
		*/
		flagShaded = 1,
		/**
		If set, texture can be seen from the back as well, if not, it is invisible when looking at it from behind.
		*/
		flagDoubleSided = 2,
		/**
		Used internally to mark the end of the Flags section.
		*/
		flagMax = 3,
	}
	/// 
	enum AlphaCutMode : int
	{
		/**
		
		*/
		alphaCutDisabled = 0,
		/**
		
		*/
		alphaCutDiscard = 1,
		/**
		
		*/
		alphaCutOpaquePrepass = 2,
	}
	/// 
	enum Constants : int
	{
		alphaCutDisabled = 0,
		flagTransparent = 0,
		alphaCutDiscard = 1,
		flagShaded = 1,
		flagDoubleSided = 2,
		alphaCutOpaquePrepass = 2,
		flagMax = 3,
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_centered") = _GODOT_set_centered;
	/**
	
	*/
	void setCentered(in bool centered)
	{
		_GODOT_set_centered.bind("SpriteBase3D", "set_centered");
		ptrcall!(void)(_GODOT_set_centered, _godot_object, centered);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_centered") = _GODOT_is_centered;
	/**
	
	*/
	bool isCentered() const
	{
		_GODOT_is_centered.bind("SpriteBase3D", "is_centered");
		return ptrcall!(bool)(_GODOT_is_centered, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("SpriteBase3D", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	/**
	
	*/
	Vector2 getOffset() const
	{
		_GODOT_get_offset.bind("SpriteBase3D", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flip_h;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flip_h") = _GODOT_set_flip_h;
	/**
	
	*/
	void setFlipH(in bool flip_h)
	{
		_GODOT_set_flip_h.bind("SpriteBase3D", "set_flip_h");
		ptrcall!(void)(_GODOT_set_flip_h, _godot_object, flip_h);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flipped_h;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flipped_h") = _GODOT_is_flipped_h;
	/**
	
	*/
	bool isFlippedH() const
	{
		_GODOT_is_flipped_h.bind("SpriteBase3D", "is_flipped_h");
		return ptrcall!(bool)(_GODOT_is_flipped_h, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flip_v;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flip_v") = _GODOT_set_flip_v;
	/**
	
	*/
	void setFlipV(in bool flip_v)
	{
		_GODOT_set_flip_v.bind("SpriteBase3D", "set_flip_v");
		ptrcall!(void)(_GODOT_set_flip_v, _godot_object, flip_v);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flipped_v;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flipped_v") = _GODOT_is_flipped_v;
	/**
	
	*/
	bool isFlippedV() const
	{
		_GODOT_is_flipped_v.bind("SpriteBase3D", "is_flipped_v");
		return ptrcall!(bool)(_GODOT_is_flipped_v, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_modulate") = _GODOT_set_modulate;
	/**
	
	*/
	void setModulate(in Color modulate)
	{
		_GODOT_set_modulate.bind("SpriteBase3D", "set_modulate");
		ptrcall!(void)(_GODOT_set_modulate, _godot_object, modulate);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_modulate") = _GODOT_get_modulate;
	/**
	
	*/
	Color getModulate() const
	{
		_GODOT_get_modulate.bind("SpriteBase3D", "get_modulate");
		return ptrcall!(Color)(_GODOT_get_modulate, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_opacity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_opacity") = _GODOT_set_opacity;
	/**
	
	*/
	void setOpacity(in double opacity)
	{
		_GODOT_set_opacity.bind("SpriteBase3D", "set_opacity");
		ptrcall!(void)(_GODOT_set_opacity, _godot_object, opacity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_opacity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_opacity") = _GODOT_get_opacity;
	/**
	
	*/
	double getOpacity() const
	{
		_GODOT_get_opacity.bind("SpriteBase3D", "get_opacity");
		return ptrcall!(double)(_GODOT_get_opacity, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_pixel_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pixel_size") = _GODOT_set_pixel_size;
	/**
	
	*/
	void setPixelSize(in double pixel_size)
	{
		_GODOT_set_pixel_size.bind("SpriteBase3D", "set_pixel_size");
		ptrcall!(void)(_GODOT_set_pixel_size, _godot_object, pixel_size);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_pixel_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pixel_size") = _GODOT_get_pixel_size;
	/**
	
	*/
	double getPixelSize() const
	{
		_GODOT_get_pixel_size.bind("SpriteBase3D", "get_pixel_size");
		return ptrcall!(double)(_GODOT_get_pixel_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_axis") = _GODOT_set_axis;
	/**
	
	*/
	void setAxis(in long axis)
	{
		_GODOT_set_axis.bind("SpriteBase3D", "set_axis");
		ptrcall!(void)(_GODOT_set_axis, _godot_object, axis);
	}
	package(godot) static GodotMethod!(Vector3.Axis) _GODOT_get_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_axis") = _GODOT_get_axis;
	/**
	
	*/
	Vector3.Axis getAxis() const
	{
		_GODOT_get_axis.bind("SpriteBase3D", "get_axis");
		return ptrcall!(Vector3.Axis)(_GODOT_get_axis, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_draw_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_flag") = _GODOT_set_draw_flag;
	/**
	
	*/
	void setDrawFlag(in long flag, in bool enabled)
	{
		_GODOT_set_draw_flag.bind("SpriteBase3D", "set_draw_flag");
		ptrcall!(void)(_GODOT_set_draw_flag, _godot_object, flag, enabled);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_draw_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_draw_flag") = _GODOT_get_draw_flag;
	/**
	
	*/
	bool getDrawFlag(in long flag) const
	{
		_GODOT_get_draw_flag.bind("SpriteBase3D", "get_draw_flag");
		return ptrcall!(bool)(_GODOT_get_draw_flag, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_alpha_cut_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_alpha_cut_mode") = _GODOT_set_alpha_cut_mode;
	/**
	
	*/
	void setAlphaCutMode(in long mode)
	{
		_GODOT_set_alpha_cut_mode.bind("SpriteBase3D", "set_alpha_cut_mode");
		ptrcall!(void)(_GODOT_set_alpha_cut_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(SpriteBase3D.AlphaCutMode) _GODOT_get_alpha_cut_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_alpha_cut_mode") = _GODOT_get_alpha_cut_mode;
	/**
	
	*/
	SpriteBase3D.AlphaCutMode getAlphaCutMode() const
	{
		_GODOT_get_alpha_cut_mode.bind("SpriteBase3D", "get_alpha_cut_mode");
		return ptrcall!(SpriteBase3D.AlphaCutMode)(_GODOT_get_alpha_cut_mode, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_item_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_rect") = _GODOT_get_item_rect;
	/**
	
	*/
	Rect2 getItemRect() const
	{
		_GODOT_get_item_rect.bind("SpriteBase3D", "get_item_rect");
		return ptrcall!(Rect2)(_GODOT_get_item_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__queue_update;
	package(godot) alias _GODOT_methodBindInfo(string name : "_queue_update") = _GODOT__queue_update;
	/**
	
	*/
	void _queueUpdate()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_queue_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__im_update;
	package(godot) alias _GODOT_methodBindInfo(string name : "_im_update") = _GODOT__im_update;
	/**
	
	*/
	void _imUpdate()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_im_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	If `true` texture will be centered. Default value: `true`.
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
	A color value that gets multiplied on, could be used for mood-coloring or to simulate the color of light.
	*/
	@property Color modulate()
	{
		return getModulate();
	}
	/// ditto
	@property void modulate(Color v)
	{
		setModulate(v);
	}
	/**
	The objects visibility on a scale from `0` fully invisible to `1` fully visible.
	*/
	@property double opacity()
	{
		return getOpacity();
	}
	/// ditto
	@property void opacity(double v)
	{
		setOpacity(v);
	}
	/**
	The size of one pixel's width on the Sprite to scale it in 3D.
	*/
	@property double pixelSize()
	{
		return getPixelSize();
	}
	/// ditto
	@property void pixelSize(double v)
	{
		setPixelSize(v);
	}
	/**
	The direction in which the front of the texture faces.
	*/
	@property Vector3.Axis axis()
	{
		return getAxis();
	}
	/// ditto
	@property void axis(long v)
	{
		setAxis(v);
	}
	/**
	If `true` the texture's transparency and the opacity are used to make those parts of the Sprite invisible. Default value: `true`.
	*/
	@property bool transparent()
	{
		return getDrawFlag(0);
	}
	/// ditto
	@property void transparent(bool v)
	{
		setDrawFlag(0, v);
	}
	/**
	If `true` the $(D Light) in the $(D Environment) has effects on the Sprite. Default value: `false`.
	*/
	@property bool shaded()
	{
		return getDrawFlag(1);
	}
	/// ditto
	@property void shaded(bool v)
	{
		setDrawFlag(1, v);
	}
	/**
	If `true` texture can be seen from the back as well, if `false`, it is invisible when looking at it from behind. Default value: `true`.
	*/
	@property bool doubleSided()
	{
		return getDrawFlag(2);
	}
	/// ditto
	@property void doubleSided(bool v)
	{
		setDrawFlag(2, v);
	}
	/**
	
	*/
	@property SpriteBase3D.AlphaCutMode alphaCut()
	{
		return getAlphaCutMode();
	}
	/// ditto
	@property void alphaCut(long v)
	{
		setAlphaCutMode(v);
	}
}
