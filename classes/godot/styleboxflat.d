/**
Customizable Stylebox with a given set of parameters. (no texture required)

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.styleboxflat;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.stylebox;
import godot.resource;
import godot.reference;
/**
Customizable Stylebox with a given set of parameters. (no texture required)

This stylebox can be used to achieve all kinds of looks without the need of a texture. Those properties are customizable:
- Color
- Border width (individual width for each border)
- Rounded corners (individual radius for each corner)
- Shadow
Setting corner radius to high values is allowed. As soon as corners would overlap the stylebox will switch to a relative system. Example:


height = 30
corner_radius_top_left = 50
corner_radius_bottom_left = 100


The relative system now would take the 1:2 ratio of the two left corners to calculate the actual corner width. Both corners added will $(B never) be more than the height. Result:


corner_radius_top_left: 10
corner_radius_bottom_left: 20


*/
@GodotBaseClass struct StyleBoxFlat
{
	enum string _GODOT_internal_name = "StyleBoxFlat";
public:
@nogc nothrow:
	union { godot_object _godot_object; StyleBox _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_bg_color") GodotMethod!(void, Color) setBgColor;
		@GodotName("get_bg_color") GodotMethod!(Color) getBgColor;
		@GodotName("set_border_color") GodotMethod!(void, Color) setBorderColor;
		@GodotName("get_border_color") GodotMethod!(Color) getBorderColor;
		@GodotName("set_border_width_all") GodotMethod!(void, long) setBorderWidthAll;
		@GodotName("get_border_width_min") GodotMethod!(long) getBorderWidthMin;
		@GodotName("set_border_width") GodotMethod!(void, long, long) setBorderWidth;
		@GodotName("get_border_width") GodotMethod!(long, long) getBorderWidth;
		@GodotName("set_border_blend") GodotMethod!(void, bool) setBorderBlend;
		@GodotName("get_border_blend") GodotMethod!(bool) getBorderBlend;
		@GodotName("set_corner_radius_individual") GodotMethod!(void, long, long, long, long) setCornerRadiusIndividual;
		@GodotName("set_corner_radius_all") GodotMethod!(void, long) setCornerRadiusAll;
		@GodotName("set_corner_radius") GodotMethod!(void, long, long) setCornerRadius;
		@GodotName("get_corner_radius") GodotMethod!(long, long) getCornerRadius;
		@GodotName("set_expand_margin") GodotMethod!(void, long, double) setExpandMargin;
		@GodotName("set_expand_margin_all") GodotMethod!(void, double) setExpandMarginAll;
		@GodotName("set_expand_margin_individual") GodotMethod!(void, double, double, double, double) setExpandMarginIndividual;
		@GodotName("get_expand_margin") GodotMethod!(double, long) getExpandMargin;
		@GodotName("set_draw_center") GodotMethod!(void, bool) setDrawCenter;
		@GodotName("is_draw_center_enabled") GodotMethod!(bool) isDrawCenterEnabled;
		@GodotName("set_shadow_color") GodotMethod!(void, Color) setShadowColor;
		@GodotName("get_shadow_color") GodotMethod!(Color) getShadowColor;
		@GodotName("set_shadow_size") GodotMethod!(void, long) setShadowSize;
		@GodotName("get_shadow_size") GodotMethod!(long) getShadowSize;
		@GodotName("set_anti_aliased") GodotMethod!(void, bool) setAntiAliased;
		@GodotName("is_anti_aliased") GodotMethod!(bool) isAntiAliased;
		@GodotName("set_aa_size") GodotMethod!(void, long) setAaSize;
		@GodotName("get_aa_size") GodotMethod!(long) getAaSize;
		@GodotName("set_corner_detail") GodotMethod!(void, long) setCornerDetail;
		@GodotName("get_corner_detail") GodotMethod!(long) getCornerDetail;
	}
	bool opEquals(in StyleBoxFlat other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StyleBoxFlat opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setBgColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBgColor, _godot_object, color);
	}
	/**
	
	*/
	Color getBgColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getBgColor, _godot_object);
	}
	/**
	
	*/
	void setBorderColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBorderColor, _godot_object, color);
	}
	/**
	
	*/
	Color getBorderColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getBorderColor, _godot_object);
	}
	/**
	
	*/
	void setBorderWidthAll(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBorderWidthAll, _godot_object, width);
	}
	/**
	
	*/
	long getBorderWidthMin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBorderWidthMin, _godot_object);
	}
	/**
	
	*/
	void setBorderWidth(in long margin, in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBorderWidth, _godot_object, margin, width);
	}
	/**
	
	*/
	long getBorderWidth(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBorderWidth, _godot_object, margin);
	}
	/**
	
	*/
	void setBorderBlend(in bool blend)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBorderBlend, _godot_object, blend);
	}
	/**
	
	*/
	bool getBorderBlend() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getBorderBlend, _godot_object);
	}
	/**
	
	*/
	void setCornerRadiusIndividual(in long radius_top_left, in long radius_top_right, in long radius_bottom_right, in long radius_bottom_left)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCornerRadiusIndividual, _godot_object, radius_top_left, radius_top_right, radius_bottom_right, radius_bottom_left);
	}
	/**
	
	*/
	void setCornerRadiusAll(in long radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCornerRadiusAll, _godot_object, radius);
	}
	/**
	
	*/
	void setCornerRadius(in long corner, in long radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCornerRadius, _godot_object, corner, radius);
	}
	/**
	
	*/
	long getCornerRadius(in long corner) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCornerRadius, _godot_object, corner);
	}
	/**
	
	*/
	void setExpandMargin(in long margin, in double size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExpandMargin, _godot_object, margin, size);
	}
	/**
	
	*/
	void setExpandMarginAll(in double size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExpandMarginAll, _godot_object, size);
	}
	/**
	
	*/
	void setExpandMarginIndividual(in double size_left, in double size_top, in double size_right, in double size_bottom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExpandMarginIndividual, _godot_object, size_left, size_top, size_right, size_bottom);
	}
	/**
	
	*/
	double getExpandMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getExpandMargin, _godot_object, margin);
	}
	/**
	
	*/
	void setDrawCenter(in bool draw_center)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawCenter, _godot_object, draw_center);
	}
	/**
	
	*/
	bool isDrawCenterEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDrawCenterEnabled, _godot_object);
	}
	/**
	
	*/
	void setShadowColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowColor, _godot_object, color);
	}
	/**
	
	*/
	Color getShadowColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getShadowColor, _godot_object);
	}
	/**
	
	*/
	void setShadowSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowSize, _godot_object, size);
	}
	/**
	
	*/
	long getShadowSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getShadowSize, _godot_object);
	}
	/**
	
	*/
	void setAntiAliased(in bool anti_aliased)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAntiAliased, _godot_object, anti_aliased);
	}
	/**
	
	*/
	bool isAntiAliased() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAntiAliased, _godot_object);
	}
	/**
	
	*/
	void setAaSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAaSize, _godot_object, size);
	}
	/**
	
	*/
	long getAaSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAaSize, _godot_object);
	}
	/**
	
	*/
	void setCornerDetail(in long detail)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCornerDetail, _godot_object, detail);
	}
	/**
	
	*/
	long getCornerDetail() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCornerDetail, _godot_object);
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
	Toggels drawing of the inner part of the stylebox.
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
	When set to `true`, the border will fade into the background color.
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
	The corner radius of the top left corner. When set to 0 the corner is not rounded.
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
	The corner radius of the top right corner. When set to 0 the corner is not rounded.
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
	The corner radius of the bottom right corner. When set to 0 the corner is not rounded.
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
	The corner radius of the bottom left corner. When set to 0 the corner is not rounded.
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
	This sets the amount of vertices used for each corner. Higher values result in rounder corners but take more processing power to compute. When choosing a value you should take the corner radius ($(D setCornerRadiusAll)) into account.
	For corner radius smaller than 10, 4-5 should be enough.
	For corner radius smaller than 30, 8-12 should be enough.
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
	Expands the stylebox outside of the control rect on the left edge. Useful in combination with border_width_left. To draw a border outside the control rect.
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
	Expands the stylebox outside of the control rect on the right edge. Useful in combination with border_width_right. To draw a border outside the control rect.
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
	Expands the stylebox outside of the control rect on the top edge. Useful in combination with border_width_top. To draw a border outside the control rect.
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
	Expands the stylebox outside of the control rect on the bottom edge. Useful in combination with border_width_bottom. To draw a border outside the control rect.
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
	The color of the shadow. (This has no effect when shadow_size &lt; 1)
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
	/**
	Anti Aliasing draws a small ring around edges. This ring fades to transparent. As a result edges look much smoother. This is only noticeable when using rounded corners.
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
}
