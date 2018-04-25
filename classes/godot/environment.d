/**
Resource for environment nodes (like $(D WorldEnvironment)) that define multiple rendering options.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.environment;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.sky;
import godot.texture;
/**
Resource for environment nodes (like $(D WorldEnvironment)) that define multiple rendering options.

Resource for environment nodes (like $(D WorldEnvironment)) that define multiple environment operations (such as background $(D Sky) or $(D Color), ambient light, fog, depth-of-field...). These parameters affect the final render of the scene. The order of these operations is:
	
- DOF Blur
- Motion Blur
- Bloom
- Tonemap (auto exposure)
- Adjustments
*/
@GodotBaseClass struct Environment
{
	static immutable string _GODOT_internal_name = "Environment";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Environment other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Environment opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Environment _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Environment");
		if(constructor is null) return typeof(this).init;
		return cast(Environment)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum SSAOBlur : int
	{
		/**
		
		*/
		ssaoBlurDisabled = 0,
		/**
		
		*/
		ssaoBlur1x1 = 1,
		/**
		
		*/
		ssaoBlur2x2 = 2,
		/**
		
		*/
		ssaoBlur3x3 = 3,
	}
	/// 
	enum ToneMapper : int
	{
		/**
		Linear tonemapper operator. Reads the linear data and performs an exposure adjustment.
		*/
		toneMapperLinear = 0,
		/**
		Reinhardt tonemapper operator. Performs a variation on rendered pixels' colors by this formula: color = color / (1 + color).
		*/
		toneMapperReinhardt = 1,
		/**
		Filmic tonemapper operator.
		*/
		toneMapperFilmic = 2,
		/**
		Academy Color Encoding System tonemapper operator.
		*/
		toneMapperAces = 3,
	}
	/// 
	enum GlowBlendMode : int
	{
		/**
		Additive glow blending mode. Mostly used for particles, glows (bloom), lens flare, bright sources.
		*/
		glowBlendModeAdditive = 0,
		/**
		Screen glow blending mode. Increases brightness, used frequently with bloom.
		*/
		glowBlendModeScreen = 1,
		/**
		Softlight glow blending mode. Modifies contrast, exposes shadows and highlights, vivid bloom.
		*/
		glowBlendModeSoftlight = 2,
		/**
		Replace glow blending mode. Replaces all pixels' color by the glow value.
		*/
		glowBlendModeReplace = 3,
	}
	/// 
	enum BGMode : int
	{
		/**
		Clear the background using the project's clear color.
		*/
		bgClearColor = 0,
		/**
		Clear the background using a custom clear color.
		*/
		bgColor = 1,
		/**
		Display a user-defined sky in the background.
		*/
		bgSky = 2,
		/**
		Clear the background using a custom clear color and allows defining a sky for shading and reflection.
		*/
		bgColorSky = 3,
		/**
		Display a $(D CanvasLayer) in the background.
		*/
		bgCanvas = 4,
		/**
		Keep on screen every pixel drawn in the background.
		*/
		bgKeep = 5,
		/**
		Helper constant keeping track of the enum's size, has no direct usage in API calls.
		*/
		bgMax = 6,
	}
	/// 
	enum SSAOQuality : int
	{
		/**
		
		*/
		ssaoQualityLow = 0,
		/**
		
		*/
		ssaoQualityMedium = 1,
		/**
		
		*/
		ssaoQualityHigh = 2,
	}
	/// 
	enum DOFBlurQuality : int
	{
		/**
		Low depth-of-field blur quality.
		*/
		dofBlurQualityLow = 0,
		/**
		Medium depth-of-field blur quality.
		*/
		dofBlurQualityMedium = 1,
		/**
		High depth-of-field blur quality.
		*/
		dofBlurQualityHigh = 2,
	}
	/// 
	enum Constants : int
	{
		dofBlurQualityLow = 0,
		glowBlendModeAdditive = 0,
		ssaoBlurDisabled = 0,
		toneMapperLinear = 0,
		bgClearColor = 0,
		ssaoQualityLow = 0,
		ssaoBlur1x1 = 1,
		bgColor = 1,
		dofBlurQualityMedium = 1,
		glowBlendModeScreen = 1,
		toneMapperReinhardt = 1,
		ssaoQualityMedium = 1,
		toneMapperFilmic = 2,
		bgSky = 2,
		dofBlurQualityHigh = 2,
		ssaoQualityHigh = 2,
		glowBlendModeSoftlight = 2,
		ssaoBlur2x2 = 2,
		glowBlendModeReplace = 3,
		toneMapperAces = 3,
		ssaoBlur3x3 = 3,
		bgColorSky = 3,
		bgCanvas = 4,
		bgKeep = 5,
		bgMax = 6,
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_background;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_background") = _GODOT_set_background;
	/**
	
	*/
	void setBackground(in long mode)
	{
		_GODOT_set_background.bind("Environment", "set_background");
		ptrcall!(void)(_GODOT_set_background, _godot_object, mode);
	}
	package(godot) static GodotMethod!(void, Sky) _GODOT_set_sky;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky") = _GODOT_set_sky;
	/**
	
	*/
	void setSky(Sky sky)
	{
		_GODOT_set_sky.bind("Environment", "set_sky");
		ptrcall!(void)(_GODOT_set_sky, _godot_object, sky);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_sky_custom_fov;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky_custom_fov") = _GODOT_set_sky_custom_fov;
	/**
	
	*/
	void setSkyCustomFov(in double scale)
	{
		_GODOT_set_sky_custom_fov.bind("Environment", "set_sky_custom_fov");
		ptrcall!(void)(_GODOT_set_sky_custom_fov, _godot_object, scale);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bg_color") = _GODOT_set_bg_color;
	/**
	
	*/
	void setBgColor(in Color color)
	{
		_GODOT_set_bg_color.bind("Environment", "set_bg_color");
		ptrcall!(void)(_GODOT_set_bg_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_bg_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bg_energy") = _GODOT_set_bg_energy;
	/**
	
	*/
	void setBgEnergy(in double energy)
	{
		_GODOT_set_bg_energy.bind("Environment", "set_bg_energy");
		ptrcall!(void)(_GODOT_set_bg_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_canvas_max_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_canvas_max_layer") = _GODOT_set_canvas_max_layer;
	/**
	
	*/
	void setCanvasMaxLayer(in long layer)
	{
		_GODOT_set_canvas_max_layer.bind("Environment", "set_canvas_max_layer");
		ptrcall!(void)(_GODOT_set_canvas_max_layer, _godot_object, layer);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_ambient_light_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ambient_light_color") = _GODOT_set_ambient_light_color;
	/**
	
	*/
	void setAmbientLightColor(in Color color)
	{
		_GODOT_set_ambient_light_color.bind("Environment", "set_ambient_light_color");
		ptrcall!(void)(_GODOT_set_ambient_light_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ambient_light_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ambient_light_energy") = _GODOT_set_ambient_light_energy;
	/**
	
	*/
	void setAmbientLightEnergy(in double energy)
	{
		_GODOT_set_ambient_light_energy.bind("Environment", "set_ambient_light_energy");
		ptrcall!(void)(_GODOT_set_ambient_light_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ambient_light_sky_contribution;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ambient_light_sky_contribution") = _GODOT_set_ambient_light_sky_contribution;
	/**
	
	*/
	void setAmbientLightSkyContribution(in double energy)
	{
		_GODOT_set_ambient_light_sky_contribution.bind("Environment", "set_ambient_light_sky_contribution");
		ptrcall!(void)(_GODOT_set_ambient_light_sky_contribution, _godot_object, energy);
	}
	package(godot) static GodotMethod!(Environment.BGMode) _GODOT_get_background;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_background") = _GODOT_get_background;
	/**
	
	*/
	Environment.BGMode getBackground() const
	{
		_GODOT_get_background.bind("Environment", "get_background");
		return ptrcall!(Environment.BGMode)(_GODOT_get_background, _godot_object);
	}
	package(godot) static GodotMethod!(Sky) _GODOT_get_sky;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky") = _GODOT_get_sky;
	/**
	
	*/
	Ref!Sky getSky() const
	{
		_GODOT_get_sky.bind("Environment", "get_sky");
		return ptrcall!(Sky)(_GODOT_get_sky, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_sky_custom_fov;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky_custom_fov") = _GODOT_get_sky_custom_fov;
	/**
	
	*/
	double getSkyCustomFov() const
	{
		_GODOT_get_sky_custom_fov.bind("Environment", "get_sky_custom_fov");
		return ptrcall!(double)(_GODOT_get_sky_custom_fov, _godot_object);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bg_color") = _GODOT_get_bg_color;
	/**
	
	*/
	Color getBgColor() const
	{
		_GODOT_get_bg_color.bind("Environment", "get_bg_color");
		return ptrcall!(Color)(_GODOT_get_bg_color, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_bg_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bg_energy") = _GODOT_get_bg_energy;
	/**
	
	*/
	double getBgEnergy() const
	{
		_GODOT_get_bg_energy.bind("Environment", "get_bg_energy");
		return ptrcall!(double)(_GODOT_get_bg_energy, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_canvas_max_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas_max_layer") = _GODOT_get_canvas_max_layer;
	/**
	
	*/
	long getCanvasMaxLayer() const
	{
		_GODOT_get_canvas_max_layer.bind("Environment", "get_canvas_max_layer");
		return ptrcall!(long)(_GODOT_get_canvas_max_layer, _godot_object);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_ambient_light_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ambient_light_color") = _GODOT_get_ambient_light_color;
	/**
	
	*/
	Color getAmbientLightColor() const
	{
		_GODOT_get_ambient_light_color.bind("Environment", "get_ambient_light_color");
		return ptrcall!(Color)(_GODOT_get_ambient_light_color, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ambient_light_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ambient_light_energy") = _GODOT_get_ambient_light_energy;
	/**
	
	*/
	double getAmbientLightEnergy() const
	{
		_GODOT_get_ambient_light_energy.bind("Environment", "get_ambient_light_energy");
		return ptrcall!(double)(_GODOT_get_ambient_light_energy, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ambient_light_sky_contribution;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ambient_light_sky_contribution") = _GODOT_get_ambient_light_sky_contribution;
	/**
	
	*/
	double getAmbientLightSkyContribution() const
	{
		_GODOT_get_ambient_light_sky_contribution.bind("Environment", "get_ambient_light_sky_contribution");
		return ptrcall!(double)(_GODOT_get_ambient_light_sky_contribution, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fog_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_enabled") = _GODOT_set_fog_enabled;
	/**
	
	*/
	void setFogEnabled(in bool enabled)
	{
		_GODOT_set_fog_enabled.bind("Environment", "set_fog_enabled");
		ptrcall!(void)(_GODOT_set_fog_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_fog_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_fog_enabled") = _GODOT_is_fog_enabled;
	/**
	
	*/
	bool isFogEnabled() const
	{
		_GODOT_is_fog_enabled.bind("Environment", "is_fog_enabled");
		return ptrcall!(bool)(_GODOT_is_fog_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_fog_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_color") = _GODOT_set_fog_color;
	/**
	
	*/
	void setFogColor(in Color color)
	{
		_GODOT_set_fog_color.bind("Environment", "set_fog_color");
		ptrcall!(void)(_GODOT_set_fog_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_fog_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_color") = _GODOT_get_fog_color;
	/**
	
	*/
	Color getFogColor() const
	{
		_GODOT_get_fog_color.bind("Environment", "get_fog_color");
		return ptrcall!(Color)(_GODOT_get_fog_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_fog_sun_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_sun_color") = _GODOT_set_fog_sun_color;
	/**
	
	*/
	void setFogSunColor(in Color color)
	{
		_GODOT_set_fog_sun_color.bind("Environment", "set_fog_sun_color");
		ptrcall!(void)(_GODOT_set_fog_sun_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_fog_sun_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_sun_color") = _GODOT_get_fog_sun_color;
	/**
	
	*/
	Color getFogSunColor() const
	{
		_GODOT_get_fog_sun_color.bind("Environment", "get_fog_sun_color");
		return ptrcall!(Color)(_GODOT_get_fog_sun_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_fog_sun_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_sun_amount") = _GODOT_set_fog_sun_amount;
	/**
	
	*/
	void setFogSunAmount(in double amount)
	{
		_GODOT_set_fog_sun_amount.bind("Environment", "set_fog_sun_amount");
		ptrcall!(void)(_GODOT_set_fog_sun_amount, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_fog_sun_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_sun_amount") = _GODOT_get_fog_sun_amount;
	/**
	
	*/
	double getFogSunAmount() const
	{
		_GODOT_get_fog_sun_amount.bind("Environment", "get_fog_sun_amount");
		return ptrcall!(double)(_GODOT_get_fog_sun_amount, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fog_depth_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_depth_enabled") = _GODOT_set_fog_depth_enabled;
	/**
	
	*/
	void setFogDepthEnabled(in bool enabled)
	{
		_GODOT_set_fog_depth_enabled.bind("Environment", "set_fog_depth_enabled");
		ptrcall!(void)(_GODOT_set_fog_depth_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_fog_depth_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_fog_depth_enabled") = _GODOT_is_fog_depth_enabled;
	/**
	
	*/
	bool isFogDepthEnabled() const
	{
		_GODOT_is_fog_depth_enabled.bind("Environment", "is_fog_depth_enabled");
		return ptrcall!(bool)(_GODOT_is_fog_depth_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_fog_depth_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_depth_begin") = _GODOT_set_fog_depth_begin;
	/**
	
	*/
	void setFogDepthBegin(in double distance)
	{
		_GODOT_set_fog_depth_begin.bind("Environment", "set_fog_depth_begin");
		ptrcall!(void)(_GODOT_set_fog_depth_begin, _godot_object, distance);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_fog_depth_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_depth_begin") = _GODOT_get_fog_depth_begin;
	/**
	
	*/
	double getFogDepthBegin() const
	{
		_GODOT_get_fog_depth_begin.bind("Environment", "get_fog_depth_begin");
		return ptrcall!(double)(_GODOT_get_fog_depth_begin, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_fog_depth_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_depth_curve") = _GODOT_set_fog_depth_curve;
	/**
	
	*/
	void setFogDepthCurve(in double curve)
	{
		_GODOT_set_fog_depth_curve.bind("Environment", "set_fog_depth_curve");
		ptrcall!(void)(_GODOT_set_fog_depth_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_fog_depth_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_depth_curve") = _GODOT_get_fog_depth_curve;
	/**
	
	*/
	double getFogDepthCurve() const
	{
		_GODOT_get_fog_depth_curve.bind("Environment", "get_fog_depth_curve");
		return ptrcall!(double)(_GODOT_get_fog_depth_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fog_transmit_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_transmit_enabled") = _GODOT_set_fog_transmit_enabled;
	/**
	
	*/
	void setFogTransmitEnabled(in bool enabled)
	{
		_GODOT_set_fog_transmit_enabled.bind("Environment", "set_fog_transmit_enabled");
		ptrcall!(void)(_GODOT_set_fog_transmit_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_fog_transmit_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_fog_transmit_enabled") = _GODOT_is_fog_transmit_enabled;
	/**
	
	*/
	bool isFogTransmitEnabled() const
	{
		_GODOT_is_fog_transmit_enabled.bind("Environment", "is_fog_transmit_enabled");
		return ptrcall!(bool)(_GODOT_is_fog_transmit_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_fog_transmit_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_transmit_curve") = _GODOT_set_fog_transmit_curve;
	/**
	
	*/
	void setFogTransmitCurve(in double curve)
	{
		_GODOT_set_fog_transmit_curve.bind("Environment", "set_fog_transmit_curve");
		ptrcall!(void)(_GODOT_set_fog_transmit_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_fog_transmit_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_transmit_curve") = _GODOT_get_fog_transmit_curve;
	/**
	
	*/
	double getFogTransmitCurve() const
	{
		_GODOT_get_fog_transmit_curve.bind("Environment", "get_fog_transmit_curve");
		return ptrcall!(double)(_GODOT_get_fog_transmit_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fog_height_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_height_enabled") = _GODOT_set_fog_height_enabled;
	/**
	
	*/
	void setFogHeightEnabled(in bool enabled)
	{
		_GODOT_set_fog_height_enabled.bind("Environment", "set_fog_height_enabled");
		ptrcall!(void)(_GODOT_set_fog_height_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_fog_height_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_fog_height_enabled") = _GODOT_is_fog_height_enabled;
	/**
	
	*/
	bool isFogHeightEnabled() const
	{
		_GODOT_is_fog_height_enabled.bind("Environment", "is_fog_height_enabled");
		return ptrcall!(bool)(_GODOT_is_fog_height_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_fog_height_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_height_min") = _GODOT_set_fog_height_min;
	/**
	
	*/
	void setFogHeightMin(in double height)
	{
		_GODOT_set_fog_height_min.bind("Environment", "set_fog_height_min");
		ptrcall!(void)(_GODOT_set_fog_height_min, _godot_object, height);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_fog_height_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_height_min") = _GODOT_get_fog_height_min;
	/**
	
	*/
	double getFogHeightMin() const
	{
		_GODOT_get_fog_height_min.bind("Environment", "get_fog_height_min");
		return ptrcall!(double)(_GODOT_get_fog_height_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_fog_height_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_height_max") = _GODOT_set_fog_height_max;
	/**
	
	*/
	void setFogHeightMax(in double height)
	{
		_GODOT_set_fog_height_max.bind("Environment", "set_fog_height_max");
		ptrcall!(void)(_GODOT_set_fog_height_max, _godot_object, height);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_fog_height_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_height_max") = _GODOT_get_fog_height_max;
	/**
	
	*/
	double getFogHeightMax() const
	{
		_GODOT_get_fog_height_max.bind("Environment", "get_fog_height_max");
		return ptrcall!(double)(_GODOT_get_fog_height_max, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_fog_height_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fog_height_curve") = _GODOT_set_fog_height_curve;
	/**
	
	*/
	void setFogHeightCurve(in double curve)
	{
		_GODOT_set_fog_height_curve.bind("Environment", "set_fog_height_curve");
		ptrcall!(void)(_GODOT_set_fog_height_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_fog_height_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fog_height_curve") = _GODOT_get_fog_height_curve;
	/**
	
	*/
	double getFogHeightCurve() const
	{
		_GODOT_get_fog_height_curve.bind("Environment", "get_fog_height_curve");
		return ptrcall!(double)(_GODOT_get_fog_height_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_tonemapper;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemapper") = _GODOT_set_tonemapper;
	/**
	
	*/
	void setTonemapper(in long mode)
	{
		_GODOT_set_tonemapper.bind("Environment", "set_tonemapper");
		ptrcall!(void)(_GODOT_set_tonemapper, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Environment.ToneMapper) _GODOT_get_tonemapper;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemapper") = _GODOT_get_tonemapper;
	/**
	
	*/
	Environment.ToneMapper getTonemapper() const
	{
		_GODOT_get_tonemapper.bind("Environment", "get_tonemapper");
		return ptrcall!(Environment.ToneMapper)(_GODOT_get_tonemapper, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tonemap_exposure;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_exposure") = _GODOT_set_tonemap_exposure;
	/**
	
	*/
	void setTonemapExposure(in double exposure)
	{
		_GODOT_set_tonemap_exposure.bind("Environment", "set_tonemap_exposure");
		ptrcall!(void)(_GODOT_set_tonemap_exposure, _godot_object, exposure);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tonemap_exposure;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_exposure") = _GODOT_get_tonemap_exposure;
	/**
	
	*/
	double getTonemapExposure() const
	{
		_GODOT_get_tonemap_exposure.bind("Environment", "get_tonemap_exposure");
		return ptrcall!(double)(_GODOT_get_tonemap_exposure, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tonemap_white;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_white") = _GODOT_set_tonemap_white;
	/**
	
	*/
	void setTonemapWhite(in double white)
	{
		_GODOT_set_tonemap_white.bind("Environment", "set_tonemap_white");
		ptrcall!(void)(_GODOT_set_tonemap_white, _godot_object, white);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tonemap_white;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_white") = _GODOT_get_tonemap_white;
	/**
	
	*/
	double getTonemapWhite() const
	{
		_GODOT_get_tonemap_white.bind("Environment", "get_tonemap_white");
		return ptrcall!(double)(_GODOT_get_tonemap_white, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_tonemap_auto_exposure;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_auto_exposure") = _GODOT_set_tonemap_auto_exposure;
	/**
	
	*/
	void setTonemapAutoExposure(in bool auto_exposure)
	{
		_GODOT_set_tonemap_auto_exposure.bind("Environment", "set_tonemap_auto_exposure");
		ptrcall!(void)(_GODOT_set_tonemap_auto_exposure, _godot_object, auto_exposure);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_tonemap_auto_exposure;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_auto_exposure") = _GODOT_get_tonemap_auto_exposure;
	/**
	
	*/
	bool getTonemapAutoExposure() const
	{
		_GODOT_get_tonemap_auto_exposure.bind("Environment", "get_tonemap_auto_exposure");
		return ptrcall!(bool)(_GODOT_get_tonemap_auto_exposure, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tonemap_auto_exposure_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_auto_exposure_max") = _GODOT_set_tonemap_auto_exposure_max;
	/**
	
	*/
	void setTonemapAutoExposureMax(in double exposure_max)
	{
		_GODOT_set_tonemap_auto_exposure_max.bind("Environment", "set_tonemap_auto_exposure_max");
		ptrcall!(void)(_GODOT_set_tonemap_auto_exposure_max, _godot_object, exposure_max);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tonemap_auto_exposure_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_auto_exposure_max") = _GODOT_get_tonemap_auto_exposure_max;
	/**
	
	*/
	double getTonemapAutoExposureMax() const
	{
		_GODOT_get_tonemap_auto_exposure_max.bind("Environment", "get_tonemap_auto_exposure_max");
		return ptrcall!(double)(_GODOT_get_tonemap_auto_exposure_max, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tonemap_auto_exposure_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_auto_exposure_min") = _GODOT_set_tonemap_auto_exposure_min;
	/**
	
	*/
	void setTonemapAutoExposureMin(in double exposure_min)
	{
		_GODOT_set_tonemap_auto_exposure_min.bind("Environment", "set_tonemap_auto_exposure_min");
		ptrcall!(void)(_GODOT_set_tonemap_auto_exposure_min, _godot_object, exposure_min);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tonemap_auto_exposure_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_auto_exposure_min") = _GODOT_get_tonemap_auto_exposure_min;
	/**
	
	*/
	double getTonemapAutoExposureMin() const
	{
		_GODOT_get_tonemap_auto_exposure_min.bind("Environment", "get_tonemap_auto_exposure_min");
		return ptrcall!(double)(_GODOT_get_tonemap_auto_exposure_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tonemap_auto_exposure_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_auto_exposure_speed") = _GODOT_set_tonemap_auto_exposure_speed;
	/**
	
	*/
	void setTonemapAutoExposureSpeed(in double exposure_speed)
	{
		_GODOT_set_tonemap_auto_exposure_speed.bind("Environment", "set_tonemap_auto_exposure_speed");
		ptrcall!(void)(_GODOT_set_tonemap_auto_exposure_speed, _godot_object, exposure_speed);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tonemap_auto_exposure_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_auto_exposure_speed") = _GODOT_get_tonemap_auto_exposure_speed;
	/**
	
	*/
	double getTonemapAutoExposureSpeed() const
	{
		_GODOT_get_tonemap_auto_exposure_speed.bind("Environment", "get_tonemap_auto_exposure_speed");
		return ptrcall!(double)(_GODOT_get_tonemap_auto_exposure_speed, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tonemap_auto_exposure_grey;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tonemap_auto_exposure_grey") = _GODOT_set_tonemap_auto_exposure_grey;
	/**
	
	*/
	void setTonemapAutoExposureGrey(in double exposure_grey)
	{
		_GODOT_set_tonemap_auto_exposure_grey.bind("Environment", "set_tonemap_auto_exposure_grey");
		ptrcall!(void)(_GODOT_set_tonemap_auto_exposure_grey, _godot_object, exposure_grey);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tonemap_auto_exposure_grey;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tonemap_auto_exposure_grey") = _GODOT_get_tonemap_auto_exposure_grey;
	/**
	
	*/
	double getTonemapAutoExposureGrey() const
	{
		_GODOT_get_tonemap_auto_exposure_grey.bind("Environment", "get_tonemap_auto_exposure_grey");
		return ptrcall!(double)(_GODOT_get_tonemap_auto_exposure_grey, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ssr_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_enabled") = _GODOT_set_ssr_enabled;
	/**
	
	*/
	void setSsrEnabled(in bool enabled)
	{
		_GODOT_set_ssr_enabled.bind("Environment", "set_ssr_enabled");
		ptrcall!(void)(_GODOT_set_ssr_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ssr_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ssr_enabled") = _GODOT_is_ssr_enabled;
	/**
	
	*/
	bool isSsrEnabled() const
	{
		_GODOT_is_ssr_enabled.bind("Environment", "is_ssr_enabled");
		return ptrcall!(bool)(_GODOT_is_ssr_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_ssr_max_steps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_max_steps") = _GODOT_set_ssr_max_steps;
	/**
	
	*/
	void setSsrMaxSteps(in long max_steps)
	{
		_GODOT_set_ssr_max_steps.bind("Environment", "set_ssr_max_steps");
		ptrcall!(void)(_GODOT_set_ssr_max_steps, _godot_object, max_steps);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_ssr_max_steps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssr_max_steps") = _GODOT_get_ssr_max_steps;
	/**
	
	*/
	long getSsrMaxSteps() const
	{
		_GODOT_get_ssr_max_steps.bind("Environment", "get_ssr_max_steps");
		return ptrcall!(long)(_GODOT_get_ssr_max_steps, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ssr_fade_in;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_fade_in") = _GODOT_set_ssr_fade_in;
	/**
	
	*/
	void setSsrFadeIn(in double fade_in)
	{
		_GODOT_set_ssr_fade_in.bind("Environment", "set_ssr_fade_in");
		ptrcall!(void)(_GODOT_set_ssr_fade_in, _godot_object, fade_in);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ssr_fade_in;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssr_fade_in") = _GODOT_get_ssr_fade_in;
	/**
	
	*/
	double getSsrFadeIn() const
	{
		_GODOT_get_ssr_fade_in.bind("Environment", "get_ssr_fade_in");
		return ptrcall!(double)(_GODOT_get_ssr_fade_in, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ssr_fade_out;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_fade_out") = _GODOT_set_ssr_fade_out;
	/**
	
	*/
	void setSsrFadeOut(in double fade_out)
	{
		_GODOT_set_ssr_fade_out.bind("Environment", "set_ssr_fade_out");
		ptrcall!(void)(_GODOT_set_ssr_fade_out, _godot_object, fade_out);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ssr_fade_out;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssr_fade_out") = _GODOT_get_ssr_fade_out;
	/**
	
	*/
	double getSsrFadeOut() const
	{
		_GODOT_get_ssr_fade_out.bind("Environment", "get_ssr_fade_out");
		return ptrcall!(double)(_GODOT_get_ssr_fade_out, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ssr_depth_tolerance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_depth_tolerance") = _GODOT_set_ssr_depth_tolerance;
	/**
	
	*/
	void setSsrDepthTolerance(in double depth_tolerance)
	{
		_GODOT_set_ssr_depth_tolerance.bind("Environment", "set_ssr_depth_tolerance");
		ptrcall!(void)(_GODOT_set_ssr_depth_tolerance, _godot_object, depth_tolerance);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ssr_depth_tolerance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssr_depth_tolerance") = _GODOT_get_ssr_depth_tolerance;
	/**
	
	*/
	double getSsrDepthTolerance() const
	{
		_GODOT_get_ssr_depth_tolerance.bind("Environment", "get_ssr_depth_tolerance");
		return ptrcall!(double)(_GODOT_get_ssr_depth_tolerance, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ssr_rough;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssr_rough") = _GODOT_set_ssr_rough;
	/**
	
	*/
	void setSsrRough(in bool rough)
	{
		_GODOT_set_ssr_rough.bind("Environment", "set_ssr_rough");
		ptrcall!(void)(_GODOT_set_ssr_rough, _godot_object, rough);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ssr_rough;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ssr_rough") = _GODOT_is_ssr_rough;
	/**
	
	*/
	bool isSsrRough() const
	{
		_GODOT_is_ssr_rough.bind("Environment", "is_ssr_rough");
		return ptrcall!(bool)(_GODOT_is_ssr_rough, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ssao_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_enabled") = _GODOT_set_ssao_enabled;
	/**
	
	*/
	void setSsaoEnabled(in bool enabled)
	{
		_GODOT_set_ssao_enabled.bind("Environment", "set_ssao_enabled");
		ptrcall!(void)(_GODOT_set_ssao_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ssao_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ssao_enabled") = _GODOT_is_ssao_enabled;
	/**
	
	*/
	bool isSsaoEnabled() const
	{
		_GODOT_is_ssao_enabled.bind("Environment", "is_ssao_enabled");
		return ptrcall!(bool)(_GODOT_is_ssao_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ssao_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_radius") = _GODOT_set_ssao_radius;
	/**
	
	*/
	void setSsaoRadius(in double radius)
	{
		_GODOT_set_ssao_radius.bind("Environment", "set_ssao_radius");
		ptrcall!(void)(_GODOT_set_ssao_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ssao_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_radius") = _GODOT_get_ssao_radius;
	/**
	
	*/
	double getSsaoRadius() const
	{
		_GODOT_get_ssao_radius.bind("Environment", "get_ssao_radius");
		return ptrcall!(double)(_GODOT_get_ssao_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ssao_intensity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_intensity") = _GODOT_set_ssao_intensity;
	/**
	
	*/
	void setSsaoIntensity(in double intensity)
	{
		_GODOT_set_ssao_intensity.bind("Environment", "set_ssao_intensity");
		ptrcall!(void)(_GODOT_set_ssao_intensity, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ssao_intensity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_intensity") = _GODOT_get_ssao_intensity;
	/**
	
	*/
	double getSsaoIntensity() const
	{
		_GODOT_get_ssao_intensity.bind("Environment", "get_ssao_intensity");
		return ptrcall!(double)(_GODOT_get_ssao_intensity, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ssao_radius2;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_radius2") = _GODOT_set_ssao_radius2;
	/**
	
	*/
	void setSsaoRadius2(in double radius)
	{
		_GODOT_set_ssao_radius2.bind("Environment", "set_ssao_radius2");
		ptrcall!(void)(_GODOT_set_ssao_radius2, _godot_object, radius);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ssao_radius2;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_radius2") = _GODOT_get_ssao_radius2;
	/**
	
	*/
	double getSsaoRadius2() const
	{
		_GODOT_get_ssao_radius2.bind("Environment", "get_ssao_radius2");
		return ptrcall!(double)(_GODOT_get_ssao_radius2, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ssao_intensity2;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_intensity2") = _GODOT_set_ssao_intensity2;
	/**
	
	*/
	void setSsaoIntensity2(in double intensity)
	{
		_GODOT_set_ssao_intensity2.bind("Environment", "set_ssao_intensity2");
		ptrcall!(void)(_GODOT_set_ssao_intensity2, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ssao_intensity2;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_intensity2") = _GODOT_get_ssao_intensity2;
	/**
	
	*/
	double getSsaoIntensity2() const
	{
		_GODOT_get_ssao_intensity2.bind("Environment", "get_ssao_intensity2");
		return ptrcall!(double)(_GODOT_get_ssao_intensity2, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ssao_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_bias") = _GODOT_set_ssao_bias;
	/**
	
	*/
	void setSsaoBias(in double bias)
	{
		_GODOT_set_ssao_bias.bind("Environment", "set_ssao_bias");
		ptrcall!(void)(_GODOT_set_ssao_bias, _godot_object, bias);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ssao_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_bias") = _GODOT_get_ssao_bias;
	/**
	
	*/
	double getSsaoBias() const
	{
		_GODOT_get_ssao_bias.bind("Environment", "get_ssao_bias");
		return ptrcall!(double)(_GODOT_get_ssao_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ssao_direct_light_affect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_direct_light_affect") = _GODOT_set_ssao_direct_light_affect;
	/**
	
	*/
	void setSsaoDirectLightAffect(in double amount)
	{
		_GODOT_set_ssao_direct_light_affect.bind("Environment", "set_ssao_direct_light_affect");
		ptrcall!(void)(_GODOT_set_ssao_direct_light_affect, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ssao_direct_light_affect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_direct_light_affect") = _GODOT_get_ssao_direct_light_affect;
	/**
	
	*/
	double getSsaoDirectLightAffect() const
	{
		_GODOT_get_ssao_direct_light_affect.bind("Environment", "get_ssao_direct_light_affect");
		return ptrcall!(double)(_GODOT_get_ssao_direct_light_affect, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_ssao_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_color") = _GODOT_set_ssao_color;
	/**
	
	*/
	void setSsaoColor(in Color color)
	{
		_GODOT_set_ssao_color.bind("Environment", "set_ssao_color");
		ptrcall!(void)(_GODOT_set_ssao_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_ssao_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_color") = _GODOT_get_ssao_color;
	/**
	
	*/
	Color getSsaoColor() const
	{
		_GODOT_get_ssao_color.bind("Environment", "get_ssao_color");
		return ptrcall!(Color)(_GODOT_get_ssao_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_ssao_blur;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_blur") = _GODOT_set_ssao_blur;
	/**
	
	*/
	void setSsaoBlur(in long mode)
	{
		_GODOT_set_ssao_blur.bind("Environment", "set_ssao_blur");
		ptrcall!(void)(_GODOT_set_ssao_blur, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Environment.SSAOBlur) _GODOT_get_ssao_blur;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_blur") = _GODOT_get_ssao_blur;
	/**
	
	*/
	Environment.SSAOBlur getSsaoBlur() const
	{
		_GODOT_get_ssao_blur.bind("Environment", "get_ssao_blur");
		return ptrcall!(Environment.SSAOBlur)(_GODOT_get_ssao_blur, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_ssao_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_quality") = _GODOT_set_ssao_quality;
	/**
	
	*/
	void setSsaoQuality(in long quality)
	{
		_GODOT_set_ssao_quality.bind("Environment", "set_ssao_quality");
		ptrcall!(void)(_GODOT_set_ssao_quality, _godot_object, quality);
	}
	package(godot) static GodotMethod!(Environment.SSAOQuality) _GODOT_get_ssao_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_quality") = _GODOT_get_ssao_quality;
	/**
	
	*/
	Environment.SSAOQuality getSsaoQuality() const
	{
		_GODOT_get_ssao_quality.bind("Environment", "get_ssao_quality");
		return ptrcall!(Environment.SSAOQuality)(_GODOT_get_ssao_quality, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ssao_edge_sharpness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ssao_edge_sharpness") = _GODOT_set_ssao_edge_sharpness;
	/**
	
	*/
	void setSsaoEdgeSharpness(in double edge_sharpness)
	{
		_GODOT_set_ssao_edge_sharpness.bind("Environment", "set_ssao_edge_sharpness");
		ptrcall!(void)(_GODOT_set_ssao_edge_sharpness, _godot_object, edge_sharpness);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ssao_edge_sharpness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ssao_edge_sharpness") = _GODOT_get_ssao_edge_sharpness;
	/**
	
	*/
	double getSsaoEdgeSharpness() const
	{
		_GODOT_get_ssao_edge_sharpness.bind("Environment", "get_ssao_edge_sharpness");
		return ptrcall!(double)(_GODOT_get_ssao_edge_sharpness, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_dof_blur_far_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_far_enabled") = _GODOT_set_dof_blur_far_enabled;
	/**
	
	*/
	void setDofBlurFarEnabled(in bool enabled)
	{
		_GODOT_set_dof_blur_far_enabled.bind("Environment", "set_dof_blur_far_enabled");
		ptrcall!(void)(_GODOT_set_dof_blur_far_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_dof_blur_far_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_dof_blur_far_enabled") = _GODOT_is_dof_blur_far_enabled;
	/**
	
	*/
	bool isDofBlurFarEnabled() const
	{
		_GODOT_is_dof_blur_far_enabled.bind("Environment", "is_dof_blur_far_enabled");
		return ptrcall!(bool)(_GODOT_is_dof_blur_far_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_dof_blur_far_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_far_distance") = _GODOT_set_dof_blur_far_distance;
	/**
	
	*/
	void setDofBlurFarDistance(in double intensity)
	{
		_GODOT_set_dof_blur_far_distance.bind("Environment", "set_dof_blur_far_distance");
		ptrcall!(void)(_GODOT_set_dof_blur_far_distance, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_dof_blur_far_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_far_distance") = _GODOT_get_dof_blur_far_distance;
	/**
	
	*/
	double getDofBlurFarDistance() const
	{
		_GODOT_get_dof_blur_far_distance.bind("Environment", "get_dof_blur_far_distance");
		return ptrcall!(double)(_GODOT_get_dof_blur_far_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_dof_blur_far_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_far_transition") = _GODOT_set_dof_blur_far_transition;
	/**
	
	*/
	void setDofBlurFarTransition(in double intensity)
	{
		_GODOT_set_dof_blur_far_transition.bind("Environment", "set_dof_blur_far_transition");
		ptrcall!(void)(_GODOT_set_dof_blur_far_transition, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_dof_blur_far_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_far_transition") = _GODOT_get_dof_blur_far_transition;
	/**
	
	*/
	double getDofBlurFarTransition() const
	{
		_GODOT_get_dof_blur_far_transition.bind("Environment", "get_dof_blur_far_transition");
		return ptrcall!(double)(_GODOT_get_dof_blur_far_transition, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_dof_blur_far_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_far_amount") = _GODOT_set_dof_blur_far_amount;
	/**
	
	*/
	void setDofBlurFarAmount(in double intensity)
	{
		_GODOT_set_dof_blur_far_amount.bind("Environment", "set_dof_blur_far_amount");
		ptrcall!(void)(_GODOT_set_dof_blur_far_amount, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_dof_blur_far_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_far_amount") = _GODOT_get_dof_blur_far_amount;
	/**
	
	*/
	double getDofBlurFarAmount() const
	{
		_GODOT_get_dof_blur_far_amount.bind("Environment", "get_dof_blur_far_amount");
		return ptrcall!(double)(_GODOT_get_dof_blur_far_amount, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_dof_blur_far_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_far_quality") = _GODOT_set_dof_blur_far_quality;
	/**
	
	*/
	void setDofBlurFarQuality(in long intensity)
	{
		_GODOT_set_dof_blur_far_quality.bind("Environment", "set_dof_blur_far_quality");
		ptrcall!(void)(_GODOT_set_dof_blur_far_quality, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(Environment.DOFBlurQuality) _GODOT_get_dof_blur_far_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_far_quality") = _GODOT_get_dof_blur_far_quality;
	/**
	
	*/
	Environment.DOFBlurQuality getDofBlurFarQuality() const
	{
		_GODOT_get_dof_blur_far_quality.bind("Environment", "get_dof_blur_far_quality");
		return ptrcall!(Environment.DOFBlurQuality)(_GODOT_get_dof_blur_far_quality, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_dof_blur_near_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_near_enabled") = _GODOT_set_dof_blur_near_enabled;
	/**
	
	*/
	void setDofBlurNearEnabled(in bool enabled)
	{
		_GODOT_set_dof_blur_near_enabled.bind("Environment", "set_dof_blur_near_enabled");
		ptrcall!(void)(_GODOT_set_dof_blur_near_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_dof_blur_near_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_dof_blur_near_enabled") = _GODOT_is_dof_blur_near_enabled;
	/**
	
	*/
	bool isDofBlurNearEnabled() const
	{
		_GODOT_is_dof_blur_near_enabled.bind("Environment", "is_dof_blur_near_enabled");
		return ptrcall!(bool)(_GODOT_is_dof_blur_near_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_dof_blur_near_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_near_distance") = _GODOT_set_dof_blur_near_distance;
	/**
	
	*/
	void setDofBlurNearDistance(in double intensity)
	{
		_GODOT_set_dof_blur_near_distance.bind("Environment", "set_dof_blur_near_distance");
		ptrcall!(void)(_GODOT_set_dof_blur_near_distance, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_dof_blur_near_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_near_distance") = _GODOT_get_dof_blur_near_distance;
	/**
	
	*/
	double getDofBlurNearDistance() const
	{
		_GODOT_get_dof_blur_near_distance.bind("Environment", "get_dof_blur_near_distance");
		return ptrcall!(double)(_GODOT_get_dof_blur_near_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_dof_blur_near_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_near_transition") = _GODOT_set_dof_blur_near_transition;
	/**
	
	*/
	void setDofBlurNearTransition(in double intensity)
	{
		_GODOT_set_dof_blur_near_transition.bind("Environment", "set_dof_blur_near_transition");
		ptrcall!(void)(_GODOT_set_dof_blur_near_transition, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_dof_blur_near_transition;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_near_transition") = _GODOT_get_dof_blur_near_transition;
	/**
	
	*/
	double getDofBlurNearTransition() const
	{
		_GODOT_get_dof_blur_near_transition.bind("Environment", "get_dof_blur_near_transition");
		return ptrcall!(double)(_GODOT_get_dof_blur_near_transition, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_dof_blur_near_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_near_amount") = _GODOT_set_dof_blur_near_amount;
	/**
	
	*/
	void setDofBlurNearAmount(in double intensity)
	{
		_GODOT_set_dof_blur_near_amount.bind("Environment", "set_dof_blur_near_amount");
		ptrcall!(void)(_GODOT_set_dof_blur_near_amount, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_dof_blur_near_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_near_amount") = _GODOT_get_dof_blur_near_amount;
	/**
	
	*/
	double getDofBlurNearAmount() const
	{
		_GODOT_get_dof_blur_near_amount.bind("Environment", "get_dof_blur_near_amount");
		return ptrcall!(double)(_GODOT_get_dof_blur_near_amount, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_dof_blur_near_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dof_blur_near_quality") = _GODOT_set_dof_blur_near_quality;
	/**
	
	*/
	void setDofBlurNearQuality(in long level)
	{
		_GODOT_set_dof_blur_near_quality.bind("Environment", "set_dof_blur_near_quality");
		ptrcall!(void)(_GODOT_set_dof_blur_near_quality, _godot_object, level);
	}
	package(godot) static GodotMethod!(Environment.DOFBlurQuality) _GODOT_get_dof_blur_near_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dof_blur_near_quality") = _GODOT_get_dof_blur_near_quality;
	/**
	
	*/
	Environment.DOFBlurQuality getDofBlurNearQuality() const
	{
		_GODOT_get_dof_blur_near_quality.bind("Environment", "get_dof_blur_near_quality");
		return ptrcall!(Environment.DOFBlurQuality)(_GODOT_get_dof_blur_near_quality, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_glow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_enabled") = _GODOT_set_glow_enabled;
	/**
	
	*/
	void setGlowEnabled(in bool enabled)
	{
		_GODOT_set_glow_enabled.bind("Environment", "set_glow_enabled");
		ptrcall!(void)(_GODOT_set_glow_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_glow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_glow_enabled") = _GODOT_is_glow_enabled;
	/**
	
	*/
	bool isGlowEnabled() const
	{
		_GODOT_is_glow_enabled.bind("Environment", "is_glow_enabled");
		return ptrcall!(bool)(_GODOT_is_glow_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_glow_level;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_level") = _GODOT_set_glow_level;
	/**
	
	*/
	void setGlowLevel(in long idx, in bool enabled)
	{
		_GODOT_set_glow_level.bind("Environment", "set_glow_level");
		ptrcall!(void)(_GODOT_set_glow_level, _godot_object, idx, enabled);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_glow_level_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_glow_level_enabled") = _GODOT_is_glow_level_enabled;
	/**
	
	*/
	bool isGlowLevelEnabled(in long idx) const
	{
		_GODOT_is_glow_level_enabled.bind("Environment", "is_glow_level_enabled");
		return ptrcall!(bool)(_GODOT_is_glow_level_enabled, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_glow_intensity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_intensity") = _GODOT_set_glow_intensity;
	/**
	
	*/
	void setGlowIntensity(in double intensity)
	{
		_GODOT_set_glow_intensity.bind("Environment", "set_glow_intensity");
		ptrcall!(void)(_GODOT_set_glow_intensity, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_glow_intensity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_intensity") = _GODOT_get_glow_intensity;
	/**
	
	*/
	double getGlowIntensity() const
	{
		_GODOT_get_glow_intensity.bind("Environment", "get_glow_intensity");
		return ptrcall!(double)(_GODOT_get_glow_intensity, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_glow_strength;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_strength") = _GODOT_set_glow_strength;
	/**
	
	*/
	void setGlowStrength(in double strength)
	{
		_GODOT_set_glow_strength.bind("Environment", "set_glow_strength");
		ptrcall!(void)(_GODOT_set_glow_strength, _godot_object, strength);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_glow_strength;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_strength") = _GODOT_get_glow_strength;
	/**
	
	*/
	double getGlowStrength() const
	{
		_GODOT_get_glow_strength.bind("Environment", "get_glow_strength");
		return ptrcall!(double)(_GODOT_get_glow_strength, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_glow_bloom;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_bloom") = _GODOT_set_glow_bloom;
	/**
	
	*/
	void setGlowBloom(in double amount)
	{
		_GODOT_set_glow_bloom.bind("Environment", "set_glow_bloom");
		ptrcall!(void)(_GODOT_set_glow_bloom, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_glow_bloom;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_bloom") = _GODOT_get_glow_bloom;
	/**
	
	*/
	double getGlowBloom() const
	{
		_GODOT_get_glow_bloom.bind("Environment", "get_glow_bloom");
		return ptrcall!(double)(_GODOT_get_glow_bloom, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_glow_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_blend_mode") = _GODOT_set_glow_blend_mode;
	/**
	
	*/
	void setGlowBlendMode(in long mode)
	{
		_GODOT_set_glow_blend_mode.bind("Environment", "set_glow_blend_mode");
		ptrcall!(void)(_GODOT_set_glow_blend_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Environment.GlowBlendMode) _GODOT_get_glow_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_blend_mode") = _GODOT_get_glow_blend_mode;
	/**
	
	*/
	Environment.GlowBlendMode getGlowBlendMode() const
	{
		_GODOT_get_glow_blend_mode.bind("Environment", "get_glow_blend_mode");
		return ptrcall!(Environment.GlowBlendMode)(_GODOT_get_glow_blend_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_glow_hdr_bleed_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_hdr_bleed_threshold") = _GODOT_set_glow_hdr_bleed_threshold;
	/**
	
	*/
	void setGlowHdrBleedThreshold(in double threshold)
	{
		_GODOT_set_glow_hdr_bleed_threshold.bind("Environment", "set_glow_hdr_bleed_threshold");
		ptrcall!(void)(_GODOT_set_glow_hdr_bleed_threshold, _godot_object, threshold);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_glow_hdr_bleed_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_hdr_bleed_threshold") = _GODOT_get_glow_hdr_bleed_threshold;
	/**
	
	*/
	double getGlowHdrBleedThreshold() const
	{
		_GODOT_get_glow_hdr_bleed_threshold.bind("Environment", "get_glow_hdr_bleed_threshold");
		return ptrcall!(double)(_GODOT_get_glow_hdr_bleed_threshold, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_glow_hdr_bleed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_hdr_bleed_scale") = _GODOT_set_glow_hdr_bleed_scale;
	/**
	
	*/
	void setGlowHdrBleedScale(in double scale)
	{
		_GODOT_set_glow_hdr_bleed_scale.bind("Environment", "set_glow_hdr_bleed_scale");
		ptrcall!(void)(_GODOT_set_glow_hdr_bleed_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_glow_hdr_bleed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_glow_hdr_bleed_scale") = _GODOT_get_glow_hdr_bleed_scale;
	/**
	
	*/
	double getGlowHdrBleedScale() const
	{
		_GODOT_get_glow_hdr_bleed_scale.bind("Environment", "get_glow_hdr_bleed_scale");
		return ptrcall!(double)(_GODOT_get_glow_hdr_bleed_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_glow_bicubic_upscale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_glow_bicubic_upscale") = _GODOT_set_glow_bicubic_upscale;
	/**
	
	*/
	void setGlowBicubicUpscale(in bool enabled)
	{
		_GODOT_set_glow_bicubic_upscale.bind("Environment", "set_glow_bicubic_upscale");
		ptrcall!(void)(_GODOT_set_glow_bicubic_upscale, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_glow_bicubic_upscale_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_glow_bicubic_upscale_enabled") = _GODOT_is_glow_bicubic_upscale_enabled;
	/**
	
	*/
	bool isGlowBicubicUpscaleEnabled() const
	{
		_GODOT_is_glow_bicubic_upscale_enabled.bind("Environment", "is_glow_bicubic_upscale_enabled");
		return ptrcall!(bool)(_GODOT_is_glow_bicubic_upscale_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_adjustment_enable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_adjustment_enable") = _GODOT_set_adjustment_enable;
	/**
	
	*/
	void setAdjustmentEnable(in bool enabled)
	{
		_GODOT_set_adjustment_enable.bind("Environment", "set_adjustment_enable");
		ptrcall!(void)(_GODOT_set_adjustment_enable, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_adjustment_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_adjustment_enabled") = _GODOT_is_adjustment_enabled;
	/**
	
	*/
	bool isAdjustmentEnabled() const
	{
		_GODOT_is_adjustment_enabled.bind("Environment", "is_adjustment_enabled");
		return ptrcall!(bool)(_GODOT_is_adjustment_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_adjustment_brightness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_adjustment_brightness") = _GODOT_set_adjustment_brightness;
	/**
	
	*/
	void setAdjustmentBrightness(in double brightness)
	{
		_GODOT_set_adjustment_brightness.bind("Environment", "set_adjustment_brightness");
		ptrcall!(void)(_GODOT_set_adjustment_brightness, _godot_object, brightness);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_adjustment_brightness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_adjustment_brightness") = _GODOT_get_adjustment_brightness;
	/**
	
	*/
	double getAdjustmentBrightness() const
	{
		_GODOT_get_adjustment_brightness.bind("Environment", "get_adjustment_brightness");
		return ptrcall!(double)(_GODOT_get_adjustment_brightness, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_adjustment_contrast;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_adjustment_contrast") = _GODOT_set_adjustment_contrast;
	/**
	
	*/
	void setAdjustmentContrast(in double contrast)
	{
		_GODOT_set_adjustment_contrast.bind("Environment", "set_adjustment_contrast");
		ptrcall!(void)(_GODOT_set_adjustment_contrast, _godot_object, contrast);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_adjustment_contrast;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_adjustment_contrast") = _GODOT_get_adjustment_contrast;
	/**
	
	*/
	double getAdjustmentContrast() const
	{
		_GODOT_get_adjustment_contrast.bind("Environment", "get_adjustment_contrast");
		return ptrcall!(double)(_GODOT_get_adjustment_contrast, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_adjustment_saturation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_adjustment_saturation") = _GODOT_set_adjustment_saturation;
	/**
	
	*/
	void setAdjustmentSaturation(in double saturation)
	{
		_GODOT_set_adjustment_saturation.bind("Environment", "set_adjustment_saturation");
		ptrcall!(void)(_GODOT_set_adjustment_saturation, _godot_object, saturation);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_adjustment_saturation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_adjustment_saturation") = _GODOT_get_adjustment_saturation;
	/**
	
	*/
	double getAdjustmentSaturation() const
	{
		_GODOT_get_adjustment_saturation.bind("Environment", "get_adjustment_saturation");
		return ptrcall!(double)(_GODOT_get_adjustment_saturation, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_adjustment_color_correction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_adjustment_color_correction") = _GODOT_set_adjustment_color_correction;
	/**
	
	*/
	void setAdjustmentColorCorrection(Texture color_correction)
	{
		_GODOT_set_adjustment_color_correction.bind("Environment", "set_adjustment_color_correction");
		ptrcall!(void)(_GODOT_set_adjustment_color_correction, _godot_object, color_correction);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_adjustment_color_correction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_adjustment_color_correction") = _GODOT_get_adjustment_color_correction;
	/**
	
	*/
	Ref!Texture getAdjustmentColorCorrection() const
	{
		_GODOT_get_adjustment_color_correction.bind("Environment", "get_adjustment_color_correction");
		return ptrcall!(Texture)(_GODOT_get_adjustment_color_correction, _godot_object);
	}
	/**
	Defines the mode of background.
	*/
	@property Environment.BGMode backgroundMode()
	{
		return getBackground();
	}
	/// ditto
	@property void backgroundMode(long v)
	{
		setBackground(v);
	}
	/**
	$(D Sky) resource defined as background.
	*/
	@property Sky backgroundSky()
	{
		return getSky();
	}
	/// ditto
	@property void backgroundSky(Sky v)
	{
		setSky(v);
	}
	/**
	$(D Sky) resource's custom field of view.
	*/
	@property double backgroundSkyCustomFov()
	{
		return getSkyCustomFov();
	}
	/// ditto
	@property void backgroundSkyCustomFov(double v)
	{
		setSkyCustomFov(v);
	}
	/**
	Color displayed for clear areas of the scene (if using Custom color or Color+Sky background modes).
	*/
	@property Color backgroundColor()
	{
		return getBgColor();
	}
	/// ditto
	@property void backgroundColor(Color v)
	{
		setBgColor(v);
	}
	/**
	Power of light emitted by the background.
	*/
	@property double backgroundEnergy()
	{
		return getBgEnergy();
	}
	/// ditto
	@property void backgroundEnergy(double v)
	{
		setBgEnergy(v);
	}
	/**
	Maximum layer id (if using Layer background mode).
	*/
	@property long backgroundCanvasMaxLayer()
	{
		return getCanvasMaxLayer();
	}
	/// ditto
	@property void backgroundCanvasMaxLayer(long v)
	{
		setCanvasMaxLayer(v);
	}
	/**
	$(D Color) of the ambient light.
	*/
	@property Color ambientLightColor()
	{
		return getAmbientLightColor();
	}
	/// ditto
	@property void ambientLightColor(Color v)
	{
		setAmbientLightColor(v);
	}
	/**
	Energy of the ambient light. The higher the value, the stronger the light.
	*/
	@property double ambientLightEnergy()
	{
		return getAmbientLightEnergy();
	}
	/// ditto
	@property void ambientLightEnergy(double v)
	{
		setAmbientLightEnergy(v);
	}
	/**
	Defines the amount of light that the sky brings on the scene. A value of 0 means that the sky's light emission has no effect on the scene illumination, thus all ambient illumination is provided by the ambient light. On the contrary, a value of 1 means that all the light that affects the scene is provided by the sky, thus the ambient light parameter has no effect on the scene.
	*/
	@property double ambientLightSkyContribution()
	{
		return getAmbientLightSkyContribution();
	}
	/// ditto
	@property void ambientLightSkyContribution(double v)
	{
		setAmbientLightSkyContribution(v);
	}
	/**
	Enables the fog. Needs fog_height_enabled and/or for_depth_enabled to actually display fog.
	*/
	@property bool fogEnabled()
	{
		return isFogEnabled();
	}
	/// ditto
	@property void fogEnabled(bool v)
	{
		setFogEnabled(v);
	}
	/**
	Fog's $(D Color).
	*/
	@property Color fogColor()
	{
		return getFogColor();
	}
	/// ditto
	@property void fogColor(Color v)
	{
		setFogColor(v);
	}
	/**
	Sun $(D Color).
	*/
	@property Color fogSunColor()
	{
		return getFogSunColor();
	}
	/// ditto
	@property void fogSunColor(Color v)
	{
		setFogSunColor(v);
	}
	/**
	Amount of sun that affects the fog rendering.
	*/
	@property double fogSunAmount()
	{
		return getFogSunAmount();
	}
	/// ditto
	@property void fogSunAmount(double v)
	{
		setFogSunAmount(v);
	}
	/**
	Enables the fog depth.
	*/
	@property bool fogDepthEnabled()
	{
		return isFogDepthEnabled();
	}
	/// ditto
	@property void fogDepthEnabled(bool v)
	{
		setFogDepthEnabled(v);
	}
	/**
	Fog's depth starting distance from the camera.
	*/
	@property double fogDepthBegin()
	{
		return getFogDepthBegin();
	}
	/// ditto
	@property void fogDepthBegin(double v)
	{
		setFogDepthBegin(v);
	}
	/**
	Value defining the fog depth intensity.
	*/
	@property double fogDepthCurve()
	{
		return getFogDepthCurve();
	}
	/// ditto
	@property void fogDepthCurve(double v)
	{
		setFogDepthCurve(v);
	}
	/**
	Enables fog's light transmission. If enabled, lets reflections light to be transmitted by the fog.
	*/
	@property bool fogTransmitEnabled()
	{
		return isFogTransmitEnabled();
	}
	/// ditto
	@property void fogTransmitEnabled(bool v)
	{
		setFogTransmitEnabled(v);
	}
	/**
	Amount of light that the fog transmits.
	*/
	@property double fogTransmitCurve()
	{
		return getFogTransmitCurve();
	}
	/// ditto
	@property void fogTransmitCurve(double v)
	{
		setFogTransmitCurve(v);
	}
	/**
	Enables the fog height.
	*/
	@property bool fogHeightEnabled()
	{
		return isFogHeightEnabled();
	}
	/// ditto
	@property void fogHeightEnabled(bool v)
	{
		setFogHeightEnabled(v);
	}
	/**
	Minimum height of fog.
	*/
	@property double fogHeightMin()
	{
		return getFogHeightMin();
	}
	/// ditto
	@property void fogHeightMin(double v)
	{
		setFogHeightMin(v);
	}
	/**
	Maximum height of fog.
	*/
	@property double fogHeightMax()
	{
		return getFogHeightMax();
	}
	/// ditto
	@property void fogHeightMax(double v)
	{
		setFogHeightMax(v);
	}
	/**
	Value defining the fog height intensity.
	*/
	@property double fogHeightCurve()
	{
		return getFogHeightCurve();
	}
	/// ditto
	@property void fogHeightCurve(double v)
	{
		setFogHeightCurve(v);
	}
	/**
	Tonemapping mode.
	*/
	@property Environment.ToneMapper tonemapMode()
	{
		return getTonemapper();
	}
	/// ditto
	@property void tonemapMode(long v)
	{
		setTonemapper(v);
	}
	/**
	Default exposure for tonemap.
	*/
	@property double tonemapExposure()
	{
		return getTonemapExposure();
	}
	/// ditto
	@property void tonemapExposure(double v)
	{
		setTonemapExposure(v);
	}
	/**
	White reference value for tonemap.
	*/
	@property double tonemapWhite()
	{
		return getTonemapWhite();
	}
	/// ditto
	@property void tonemapWhite(double v)
	{
		setTonemapWhite(v);
	}
	/**
	Enables the tonemapping auto exposure mode of the scene renderer. If activated, the renderer will automatically determine the exposure setting to adapt to the illumination of the scene and the observed light.
	*/
	@property bool autoExposureEnabled()
	{
		return getTonemapAutoExposure();
	}
	/// ditto
	@property void autoExposureEnabled(bool v)
	{
		setTonemapAutoExposure(v);
	}
	/**
	Scale of the auto exposure effect. Affects the intensity of auto exposure.
	*/
	@property double autoExposureScale()
	{
		return getTonemapAutoExposureGrey();
	}
	/// ditto
	@property void autoExposureScale(double v)
	{
		setTonemapAutoExposureGrey(v);
	}
	/**
	Minimum luminance value for the auto exposure.
	*/
	@property double autoExposureMinLuma()
	{
		return getTonemapAutoExposureMin();
	}
	/// ditto
	@property void autoExposureMinLuma(double v)
	{
		setTonemapAutoExposureMin(v);
	}
	/**
	Maximum luminance value for the auto exposure.
	*/
	@property double autoExposureMaxLuma()
	{
		return getTonemapAutoExposureMax();
	}
	/// ditto
	@property void autoExposureMaxLuma(double v)
	{
		setTonemapAutoExposureMax(v);
	}
	/**
	Speed of the auto exposure effect. Affects the time needed for the camera to perform auto exposure.
	*/
	@property double autoExposureSpeed()
	{
		return getTonemapAutoExposureSpeed();
	}
	/// ditto
	@property void autoExposureSpeed(double v)
	{
		setTonemapAutoExposureSpeed(v);
	}
	/**
	
	*/
	@property bool ssReflectionsEnabled()
	{
		return isSsrEnabled();
	}
	/// ditto
	@property void ssReflectionsEnabled(bool v)
	{
		setSsrEnabled(v);
	}
	/**
	
	*/
	@property long ssReflectionsMaxSteps()
	{
		return getSsrMaxSteps();
	}
	/// ditto
	@property void ssReflectionsMaxSteps(long v)
	{
		setSsrMaxSteps(v);
	}
	/**
	
	*/
	@property double ssReflectionsFadeIn()
	{
		return getSsrFadeIn();
	}
	/// ditto
	@property void ssReflectionsFadeIn(double v)
	{
		setSsrFadeIn(v);
	}
	/**
	
	*/
	@property double ssReflectionsFadeOut()
	{
		return getSsrFadeOut();
	}
	/// ditto
	@property void ssReflectionsFadeOut(double v)
	{
		setSsrFadeOut(v);
	}
	/**
	
	*/
	@property double ssReflectionsDepthTolerance()
	{
		return getSsrDepthTolerance();
	}
	/// ditto
	@property void ssReflectionsDepthTolerance(double v)
	{
		setSsrDepthTolerance(v);
	}
	/**
	
	*/
	@property bool ssReflectionsRoughness()
	{
		return isSsrRough();
	}
	/// ditto
	@property void ssReflectionsRoughness(bool v)
	{
		setSsrRough(v);
	}
	/**
	
	*/
	@property bool ssaoEnabled()
	{
		return isSsaoEnabled();
	}
	/// ditto
	@property void ssaoEnabled(bool v)
	{
		setSsaoEnabled(v);
	}
	/**
	
	*/
	@property double ssaoRadius()
	{
		return getSsaoRadius();
	}
	/// ditto
	@property void ssaoRadius(double v)
	{
		setSsaoRadius(v);
	}
	/**
	
	*/
	@property double ssaoIntensity()
	{
		return getSsaoIntensity();
	}
	/// ditto
	@property void ssaoIntensity(double v)
	{
		setSsaoIntensity(v);
	}
	/**
	
	*/
	@property double ssaoRadius2()
	{
		return getSsaoRadius2();
	}
	/// ditto
	@property void ssaoRadius2(double v)
	{
		setSsaoRadius2(v);
	}
	/**
	
	*/
	@property double ssaoIntensity2()
	{
		return getSsaoIntensity2();
	}
	/// ditto
	@property void ssaoIntensity2(double v)
	{
		setSsaoIntensity2(v);
	}
	/**
	
	*/
	@property double ssaoBias()
	{
		return getSsaoBias();
	}
	/// ditto
	@property void ssaoBias(double v)
	{
		setSsaoBias(v);
	}
	/**
	
	*/
	@property double ssaoLightAffect()
	{
		return getSsaoDirectLightAffect();
	}
	/// ditto
	@property void ssaoLightAffect(double v)
	{
		setSsaoDirectLightAffect(v);
	}
	/**
	
	*/
	@property Color ssaoColor()
	{
		return getSsaoColor();
	}
	/// ditto
	@property void ssaoColor(Color v)
	{
		setSsaoColor(v);
	}
	/**
	
	*/
	@property Environment.SSAOQuality ssaoQuality()
	{
		return getSsaoQuality();
	}
	/// ditto
	@property void ssaoQuality(long v)
	{
		setSsaoQuality(v);
	}
	/**
	
	*/
	@property Environment.SSAOBlur ssaoBlur()
	{
		return getSsaoBlur();
	}
	/// ditto
	@property void ssaoBlur(long v)
	{
		setSsaoBlur(v);
	}
	/**
	
	*/
	@property double ssaoEdgeSharpness()
	{
		return getSsaoEdgeSharpness();
	}
	/// ditto
	@property void ssaoEdgeSharpness(double v)
	{
		setSsaoEdgeSharpness(v);
	}
	/**
	Enables the far blur effect.
	*/
	@property bool dofBlurFarEnabled()
	{
		return isDofBlurFarEnabled();
	}
	/// ditto
	@property void dofBlurFarEnabled(bool v)
	{
		setDofBlurFarEnabled(v);
	}
	/**
	Distance from the camera where the far blur effect affects the rendering.
	*/
	@property double dofBlurFarDistance()
	{
		return getDofBlurFarDistance();
	}
	/// ditto
	@property void dofBlurFarDistance(double v)
	{
		setDofBlurFarDistance(v);
	}
	/**
	Transition between no-blur area and far blur.
	*/
	@property double dofBlurFarTransition()
	{
		return getDofBlurFarTransition();
	}
	/// ditto
	@property void dofBlurFarTransition(double v)
	{
		setDofBlurFarTransition(v);
	}
	/**
	Amount of far blur.
	*/
	@property double dofBlurFarAmount()
	{
		return getDofBlurFarAmount();
	}
	/// ditto
	@property void dofBlurFarAmount(double v)
	{
		setDofBlurFarAmount(v);
	}
	/**
	Quality of the far blur quality.
	*/
	@property Environment.DOFBlurQuality dofBlurFarQuality()
	{
		return getDofBlurFarQuality();
	}
	/// ditto
	@property void dofBlurFarQuality(long v)
	{
		setDofBlurFarQuality(v);
	}
	/**
	Enables the near blur effect.
	*/
	@property bool dofBlurNearEnabled()
	{
		return isDofBlurNearEnabled();
	}
	/// ditto
	@property void dofBlurNearEnabled(bool v)
	{
		setDofBlurNearEnabled(v);
	}
	/**
	Distance from the camera where the near blur effect affects the rendering.
	*/
	@property double dofBlurNearDistance()
	{
		return getDofBlurNearDistance();
	}
	/// ditto
	@property void dofBlurNearDistance(double v)
	{
		setDofBlurNearDistance(v);
	}
	/**
	Transition between near blur and no-blur area.
	*/
	@property double dofBlurNearTransition()
	{
		return getDofBlurNearTransition();
	}
	/// ditto
	@property void dofBlurNearTransition(double v)
	{
		setDofBlurNearTransition(v);
	}
	/**
	Amount of near blur.
	*/
	@property double dofBlurNearAmount()
	{
		return getDofBlurNearAmount();
	}
	/// ditto
	@property void dofBlurNearAmount(double v)
	{
		setDofBlurNearAmount(v);
	}
	/**
	Quality of the near blur quality.
	*/
	@property Environment.DOFBlurQuality dofBlurNearQuality()
	{
		return getDofBlurNearQuality();
	}
	/// ditto
	@property void dofBlurNearQuality(long v)
	{
		setDofBlurNearQuality(v);
	}
	/**
	Enables glow rendering.
	*/
	@property bool glowEnabled()
	{
		return isGlowEnabled();
	}
	/// ditto
	@property void glowEnabled(bool v)
	{
		setGlowEnabled(v);
	}
	/**
	First level of glow (most local).
	*/
	@property bool glowLevels1()
	{
		return isGlowLevelEnabled(0);
	}
	/// ditto
	@property void glowLevels1(bool v)
	{
		setGlowLevel(0, v);
	}
	/**
	Second level of glow.
	*/
	@property bool glowLevels2()
	{
		return isGlowLevelEnabled(1);
	}
	/// ditto
	@property void glowLevels2(bool v)
	{
		setGlowLevel(1, v);
	}
	/**
	Third level of glow.
	*/
	@property bool glowLevels3()
	{
		return isGlowLevelEnabled(2);
	}
	/// ditto
	@property void glowLevels3(bool v)
	{
		setGlowLevel(2, v);
	}
	/**
	Fourth level of glow.
	*/
	@property bool glowLevels4()
	{
		return isGlowLevelEnabled(3);
	}
	/// ditto
	@property void glowLevels4(bool v)
	{
		setGlowLevel(3, v);
	}
	/**
	Fifth level of glow.
	*/
	@property bool glowLevels5()
	{
		return isGlowLevelEnabled(4);
	}
	/// ditto
	@property void glowLevels5(bool v)
	{
		setGlowLevel(4, v);
	}
	/**
	Sixth level of glow.
	*/
	@property bool glowLevels6()
	{
		return isGlowLevelEnabled(5);
	}
	/// ditto
	@property void glowLevels6(bool v)
	{
		setGlowLevel(5, v);
	}
	/**
	Seventh level of glow (most global).
	*/
	@property bool glowLevels7()
	{
		return isGlowLevelEnabled(6);
	}
	/// ditto
	@property void glowLevels7(bool v)
	{
		setGlowLevel(6, v);
	}
	/**
	Glow intensity.
	*/
	@property double glowIntensity()
	{
		return getGlowIntensity();
	}
	/// ditto
	@property void glowIntensity(double v)
	{
		setGlowIntensity(v);
	}
	/**
	Glow strength.
	*/
	@property double glowStrength()
	{
		return getGlowStrength();
	}
	/// ditto
	@property void glowStrength(double v)
	{
		setGlowStrength(v);
	}
	/**
	Bloom value (global glow).
	*/
	@property double glowBloom()
	{
		return getGlowBloom();
	}
	/// ditto
	@property void glowBloom(double v)
	{
		setGlowBloom(v);
	}
	/**
	Glow blending mode.
	*/
	@property Environment.GlowBlendMode glowBlendMode()
	{
		return getGlowBlendMode();
	}
	/// ditto
	@property void glowBlendMode(long v)
	{
		setGlowBlendMode(v);
	}
	/**
	Bleed threshold of the HDR glow.
	*/
	@property double glowHdrThreshold()
	{
		return getGlowHdrBleedThreshold();
	}
	/// ditto
	@property void glowHdrThreshold(double v)
	{
		setGlowHdrBleedThreshold(v);
	}
	/**
	Bleed scale of the HDR glow.
	*/
	@property double glowHdrScale()
	{
		return getGlowHdrBleedScale();
	}
	/// ditto
	@property void glowHdrScale(double v)
	{
		setGlowHdrBleedScale(v);
	}
	/**
	
	*/
	@property bool glowBicubicUpscale()
	{
		return isGlowBicubicUpscaleEnabled();
	}
	/// ditto
	@property void glowBicubicUpscale(bool v)
	{
		setGlowBicubicUpscale(v);
	}
	/**
	Enables the adjustment_* options provided by this resource. If false, adjustments modifications will have no effect on the rendered scene.
	*/
	@property bool adjustmentEnabled()
	{
		return isAdjustmentEnabled();
	}
	/// ditto
	@property void adjustmentEnabled(bool v)
	{
		setAdjustmentEnable(v);
	}
	/**
	Global brightness value of the rendered scene (default value is 1).
	*/
	@property double adjustmentBrightness()
	{
		return getAdjustmentBrightness();
	}
	/// ditto
	@property void adjustmentBrightness(double v)
	{
		setAdjustmentBrightness(v);
	}
	/**
	Global contrast value of the rendered scene (default value is 1).
	*/
	@property double adjustmentContrast()
	{
		return getAdjustmentContrast();
	}
	/// ditto
	@property void adjustmentContrast(double v)
	{
		setAdjustmentContrast(v);
	}
	/**
	Global color saturation value of the rendered scene (default value is 1).
	*/
	@property double adjustmentSaturation()
	{
		return getAdjustmentSaturation();
	}
	/// ditto
	@property void adjustmentSaturation(double v)
	{
		setAdjustmentSaturation(v);
	}
	/**
	Applies the provided $(D Texture) resource to affect the global color aspect of the rendered scene.
	*/
	@property Texture adjustmentColorCorrection()
	{
		return getAdjustmentColorCorrection();
	}
	/// ditto
	@property void adjustmentColorCorrection(Texture v)
	{
		setAdjustmentColorCorrection(v);
	}
}
