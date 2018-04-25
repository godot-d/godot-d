/**
Casts light in a 2D environment.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.light2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.texture;
/**
Casts light in a 2D environment.

Light is defined by a (usually grayscale) texture, a color, an energy value, a mode (see constants), and various other parameters (range and shadows-related). Note that Light2D can be used as a mask.
*/
@GodotBaseClass struct Light2D
{
	static immutable string _GODOT_internal_name = "Light2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Light2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Light2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Light2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Light2D");
		if(constructor is null) return typeof(this).init;
		return cast(Light2D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ShadowFilter : int
	{
		/**
		No filter applies to the shadow map. See $(D shadowFilter).
		*/
		shadowFilterNone = 0,
		/**
		Percentage closer filtering (3 samples) applies to the shadow map. See $(D shadowFilter).
		*/
		shadowFilterPcf3 = 1,
		/**
		Percentage closer filtering (5 samples) applies to the shadow map. See $(D shadowFilter).
		*/
		shadowFilterPcf5 = 2,
		/**
		Percentage closer filtering (7 samples) applies to the shadow map. See $(D shadowFilter).
		*/
		shadowFilterPcf7 = 3,
		/**
		Percentage closer filtering (9 samples) applies to the shadow map. See $(D shadowFilter).
		*/
		shadowFilterPcf9 = 4,
		/**
		Percentage closer filtering (13 samples) applies to the shadow map. See $(D shadowFilter).
		*/
		shadowFilterPcf13 = 5,
	}
	/// 
	enum Mode : int
	{
		/**
		Adds the value of pixels corresponding to the Light2D to the values of pixels under it. This is the common behaviour of a light.
		*/
		modeAdd = 0,
		/**
		Subtracts the value of pixels corresponding to the Light2D to the values of pixels under it, resulting in inversed light effect.
		*/
		modeSub = 1,
		/**
		Mix the value of pixels corresponding to the Light2D to the values of pixels under it by linear interpolation.
		*/
		modeMix = 2,
		/**
		The light texture of the Light2D is used as a mask, hiding or revealing parts of the screen underneath depending on the value of each pixel of the light (mask) texture.
		*/
		modeMask = 3,
	}
	/// 
	enum Constants : int
	{
		shadowFilterNone = 0,
		modeAdd = 0,
		shadowFilterPcf3 = 1,
		modeSub = 1,
		shadowFilterPcf5 = 2,
		modeMix = 2,
		modeMask = 3,
		shadowFilterPcf7 = 3,
		shadowFilterPcf9 = 4,
		shadowFilterPcf13 = 5,
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enabled") = _GODOT_set_enabled;
	/**
	
	*/
	void setEnabled(in bool enabled)
	{
		_GODOT_set_enabled.bind("Light2D", "set_enabled");
		ptrcall!(void)(_GODOT_set_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_enabled") = _GODOT_is_enabled;
	/**
	
	*/
	bool isEnabled() const
	{
		_GODOT_is_enabled.bind("Light2D", "is_enabled");
		return ptrcall!(bool)(_GODOT_is_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_editor_only;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editor_only") = _GODOT_set_editor_only;
	/**
	
	*/
	void setEditorOnly(in bool editor_only)
	{
		_GODOT_set_editor_only.bind("Light2D", "set_editor_only");
		ptrcall!(void)(_GODOT_set_editor_only, _godot_object, editor_only);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editor_only;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editor_only") = _GODOT_is_editor_only;
	/**
	
	*/
	bool isEditorOnly() const
	{
		_GODOT_is_editor_only.bind("Light2D", "is_editor_only");
		return ptrcall!(bool)(_GODOT_is_editor_only, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(Texture texture)
	{
		_GODOT_set_texture.bind("Light2D", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		_GODOT_get_texture.bind("Light2D", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_offset") = _GODOT_set_texture_offset;
	/**
	
	*/
	void setTextureOffset(in Vector2 texture_offset)
	{
		_GODOT_set_texture_offset.bind("Light2D", "set_texture_offset");
		ptrcall!(void)(_GODOT_set_texture_offset, _godot_object, texture_offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_offset") = _GODOT_get_texture_offset;
	/**
	
	*/
	Vector2 getTextureOffset() const
	{
		_GODOT_get_texture_offset.bind("Light2D", "get_texture_offset");
		return ptrcall!(Vector2)(_GODOT_get_texture_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	/**
	
	*/
	void setColor(in Color color)
	{
		_GODOT_set_color.bind("Light2D", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	/**
	
	*/
	Color getColor() const
	{
		_GODOT_get_color.bind("Light2D", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_height") = _GODOT_set_height;
	/**
	
	*/
	void setHeight(in double height)
	{
		_GODOT_set_height.bind("Light2D", "set_height");
		ptrcall!(void)(_GODOT_set_height, _godot_object, height);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	/**
	
	*/
	double getHeight() const
	{
		_GODOT_get_height.bind("Light2D", "get_height");
		return ptrcall!(double)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_energy") = _GODOT_set_energy;
	/**
	
	*/
	void setEnergy(in double energy)
	{
		_GODOT_set_energy.bind("Light2D", "set_energy");
		ptrcall!(void)(_GODOT_set_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_energy") = _GODOT_get_energy;
	/**
	
	*/
	double getEnergy() const
	{
		_GODOT_get_energy.bind("Light2D", "get_energy");
		return ptrcall!(double)(_GODOT_get_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_texture_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_scale") = _GODOT_set_texture_scale;
	/**
	
	*/
	void setTextureScale(in double texture_scale)
	{
		_GODOT_set_texture_scale.bind("Light2D", "set_texture_scale");
		ptrcall!(void)(_GODOT_set_texture_scale, _godot_object, texture_scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_texture_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_scale") = _GODOT_get_texture_scale;
	/**
	
	*/
	double getTextureScale() const
	{
		_GODOT_get_texture_scale.bind("Light2D", "get_texture_scale");
		return ptrcall!(double)(_GODOT_get_texture_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_z_range_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_z_range_min") = _GODOT_set_z_range_min;
	/**
	
	*/
	void setZRangeMin(in long z)
	{
		_GODOT_set_z_range_min.bind("Light2D", "set_z_range_min");
		ptrcall!(void)(_GODOT_set_z_range_min, _godot_object, z);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_z_range_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_z_range_min") = _GODOT_get_z_range_min;
	/**
	
	*/
	long getZRangeMin() const
	{
		_GODOT_get_z_range_min.bind("Light2D", "get_z_range_min");
		return ptrcall!(long)(_GODOT_get_z_range_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_z_range_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_z_range_max") = _GODOT_set_z_range_max;
	/**
	
	*/
	void setZRangeMax(in long z)
	{
		_GODOT_set_z_range_max.bind("Light2D", "set_z_range_max");
		ptrcall!(void)(_GODOT_set_z_range_max, _godot_object, z);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_z_range_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_z_range_max") = _GODOT_get_z_range_max;
	/**
	
	*/
	long getZRangeMax() const
	{
		_GODOT_get_z_range_max.bind("Light2D", "get_z_range_max");
		return ptrcall!(long)(_GODOT_get_z_range_max, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_layer_range_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_layer_range_min") = _GODOT_set_layer_range_min;
	/**
	
	*/
	void setLayerRangeMin(in long layer)
	{
		_GODOT_set_layer_range_min.bind("Light2D", "set_layer_range_min");
		ptrcall!(void)(_GODOT_set_layer_range_min, _godot_object, layer);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_layer_range_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_layer_range_min") = _GODOT_get_layer_range_min;
	/**
	
	*/
	long getLayerRangeMin() const
	{
		_GODOT_get_layer_range_min.bind("Light2D", "get_layer_range_min");
		return ptrcall!(long)(_GODOT_get_layer_range_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_layer_range_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_layer_range_max") = _GODOT_set_layer_range_max;
	/**
	
	*/
	void setLayerRangeMax(in long layer)
	{
		_GODOT_set_layer_range_max.bind("Light2D", "set_layer_range_max");
		ptrcall!(void)(_GODOT_set_layer_range_max, _godot_object, layer);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_layer_range_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_layer_range_max") = _GODOT_get_layer_range_max;
	/**
	
	*/
	long getLayerRangeMax() const
	{
		_GODOT_get_layer_range_max.bind("Light2D", "get_layer_range_max");
		return ptrcall!(long)(_GODOT_get_layer_range_max, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_item_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_cull_mask") = _GODOT_set_item_cull_mask;
	/**
	
	*/
	void setItemCullMask(in long item_cull_mask)
	{
		_GODOT_set_item_cull_mask.bind("Light2D", "set_item_cull_mask");
		ptrcall!(void)(_GODOT_set_item_cull_mask, _godot_object, item_cull_mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_item_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_cull_mask") = _GODOT_get_item_cull_mask;
	/**
	
	*/
	long getItemCullMask() const
	{
		_GODOT_get_item_cull_mask.bind("Light2D", "get_item_cull_mask");
		return ptrcall!(long)(_GODOT_get_item_cull_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_item_shadow_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_shadow_cull_mask") = _GODOT_set_item_shadow_cull_mask;
	/**
	
	*/
	void setItemShadowCullMask(in long item_shadow_cull_mask)
	{
		_GODOT_set_item_shadow_cull_mask.bind("Light2D", "set_item_shadow_cull_mask");
		ptrcall!(void)(_GODOT_set_item_shadow_cull_mask, _godot_object, item_shadow_cull_mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_item_shadow_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_shadow_cull_mask") = _GODOT_get_item_shadow_cull_mask;
	/**
	
	*/
	long getItemShadowCullMask() const
	{
		_GODOT_get_item_shadow_cull_mask.bind("Light2D", "get_item_shadow_cull_mask");
		return ptrcall!(long)(_GODOT_get_item_shadow_cull_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode") = _GODOT_set_mode;
	/**
	
	*/
	void setMode(in long mode)
	{
		_GODOT_set_mode.bind("Light2D", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Light2D.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	/**
	
	*/
	Light2D.Mode getMode() const
	{
		_GODOT_get_mode.bind("Light2D", "get_mode");
		return ptrcall!(Light2D.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shadow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_enabled") = _GODOT_set_shadow_enabled;
	/**
	
	*/
	void setShadowEnabled(in bool enabled)
	{
		_GODOT_set_shadow_enabled.bind("Light2D", "set_shadow_enabled");
		ptrcall!(void)(_GODOT_set_shadow_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_shadow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shadow_enabled") = _GODOT_is_shadow_enabled;
	/**
	
	*/
	bool isShadowEnabled() const
	{
		_GODOT_is_shadow_enabled.bind("Light2D", "is_shadow_enabled");
		return ptrcall!(bool)(_GODOT_is_shadow_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_shadow_buffer_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_buffer_size") = _GODOT_set_shadow_buffer_size;
	/**
	
	*/
	void setShadowBufferSize(in long size)
	{
		_GODOT_set_shadow_buffer_size.bind("Light2D", "set_shadow_buffer_size");
		ptrcall!(void)(_GODOT_set_shadow_buffer_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_shadow_buffer_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_buffer_size") = _GODOT_get_shadow_buffer_size;
	/**
	
	*/
	long getShadowBufferSize() const
	{
		_GODOT_get_shadow_buffer_size.bind("Light2D", "get_shadow_buffer_size");
		return ptrcall!(long)(_GODOT_get_shadow_buffer_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_shadow_smooth;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_smooth") = _GODOT_set_shadow_smooth;
	/**
	
	*/
	void setShadowSmooth(in double smooth)
	{
		_GODOT_set_shadow_smooth.bind("Light2D", "set_shadow_smooth");
		ptrcall!(void)(_GODOT_set_shadow_smooth, _godot_object, smooth);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_shadow_smooth;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_smooth") = _GODOT_get_shadow_smooth;
	/**
	
	*/
	double getShadowSmooth() const
	{
		_GODOT_get_shadow_smooth.bind("Light2D", "get_shadow_smooth");
		return ptrcall!(double)(_GODOT_get_shadow_smooth, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_shadow_gradient_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_gradient_length") = _GODOT_set_shadow_gradient_length;
	/**
	
	*/
	void setShadowGradientLength(in double multiplier)
	{
		_GODOT_set_shadow_gradient_length.bind("Light2D", "set_shadow_gradient_length");
		ptrcall!(void)(_GODOT_set_shadow_gradient_length, _godot_object, multiplier);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_shadow_gradient_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_gradient_length") = _GODOT_get_shadow_gradient_length;
	/**
	
	*/
	double getShadowGradientLength() const
	{
		_GODOT_get_shadow_gradient_length.bind("Light2D", "get_shadow_gradient_length");
		return ptrcall!(double)(_GODOT_get_shadow_gradient_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_shadow_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_filter") = _GODOT_set_shadow_filter;
	/**
	
	*/
	void setShadowFilter(in long filter)
	{
		_GODOT_set_shadow_filter.bind("Light2D", "set_shadow_filter");
		ptrcall!(void)(_GODOT_set_shadow_filter, _godot_object, filter);
	}
	package(godot) static GodotMethod!(Light2D.ShadowFilter) _GODOT_get_shadow_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_filter") = _GODOT_get_shadow_filter;
	/**
	
	*/
	Light2D.ShadowFilter getShadowFilter() const
	{
		_GODOT_get_shadow_filter.bind("Light2D", "get_shadow_filter");
		return ptrcall!(Light2D.ShadowFilter)(_GODOT_get_shadow_filter, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_color") = _GODOT_set_shadow_color;
	/**
	
	*/
	void setShadowColor(in Color shadow_color)
	{
		_GODOT_set_shadow_color.bind("Light2D", "set_shadow_color");
		ptrcall!(void)(_GODOT_set_shadow_color, _godot_object, shadow_color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_color") = _GODOT_get_shadow_color;
	/**
	
	*/
	Color getShadowColor() const
	{
		_GODOT_get_shadow_color.bind("Light2D", "get_shadow_color");
		return ptrcall!(Color)(_GODOT_get_shadow_color, _godot_object);
	}
	/**
	If `true` Light2D will emit light. Default value: `true`.
	*/
	@property bool enabled()
	{
		return isEnabled();
	}
	/// ditto
	@property void enabled(bool v)
	{
		setEnabled(v);
	}
	/**
	If `true` Light2D will only appear when editing the scene. Default value: `false`.
	*/
	@property bool editorOnly()
	{
		return isEditorOnly();
	}
	/// ditto
	@property void editorOnly(bool v)
	{
		setEditorOnly(v);
	}
	/**
	$(D Texture) used for the Light2D's appearance.
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
	The offset of the Light2D's `texture`.
	*/
	@property Vector2 offset()
	{
		return getTextureOffset();
	}
	/// ditto
	@property void offset(Vector2 v)
	{
		setTextureOffset(v);
	}
	/**
	The `texture`'s scale factor.
	*/
	@property double textureScale()
	{
		return getTextureScale();
	}
	/// ditto
	@property void textureScale(double v)
	{
		setTextureScale(v);
	}
	/**
	The Light2D's $(D Color).
	*/
	@property Color color()
	{
		return getColor();
	}
	/// ditto
	@property void color(Color v)
	{
		setColor(v);
	}
	/**
	The Light2D's energy value. The larger the value, the stronger the light.
	*/
	@property double energy()
	{
		return getEnergy();
	}
	/// ditto
	@property void energy(double v)
	{
		setEnergy(v);
	}
	/**
	The Light2D's mode. See MODE_* constants for values.
	*/
	@property Light2D.Mode mode()
	{
		return getMode();
	}
	/// ditto
	@property void mode(long v)
	{
		setMode(v);
	}
	/**
	The height of the Light2D. Used with 2D normal mapping.
	*/
	@property double rangeHeight()
	{
		return getHeight();
	}
	/// ditto
	@property void rangeHeight(double v)
	{
		setHeight(v);
	}
	/**
	Minimum `z` value of objects that are affected by the Light2D. Default value: `-1024`.
	*/
	@property long rangeZMin()
	{
		return getZRangeMin();
	}
	/// ditto
	@property void rangeZMin(long v)
	{
		setZRangeMin(v);
	}
	/**
	Maximum `Z` value of objects that are affected by the Light2D. Default value: `1024`.
	*/
	@property long rangeZMax()
	{
		return getZRangeMax();
	}
	/// ditto
	@property void rangeZMax(long v)
	{
		setZRangeMax(v);
	}
	/**
	Minimum layer value of objects that are affected by the Light2D. Default value: `0`.
	*/
	@property long rangeLayerMin()
	{
		return getLayerRangeMin();
	}
	/// ditto
	@property void rangeLayerMin(long v)
	{
		setLayerRangeMin(v);
	}
	/**
	Maximum layer value of objects that are affected by the Light2D. Default value: `0`.
	*/
	@property long rangeLayerMax()
	{
		return getLayerRangeMax();
	}
	/// ditto
	@property void rangeLayerMax(long v)
	{
		setLayerRangeMax(v);
	}
	/**
	The layer mask. Only objects with a matching mask will be affected by the Light2D.
	*/
	@property long rangeItemCullMask()
	{
		return getItemCullMask();
	}
	/// ditto
	@property void rangeItemCullMask(long v)
	{
		setItemCullMask(v);
	}
	/**
	If `true` the Light2D will cast shadows. Default value: `false`.
	*/
	@property bool shadowEnabled()
	{
		return isShadowEnabled();
	}
	/// ditto
	@property void shadowEnabled(bool v)
	{
		setShadowEnabled(v);
	}
	/**
	$(D Color) of shadows cast by the Light2D.
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
	Shadow buffer size. Default value: `2048`.
	*/
	@property long shadowBufferSize()
	{
		return getShadowBufferSize();
	}
	/// ditto
	@property void shadowBufferSize(long v)
	{
		setShadowBufferSize(v);
	}
	/**
	Smooth shadow gradient length.
	*/
	@property double shadowGradientLength()
	{
		return getShadowGradientLength();
	}
	/// ditto
	@property void shadowGradientLength(double v)
	{
		setShadowGradientLength(v);
	}
	/**
	Shadow filter type. Use SHADOW_FILTER_* constants to set `shadow_filter`. Default value: `None`.
	*/
	@property Light2D.ShadowFilter shadowFilter()
	{
		return getShadowFilter();
	}
	/// ditto
	@property void shadowFilter(long v)
	{
		setShadowFilter(v);
	}
	/**
	Smoothing value for shadows.
	*/
	@property double shadowFilterSmooth()
	{
		return getShadowSmooth();
	}
	/// ditto
	@property void shadowFilterSmooth(double v)
	{
		setShadowSmooth(v);
	}
	/**
	The shadow mask. Used with $(D LightOccluder2D) to cast shadows. Only occluders with a matching shadow mask will cast shadows.
	*/
	@property long shadowItemCullMask()
	{
		return getItemShadowCullMask();
	}
	/// ditto
	@property void shadowItemCullMask(long v)
	{
		setItemShadowCullMask(v);
	}
}
