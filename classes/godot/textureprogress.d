/**
Texture-based progress bar. Useful for loading screens and life or stamina bars.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.textureprogress;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.range;
import godot.texture;
/**
Texture-based progress bar. Useful for loading screens and life or stamina bars.

TextureProgress works like $(D ProgressBar) but it uses up to 3 textures instead of Godot's $(D Theme) resource. Works horizontally, vertically, and radially.
*/
@GodotBaseClass struct TextureProgress
{
	static immutable string _GODOT_internal_name = "TextureProgress";
public:
@nogc nothrow:
	union { godot_object _godot_object; Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in TextureProgress other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TextureProgress opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TextureProgress _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TextureProgress");
		if(constructor is null) return typeof(this).init;
		return cast(TextureProgress)(constructor());
	}
	/// 
	enum FillMode : int
	{
		/**
		The $(D textureProgress) fills from left to right.
		*/
		fillLeftToRight = 0,
		/**
		The $(D textureProgress) fills from right to left.
		*/
		fillRightToLeft = 1,
		/**
		The $(D textureProgress) fills from top to bototm.
		*/
		fillTopToBottom = 2,
		/**
		The $(D textureProgress) fills from bottom to top.
		*/
		fillBottomToTop = 3,
		/**
		Turns the node into a radial bar. The $(D textureProgress) fills clockwise. See $(D radialCenterOffset), $(D radialInitialAngle) and $(D radialFillDegrees) to refine its behavior.
		*/
		fillClockwise = 4,
		/**
		Turns the node into a radial bar. The $(D textureProgress) fills counter-clockwise. See $(D radialCenterOffset), $(D radialInitialAngle) and $(D radialFillDegrees) to refine its behavior.
		*/
		fillCounterClockwise = 5,
	}
	/// 
	enum Constants : int
	{
		fillLeftToRight = 0,
		fillRightToLeft = 1,
		fillTopToBottom = 2,
		fillBottomToTop = 3,
		fillClockwise = 4,
		fillCounterClockwise = 5,
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_under_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_under_texture") = _GODOT_set_under_texture;
	/**
	
	*/
	void setUnderTexture(Texture tex)
	{
		_GODOT_set_under_texture.bind("TextureProgress", "set_under_texture");
		ptrcall!(void)(_GODOT_set_under_texture, _godot_object, tex);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_under_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_under_texture") = _GODOT_get_under_texture;
	/**
	
	*/
	Ref!Texture getUnderTexture() const
	{
		_GODOT_get_under_texture.bind("TextureProgress", "get_under_texture");
		return ptrcall!(Texture)(_GODOT_get_under_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_progress_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_progress_texture") = _GODOT_set_progress_texture;
	/**
	
	*/
	void setProgressTexture(Texture tex)
	{
		_GODOT_set_progress_texture.bind("TextureProgress", "set_progress_texture");
		ptrcall!(void)(_GODOT_set_progress_texture, _godot_object, tex);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_progress_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_progress_texture") = _GODOT_get_progress_texture;
	/**
	
	*/
	Ref!Texture getProgressTexture() const
	{
		_GODOT_get_progress_texture.bind("TextureProgress", "get_progress_texture");
		return ptrcall!(Texture)(_GODOT_get_progress_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_over_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_over_texture") = _GODOT_set_over_texture;
	/**
	
	*/
	void setOverTexture(Texture tex)
	{
		_GODOT_set_over_texture.bind("TextureProgress", "set_over_texture");
		ptrcall!(void)(_GODOT_set_over_texture, _godot_object, tex);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_over_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_over_texture") = _GODOT_get_over_texture;
	/**
	
	*/
	Ref!Texture getOverTexture() const
	{
		_GODOT_get_over_texture.bind("TextureProgress", "get_over_texture");
		return ptrcall!(Texture)(_GODOT_get_over_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_fill_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fill_mode") = _GODOT_set_fill_mode;
	/**
	
	*/
	void setFillMode(in long mode)
	{
		_GODOT_set_fill_mode.bind("TextureProgress", "set_fill_mode");
		ptrcall!(void)(_GODOT_set_fill_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_fill_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fill_mode") = _GODOT_get_fill_mode;
	/**
	
	*/
	long getFillMode()
	{
		_GODOT_get_fill_mode.bind("TextureProgress", "get_fill_mode");
		return ptrcall!(long)(_GODOT_get_fill_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_radial_initial_angle;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radial_initial_angle") = _GODOT_set_radial_initial_angle;
	/**
	
	*/
	void setRadialInitialAngle(in double mode)
	{
		_GODOT_set_radial_initial_angle.bind("TextureProgress", "set_radial_initial_angle");
		ptrcall!(void)(_GODOT_set_radial_initial_angle, _godot_object, mode);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_radial_initial_angle;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radial_initial_angle") = _GODOT_get_radial_initial_angle;
	/**
	
	*/
	double getRadialInitialAngle()
	{
		_GODOT_get_radial_initial_angle.bind("TextureProgress", "get_radial_initial_angle");
		return ptrcall!(double)(_GODOT_get_radial_initial_angle, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_radial_center_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radial_center_offset") = _GODOT_set_radial_center_offset;
	/**
	
	*/
	void setRadialCenterOffset(in Vector2 mode)
	{
		_GODOT_set_radial_center_offset.bind("TextureProgress", "set_radial_center_offset");
		ptrcall!(void)(_GODOT_set_radial_center_offset, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_radial_center_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radial_center_offset") = _GODOT_get_radial_center_offset;
	/**
	
	*/
	Vector2 getRadialCenterOffset()
	{
		_GODOT_get_radial_center_offset.bind("TextureProgress", "get_radial_center_offset");
		return ptrcall!(Vector2)(_GODOT_get_radial_center_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_fill_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fill_degrees") = _GODOT_set_fill_degrees;
	/**
	
	*/
	void setFillDegrees(in double mode)
	{
		_GODOT_set_fill_degrees.bind("TextureProgress", "set_fill_degrees");
		ptrcall!(void)(_GODOT_set_fill_degrees, _godot_object, mode);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_fill_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fill_degrees") = _GODOT_get_fill_degrees;
	/**
	
	*/
	double getFillDegrees()
	{
		_GODOT_get_fill_degrees.bind("TextureProgress", "get_fill_degrees");
		return ptrcall!(double)(_GODOT_get_fill_degrees, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_stretch_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stretch_margin") = _GODOT_set_stretch_margin;
	/**
	
	*/
	void setStretchMargin(in long margin, in long value)
	{
		_GODOT_set_stretch_margin.bind("TextureProgress", "set_stretch_margin");
		ptrcall!(void)(_GODOT_set_stretch_margin, _godot_object, margin, value);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_stretch_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stretch_margin") = _GODOT_get_stretch_margin;
	/**
	
	*/
	long getStretchMargin(in long margin) const
	{
		_GODOT_get_stretch_margin.bind("TextureProgress", "get_stretch_margin");
		return ptrcall!(long)(_GODOT_get_stretch_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_nine_patch_stretch;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_nine_patch_stretch") = _GODOT_set_nine_patch_stretch;
	/**
	
	*/
	void setNinePatchStretch(in bool stretch)
	{
		_GODOT_set_nine_patch_stretch.bind("TextureProgress", "set_nine_patch_stretch");
		ptrcall!(void)(_GODOT_set_nine_patch_stretch, _godot_object, stretch);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_nine_patch_stretch;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_nine_patch_stretch") = _GODOT_get_nine_patch_stretch;
	/**
	
	*/
	bool getNinePatchStretch() const
	{
		_GODOT_get_nine_patch_stretch.bind("TextureProgress", "get_nine_patch_stretch");
		return ptrcall!(bool)(_GODOT_get_nine_patch_stretch, _godot_object);
	}
	/**
	$(D Texture) that draws under the progress bar. The bar's background.
	*/
	@property Texture textureUnder()
	{
		return getUnderTexture();
	}
	/// ditto
	@property void textureUnder(Texture v)
	{
		setUnderTexture(v);
	}
	/**
	$(D Texture) that draws over the progress bar. Use it to add highlights or an upper-frame that hides part of $(D textureProgress).
	*/
	@property Texture textureOver()
	{
		return getOverTexture();
	}
	/// ditto
	@property void textureOver(Texture v)
	{
		setOverTexture(v);
	}
	/**
	$(D Texture) that clips based on the node's `value` and $(D fillMode). As `value` increased, the texture fills up. It shows entirely when `value` reaches `max_value`. It doesn't show at all if `value` is equal to `min_value`.
	The `value` property comes from $(D Range). See $(D Range.value), $(D Range.minValue), $(D Range.maxValue).
	*/
	@property Texture textureProgress()
	{
		return getProgressTexture();
	}
	/// ditto
	@property void textureProgress(Texture v)
	{
		setProgressTexture(v);
	}
	/**
	The fill direction. Uses FILL_* constants.
	*/
	@property long fillMode()
	{
		return getFillMode();
	}
	/// ditto
	@property void fillMode(long v)
	{
		setFillMode(v);
	}
	/**
	Starting angle for the fill of $(D textureProgress) if $(D fillMode) is `FILL_CLOCKWISE` or `FILL_COUNTER_CLOCKWISE`. When the node's `value` is equal to its `min_value`, the texture doesn't show up at all. When the `value` increases, the texture fills and tends towards $(D radialFillDegrees).
	*/
	@property double radialInitialAngle()
	{
		return getRadialInitialAngle();
	}
	/// ditto
	@property void radialInitialAngle(double v)
	{
		setRadialInitialAngle(v);
	}
	/**
	Upper limit for the fill of $(D textureProgress) if $(D fillMode) is `FILL_CLOCKWISE` or `FILL_COUNTER_CLOCKWISE`. When the node's `value` is equal to its `max_value`, the texture fills up to this angle.
	See $(D Range.value), $(D Range.maxValue).
	*/
	@property double radialFillDegrees()
	{
		return getFillDegrees();
	}
	/// ditto
	@property void radialFillDegrees(double v)
	{
		setFillDegrees(v);
	}
	/**
	Offsets $(D textureProgress) if $(D fillMode) is `FILL_CLOCKWISE` or `FILL_COUNTER_CLOCKWISE`.
	*/
	@property Vector2 radialCenterOffset()
	{
		return getRadialCenterOffset();
	}
	/// ditto
	@property void radialCenterOffset(Vector2 v)
	{
		setRadialCenterOffset(v);
	}
	/**
	If `true` Godot treats the bar's textures like $(D NinePatchRect). Use `stretch_margin_*`, like $(D stretchMarginBottom), to set up the nine patch's 3x3 grid. Default value: `false`.
	*/
	@property bool ninePatchStretch()
	{
		return getNinePatchStretch();
	}
	/// ditto
	@property void ninePatchStretch(bool v)
	{
		setNinePatchStretch(v);
	}
	/**
	The width of the 9-patch's left column.
	*/
	@property long stretchMarginLeft()
	{
		return getStretchMargin(0);
	}
	/// ditto
	@property void stretchMarginLeft(long v)
	{
		setStretchMargin(0, v);
	}
	/**
	The height of the 9-patch's top row.
	*/
	@property long stretchMarginTop()
	{
		return getStretchMargin(1);
	}
	/// ditto
	@property void stretchMarginTop(long v)
	{
		setStretchMargin(1, v);
	}
	/**
	The width of the 9-patch's right column.
	*/
	@property long stretchMarginRight()
	{
		return getStretchMargin(2);
	}
	/// ditto
	@property void stretchMarginRight(long v)
	{
		setStretchMargin(2, v);
	}
	/**
	The height of the 9-patch's bottom row. A margin of 16 means the 9-slice's bottom corners and side will have a height of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.
	*/
	@property long stretchMarginBottom()
	{
		return getStretchMargin(3);
	}
	/// ditto
	@property void stretchMarginBottom(long v)
	{
		setStretchMargin(3, v);
	}
}
