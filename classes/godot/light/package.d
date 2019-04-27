/**
Provides a base class for different kinds of light nodes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.light;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.visualinstance;
import godot.spatial;
import godot.node;
/**
Provides a base class for different kinds of light nodes.

Light is the abstract base class for light nodes, so it shouldn't be used directly (It can't be instanced). Other types of light nodes inherit from it. Light contains the common variables and parameters used for lighting.
*/
@GodotBaseClass struct Light
{
	enum string _GODOT_internal_name = "Light";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_editor_only") GodotMethod!(void, bool) setEditorOnly;
		@GodotName("is_editor_only") GodotMethod!(bool) isEditorOnly;
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("set_shadow") GodotMethod!(void, bool) setShadow;
		@GodotName("has_shadow") GodotMethod!(bool) hasShadow;
		@GodotName("set_negative") GodotMethod!(void, bool) setNegative;
		@GodotName("is_negative") GodotMethod!(bool) isNegative;
		@GodotName("set_cull_mask") GodotMethod!(void, long) setCullMask;
		@GodotName("get_cull_mask") GodotMethod!(long) getCullMask;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("set_shadow_reverse_cull_face") GodotMethod!(void, bool) setShadowReverseCullFace;
		@GodotName("get_shadow_reverse_cull_face") GodotMethod!(bool) getShadowReverseCullFace;
		@GodotName("set_shadow_color") GodotMethod!(void, Color) setShadowColor;
		@GodotName("get_shadow_color") GodotMethod!(Color) getShadowColor;
		@GodotName("set_bake_mode") GodotMethod!(void, long) setBakeMode;
		@GodotName("get_bake_mode") GodotMethod!(Light.BakeMode) getBakeMode;
	}
	bool opEquals(in Light other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Light opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Light _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Light");
		if(constructor is null) return typeof(this).init;
		return cast(Light)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum BakeMode : int
	{
		/**
		Light is ignored when baking. Note: hiding a light does $(I not) affect baking.
		*/
		bakeDisabled = 0,
		/**
		Only indirect lighting will be baked. Default value.
		*/
		bakeIndirect = 1,
		/**
		Both direct and indirect light will be baked. Note: you should hide the light if you don't want it to appear twice (dynamic and baked).
		*/
		bakeAll = 2,
	}
	/// 
	enum Param : int
	{
		/**
		
		*/
		paramEnergy = 0,
		/**
		
		*/
		paramIndirectEnergy = 1,
		/**
		
		*/
		paramSpecular = 2,
		/**
		
		*/
		paramRange = 3,
		/**
		
		*/
		paramAttenuation = 4,
		/**
		
		*/
		paramSpotAngle = 5,
		/**
		
		*/
		paramSpotAttenuation = 6,
		/**
		
		*/
		paramContactShadowSize = 7,
		/**
		
		*/
		paramShadowMaxDistance = 8,
		/**
		
		*/
		paramShadowSplit1Offset = 9,
		/**
		
		*/
		paramShadowSplit2Offset = 10,
		/**
		
		*/
		paramShadowSplit3Offset = 11,
		/**
		
		*/
		paramShadowNormalBias = 12,
		/**
		
		*/
		paramShadowBias = 13,
		/**
		
		*/
		paramShadowBiasSplitScale = 14,
		/**
		
		*/
		paramMax = 15,
	}
	/// 
	enum Constants : int
	{
		paramEnergy = 0,
		bakeDisabled = 0,
		paramIndirectEnergy = 1,
		bakeIndirect = 1,
		bakeAll = 2,
		paramSpecular = 2,
		paramRange = 3,
		paramAttenuation = 4,
		paramSpotAngle = 5,
		paramSpotAttenuation = 6,
		paramContactShadowSize = 7,
		paramShadowMaxDistance = 8,
		paramShadowSplit1Offset = 9,
		paramShadowSplit2Offset = 10,
		paramShadowSplit3Offset = 11,
		paramShadowNormalBias = 12,
		paramShadowBias = 13,
		paramShadowBiasSplitScale = 14,
		paramMax = 15,
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
	bool isEditorOnly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEditorOnly, _godot_object);
	}
	/**
	
	*/
	void setParam(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParam, _godot_object, param, value);
	}
	/**
	
	*/
	double getParam(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getParam, _godot_object, param);
	}
	/**
	
	*/
	void setShadow(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadow, _godot_object, enabled);
	}
	/**
	
	*/
	bool hasShadow() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasShadow, _godot_object);
	}
	/**
	
	*/
	void setNegative(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNegative, _godot_object, enabled);
	}
	/**
	
	*/
	bool isNegative() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isNegative, _godot_object);
	}
	/**
	
	*/
	void setCullMask(in long cull_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCullMask, _godot_object, cull_mask);
	}
	/**
	
	*/
	long getCullMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCullMask, _godot_object);
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
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getColor, _godot_object);
	}
	/**
	
	*/
	void setShadowReverseCullFace(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowReverseCullFace, _godot_object, enable);
	}
	/**
	
	*/
	bool getShadowReverseCullFace() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getShadowReverseCullFace, _godot_object);
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
	Color getShadowColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getShadowColor, _godot_object);
	}
	/**
	
	*/
	void setBakeMode(in long bake_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBakeMode, _godot_object, bake_mode);
	}
	/**
	
	*/
	Light.BakeMode getBakeMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Light.BakeMode)(_classBinding.getBakeMode, _godot_object);
	}
	/**
	The light's color.
	*/
	@property Color lightColor()
	{
		return getColor();
	}
	/// ditto
	@property void lightColor(Color v)
	{
		setColor(v);
	}
	/**
	The light's strength multiplier.
	*/
	@property double lightEnergy()
	{
		return getParam(0);
	}
	/// ditto
	@property void lightEnergy(double v)
	{
		setParam(0, v);
	}
	/**
	Secondary multiplier used with indirect light (light bounces). This works in baked light or GIProbe.
	*/
	@property double lightIndirectEnergy()
	{
		return getParam(1);
	}
	/// ditto
	@property void lightIndirectEnergy(double v)
	{
		setParam(1, v);
	}
	/**
	If `true`, the light's effect is reversed, darkening areas and casting bright shadows. Default value: `false`.
	*/
	@property bool lightNegative()
	{
		return isNegative();
	}
	/// ditto
	@property void lightNegative(bool v)
	{
		setNegative(v);
	}
	/**
	The intensity of the specular blob in objects affected by the light. At `0` the light becomes a pure diffuse light.
	*/
	@property double lightSpecular()
	{
		return getParam(2);
	}
	/// ditto
	@property void lightSpecular(double v)
	{
		setParam(2, v);
	}
	/**
	The light's bake mode. See $(D bakemode).
	*/
	@property Light.BakeMode lightBakeMode()
	{
		return getBakeMode();
	}
	/// ditto
	@property void lightBakeMode(long v)
	{
		setBakeMode(v);
	}
	/**
	The light will affect objects in the selected layers.
	*/
	@property long lightCullMask()
	{
		return getCullMask();
	}
	/// ditto
	@property void lightCullMask(long v)
	{
		setCullMask(v);
	}
	/**
	If `true`, the light will cast shadows. Default value: `false`.
	*/
	@property bool shadowEnabled()
	{
		return hasShadow();
	}
	/// ditto
	@property void shadowEnabled(bool v)
	{
		setShadow(v);
	}
	/**
	The color of shadows cast by this light.
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
	Used to adjust shadow appearance. Too small a value results in self shadowing, while too large a value causes shadows to separate from casters. Adjust as needed.
	*/
	@property double shadowBias()
	{
		return getParam(13);
	}
	/// ditto
	@property void shadowBias(double v)
	{
		setParam(13, v);
	}
	/**
	Attempts to reduce $(D shadowBias) gap.
	*/
	@property double shadowContact()
	{
		return getParam(7);
	}
	/// ditto
	@property void shadowContact(double v)
	{
		setParam(7, v);
	}
	/**
	
	*/
	@property bool shadowReverseCullFace()
	{
		return getShadowReverseCullFace();
	}
	/// ditto
	@property void shadowReverseCullFace(bool v)
	{
		setShadowReverseCullFace(v);
	}
	/**
	If `true`, the light only appears in the editor and will not be visible at runtime. Default value:`false`.
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
}
