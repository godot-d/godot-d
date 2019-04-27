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
import godot.texture;
import godot.resource;
import godot.reference;
/**
Texture Based 3x3 scale style.

This stylebox performs a 3x3 scaling of a texture, where only the center cell is fully stretched. This allows for the easy creation of bordered styles.
*/
@GodotBaseClass struct StyleBoxTexture
{
	enum string _GODOT_internal_name = "StyleBoxTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; StyleBox _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("set_normal_map") GodotMethod!(void, Texture) setNormalMap;
		@GodotName("get_normal_map") GodotMethod!(Texture) getNormalMap;
		@GodotName("set_margin_size") GodotMethod!(void, long, double) setMarginSize;
		@GodotName("get_margin_size") GodotMethod!(double, long) getMarginSize;
		@GodotName("set_expand_margin_size") GodotMethod!(void, long, double) setExpandMarginSize;
		@GodotName("set_expand_margin_all") GodotMethod!(void, double) setExpandMarginAll;
		@GodotName("set_expand_margin_individual") GodotMethod!(void, double, double, double, double) setExpandMarginIndividual;
		@GodotName("get_expand_margin_size") GodotMethod!(double, long) getExpandMarginSize;
		@GodotName("set_region_rect") GodotMethod!(void, Rect2) setRegionRect;
		@GodotName("get_region_rect") GodotMethod!(Rect2) getRegionRect;
		@GodotName("set_draw_center") GodotMethod!(void, bool) setDrawCenter;
		@GodotName("is_draw_center_enabled") GodotMethod!(bool) isDrawCenterEnabled;
		@GodotName("set_modulate") GodotMethod!(void, Color) setModulate;
		@GodotName("get_modulate") GodotMethod!(Color) getModulate;
		@GodotName("set_h_axis_stretch_mode") GodotMethod!(void, long) setHAxisStretchMode;
		@GodotName("get_h_axis_stretch_mode") GodotMethod!(StyleBoxTexture.AxisStretchMode) getHAxisStretchMode;
		@GodotName("set_v_axis_stretch_mode") GodotMethod!(void, long) setVAxisStretchMode;
		@GodotName("get_v_axis_stretch_mode") GodotMethod!(StyleBoxTexture.AxisStretchMode) getVAxisStretchMode;
	}
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
	void setNormalMap(Texture normal_map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNormalMap, _godot_object, normal_map);
	}
	/**
	
	*/
	Ref!Texture getNormalMap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getNormalMap, _godot_object);
	}
	/**
	
	*/
	void setMarginSize(in long margin, in double size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMarginSize, _godot_object, margin, size);
	}
	/**
	
	*/
	double getMarginSize(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMarginSize, _godot_object, margin);
	}
	/**
	
	*/
	void setExpandMarginSize(in long margin, in double size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExpandMarginSize, _godot_object, margin, size);
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
	double getExpandMarginSize(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getExpandMarginSize, _godot_object, margin);
	}
	/**
	
	*/
	void setRegionRect(in Rect2 region)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRegionRect, _godot_object, region);
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
	void setDrawCenter(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawCenter, _godot_object, enable);
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
	void setModulate(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setModulate, _godot_object, color);
	}
	/**
	
	*/
	Color getModulate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getModulate, _godot_object);
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
	StyleBoxTexture.AxisStretchMode getHAxisStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StyleBoxTexture.AxisStretchMode)(_classBinding.getHAxisStretchMode, _godot_object);
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
	StyleBoxTexture.AxisStretchMode getVAxisStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StyleBoxTexture.AxisStretchMode)(_classBinding.getVAxisStretchMode, _godot_object);
	}
	/**
	The texture to use when drawing this style box.
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
	The normal map to use when drawing this style box.
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
	Species a sub region of the texture to use.
	This is equivalent to first wrapping the texture in an $(D AtlasTexture) with the same region.
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
	Increases the left margin of the 3x3 texture box.
	A higher value means more of the source texture is considered to be part of the left border of the 3x3 box.
	This is also the value used as fallback for $(D StyleBox.contentMarginLeft) if it is negative.
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
	Increases the right margin of the 3x3 texture box.
	A higher value means more of the source texture is considered to be part of the right border of the 3x3 box.
	This is also the value used as fallback for $(D StyleBox.contentMarginRight) if it is negative.
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
	Increases the top margin of the 3x3 texture box.
	A higher value means more of the source texture is considered to be part of the top border of the 3x3 box.
	This is also the value used as fallback for $(D StyleBox.contentMarginTop) if it is negative.
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
	Increases the bottom margin of the 3x3 texture box.
	A higher value means more of the source texture is considered to be part of the bottom border of the 3x3 box.
	This is also the value used as fallback for $(D StyleBox.contentMarginBottom) if it is negative.
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
	Expands the left margin of this style box when drawing, causing it be drawn larger than requested.
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
	Expands the right margin of this style box when drawing, causing it be drawn larger than requested.
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
	Expands the top margin of this style box when drawing, causing it be drawn larger than requested.
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
	Expands the bottom margin of this style box when drawing, causing it be drawn larger than requested.
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
	Modulates the color of the texture when this style box is drawn.
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
