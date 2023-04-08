/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.styleboxtexture;
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
import godot.texture;
/**

*/
@GodotBaseClass struct StyleBoxTexture
{
	package(godot) enum string _GODOT_internal_name = "StyleBoxTexture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ StyleBox _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_expand_margin_size") GodotMethod!(double, long) getExpandMarginSize;
		@GodotName("get_h_axis_stretch_mode") GodotMethod!(StyleBoxTexture.AxisStretchMode) getHAxisStretchMode;
		@GodotName("get_margin_size") GodotMethod!(double, long) getMarginSize;
		@GodotName("get_modulate") GodotMethod!(Color) getModulate;
		@GodotName("get_normal_map") GodotMethod!(Texture) getNormalMap;
		@GodotName("get_region_rect") GodotMethod!(Rect2) getRegionRect;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("get_v_axis_stretch_mode") GodotMethod!(StyleBoxTexture.AxisStretchMode) getVAxisStretchMode;
		@GodotName("is_draw_center_enabled") GodotMethod!(bool) isDrawCenterEnabled;
		@GodotName("set_draw_center") GodotMethod!(void, bool) setDrawCenter;
		@GodotName("set_expand_margin_all") GodotMethod!(void, double) setExpandMarginAll;
		@GodotName("set_expand_margin_individual") GodotMethod!(void, double, double, double, double) setExpandMarginIndividual;
		@GodotName("set_expand_margin_size") GodotMethod!(void, long, double) setExpandMarginSize;
		@GodotName("set_h_axis_stretch_mode") GodotMethod!(void, long) setHAxisStretchMode;
		@GodotName("set_margin_size") GodotMethod!(void, long, double) setMarginSize;
		@GodotName("set_modulate") GodotMethod!(void, Color) setModulate;
		@GodotName("set_normal_map") GodotMethod!(void, Texture) setNormalMap;
		@GodotName("set_region_rect") GodotMethod!(void, Rect2) setRegionRect;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("set_v_axis_stretch_mode") GodotMethod!(void, long) setVAxisStretchMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in StyleBoxTexture other) const
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
	/// Construct a new instance of StyleBoxTexture.
	/// Note: use `memnew!StyleBoxTexture` instead.
	static StyleBoxTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StyleBoxTexture");
		if(constructor is null) return typeof(this).init;
		return cast(StyleBoxTexture)(constructor());
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
	double getExpandMarginSize(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getExpandMarginSize, _godot_object, margin);
	}
	/**
	
	*/
	StyleBoxTexture.AxisStretchMode getHAxisStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StyleBoxTexture.AxisStretchMode)(GDNativeClassBinding.getHAxisStretchMode, _godot_object);
	}
	/**
	
	*/
	double getMarginSize(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMarginSize, _godot_object, margin);
	}
	/**
	
	*/
	Color getModulate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getModulate, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getNormalMap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getNormalMap, _godot_object);
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
	StyleBoxTexture.AxisStretchMode getVAxisStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StyleBoxTexture.AxisStretchMode)(GDNativeClassBinding.getVAxisStretchMode, _godot_object);
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
	void setDrawCenter(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDrawCenter, _godot_object, enable);
	}
	/**
	
	*/
	void setExpandMarginAll(in double size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpandMarginAll, _godot_object, size);
	}
	/**
	
	*/
	void setExpandMarginIndividual(in double size_left, in double size_top, in double size_right, in double size_bottom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpandMarginIndividual, _godot_object, size_left, size_top, size_right, size_bottom);
	}
	/**
	
	*/
	void setExpandMarginSize(in long margin, in double size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpandMarginSize, _godot_object, margin, size);
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
	void setMarginSize(in long margin, in double size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMarginSize, _godot_object, margin, size);
	}
	/**
	
	*/
	void setModulate(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setModulate, _godot_object, color);
	}
	/**
	
	*/
	void setNormalMap(Texture normal_map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNormalMap, _godot_object, normal_map);
	}
	/**
	
	*/
	void setRegionRect(in Rect2 region)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRegionRect, _godot_object, region);
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
	@property StyleBoxTexture.AxisStretchMode axisStretchHorizontal()
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
	@property StyleBoxTexture.AxisStretchMode axisStretchVertical()
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
	@property double expandMarginBottom()
	{
		return getExpandMarginSize(3);
	}
	/// ditto
	@property void expandMarginBottom(double v)
	{
		setExpandMarginSize(3, v);
	}
	/**
	
	*/
	@property double expandMarginLeft()
	{
		return getExpandMarginSize(0);
	}
	/// ditto
	@property void expandMarginLeft(double v)
	{
		setExpandMarginSize(0, v);
	}
	/**
	
	*/
	@property double expandMarginRight()
	{
		return getExpandMarginSize(2);
	}
	/// ditto
	@property void expandMarginRight(double v)
	{
		setExpandMarginSize(2, v);
	}
	/**
	
	*/
	@property double expandMarginTop()
	{
		return getExpandMarginSize(1);
	}
	/// ditto
	@property void expandMarginTop(double v)
	{
		setExpandMarginSize(1, v);
	}
	/**
	
	*/
	@property double marginBottom()
	{
		return getMarginSize(3);
	}
	/// ditto
	@property void marginBottom(double v)
	{
		setMarginSize(3, v);
	}
	/**
	
	*/
	@property double marginLeft()
	{
		return getMarginSize(0);
	}
	/// ditto
	@property void marginLeft(double v)
	{
		setMarginSize(0, v);
	}
	/**
	
	*/
	@property double marginRight()
	{
		return getMarginSize(2);
	}
	/// ditto
	@property void marginRight(double v)
	{
		setMarginSize(2, v);
	}
	/**
	
	*/
	@property double marginTop()
	{
		return getMarginSize(1);
	}
	/// ditto
	@property void marginTop(double v)
	{
		setMarginSize(1, v);
	}
	/**
	
	*/
	@property Color modulateColor()
	{
		return getModulate();
	}
	/// ditto
	@property void modulateColor(Color v)
	{
		setModulate(v);
	}
	/**
	
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
