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
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Texture-based progress bar. Useful for loading screens and life or stamina bars.

TextureProgress works like $(D ProgressBar) but it uses up to 3 textures instead of Godot's $(D Theme) resource. Works horizontally, vertically, and radially.
*/
@GodotBaseClass struct TextureProgress
{
	enum string _GODOT_internal_name = "TextureProgress";
public:
@nogc nothrow:
	union { godot_object _godot_object; Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_under_texture") GodotMethod!(void, Texture) setUnderTexture;
		@GodotName("get_under_texture") GodotMethod!(Texture) getUnderTexture;
		@GodotName("set_progress_texture") GodotMethod!(void, Texture) setProgressTexture;
		@GodotName("get_progress_texture") GodotMethod!(Texture) getProgressTexture;
		@GodotName("set_over_texture") GodotMethod!(void, Texture) setOverTexture;
		@GodotName("get_over_texture") GodotMethod!(Texture) getOverTexture;
		@GodotName("set_fill_mode") GodotMethod!(void, long) setFillMode;
		@GodotName("get_fill_mode") GodotMethod!(long) getFillMode;
		@GodotName("set_tint_under") GodotMethod!(void, Color) setTintUnder;
		@GodotName("get_tint_under") GodotMethod!(Color) getTintUnder;
		@GodotName("set_tint_progress") GodotMethod!(void, Color) setTintProgress;
		@GodotName("get_tint_progress") GodotMethod!(Color) getTintProgress;
		@GodotName("set_tint_over") GodotMethod!(void, Color) setTintOver;
		@GodotName("get_tint_over") GodotMethod!(Color) getTintOver;
		@GodotName("set_radial_initial_angle") GodotMethod!(void, double) setRadialInitialAngle;
		@GodotName("get_radial_initial_angle") GodotMethod!(double) getRadialInitialAngle;
		@GodotName("set_radial_center_offset") GodotMethod!(void, Vector2) setRadialCenterOffset;
		@GodotName("get_radial_center_offset") GodotMethod!(Vector2) getRadialCenterOffset;
		@GodotName("set_fill_degrees") GodotMethod!(void, double) setFillDegrees;
		@GodotName("get_fill_degrees") GodotMethod!(double) getFillDegrees;
		@GodotName("set_stretch_margin") GodotMethod!(void, long, long) setStretchMargin;
		@GodotName("get_stretch_margin") GodotMethod!(long, long) getStretchMargin;
		@GodotName("set_nine_patch_stretch") GodotMethod!(void, bool) setNinePatchStretch;
		@GodotName("get_nine_patch_stretch") GodotMethod!(bool) getNinePatchStretch;
	}
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
	@disable new(size_t s);
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
		Turns the node into a radial bar. The $(D textureProgress) fills clockwise. See $(D radialCenterOffset), $(D radialInitialAngle) and $(D radialFillDegrees) to control the way the bar fills up.
		*/
		fillClockwise = 4,
		/**
		Turns the node into a radial bar. The $(D textureProgress) fills counter-clockwise. See $(D radialCenterOffset), $(D radialInitialAngle) and $(D radialFillDegrees) to control the way the bar fills up.
		*/
		fillCounterClockwise = 5,
		/**
		The $(D textureProgress) fills from the center, expanding both towards the left and the right.
		*/
		fillBilinearLeftAndRight = 6,
		/**
		The $(D textureProgress) fills from the center, expanding both towards the top and the bottom.
		*/
		fillBilinearTopAndBottom = 7,
		/**
		Turns the node into a radial bar. The $(D textureProgress) fills radially from the center, expanding both clockwise and counter-clockwise. See $(D radialCenterOffset), $(D radialInitialAngle) and $(D radialFillDegrees) to control the way the bar fills up.
		*/
		fillClockwiseAndCounterClockwise = 8,
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
		fillBilinearLeftAndRight = 6,
		fillBilinearTopAndBottom = 7,
		fillClockwiseAndCounterClockwise = 8,
	}
	/**
	
	*/
	void setUnderTexture(Texture tex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUnderTexture, _godot_object, tex);
	}
	/**
	
	*/
	Ref!Texture getUnderTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getUnderTexture, _godot_object);
	}
	/**
	
	*/
	void setProgressTexture(Texture tex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProgressTexture, _godot_object, tex);
	}
	/**
	
	*/
	Ref!Texture getProgressTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getProgressTexture, _godot_object);
	}
	/**
	
	*/
	void setOverTexture(Texture tex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOverTexture, _godot_object, tex);
	}
	/**
	
	*/
	Ref!Texture getOverTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getOverTexture, _godot_object);
	}
	/**
	
	*/
	void setFillMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFillMode, _godot_object, mode);
	}
	/**
	
	*/
	long getFillMode()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFillMode, _godot_object);
	}
	/**
	
	*/
	void setTintUnder(in Color tint)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTintUnder, _godot_object, tint);
	}
	/**
	
	*/
	Color getTintUnder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getTintUnder, _godot_object);
	}
	/**
	
	*/
	void setTintProgress(in Color tint)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTintProgress, _godot_object, tint);
	}
	/**
	
	*/
	Color getTintProgress() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getTintProgress, _godot_object);
	}
	/**
	
	*/
	void setTintOver(in Color tint)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTintOver, _godot_object, tint);
	}
	/**
	
	*/
	Color getTintOver() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getTintOver, _godot_object);
	}
	/**
	
	*/
	void setRadialInitialAngle(in double mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadialInitialAngle, _godot_object, mode);
	}
	/**
	
	*/
	double getRadialInitialAngle()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRadialInitialAngle, _godot_object);
	}
	/**
	
	*/
	void setRadialCenterOffset(in Vector2 mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadialCenterOffset, _godot_object, mode);
	}
	/**
	
	*/
	Vector2 getRadialCenterOffset()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getRadialCenterOffset, _godot_object);
	}
	/**
	
	*/
	void setFillDegrees(in double mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFillDegrees, _godot_object, mode);
	}
	/**
	
	*/
	double getFillDegrees()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFillDegrees, _godot_object);
	}
	/**
	
	*/
	void setStretchMargin(in long margin, in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStretchMargin, _godot_object, margin, value);
	}
	/**
	
	*/
	long getStretchMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getStretchMargin, _godot_object, margin);
	}
	/**
	
	*/
	void setNinePatchStretch(in bool stretch)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNinePatchStretch, _godot_object, stretch);
	}
	/**
	
	*/
	bool getNinePatchStretch() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getNinePatchStretch, _godot_object);
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
	Multiplies the color of the bar's `texture_under` texture.
	*/
	@property Color tintUnder()
	{
		return getTintUnder();
	}
	/// ditto
	@property void tintUnder(Color v)
	{
		setTintUnder(v);
	}
	/**
	Multiplies the color of the bar's `texture_over` texture. The effect is similar to $(D CanvasItem.modulate), except it only affects this specific texture instead of the entire node.
	*/
	@property Color tintOver()
	{
		return getTintOver();
	}
	/// ditto
	@property void tintOver(Color v)
	{
		setTintOver(v);
	}
	/**
	Multiplies the color of the bar's `texture_progress` texture.
	*/
	@property Color tintProgress()
	{
		return getTintProgress();
	}
	/// ditto
	@property void tintProgress(Color v)
	{
		setTintProgress(v);
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
	If `true`, Godot treats the bar's textures like $(D NinePatchRect). Use `stretch_margin_*`, like $(D stretchMarginBottom), to set up the nine patch's 3x3 grid. Default value: `false`.
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
