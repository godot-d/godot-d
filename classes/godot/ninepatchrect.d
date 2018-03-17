/**
Scalable texture-based frame that tiles the texture's centers and sides, but keeps the corners' original size. Perfect for panels and dialog boxes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.ninepatchrect;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
import godot.texture;
/**
Scalable texture-based frame that tiles the texture's centers and sides, but keeps the corners' original size. Perfect for panels and dialog boxes.

Better known as 9-slice panels, NinePatchRect produces clean panels of any size, based on a small texture. To do so, it splits the texture in a 3 by 3 grid. When you scale the node, it tiles the texture's sides horizontally or vertically, the center on both axes but it doesn't scale or tile the corners.
*/
@GodotBaseClass struct NinePatchRect
{
	static immutable string _GODOT_internal_name = "NinePatchRect";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in NinePatchRect other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NinePatchRect opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NinePatchRect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NinePatchRect");
		if(constructor is null) return typeof(this).init;
		return cast(NinePatchRect)(constructor());
	}
	/// 
	enum AxisStretchMode : int
	{
		/**
		Doesn't do anything at the time of writing. Default value for `axis_stretch_horizontal` and `axis_stretch_vertical`.
		*/
		axisStretchModeStretch = 0,
		/**
		Doesn't do anything at the time of writing.
		*/
		axisStretchModeTile = 1,
		/**
		Doesn't do anything at the time of writing.
		*/
		axisStretchModeTileFit = 2,
	}
	/// 
	enum Constants : int
	{
		axisStretchModeStretch = 0,
		axisStretchModeTile = 1,
		axisStretchModeTileFit = 2,
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(Texture texture)
	{
		_GODOT_set_texture.bind("NinePatchRect", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		_GODOT_get_texture.bind("NinePatchRect", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_patch_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_patch_margin") = _GODOT_set_patch_margin;
	/**
	
	*/
	void setPatchMargin(in long margin, in long value)
	{
		_GODOT_set_patch_margin.bind("NinePatchRect", "set_patch_margin");
		ptrcall!(void)(_GODOT_set_patch_margin, _godot_object, margin, value);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_patch_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_patch_margin") = _GODOT_get_patch_margin;
	/**
	
	*/
	long getPatchMargin(in long margin) const
	{
		_GODOT_get_patch_margin.bind("NinePatchRect", "get_patch_margin");
		return ptrcall!(long)(_GODOT_get_patch_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_rect") = _GODOT_set_region_rect;
	/**
	
	*/
	void setRegionRect(in Rect2 rect)
	{
		_GODOT_set_region_rect.bind("NinePatchRect", "set_region_rect");
		ptrcall!(void)(_GODOT_set_region_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_rect") = _GODOT_get_region_rect;
	/**
	
	*/
	Rect2 getRegionRect() const
	{
		_GODOT_get_region_rect.bind("NinePatchRect", "get_region_rect");
		return ptrcall!(Rect2)(_GODOT_get_region_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_draw_center;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_center") = _GODOT_set_draw_center;
	/**
	
	*/
	void setDrawCenter(in bool draw_center)
	{
		_GODOT_set_draw_center.bind("NinePatchRect", "set_draw_center");
		ptrcall!(void)(_GODOT_set_draw_center, _godot_object, draw_center);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_draw_center_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_draw_center_enabled") = _GODOT_is_draw_center_enabled;
	/**
	
	*/
	bool isDrawCenterEnabled() const
	{
		_GODOT_is_draw_center_enabled.bind("NinePatchRect", "is_draw_center_enabled");
		return ptrcall!(bool)(_GODOT_is_draw_center_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_h_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_axis_stretch_mode") = _GODOT_set_h_axis_stretch_mode;
	/**
	
	*/
	void setHAxisStretchMode(in long mode)
	{
		_GODOT_set_h_axis_stretch_mode.bind("NinePatchRect", "set_h_axis_stretch_mode");
		ptrcall!(void)(_GODOT_set_h_axis_stretch_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(NinePatchRect.AxisStretchMode) _GODOT_get_h_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_axis_stretch_mode") = _GODOT_get_h_axis_stretch_mode;
	/**
	
	*/
	NinePatchRect.AxisStretchMode getHAxisStretchMode() const
	{
		_GODOT_get_h_axis_stretch_mode.bind("NinePatchRect", "get_h_axis_stretch_mode");
		return ptrcall!(NinePatchRect.AxisStretchMode)(_GODOT_get_h_axis_stretch_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_v_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_axis_stretch_mode") = _GODOT_set_v_axis_stretch_mode;
	/**
	
	*/
	void setVAxisStretchMode(in long mode)
	{
		_GODOT_set_v_axis_stretch_mode.bind("NinePatchRect", "set_v_axis_stretch_mode");
		ptrcall!(void)(_GODOT_set_v_axis_stretch_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(NinePatchRect.AxisStretchMode) _GODOT_get_v_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_axis_stretch_mode") = _GODOT_get_v_axis_stretch_mode;
	/**
	
	*/
	NinePatchRect.AxisStretchMode getVAxisStretchMode() const
	{
		_GODOT_get_v_axis_stretch_mode.bind("NinePatchRect", "get_v_axis_stretch_mode");
		return ptrcall!(NinePatchRect.AxisStretchMode)(_GODOT_get_v_axis_stretch_mode, _godot_object);
	}
	/**
	The node's texture resource.
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
	If `true`, draw the panel's center. Else, only draw the 9-slice's borders. Default value: `true`
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
	Rectangular region of the texture to sample from. If you're working with an atlas, use this property to define the area the 9-slice should use. All other properties are relative to this one.
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
	The height of the 9-slice's left column.
	*/
	@property long patchMarginLeft()
	{
		return getPatchMargin(0);
	}
	/// ditto
	@property void patchMarginLeft(long v)
	{
		setPatchMargin(0, v);
	}
	/**
	The height of the 9-slice's top row.
	*/
	@property long patchMarginTop()
	{
		return getPatchMargin(1);
	}
	/// ditto
	@property void patchMarginTop(long v)
	{
		setPatchMargin(1, v);
	}
	/**
	The height of the 9-slice's right column.
	*/
	@property long patchMarginRight()
	{
		return getPatchMargin(2);
	}
	/// ditto
	@property void patchMarginRight(long v)
	{
		setPatchMargin(2, v);
	}
	/**
	The height of the 9-slice's bottom row. A margin of 16 means the 9-slice's bottom corners and side will have a height of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders.
	*/
	@property long patchMarginBottom()
	{
		return getPatchMargin(3);
	}
	/// ditto
	@property void patchMarginBottom(long v)
	{
		setPatchMargin(3, v);
	}
	/**
	Doesn't do anything at the time of writing.
	*/
	@property NinePatchRect.AxisStretchMode axisStretchHorizontal()
	{
		return getHAxisStretchMode();
	}
	/// ditto
	@property void axisStretchHorizontal(long v)
	{
		setHAxisStretchMode(v);
	}
	/**
	Doesn't do anything at the time of writing.
	*/
	@property NinePatchRect.AxisStretchMode axisStretchVertical()
	{
		return getVAxisStretchMode();
	}
	/// ditto
	@property void axisStretchVertical(long v)
	{
		setVAxisStretchMode(v);
	}
}
