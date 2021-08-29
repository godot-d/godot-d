/**
Customizable $(D StyleBox) with a given set of parameters (no texture required).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.styleboxflat;
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
import godot.stylebox;
import godot.resource;
import godot.reference;
/**
Customizable $(D StyleBox) with a given set of parameters (no texture required).

This $(D StyleBox) can be used to achieve all kinds of looks without the need of a texture. The following properties are customizable:
- Color
- Border width (individual width for each border)
- Rounded corners (individual radius for each corner)
- Shadow (with blur and offset)
Setting corner radius to high values is allowed. As soon as corners overlap, the stylebox will switch to a relative system. Example:


height = 30
corner_radius_top_left = 50
corner_radius_bottom_left = 100


The relative system now would take the 1:2 ratio of the two left corners to calculate the actual corner width. Both corners added will $(B never) be more than the height. Result:


corner_radius_top_left: 10
corner_radius_bottom_left: 20


*/
@GodotBaseClass struct StyleBoxFlat
{
	package(godot) enum string _GODOT_internal_name = "StyleBoxFlat";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ StyleBox _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_aa_size") GodotMethod!(long) getAaSize;
		@GodotName("get_bg_color") GodotMethod!(Color) getBgColor;
		@GodotName("get_border_blend") GodotMethod!(bool) getBorderBlend;
		@GodotName("get_border_color") GodotMethod!(Color) getBorderColor;
		@GodotName("get_border_width") GodotMethod!(long, long) getBorderWidth;
		@GodotName("get_border_width_min") GodotMethod!(long) getBorderWidthMin;
		@GodotName("get_corner_detail") GodotMethod!(long) getCornerDetail;
		@GodotName("get_corner_radius") GodotMethod!(long, long) getCornerRadius;
		@GodotName("get_expand_margin") GodotMethod!(double, long) getExpandMargin;
		@GodotName("get_shadow_color") GodotMethod!(Color) getShadowColor;
		@GodotName("get_shadow_offset") GodotMethod!(Vector2) getShadowOffset;
		@GodotName("get_shadow_size") GodotMethod!(long) getShadowSize;
		@GodotName("is_anti_aliased") GodotMethod!(bool) isAntiAliased;
		@GodotName("is_draw_center_enabled") GodotMethod!(bool) isDrawCenterEnabled;
		@GodotName("set_aa_size") GodotMethod!(void, long) setAaSize;
		@GodotName("set_anti_aliased") GodotMethod!(void, bool) setAntiAliased;
		@GodotName("set_bg_color") GodotMethod!(void, Color) setBgColor;
		@GodotName("set_border_blend") GodotMethod!(void, bool) setBorderBlend;
		@GodotName("set_border_color") GodotMethod!(void, Color) setBorderColor;
		@GodotName("set_border_width") GodotMethod!(void, long, long) setBorderWidth;
		@GodotName("set_border_width_all") GodotMethod!(void, long) setBorderWidthAll;
		@GodotName("set_corner_detail") GodotMethod!(void, long) setCornerDetail;
		@GodotName("set_corner_radius") GodotMethod!(void, long, long) setCornerRadius;
		@GodotName("set_corner_radius_all") GodotMethod!(void, long) setCornerRadiusAll;
		@GodotName("set_corner_radius_individual") GodotMethod!(void, long, long, long, long) setCornerRadiusIndividual;
		@GodotName("set_draw_center") GodotMethod!(void, bool) setDrawCenter;
		@GodotName("set_expand_margin") GodotMethod!(void, long, double) setExpandMargin;
		@GodotName("set_expand_margin_all") GodotMethod!(void, double) setExpandMarginAll;
		@GodotName("set_expand_margin_individual") GodotMethod!(void, double, double, double, double) setExpandMarginIndividual;
		@GodotName("set_shadow_color") GodotMethod!(void, Color) setShadowColor;
		@GodotName("set_shadow_offset") GodotMethod!(void, Vector2) setShadowOffset;
		@GodotName("set_shadow_size") GodotMethod!(void, long) setShadowSize;
	}
	/// 
	pragma(inline, true) bool opEquals(in StyleBoxFlat other) const
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
	/// Construct a new instance of StyleBoxFlat.
	/// Note: use `memnew!StyleBoxFlat` instead.
	static StyleBoxFlat _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StyleBoxFlat");
		if(constructor is null) return typeof(this).init;
		return cast(StyleBoxFlat)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getAaSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAaSize, _godot_object);
	}
	/**
	
	*/
	Color getBgColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getBgColor, _godot_object);
	}
	/**
	
	*/
	bool getBorderBlend() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getBorderBlend, _godot_object);
	}
	/**
	
	*/
	Color getBorderColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getBorderColor, _godot_object);
	}
	/**
	Returns the given `margin`'s border width. See $(D margin) for possible values.
	*/
	long getBorderWidth(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBorderWidth, _godot_object, margin);
	}
	/**
	Returns the smallest border width out of all four borders.
	*/
	long getBorderWidthMin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBorderWidthMin, _godot_object);
	}
	/**
	
	*/
	long getCornerDetail() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCornerDetail, _godot_object);
	}
	/**
	Returns the given `corner`'s radius. See $(D corner) for possible values.
	*/
	long getCornerRadius(in long corner) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCornerRadius, _godot_object, corner);
	}
	/**
	Returns the size of the given `margin`'s expand margin. See $(D margin) for possible values.
	*/
	double getExpandMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getExpandMargin, _godot_object, margin);
	}
	/**
	
	*/
	Color getShadowColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getShadowColor, _godot_object);
	}
	/**
	
	*/
	Vector2 getShadowOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getShadowOffset, _godot_object);
	}
	/**
	
	*/
	long getShadowSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getShadowSize, _godot_object);
	}
	/**
	
	*/
	bool isAntiAliased() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAntiAliased, _godot_object);
	}
	/**
	
	*/
	bool isDrawCenterEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDrawCenterEnabled, _godot_object);
	}
	/**
	
	*/
	void setAaSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAaSize, _godot_object, size);
	}
	/**
	
	*/
	void setAntiAliased(in bool anti_aliased)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAntiAliased, _godot_object, anti_aliased);
	}
	/**
	
	*/
	void setBgColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBgColor, _godot_object, color);
	}
	/**
	
	*/
	void setBorderBlend(in bool blend)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBorderBlend, _godot_object, blend);
	}
	/**
	
	*/
	void setBorderColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBorderColor, _godot_object, color);
	}
	/**
	Sets the border width to `width` pixels for the given `margin`. See $(D margin) for possible values.
	*/
	void setBorderWidth(in long margin, in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBorderWidth, _godot_object, margin, width);
	}
	/**
	Sets the border width to `width` pixels for all margins.
	*/
	void setBorderWidthAll(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBorderWidthAll, _godot_object, width);
	}
	/**
	
	*/
	void setCornerDetail(in long detail)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCornerDetail, _godot_object, detail);
	}
	/**
	Sets the corner radius to `radius` pixels for the given `corner`. See $(D corner) for possible values.
	*/
	void setCornerRadius(in long corner, in long radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCornerRadius, _godot_object, corner, radius);
	}
	/**
	Sets the corner radius to `radius` pixels for all corners.
	*/
	void setCornerRadiusAll(in long radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCornerRadiusAll, _godot_object, radius);
	}
	/**
	Sets the corner radius for each corner to `radius_top_left`, `radius_top_right`, `radius_bottom_right`, and `radius_bottom_left` pixels.
	*/
	void setCornerRadiusIndividual(in long radius_top_left, in long radius_top_right, in long radius_bottom_right, in long radius_bottom_left)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCornerRadiusIndividual, _godot_object, radius_top_left, radius_top_right, radius_bottom_right, radius_bottom_left);
	}
	/**
	
	*/
	void setDrawCenter(in bool draw_center)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDrawCenter, _godot_object, draw_center);
	}
	/**
	Sets the expand margin to `size` pixels for the given `margin`. See $(D margin) for possible values.
	*/
	void setExpandMargin(in long margin, in double size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpandMargin, _godot_object, margin, size);
	}
	/**
	Sets the expand margin to `size` pixels for all margins.
	*/
	void setExpandMarginAll(in double size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpandMarginAll, _godot_object, size);
	}
	/**
	Sets the expand margin for each margin to `size_left`, `size_top`, `size_right`, and `size_bottom` pixels.
	*/
	void setExpandMarginIndividual(in double size_left, in double size_top, in double size_right, in double size_bottom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpandMarginIndividual, _godot_object, size_left, size_top, size_right, size_bottom);
	}
	/**
	
	*/
	void setShadowColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShadowColor, _godot_object, color);
	}
	/**
	
	*/
	void setShadowOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShadowOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setShadowSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShadowSize, _godot_object, size);
	}
	/**
	Antialiasing draws a small ring around the edges, which fades to transparency. As a result, edges look much smoother. This is only noticeable when using rounded corners.
	*/
	@property bool antiAliasing()
	{
		return isAntiAliased();
	}
	/// ditto
	@property void antiAliasing(bool v)
	{
		setAntiAliased(v);
	}
	/**
	This changes the size of the faded ring. Higher values can be used to achieve a "blurry" effect.
	*/
	@property long antiAliasingSize()
	{
		return getAaSize();
	}
	/// ditto
	@property void antiAliasingSize(long v)
	{
		setAaSize(v);
	}
	/**
	The background color of the stylebox.
	*/
	@property Color bgColor()
	{
		return getBgColor();
	}
	/// ditto
	@property void bgColor(Color v)
	{
		setBgColor(v);
	}
	/**
	If `true`, the border will fade into the background color.
	*/
	@property bool borderBlend()
	{
		return getBorderBlend();
	}
	/// ditto
	@property void borderBlend(bool v)
	{
		setBorderBlend(v);
	}
	/**
	Sets the color of the border.
	*/
	@property Color borderColor()
	{
		return getBorderColor();
	}
	/// ditto
	@property void borderColor(Color v)
	{
		setBorderColor(v);
	}
	/**
	Border width for the bottom border.
	*/
	@property long borderWidthBottom()
	{
		return getBorderWidth(3);
	}
	/// ditto
	@property void borderWidthBottom(long v)
	{
		setBorderWidth(3, v);
	}
	/**
	Border width for the left border.
	*/
	@property long borderWidthLeft()
	{
		return getBorderWidth(0);
	}
	/// ditto
	@property void borderWidthLeft(long v)
	{
		setBorderWidth(0, v);
	}
	/**
	Border width for the right border.
	*/
	@property long borderWidthRight()
	{
		return getBorderWidth(2);
	}
	/// ditto
	@property void borderWidthRight(long v)
	{
		setBorderWidth(2, v);
	}
	/**
	Border width for the top border.
	*/
	@property long borderWidthTop()
	{
		return getBorderWidth(1);
	}
	/// ditto
	@property void borderWidthTop(long v)
	{
		setBorderWidth(1, v);
	}
	/**
	This sets the number of vertices used for each corner. Higher values result in rounder corners but take more processing power to compute. When choosing a value, you should take the corner radius ($(D setCornerRadiusAll)) into account.
	For corner radii less than 10, `4` or `5` should be enough. For corner radii less than 30, values between `8` and `12` should be enough.
	A corner detail of `1` will result in chamfered corners instead of rounded corners, which is useful for some artistic effects.
	*/
	@property long cornerDetail()
	{
		return getCornerDetail();
	}
	/// ditto
	@property void cornerDetail(long v)
	{
		setCornerDetail(v);
	}
	/**
	The bottom-left corner's radius. If `0`, the corner is not rounded.
	*/
	@property long cornerRadiusBottomLeft()
	{
		return getCornerRadius(3);
	}
	/// ditto
	@property void cornerRadiusBottomLeft(long v)
	{
		setCornerRadius(3, v);
	}
	/**
	The bottom-right corner's radius. If `0`, the corner is not rounded.
	*/
	@property long cornerRadiusBottomRight()
	{
		return getCornerRadius(2);
	}
	/// ditto
	@property void cornerRadiusBottomRight(long v)
	{
		setCornerRadius(2, v);
	}
	/**
	The top-left corner's radius. If `0`, the corner is not rounded.
	*/
	@property long cornerRadiusTopLeft()
	{
		return getCornerRadius(0);
	}
	/// ditto
	@property void cornerRadiusTopLeft(long v)
	{
		setCornerRadius(0, v);
	}
	/**
	The top-right corner's radius. If `0`, the corner is not rounded.
	*/
	@property long cornerRadiusTopRight()
	{
		return getCornerRadius(1);
	}
	/// ditto
	@property void cornerRadiusTopRight(long v)
	{
		setCornerRadius(1, v);
	}
	/**
	Toggles drawing of the inner part of the stylebox.
	*/
	@property bool drawCenter()
	{
		return isDrawCenterEnabled();
	}
	/// ditto
	@property void drawCenter(bool v)
	{
		setDrawCenter(v);
	}
	/**
	Expands the stylebox outside of the control rect on the bottom edge. Useful in combination with $(D borderWidthBottom) to draw a border outside the control rect.
	*/
	@property double expandMarginBottom()
	{
		return getExpandMargin(3);
	}
	/// ditto
	@property void expandMarginBottom(double v)
	{
		setExpandMargin(3, v);
	}
	/**
	Expands the stylebox outside of the control rect on the left edge. Useful in combination with $(D borderWidthLeft) to draw a border outside the control rect.
	*/
	@property double expandMarginLeft()
	{
		return getExpandMargin(0);
	}
	/// ditto
	@property void expandMarginLeft(double v)
	{
		setExpandMargin(0, v);
	}
	/**
	Expands the stylebox outside of the control rect on the right edge. Useful in combination with $(D borderWidthRight) to draw a border outside the control rect.
	*/
	@property double expandMarginRight()
	{
		return getExpandMargin(2);
	}
	/// ditto
	@property void expandMarginRight(double v)
	{
		setExpandMargin(2, v);
	}
	/**
	Expands the stylebox outside of the control rect on the top edge. Useful in combination with $(D borderWidthTop) to draw a border outside the control rect.
	*/
	@property double expandMarginTop()
	{
		return getExpandMargin(1);
	}
	/// ditto
	@property void expandMarginTop(double v)
	{
		setExpandMargin(1, v);
	}
	/**
	The color of the shadow. This has no effect if $(D shadowSize) is lower than 1.
	*/
	@property Color shadowColor()
	{
		return getShadowColor();
	}
	/// ditto
	@property void shadowColor(Color v)
	{
		setShadowColor(v);
	}
	/**
	The shadow offset in pixels. Adjusts the position of the shadow relatively to the stylebox.
	*/
	@property Vector2 shadowOffset()
	{
		return getShadowOffset();
	}
	/// ditto
	@property void shadowOffset(Vector2 v)
	{
		setShadowOffset(v);
	}
	/**
	The shadow size in pixels.
	*/
	@property long shadowSize()
	{
		return getShadowSize();
	}
	/// ditto
	@property void shadowSize(long v)
	{
		setShadowSize(v);
	}
}
