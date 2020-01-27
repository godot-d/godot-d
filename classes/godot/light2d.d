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

Light is defined by a (usually grayscale) texture, a color, an energy value, a mode (see constants), and various other parameters (range and shadows-related).
$(B Note:) Light2D can also be used as a mask.
*/
@GodotBaseClass struct Light2D
{
	enum string _GODOT_internal_name = "Light2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("get_energy") GodotMethod!(double) getEnergy;
		@GodotName("get_height") GodotMethod!(double) getHeight;
		@GodotName("get_item_cull_mask") GodotMethod!(long) getItemCullMask;
		@GodotName("get_item_shadow_cull_mask") GodotMethod!(long) getItemShadowCullMask;
		@GodotName("get_layer_range_max") GodotMethod!(long) getLayerRangeMax;
		@GodotName("get_layer_range_min") GodotMethod!(long) getLayerRangeMin;
		@GodotName("get_mode") GodotMethod!(Light2D.Mode) getMode;
		@GodotName("get_shadow_buffer_size") GodotMethod!(long) getShadowBufferSize;
		@GodotName("get_shadow_color") GodotMethod!(Color) getShadowColor;
		@GodotName("get_shadow_filter") GodotMethod!(Light2D.ShadowFilter) getShadowFilter;
		@GodotName("get_shadow_gradient_length") GodotMethod!(double) getShadowGradientLength;
		@GodotName("get_shadow_smooth") GodotMethod!(double) getShadowSmooth;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("get_texture_offset") GodotMethod!(Vector2) getTextureOffset;
		@GodotName("get_texture_scale") GodotMethod!(double) getTextureScale;
		@GodotName("get_z_range_max") GodotMethod!(long) getZRangeMax;
		@GodotName("get_z_range_min") GodotMethod!(long) getZRangeMin;
		@GodotName("is_editor_only") GodotMethod!(bool) isEditorOnly;
		@GodotName("is_enabled") GodotMethod!(bool) isEnabled;
		@GodotName("is_shadow_enabled") GodotMethod!(bool) isShadowEnabled;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("set_editor_only") GodotMethod!(void, bool) setEditorOnly;
		@GodotName("set_enabled") GodotMethod!(void, bool) setEnabled;
		@GodotName("set_energy") GodotMethod!(void, double) setEnergy;
		@GodotName("set_height") GodotMethod!(void, double) setHeight;
		@GodotName("set_item_cull_mask") GodotMethod!(void, long) setItemCullMask;
		@GodotName("set_item_shadow_cull_mask") GodotMethod!(void, long) setItemShadowCullMask;
		@GodotName("set_layer_range_max") GodotMethod!(void, long) setLayerRangeMax;
		@GodotName("set_layer_range_min") GodotMethod!(void, long) setLayerRangeMin;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("set_shadow_buffer_size") GodotMethod!(void, long) setShadowBufferSize;
		@GodotName("set_shadow_color") GodotMethod!(void, Color) setShadowColor;
		@GodotName("set_shadow_enabled") GodotMethod!(void, bool) setShadowEnabled;
		@GodotName("set_shadow_filter") GodotMethod!(void, long) setShadowFilter;
		@GodotName("set_shadow_gradient_length") GodotMethod!(void, double) setShadowGradientLength;
		@GodotName("set_shadow_smooth") GodotMethod!(void, double) setShadowSmooth;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("set_texture_offset") GodotMethod!(void, Vector2) setTextureOffset;
		@GodotName("set_texture_scale") GodotMethod!(void, double) setTextureScale;
		@GodotName("set_z_range_max") GodotMethod!(void, long) setZRangeMax;
		@GodotName("set_z_range_min") GodotMethod!(void, long) setZRangeMin;
	}
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
		Adds the value of pixels corresponding to the Light2D to the values of pixels under it. This is the common behavior of a light.
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
		modeAdd = 0,
		shadowFilterNone = 0,
		modeSub = 1,
		shadowFilterPcf3 = 1,
		modeMix = 2,
		shadowFilterPcf5 = 2,
		modeMask = 3,
		shadowFilterPcf7 = 3,
		shadowFilterPcf9 = 4,
		shadowFilterPcf13 = 5,
	}
	/**
	
	*/
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getColor, _godot_object);
	}
	/**
	
	*/
	double getEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getEnergy, _godot_object);
	}
	/**
	
	*/
	double getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getHeight, _godot_object);
	}
	/**
	
	*/
	long getItemCullMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemCullMask, _godot_object);
	}
	/**
	
	*/
	long getItemShadowCullMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemShadowCullMask, _godot_object);
	}
	/**
	
	*/
	long getLayerRangeMax() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLayerRangeMax, _godot_object);
	}
	/**
	
	*/
	long getLayerRangeMin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLayerRangeMin, _godot_object);
	}
	/**
	
	*/
	Light2D.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Light2D.Mode)(_classBinding.getMode, _godot_object);
	}
	/**
	
	*/
	long getShadowBufferSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getShadowBufferSize, _godot_object);
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
	Light2D.ShadowFilter getShadowFilter() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Light2D.ShadowFilter)(_classBinding.getShadowFilter, _godot_object);
	}
	/**
	
	*/
	double getShadowGradientLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getShadowGradientLength, _godot_object);
	}
	/**
	
	*/
	double getShadowSmooth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getShadowSmooth, _godot_object);
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
	Vector2 getTextureOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getTextureOffset, _godot_object);
	}
	/**
	
	*/
	double getTextureScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTextureScale, _godot_object);
	}
	/**
	
	*/
	long getZRangeMax() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getZRangeMax, _godot_object);
	}
	/**
	
	*/
	long getZRangeMin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getZRangeMin, _godot_object);
	}
	/**
	
	*/
	bool isEditorOnly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEditorOnly, _godot_object);
	}
	/**
	
	*/
	bool isEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEnabled, _godot_object);
	}
	/**
	
	*/
	bool isShadowEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isShadowEnabled, _godot_object);
	}
	/**
	
	*/
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	void setEditorOnly(in bool editor_only)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEditorOnly, _godot_object, editor_only);
	}
	/**
	
	*/
	void setEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnergy, _godot_object, energy);
	}
	/**
	
	*/
	void setHeight(in double height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHeight, _godot_object, height);
	}
	/**
	
	*/
	void setItemCullMask(in long item_cull_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemCullMask, _godot_object, item_cull_mask);
	}
	/**
	
	*/
	void setItemShadowCullMask(in long item_shadow_cull_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemShadowCullMask, _godot_object, item_shadow_cull_mask);
	}
	/**
	
	*/
	void setLayerRangeMax(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLayerRangeMax, _godot_object, layer);
	}
	/**
	
	*/
	void setLayerRangeMin(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLayerRangeMin, _godot_object, layer);
	}
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	void setShadowBufferSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowBufferSize, _godot_object, size);
	}
	/**
	
	*/
	void setShadowColor(in Color shadow_color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowColor, _godot_object, shadow_color);
	}
	/**
	
	*/
	void setShadowEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setShadowFilter(in long filter)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowFilter, _godot_object, filter);
	}
	/**
	
	*/
	void setShadowGradientLength(in double multiplier)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowGradientLength, _godot_object, multiplier);
	}
	/**
	
	*/
	void setShadowSmooth(in double smooth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowSmooth, _godot_object, smooth);
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
	void setTextureOffset(in Vector2 texture_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextureOffset, _godot_object, texture_offset);
	}
	/**
	
	*/
	void setTextureScale(in double texture_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextureScale, _godot_object, texture_scale);
	}
	/**
	
	*/
	void setZRangeMax(in long z)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setZRangeMax, _godot_object, z);
	}
	/**
	
	*/
	void setZRangeMin(in long z)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setZRangeMin, _godot_object, z);
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
	If `true`, Light2D will only appear when editing the scene.
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
	If `true`, Light2D will emit light.
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
	The Light2D's mode. See $(D mode) constants for values.
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
	Maximum layer value of objects that are affected by the Light2D.
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
	Minimum layer value of objects that are affected by the Light2D.
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
	Maximum `z` value of objects that are affected by the Light2D.
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
	Minimum `z` value of objects that are affected by the Light2D.
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
	Shadow buffer size.
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
	If `true`, the Light2D will cast shadows.
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
	Shadow filter type. See $(D shadowfilter) for possible values.
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
	The shadow mask. Used with $(D LightOccluder2D) to cast shadows. Only occluders with a matching light mask will cast shadows.
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
}
