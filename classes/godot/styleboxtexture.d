/**
Texture Based 3x3 scale style.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.styleboxtexture;
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
import godot.texture;
/**
Texture Based 3x3 scale style.

This stylebox performs a 3x3 scaling of a texture, where only the center cell is fully stretched. This allows for the easy creation of bordered styles.
*/
@GodotBaseClass struct StyleBoxTexture
{
	static immutable string _GODOT_internal_name = "StyleBoxTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; StyleBox _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in StyleBoxTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StyleBoxTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		
		*/
		axisStretchModeStretch = 0,
		/**
		
		*/
		axisStretchModeTile = 1,
		/**
		
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
	package(godot) static GodotMethod!(void, Resource) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(Resource texture)
	{
		_GODOT_set_texture.bind("StyleBoxTexture", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Resource) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Resource getTexture() const
	{
		_GODOT_get_texture.bind("StyleBoxTexture", "get_texture");
		return ptrcall!(Resource)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT_set_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_map") = _GODOT_set_normal_map;
	/**
	
	*/
	void setNormalMap(Resource normal_map)
	{
		_GODOT_set_normal_map.bind("StyleBoxTexture", "set_normal_map");
		ptrcall!(void)(_GODOT_set_normal_map, _godot_object, normal_map);
	}
	package(godot) static GodotMethod!(Resource) _GODOT_get_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_map") = _GODOT_get_normal_map;
	/**
	
	*/
	Ref!Resource getNormalMap() const
	{
		_GODOT_get_normal_map.bind("StyleBoxTexture", "get_normal_map");
		return ptrcall!(Resource)(_GODOT_get_normal_map, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_margin_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin_size") = _GODOT_set_margin_size;
	/**
	
	*/
	void setMarginSize(in long margin, in double size)
	{
		_GODOT_set_margin_size.bind("StyleBoxTexture", "set_margin_size");
		ptrcall!(void)(_GODOT_set_margin_size, _godot_object, margin, size);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_margin_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin_size") = _GODOT_get_margin_size;
	/**
	
	*/
	double getMarginSize(in long margin) const
	{
		_GODOT_get_margin_size.bind("StyleBoxTexture", "get_margin_size");
		return ptrcall!(double)(_GODOT_get_margin_size, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_expand_margin_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin_size") = _GODOT_set_expand_margin_size;
	/**
	
	*/
	void setExpandMarginSize(in long margin, in double size)
	{
		_GODOT_set_expand_margin_size.bind("StyleBoxTexture", "set_expand_margin_size");
		ptrcall!(void)(_GODOT_set_expand_margin_size, _godot_object, margin, size);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_expand_margin_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin_all") = _GODOT_set_expand_margin_all;
	/**
	
	*/
	void setExpandMarginAll(in double size)
	{
		_GODOT_set_expand_margin_all.bind("StyleBoxTexture", "set_expand_margin_all");
		ptrcall!(void)(_GODOT_set_expand_margin_all, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, double, double, double, double) _GODOT_set_expand_margin_individual;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_margin_individual") = _GODOT_set_expand_margin_individual;
	/**
	
	*/
	void setExpandMarginIndividual(in double size_left, in double size_top, in double size_right, in double size_bottom)
	{
		_GODOT_set_expand_margin_individual.bind("StyleBoxTexture", "set_expand_margin_individual");
		ptrcall!(void)(_GODOT_set_expand_margin_individual, _godot_object, size_left, size_top, size_right, size_bottom);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_expand_margin_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_expand_margin_size") = _GODOT_get_expand_margin_size;
	/**
	
	*/
	double getExpandMarginSize(in long margin) const
	{
		_GODOT_get_expand_margin_size.bind("StyleBoxTexture", "get_expand_margin_size");
		return ptrcall!(double)(_GODOT_get_expand_margin_size, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_rect") = _GODOT_set_region_rect;
	/**
	
	*/
	void setRegionRect(in Rect2 region)
	{
		_GODOT_set_region_rect.bind("StyleBoxTexture", "set_region_rect");
		ptrcall!(void)(_GODOT_set_region_rect, _godot_object, region);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_rect") = _GODOT_get_region_rect;
	/**
	
	*/
	Rect2 getRegionRect() const
	{
		_GODOT_get_region_rect.bind("StyleBoxTexture", "get_region_rect");
		return ptrcall!(Rect2)(_GODOT_get_region_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_draw_center;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_center") = _GODOT_set_draw_center;
	/**
	
	*/
	void setDrawCenter(in bool enable)
	{
		_GODOT_set_draw_center.bind("StyleBoxTexture", "set_draw_center");
		ptrcall!(void)(_GODOT_set_draw_center, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_draw_center_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_draw_center_enabled") = _GODOT_is_draw_center_enabled;
	/**
	
	*/
	bool isDrawCenterEnabled() const
	{
		_GODOT_is_draw_center_enabled.bind("StyleBoxTexture", "is_draw_center_enabled");
		return ptrcall!(bool)(_GODOT_is_draw_center_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_modulate") = _GODOT_set_modulate;
	/**
	
	*/
	void setModulate(in Color color)
	{
		_GODOT_set_modulate.bind("StyleBoxTexture", "set_modulate");
		ptrcall!(void)(_GODOT_set_modulate, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_modulate") = _GODOT_get_modulate;
	/**
	
	*/
	Color getModulate() const
	{
		_GODOT_get_modulate.bind("StyleBoxTexture", "get_modulate");
		return ptrcall!(Color)(_GODOT_get_modulate, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_h_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_axis_stretch_mode") = _GODOT_set_h_axis_stretch_mode;
	/**
	
	*/
	void setHAxisStretchMode(in long mode)
	{
		_GODOT_set_h_axis_stretch_mode.bind("StyleBoxTexture", "set_h_axis_stretch_mode");
		ptrcall!(void)(_GODOT_set_h_axis_stretch_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(StyleBoxTexture.AxisStretchMode) _GODOT_get_h_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_axis_stretch_mode") = _GODOT_get_h_axis_stretch_mode;
	/**
	
	*/
	StyleBoxTexture.AxisStretchMode getHAxisStretchMode() const
	{
		_GODOT_get_h_axis_stretch_mode.bind("StyleBoxTexture", "get_h_axis_stretch_mode");
		return ptrcall!(StyleBoxTexture.AxisStretchMode)(_GODOT_get_h_axis_stretch_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_v_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_axis_stretch_mode") = _GODOT_set_v_axis_stretch_mode;
	/**
	
	*/
	void setVAxisStretchMode(in long mode)
	{
		_GODOT_set_v_axis_stretch_mode.bind("StyleBoxTexture", "set_v_axis_stretch_mode");
		ptrcall!(void)(_GODOT_set_v_axis_stretch_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(StyleBoxTexture.AxisStretchMode) _GODOT_get_v_axis_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_axis_stretch_mode") = _GODOT_get_v_axis_stretch_mode;
	/**
	
	*/
	StyleBoxTexture.AxisStretchMode getVAxisStretchMode() const
	{
		_GODOT_get_v_axis_stretch_mode.bind("StyleBoxTexture", "get_v_axis_stretch_mode");
		return ptrcall!(StyleBoxTexture.AxisStretchMode)(_GODOT_get_v_axis_stretch_mode, _godot_object);
	}
	/**
	
	*/
	@property Resource texture()
	{
		return getTexture();
	}
	/// ditto
	@property void texture(Resource v)
	{
		setTexture(v);
	}
	/**
	
	*/
	@property Resource normalMap()
	{
		return getNormalMap();
	}
	/// ditto
	@property void normalMap(Resource v)
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
	@property bool drawCenter()
	{
		return isDrawCenterEnabled();
	}
	/// ditto
	@property void drawCenter(bool v)
	{
		setDrawCenter(v);
	}
}
