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
/**
Customizable Stylebox with a given set of parameters. (no texture required)

This stylebox can be used to achieve all kinds of looks without the need of a texture. Those properties are customizable:
 - Color
 - Border width (individual width for each border)
 - Rounded corners (individual radius for each corner)
 - Shadow
 About corner radius:
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
	static immutable string _GODOT_internal_name = "StyleBoxFlat";
public:
@nogc nothrow:
	union { godot_object _godot_object; StyleBox _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, Color) _GODOT_set_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bg_color") = _GODOT_set_bg_color;
	/**
	
	*/
	void setBgColor(in Color color)
	{
		_GODOT_set_bg_color.bind("StyleBoxFlat", "set_bg_color");
		ptrcall!(void)(_GODOT_set_bg_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bg_color") = _GODOT_get_bg_color;
	/**
	
	*/
	Color getBgColor() const
	{
		_GODOT_get_bg_color.bind("StyleBoxFlat", "get_bg_color");
		return ptrcall!(Color)(_GODOT_get_bg_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_border_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_border_color") = _GODOT_set_border_color;
	/**
	
	*/
	void setBorderColor(in Color color)
	{
		_GODOT_set_border_color.bind("StyleBoxFlat", "set_border_color");
		ptrcall!(void)(_GODOT_set_border_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_border_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_border_color") = _GODOT_get_border_color;
	/**
	
	*/
	Color getBorderColor() const
	{
		_GODOT_get_border_color.bind("StyleBoxFlat", "get_border_color");
		return ptrcall!(Color)(_GODOT_get_border_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_border_width_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_border_width_all") = _GODOT_set_border_width_all;
	/**
	
	*/
	void setBorderWidthAll(in long width)
	{
		_GODOT_set_border_width_all.bind("StyleBoxFlat", "set_border_width_all");
		ptrcall!(void)(_GODOT_set_border_width_all, _godot_object, width);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_border_width_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_border_width_min") = _GODOT_get_border_width_min;
	/**
	
	*/
	long getBorderWidthMin() const
	{
		_GODOT_get_border_width_min.bind("StyleBoxFlat", "get_border_width_min");
		return ptrcall!(long)(_GODOT_get_border_width_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_border_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_border_width") = _GODOT_set_border_width;
	/**
	
	*/
	void setBorderWidth(in long margin, in long width)
	{
		_GODOT_set_border_width.bind("StyleBoxFlat", "set_border_width");
		ptrcall!(void)(_GODOT_set_border_width, _godot_object, margin, width);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_border_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_border_width") = _GODOT_get_border_width;
	/**
	
	*/
	long getBorderWidth(in long margin) const
	{
		_GODOT_get_border_width.bind("StyleBoxFlat", "get_border_width");
		return ptrcall!(long)(_GODOT_get_border_width, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_border_blend;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_border_blend") = _GODOT_set_border_blend;
	/**
	
	*/
	void setBorderBlend(in bool blend)
	{
		_GODOT_set_border_blend.bind("StyleBoxFlat", "set_border_blend");
		ptrcall!(void)(_GODOT_set_border_blend, _godot_object, blend);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_border_blend;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_border_blend") = _GODOT_get_border_blend;
	/**
	
	*/
	bool getBorderBlend() const
	{
		_GODOT_get_border_blend.bind("StyleBoxFlat", "get_border_blend");
		return ptrcall!(bool)(_GODOT_get_border_blend, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long, long, long) _GODOT_set_corner_radius_individual;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_corner_radius_individual") = _GODOT_set_corner_radius_individual;
	/**
	
	*/
	void setCornerRadiusIndividual(in long radius_top_left, in long radius_top_right, in long radius_bottom_right, in long radius_bottom_left)
	{
		_GODOT_set_corner_radius_individual.bind("StyleBoxFlat", "set_corner_radius_individual");
		ptrcall!(void)(_GODOT_set_corner_radius_individual, _godot_object, radius_top_left, radius_top_right, radius_bottom_right, radius_bottom_left);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_corner_radius_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_corner_radius_all") = _GODOT_set_corner_radius_all;
	/**
	
	*/
	void setCornerRadiusAll(in long radius)
	{
		_GODOT_set_corner_radius_all.bind("StyleBoxFlat", "set_corner_radius_all");
		ptrcall!(void)(_GODOT_set_corner_radius_all, _godot_object, radius);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_corner_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_corner_radius") = _GODOT_set_corner_radius;
	/**
	
	*/
	void setCornerRadius(in long corner, in long radius)
	{
		_GODOT_set_corner_radius.bind("StyleBoxFlat", "set_corner_radius");
		ptrcall!(void)(_GODOT_set_corner_radius, _godot_object, corner, radius);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_corner_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_corner_radius") = _GODOT_get_corner_radius;
	/**
	
	*/
	long getCornerRadius(in long corner) const
	{
		_GODOT_get_corner_radius.bind("StyleBoxFlat", "get_corner_radius");
		return ptrcall!(long)(_GODOT_get_corner_radius, _godot_object, corner);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_expand_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin") = _GODOT_set_expand_margin;
	/**
	
	*/
	void setExpandMargin(in long margin, in double size)
	{
		_GODOT_set_expand_margin.bind("StyleBoxFlat", "set_expand_margin");
		ptrcall!(void)(_GODOT_set_expand_margin, _godot_object, margin, size);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_expand_margin_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin_all") = _GODOT_set_expand_margin_all;
	/**
	
	*/
	void setExpandMarginAll(in double size)
	{
		_GODOT_set_expand_margin_all.bind("StyleBoxFlat", "set_expand_margin_all");
		ptrcall!(void)(_GODOT_set_expand_margin_all, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, double, double, double, double) _GODOT_set_expand_margin_individual;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin_individual") = _GODOT_set_expand_margin_individual;
	/**
	
	*/
	void setExpandMarginIndividual(in double size_left, in double size_top, in double size_right, in double size_bottom)
	{
		_GODOT_set_expand_margin_individual.bind("StyleBoxFlat", "set_expand_margin_individual");
		ptrcall!(void)(_GODOT_set_expand_margin_individual, _godot_object, size_left, size_top, size_right, size_bottom);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_expand_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_expand_margin") = _GODOT_get_expand_margin;
	/**
	
	*/
	double getExpandMargin(in long margin) const
	{
		_GODOT_get_expand_margin.bind("StyleBoxFlat", "get_expand_margin");
		return ptrcall!(double)(_GODOT_get_expand_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_draw_center;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_center") = _GODOT_set_draw_center;
	/**
	
	*/
	void setDrawCenter(in bool draw_center)
	{
		_GODOT_set_draw_center.bind("StyleBoxFlat", "set_draw_center");
		ptrcall!(void)(_GODOT_set_draw_center, _godot_object, draw_center);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_draw_center_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_draw_center_enabled") = _GODOT_is_draw_center_enabled;
	/**
	
	*/
	bool isDrawCenterEnabled() const
	{
		_GODOT_is_draw_center_enabled.bind("StyleBoxFlat", "is_draw_center_enabled");
		return ptrcall!(bool)(_GODOT_is_draw_center_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_color") = _GODOT_set_shadow_color;
	/**
	
	*/
	void setShadowColor(in Color color)
	{
		_GODOT_set_shadow_color.bind("StyleBoxFlat", "set_shadow_color");
		ptrcall!(void)(_GODOT_set_shadow_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_color") = _GODOT_get_shadow_color;
	/**
	
	*/
	Color getShadowColor() const
	{
		_GODOT_get_shadow_color.bind("StyleBoxFlat", "get_shadow_color");
		return ptrcall!(Color)(_GODOT_get_shadow_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_shadow_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_size") = _GODOT_set_shadow_size;
	/**
	
	*/
	void setShadowSize(in long size)
	{
		_GODOT_set_shadow_size.bind("StyleBoxFlat", "set_shadow_size");
		ptrcall!(void)(_GODOT_set_shadow_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_shadow_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_size") = _GODOT_get_shadow_size;
	/**
	
	*/
	long getShadowSize() const
	{
		_GODOT_get_shadow_size.bind("StyleBoxFlat", "get_shadow_size");
		return ptrcall!(long)(_GODOT_get_shadow_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_anti_aliased;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anti_aliased") = _GODOT_set_anti_aliased;
	/**
	
	*/
	void setAntiAliased(in bool anti_aliased)
	{
		_GODOT_set_anti_aliased.bind("StyleBoxFlat", "set_anti_aliased");
		ptrcall!(void)(_GODOT_set_anti_aliased, _godot_object, anti_aliased);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_anti_aliased;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_anti_aliased") = _GODOT_is_anti_aliased;
	/**
	
	*/
	bool isAntiAliased() const
	{
		_GODOT_is_anti_aliased.bind("StyleBoxFlat", "is_anti_aliased");
		return ptrcall!(bool)(_GODOT_is_anti_aliased, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_aa_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_aa_size") = _GODOT_set_aa_size;
	/**
	
	*/
	void setAaSize(in long size)
	{
		_GODOT_set_aa_size.bind("StyleBoxFlat", "set_aa_size");
		ptrcall!(void)(_GODOT_set_aa_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_aa_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_aa_size") = _GODOT_get_aa_size;
	/**
	
	*/
	long getAaSize() const
	{
		_GODOT_get_aa_size.bind("StyleBoxFlat", "get_aa_size");
		return ptrcall!(long)(_GODOT_get_aa_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_corner_detail;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_corner_detail") = _GODOT_set_corner_detail;
	/**
	
	*/
	void setCornerDetail(in long detail)
	{
		_GODOT_set_corner_detail.bind("StyleBoxFlat", "set_corner_detail");
		ptrcall!(void)(_GODOT_set_corner_detail, _godot_object, detail);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_corner_detail;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_corner_detail") = _GODOT_get_corner_detail;
	/**
	
	*/
	long getCornerDetail() const
	{
		_GODOT_get_corner_detail.bind("StyleBoxFlat", "get_corner_detail");
		return ptrcall!(long)(_GODOT_get_corner_detail, _godot_object);
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
	When set to true, the border will fade into the background color.
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
	This sets the amount of vertices used for each corner. Higher values result in rounder corners but take more processing power to compute. When choosing a value you should take the corner radius ($(D setCornerRadius)) into account.
	For corner radius smaller than 10: 4-5 should be enough
	For corner radius smaller than 30: 8-12 should be enough ...
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
