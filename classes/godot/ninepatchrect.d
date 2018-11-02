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
import godot.canvasitem;
import godot.node;
/**
Scalable texture-based frame that tiles the texture's centers and sides, but keeps the corners' original size. Perfect for panels and dialog boxes.

Better known as 9-slice panels, NinePatchRect produces clean panels of any size, based on a small texture. To do so, it splits the texture in a 3 by 3 grid. When you scale the node, it tiles the texture's sides horizontally or vertically, the center on both axes but it doesn't scale or tile the corners.
*/
@GodotBaseClass struct NinePatchRect
{
	enum string _GODOT_internal_name = "NinePatchRect";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("set_patch_margin") GodotMethod!(void, long, long) setPatchMargin;
		@GodotName("get_patch_margin") GodotMethod!(long, long) getPatchMargin;
		@GodotName("set_region_rect") GodotMethod!(void, Rect2) setRegionRect;
		@GodotName("get_region_rect") GodotMethod!(Rect2) getRegionRect;
		@GodotName("set_draw_center") GodotMethod!(void, bool) setDrawCenter;
		@GodotName("is_draw_center_enabled") GodotMethod!(bool) isDrawCenterEnabled;
		@GodotName("set_h_axis_stretch_mode") GodotMethod!(void, long) setHAxisStretchMode;
		@GodotName("get_h_axis_stretch_mode") GodotMethod!(NinePatchRect.AxisStretchMode) getHAxisStretchMode;
		@GodotName("set_v_axis_stretch_mode") GodotMethod!(void, long) setVAxisStretchMode;
		@GodotName("get_v_axis_stretch_mode") GodotMethod!(NinePatchRect.AxisStretchMode) getVAxisStretchMode;
	}
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
	@disable new(size_t s);
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
	void setPatchMargin(in long margin, in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPatchMargin, _godot_object, margin, value);
	}
	/**
	
	*/
	long getPatchMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPatchMargin, _godot_object, margin);
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
	void setHAxisStretchMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHAxisStretchMode, _godot_object, mode);
	}
	/**
	
	*/
	NinePatchRect.AxisStretchMode getHAxisStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NinePatchRect.AxisStretchMode)(_classBinding.getHAxisStretchMode, _godot_object);
	}
	/**
	
	*/
	void setVAxisStretchMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVAxisStretchMode, _godot_object, mode);
	}
	/**
	
	*/
	NinePatchRect.AxisStretchMode getVAxisStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NinePatchRect.AxisStretchMode)(_classBinding.getVAxisStretchMode, _godot_object);
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
