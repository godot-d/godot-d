/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.ninepatchrect;
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
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.texture;
/**

*/
@GodotBaseClass struct NinePatchRect
{
	package(godot) enum string _GODOT_internal_name = "NinePatchRect";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_h_axis_stretch_mode") GodotMethod!(NinePatchRect.AxisStretchMode) getHAxisStretchMode;
		@GodotName("get_patch_margin") GodotMethod!(long, long) getPatchMargin;
		@GodotName("get_region_rect") GodotMethod!(Rect2) getRegionRect;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("get_v_axis_stretch_mode") GodotMethod!(NinePatchRect.AxisStretchMode) getVAxisStretchMode;
		@GodotName("is_draw_center_enabled") GodotMethod!(bool) isDrawCenterEnabled;
		@GodotName("set_draw_center") GodotMethod!(void, bool) setDrawCenter;
		@GodotName("set_h_axis_stretch_mode") GodotMethod!(void, long) setHAxisStretchMode;
		@GodotName("set_patch_margin") GodotMethod!(void, long, long) setPatchMargin;
		@GodotName("set_region_rect") GodotMethod!(void, Rect2) setRegionRect;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("set_v_axis_stretch_mode") GodotMethod!(void, long) setVAxisStretchMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in NinePatchRect other) const
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
	/// Construct a new instance of NinePatchRect.
	/// Note: use `memnew!NinePatchRect` instead.
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
		/** */
		axisStretchModeStretch = 0,
		/** */
		axisStretchModeTile = 1,
		/** */
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
	NinePatchRect.AxisStretchMode getHAxisStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NinePatchRect.AxisStretchMode)(GDNativeClassBinding.getHAxisStretchMode, _godot_object);
	}
	/**
	
	*/
	long getPatchMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPatchMargin, _godot_object, margin);
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
	NinePatchRect.AxisStretchMode getVAxisStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NinePatchRect.AxisStretchMode)(GDNativeClassBinding.getVAxisStretchMode, _godot_object);
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
	void setDrawCenter(in bool draw_center)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDrawCenter, _godot_object, draw_center);
	}
	/**
	
	*/
	void setHAxisStretchMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHAxisStretchMode, _godot_object, mode);
	}
	/**
	
	*/
	void setPatchMargin(in long margin, in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPatchMargin, _godot_object, margin, value);
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
	void setVAxisStretchMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVAxisStretchMode, _godot_object, mode);
	}
	/**
	
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
	/**
	
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
}
