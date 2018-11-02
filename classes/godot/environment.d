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
import godot.reference;
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
	enum string _GODOT_internal_name = "Environment";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_background") GodotMethod!(void, long) setBackground;
		@GodotName("set_sky") GodotMethod!(void, Sky) setSky;
		@GodotName("set_sky_custom_fov") GodotMethod!(void, double) setSkyCustomFov;
		@GodotName("set_bg_color") GodotMethod!(void, Color) setBgColor;
		@GodotName("set_bg_energy") GodotMethod!(void, double) setBgEnergy;
		@GodotName("set_canvas_max_layer") GodotMethod!(void, long) setCanvasMaxLayer;
		@GodotName("set_ambient_light_color") GodotMethod!(void, Color) setAmbientLightColor;
		@GodotName("set_ambient_light_energy") GodotMethod!(void, double) setAmbientLightEnergy;
		@GodotName("set_ambient_light_sky_contribution") GodotMethod!(void, double) setAmbientLightSkyContribution;
		@GodotName("get_background") GodotMethod!(Environment.BGMode) getBackground;
		@GodotName("get_sky") GodotMethod!(Sky) getSky;
		@GodotName("get_sky_custom_fov") GodotMethod!(double) getSkyCustomFov;
		@GodotName("get_bg_color") GodotMethod!(Color) getBgColor;
		@GodotName("get_bg_energy") GodotMethod!(double) getBgEnergy;
		@GodotName("get_canvas_max_layer") GodotMethod!(long) getCanvasMaxLayer;
		@GodotName("get_ambient_light_color") GodotMethod!(Color) getAmbientLightColor;
		@GodotName("get_ambient_light_energy") GodotMethod!(double) getAmbientLightEnergy;
		@GodotName("get_ambient_light_sky_contribution") GodotMethod!(double) getAmbientLightSkyContribution;
		@GodotName("set_fog_enabled") GodotMethod!(void, bool) setFogEnabled;
		@GodotName("is_fog_enabled") GodotMethod!(bool) isFogEnabled;
		@GodotName("set_fog_color") GodotMethod!(void, Color) setFogColor;
		@GodotName("get_fog_color") GodotMethod!(Color) getFogColor;
		@GodotName("set_fog_sun_color") GodotMethod!(void, Color) setFogSunColor;
		@GodotName("get_fog_sun_color") GodotMethod!(Color) getFogSunColor;
		@GodotName("set_fog_sun_amount") GodotMethod!(void, double) setFogSunAmount;
		@GodotName("get_fog_sun_amount") GodotMethod!(double) getFogSunAmount;
		@GodotName("set_fog_depth_enabled") GodotMethod!(void, bool) setFogDepthEnabled;
		@GodotName("is_fog_depth_enabled") GodotMethod!(bool) isFogDepthEnabled;
		@GodotName("set_fog_depth_begin") GodotMethod!(void, double) setFogDepthBegin;
		@GodotName("get_fog_depth_begin") GodotMethod!(double) getFogDepthBegin;
		@GodotName("set_fog_depth_curve") GodotMethod!(void, double) setFogDepthCurve;
		@GodotName("get_fog_depth_curve") GodotMethod!(double) getFogDepthCurve;
		@GodotName("set_fog_transmit_enabled") GodotMethod!(void, bool) setFogTransmitEnabled;
		@GodotName("is_fog_transmit_enabled") GodotMethod!(bool) isFogTransmitEnabled;
		@GodotName("set_fog_transmit_curve") GodotMethod!(void, double) setFogTransmitCurve;
		@GodotName("get_fog_transmit_curve") GodotMethod!(double) getFogTransmitCurve;
		@GodotName("set_fog_height_enabled") GodotMethod!(void, bool) setFogHeightEnabled;
		@GodotName("is_fog_height_enabled") GodotMethod!(bool) isFogHeightEnabled;
		@GodotName("set_fog_height_min") GodotMethod!(void, double) setFogHeightMin;
		@GodotName("get_fog_height_min") GodotMethod!(double) getFogHeightMin;
		@GodotName("set_fog_height_max") GodotMethod!(void, double) setFogHeightMax;
		@GodotName("get_fog_height_max") GodotMethod!(double) getFogHeightMax;
		@GodotName("set_fog_height_curve") GodotMethod!(void, double) setFogHeightCurve;
		@GodotName("get_fog_height_curve") GodotMethod!(double) getFogHeightCurve;
		@GodotName("set_tonemapper") GodotMethod!(void, long) setTonemapper;
		@GodotName("get_tonemapper") GodotMethod!(Environment.ToneMapper) getTonemapper;
		@GodotName("set_tonemap_exposure") GodotMethod!(void, double) setTonemapExposure;
		@GodotName("get_tonemap_exposure") GodotMethod!(double) getTonemapExposure;
		@GodotName("set_tonemap_white") GodotMethod!(void, double) setTonemapWhite;
		@GodotName("get_tonemap_white") GodotMethod!(double) getTonemapWhite;
		@GodotName("set_tonemap_auto_exposure") GodotMethod!(void, bool) setTonemapAutoExposure;
		@GodotName("get_tonemap_auto_exposure") GodotMethod!(bool) getTonemapAutoExposure;
		@GodotName("set_tonemap_auto_exposure_max") GodotMethod!(void, double) setTonemapAutoExposureMax;
		@GodotName("get_tonemap_auto_exposure_max") GodotMethod!(double) getTonemapAutoExposureMax;
		@GodotName("set_tonemap_auto_exposure_min") GodotMethod!(void, double) setTonemapAutoExposureMin;
		@GodotName("get_tonemap_auto_exposure_min") GodotMethod!(double) getTonemapAutoExposureMin;
		@GodotName("set_tonemap_auto_exposure_speed") GodotMethod!(void, double) setTonemapAutoExposureSpeed;
		@GodotName("get_tonemap_auto_exposure_speed") GodotMethod!(double) getTonemapAutoExposureSpeed;
		@GodotName("set_tonemap_auto_exposure_grey") GodotMethod!(void, double) setTonemapAutoExposureGrey;
		@GodotName("get_tonemap_auto_exposure_grey") GodotMethod!(double) getTonemapAutoExposureGrey;
		@GodotName("set_ssr_enabled") GodotMethod!(void, bool) setSsrEnabled;
		@GodotName("is_ssr_enabled") GodotMethod!(bool) isSsrEnabled;
		@GodotName("set_ssr_max_steps") GodotMethod!(void, long) setSsrMaxSteps;
		@GodotName("get_ssr_max_steps") GodotMethod!(long) getSsrMaxSteps;
		@GodotName("set_ssr_fade_in") GodotMethod!(void, double) setSsrFadeIn;
		@GodotName("get_ssr_fade_in") GodotMethod!(double) getSsrFadeIn;
		@GodotName("set_ssr_fade_out") GodotMethod!(void, double) setSsrFadeOut;
		@GodotName("get_ssr_fade_out") GodotMethod!(double) getSsrFadeOut;
		@GodotName("set_ssr_depth_tolerance") GodotMethod!(void, double) setSsrDepthTolerance;
		@GodotName("get_ssr_depth_tolerance") GodotMethod!(double) getSsrDepthTolerance;
		@GodotName("set_ssr_rough") GodotMethod!(void, bool) setSsrRough;
		@GodotName("is_ssr_rough") GodotMethod!(bool) isSsrRough;
		@GodotName("set_ssao_enabled") GodotMethod!(void, bool) setSsaoEnabled;
		@GodotName("is_ssao_enabled") GodotMethod!(bool) isSsaoEnabled;
		@GodotName("set_ssao_radius") GodotMethod!(void, double) setSsaoRadius;
		@GodotName("get_ssao_radius") GodotMethod!(double) getSsaoRadius;
		@GodotName("set_ssao_intensity") GodotMethod!(void, double) setSsaoIntensity;
		@GodotName("get_ssao_intensity") GodotMethod!(double) getSsaoIntensity;
		@GodotName("set_ssao_radius2") GodotMethod!(void, double) setSsaoRadius2;
		@GodotName("get_ssao_radius2") GodotMethod!(double) getSsaoRadius2;
		@GodotName("set_ssao_intensity2") GodotMethod!(void, double) setSsaoIntensity2;
		@GodotName("get_ssao_intensity2") GodotMethod!(double) getSsaoIntensity2;
		@GodotName("set_ssao_bias") GodotMethod!(void, double) setSsaoBias;
		@GodotName("get_ssao_bias") GodotMethod!(double) getSsaoBias;
		@GodotName("set_ssao_direct_light_affect") GodotMethod!(void, double) setSsaoDirectLightAffect;
		@GodotName("get_ssao_direct_light_affect") GodotMethod!(double) getSsaoDirectLightAffect;
		@GodotName("set_ssao_ao_channel_affect") GodotMethod!(void, double) setSsaoAoChannelAffect;
		@GodotName("get_ssao_ao_channel_affect") GodotMethod!(double) getSsaoAoChannelAffect;
		@GodotName("set_ssao_color") GodotMethod!(void, Color) setSsaoColor;
		@GodotName("get_ssao_color") GodotMethod!(Color) getSsaoColor;
		@GodotName("set_ssao_blur") GodotMethod!(void, long) setSsaoBlur;
		@GodotName("get_ssao_blur") GodotMethod!(Environment.SSAOBlur) getSsaoBlur;
		@GodotName("set_ssao_quality") GodotMethod!(void, long) setSsaoQuality;
		@GodotName("get_ssao_quality") GodotMethod!(Environment.SSAOQuality) getSsaoQuality;
		@GodotName("set_ssao_edge_sharpness") GodotMethod!(void, double) setSsaoEdgeSharpness;
		@GodotName("get_ssao_edge_sharpness") GodotMethod!(double) getSsaoEdgeSharpness;
		@GodotName("set_dof_blur_far_enabled") GodotMethod!(void, bool) setDofBlurFarEnabled;
		@GodotName("is_dof_blur_far_enabled") GodotMethod!(bool) isDofBlurFarEnabled;
		@GodotName("set_dof_blur_far_distance") GodotMethod!(void, double) setDofBlurFarDistance;
		@GodotName("get_dof_blur_far_distance") GodotMethod!(double) getDofBlurFarDistance;
		@GodotName("set_dof_blur_far_transition") GodotMethod!(void, double) setDofBlurFarTransition;
		@GodotName("get_dof_blur_far_transition") GodotMethod!(double) getDofBlurFarTransition;
		@GodotName("set_dof_blur_far_amount") GodotMethod!(void, double) setDofBlurFarAmount;
		@GodotName("get_dof_blur_far_amount") GodotMethod!(double) getDofBlurFarAmount;
		@GodotName("set_dof_blur_far_quality") GodotMethod!(void, long) setDofBlurFarQuality;
		@GodotName("get_dof_blur_far_quality") GodotMethod!(Environment.DOFBlurQuality) getDofBlurFarQuality;
		@GodotName("set_dof_blur_near_enabled") GodotMethod!(void, bool) setDofBlurNearEnabled;
		@GodotName("is_dof_blur_near_enabled") GodotMethod!(bool) isDofBlurNearEnabled;
		@GodotName("set_dof_blur_near_distance") GodotMethod!(void, double) setDofBlurNearDistance;
		@GodotName("get_dof_blur_near_distance") GodotMethod!(double) getDofBlurNearDistance;
		@GodotName("set_dof_blur_near_transition") GodotMethod!(void, double) setDofBlurNearTransition;
		@GodotName("get_dof_blur_near_transition") GodotMethod!(double) getDofBlurNearTransition;
		@GodotName("set_dof_blur_near_amount") GodotMethod!(void, double) setDofBlurNearAmount;
		@GodotName("get_dof_blur_near_amount") GodotMethod!(double) getDofBlurNearAmount;
		@GodotName("set_dof_blur_near_quality") GodotMethod!(void, long) setDofBlurNearQuality;
		@GodotName("get_dof_blur_near_quality") GodotMethod!(Environment.DOFBlurQuality) getDofBlurNearQuality;
		@GodotName("set_glow_enabled") GodotMethod!(void, bool) setGlowEnabled;
		@GodotName("is_glow_enabled") GodotMethod!(bool) isGlowEnabled;
		@GodotName("set_glow_level") GodotMethod!(void, long, bool) setGlowLevel;
		@GodotName("is_glow_level_enabled") GodotMethod!(bool, long) isGlowLevelEnabled;
		@GodotName("set_glow_intensity") GodotMethod!(void, double) setGlowIntensity;
		@GodotName("get_glow_intensity") GodotMethod!(double) getGlowIntensity;
		@GodotName("set_glow_strength") GodotMethod!(void, double) setGlowStrength;
		@GodotName("get_glow_strength") GodotMethod!(double) getGlowStrength;
		@GodotName("set_glow_bloom") GodotMethod!(void, double) setGlowBloom;
		@GodotName("get_glow_bloom") GodotMethod!(double) getGlowBloom;
		@GodotName("set_glow_blend_mode") GodotMethod!(void, long) setGlowBlendMode;
		@GodotName("get_glow_blend_mode") GodotMethod!(Environment.GlowBlendMode) getGlowBlendMode;
		@GodotName("set_glow_hdr_bleed_threshold") GodotMethod!(void, double) setGlowHdrBleedThreshold;
		@GodotName("get_glow_hdr_bleed_threshold") GodotMethod!(double) getGlowHdrBleedThreshold;
		@GodotName("set_glow_hdr_bleed_scale") GodotMethod!(void, double) setGlowHdrBleedScale;
		@GodotName("get_glow_hdr_bleed_scale") GodotMethod!(double) getGlowHdrBleedScale;
		@GodotName("set_glow_bicubic_upscale") GodotMethod!(void, bool) setGlowBicubicUpscale;
		@GodotName("is_glow_bicubic_upscale_enabled") GodotMethod!(bool) isGlowBicubicUpscaleEnabled;
		@GodotName("set_adjustment_enable") GodotMethod!(void, bool) setAdjustmentEnable;
		@GodotName("is_adjustment_enabled") GodotMethod!(bool) isAdjustmentEnabled;
		@GodotName("set_adjustment_brightness") GodotMethod!(void, double) setAdjustmentBrightness;
		@GodotName("get_adjustment_brightness") GodotMethod!(double) getAdjustmentBrightness;
		@GodotName("set_adjustment_contrast") GodotMethod!(void, double) setAdjustmentContrast;
		@GodotName("get_adjustment_contrast") GodotMethod!(double) getAdjustmentContrast;
		@GodotName("set_adjustment_saturation") GodotMethod!(void, double) setAdjustmentSaturation;
		@GodotName("get_adjustment_saturation") GodotMethod!(double) getAdjustmentSaturation;
		@GodotName("set_adjustment_color_correction") GodotMethod!(void, Texture) setAdjustmentColorCorrection;
		@GodotName("get_adjustment_color_correction") GodotMethod!(Texture) getAdjustmentColorCorrection;
	}
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
		ssaoBlurDisabled = 0,
		dofBlurQualityLow = 0,
		ssaoQualityLow = 0,
		bgClearColor = 0,
		glowBlendModeAdditive = 0,
		toneMapperLinear = 0,
		dofBlurQualityMedium = 1,
		glowBlendModeScreen = 1,
		ssaoQualityMedium = 1,
		bgColor = 1,
		ssaoBlur1x1 = 1,
		toneMapperReinhardt = 1,
		glowBlendModeSoftlight = 2,
		ssaoBlur2x2 = 2,
		bgSky = 2,
		ssaoQualityHigh = 2,
		toneMapperFilmic = 2,
		dofBlurQualityHigh = 2,
		glowBlendModeReplace = 3,
		bgColorSky = 3,
		toneMapperAces = 3,
		ssaoBlur3x3 = 3,
		bgCanvas = 4,
		bgKeep = 5,
		bgMax = 6,
	}
	/**
	
	*/
	void setBackground(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBackground, _godot_object, mode);
	}
	/**
	
	*/
	void setSky(Sky sky)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSky, _godot_object, sky);
	}
	/**
	
	*/
	void setSkyCustomFov(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSkyCustomFov, _godot_object, scale);
	}
	/**
	
	*/
	void setBgColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBgColor, _godot_object, color);
	}
	/**
	
	*/
	void setBgEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBgEnergy, _godot_object, energy);
	}
	/**
	
	*/
	void setCanvasMaxLayer(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCanvasMaxLayer, _godot_object, layer);
	}
	/**
	
	*/
	void setAmbientLightColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAmbientLightColor, _godot_object, color);
	}
	/**
	
	*/
	void setAmbientLightEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAmbientLightEnergy, _godot_object, energy);
	}
	/**
	
	*/
	void setAmbientLightSkyContribution(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAmbientLightSkyContribution, _godot_object, energy);
	}
	/**
	
	*/
	Environment.BGMode getBackground() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment.BGMode)(_classBinding.getBackground, _godot_object);
	}
	/**
	
	*/
	Ref!Sky getSky() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Sky)(_classBinding.getSky, _godot_object);
	}
	/**
	
	*/
	double getSkyCustomFov() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSkyCustomFov, _godot_object);
	}
	/**
	
	*/
	Color getBgColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getBgColor, _godot_object);
	}
	/**
	
	*/
	double getBgEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBgEnergy, _godot_object);
	}
	/**
	
	*/
	long getCanvasMaxLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCanvasMaxLayer, _godot_object);
	}
	/**
	
	*/
	Color getAmbientLightColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getAmbientLightColor, _godot_object);
	}
	/**
	
	*/
	double getAmbientLightEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAmbientLightEnergy, _godot_object);
	}
	/**
	
	*/
	double getAmbientLightSkyContribution() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAmbientLightSkyContribution, _godot_object);
	}
	/**
	
	*/
	void setFogEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isFogEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFogEnabled, _godot_object);
	}
	/**
	
	*/
	void setFogColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogColor, _godot_object, color);
	}
	/**
	
	*/
	Color getFogColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getFogColor, _godot_object);
	}
	/**
	
	*/
	void setFogSunColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogSunColor, _godot_object, color);
	}
	/**
	
	*/
	Color getFogSunColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getFogSunColor, _godot_object);
	}
	/**
	
	*/
	void setFogSunAmount(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogSunAmount, _godot_object, amount);
	}
	/**
	
	*/
	double getFogSunAmount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFogSunAmount, _godot_object);
	}
	/**
	
	*/
	void setFogDepthEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogDepthEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isFogDepthEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFogDepthEnabled, _godot_object);
	}
	/**
	
	*/
	void setFogDepthBegin(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogDepthBegin, _godot_object, distance);
	}
	/**
	
	*/
	double getFogDepthBegin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFogDepthBegin, _godot_object);
	}
	/**
	
	*/
	void setFogDepthCurve(in double curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogDepthCurve, _godot_object, curve);
	}
	/**
	
	*/
	double getFogDepthCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFogDepthCurve, _godot_object);
	}
	/**
	
	*/
	void setFogTransmitEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogTransmitEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isFogTransmitEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFogTransmitEnabled, _godot_object);
	}
	/**
	
	*/
	void setFogTransmitCurve(in double curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogTransmitCurve, _godot_object, curve);
	}
	/**
	
	*/
	double getFogTransmitCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFogTransmitCurve, _godot_object);
	}
	/**
	
	*/
	void setFogHeightEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogHeightEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isFogHeightEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFogHeightEnabled, _godot_object);
	}
	/**
	
	*/
	void setFogHeightMin(in double height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogHeightMin, _godot_object, height);
	}
	/**
	
	*/
	double getFogHeightMin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFogHeightMin, _godot_object);
	}
	/**
	
	*/
	void setFogHeightMax(in double height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogHeightMax, _godot_object, height);
	}
	/**
	
	*/
	double getFogHeightMax() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFogHeightMax, _godot_object);
	}
	/**
	
	*/
	void setFogHeightCurve(in double curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFogHeightCurve, _godot_object, curve);
	}
	/**
	
	*/
	double getFogHeightCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFogHeightCurve, _godot_object);
	}
	/**
	
	*/
	void setTonemapper(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTonemapper, _godot_object, mode);
	}
	/**
	
	*/
	Environment.ToneMapper getTonemapper() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment.ToneMapper)(_classBinding.getTonemapper, _godot_object);
	}
	/**
	
	*/
	void setTonemapExposure(in double exposure)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTonemapExposure, _godot_object, exposure);
	}
	/**
	
	*/
	double getTonemapExposure() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTonemapExposure, _godot_object);
	}
	/**
	
	*/
	void setTonemapWhite(in double white)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTonemapWhite, _godot_object, white);
	}
	/**
	
	*/
	double getTonemapWhite() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTonemapWhite, _godot_object);
	}
	/**
	
	*/
	void setTonemapAutoExposure(in bool auto_exposure)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTonemapAutoExposure, _godot_object, auto_exposure);
	}
	/**
	
	*/
	bool getTonemapAutoExposure() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getTonemapAutoExposure, _godot_object);
	}
	/**
	
	*/
	void setTonemapAutoExposureMax(in double exposure_max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTonemapAutoExposureMax, _godot_object, exposure_max);
	}
	/**
	
	*/
	double getTonemapAutoExposureMax() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTonemapAutoExposureMax, _godot_object);
	}
	/**
	
	*/
	void setTonemapAutoExposureMin(in double exposure_min)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTonemapAutoExposureMin, _godot_object, exposure_min);
	}
	/**
	
	*/
	double getTonemapAutoExposureMin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTonemapAutoExposureMin, _godot_object);
	}
	/**
	
	*/
	void setTonemapAutoExposureSpeed(in double exposure_speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTonemapAutoExposureSpeed, _godot_object, exposure_speed);
	}
	/**
	
	*/
	double getTonemapAutoExposureSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTonemapAutoExposureSpeed, _godot_object);
	}
	/**
	
	*/
	void setTonemapAutoExposureGrey(in double exposure_grey)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTonemapAutoExposureGrey, _godot_object, exposure_grey);
	}
	/**
	
	*/
	double getTonemapAutoExposureGrey() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTonemapAutoExposureGrey, _godot_object);
	}
	/**
	
	*/
	void setSsrEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsrEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isSsrEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSsrEnabled, _godot_object);
	}
	/**
	
	*/
	void setSsrMaxSteps(in long max_steps)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsrMaxSteps, _godot_object, max_steps);
	}
	/**
	
	*/
	long getSsrMaxSteps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSsrMaxSteps, _godot_object);
	}
	/**
	
	*/
	void setSsrFadeIn(in double fade_in)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsrFadeIn, _godot_object, fade_in);
	}
	/**
	
	*/
	double getSsrFadeIn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSsrFadeIn, _godot_object);
	}
	/**
	
	*/
	void setSsrFadeOut(in double fade_out)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsrFadeOut, _godot_object, fade_out);
	}
	/**
	
	*/
	double getSsrFadeOut() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSsrFadeOut, _godot_object);
	}
	/**
	
	*/
	void setSsrDepthTolerance(in double depth_tolerance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsrDepthTolerance, _godot_object, depth_tolerance);
	}
	/**
	
	*/
	double getSsrDepthTolerance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSsrDepthTolerance, _godot_object);
	}
	/**
	
	*/
	void setSsrRough(in bool rough)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsrRough, _godot_object, rough);
	}
	/**
	
	*/
	bool isSsrRough() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSsrRough, _godot_object);
	}
	/**
	
	*/
	void setSsaoEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isSsaoEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSsaoEnabled, _godot_object);
	}
	/**
	
	*/
	void setSsaoRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoRadius, _godot_object, radius);
	}
	/**
	
	*/
	double getSsaoRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSsaoRadius, _godot_object);
	}
	/**
	
	*/
	void setSsaoIntensity(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoIntensity, _godot_object, intensity);
	}
	/**
	
	*/
	double getSsaoIntensity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSsaoIntensity, _godot_object);
	}
	/**
	
	*/
	void setSsaoRadius2(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoRadius2, _godot_object, radius);
	}
	/**
	
	*/
	double getSsaoRadius2() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSsaoRadius2, _godot_object);
	}
	/**
	
	*/
	void setSsaoIntensity2(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoIntensity2, _godot_object, intensity);
	}
	/**
	
	*/
	double getSsaoIntensity2() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSsaoIntensity2, _godot_object);
	}
	/**
	
	*/
	void setSsaoBias(in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoBias, _godot_object, bias);
	}
	/**
	
	*/
	double getSsaoBias() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSsaoBias, _godot_object);
	}
	/**
	
	*/
	void setSsaoDirectLightAffect(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoDirectLightAffect, _godot_object, amount);
	}
	/**
	
	*/
	double getSsaoDirectLightAffect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSsaoDirectLightAffect, _godot_object);
	}
	/**
	
	*/
	void setSsaoAoChannelAffect(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoAoChannelAffect, _godot_object, amount);
	}
	/**
	
	*/
	double getSsaoAoChannelAffect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSsaoAoChannelAffect, _godot_object);
	}
	/**
	
	*/
	void setSsaoColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoColor, _godot_object, color);
	}
	/**
	
	*/
	Color getSsaoColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getSsaoColor, _godot_object);
	}
	/**
	
	*/
	void setSsaoBlur(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoBlur, _godot_object, mode);
	}
	/**
	
	*/
	Environment.SSAOBlur getSsaoBlur() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment.SSAOBlur)(_classBinding.getSsaoBlur, _godot_object);
	}
	/**
	
	*/
	void setSsaoQuality(in long quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoQuality, _godot_object, quality);
	}
	/**
	
	*/
	Environment.SSAOQuality getSsaoQuality() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment.SSAOQuality)(_classBinding.getSsaoQuality, _godot_object);
	}
	/**
	
	*/
	void setSsaoEdgeSharpness(in double edge_sharpness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSsaoEdgeSharpness, _godot_object, edge_sharpness);
	}
	/**
	
	*/
	double getSsaoEdgeSharpness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSsaoEdgeSharpness, _godot_object);
	}
	/**
	
	*/
	void setDofBlurFarEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDofBlurFarEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isDofBlurFarEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDofBlurFarEnabled, _godot_object);
	}
	/**
	
	*/
	void setDofBlurFarDistance(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDofBlurFarDistance, _godot_object, intensity);
	}
	/**
	
	*/
	double getDofBlurFarDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDofBlurFarDistance, _godot_object);
	}
	/**
	
	*/
	void setDofBlurFarTransition(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDofBlurFarTransition, _godot_object, intensity);
	}
	/**
	
	*/
	double getDofBlurFarTransition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDofBlurFarTransition, _godot_object);
	}
	/**
	
	*/
	void setDofBlurFarAmount(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDofBlurFarAmount, _godot_object, intensity);
	}
	/**
	
	*/
	double getDofBlurFarAmount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDofBlurFarAmount, _godot_object);
	}
	/**
	
	*/
	void setDofBlurFarQuality(in long intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDofBlurFarQuality, _godot_object, intensity);
	}
	/**
	
	*/
	Environment.DOFBlurQuality getDofBlurFarQuality() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment.DOFBlurQuality)(_classBinding.getDofBlurFarQuality, _godot_object);
	}
	/**
	
	*/
	void setDofBlurNearEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDofBlurNearEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isDofBlurNearEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDofBlurNearEnabled, _godot_object);
	}
	/**
	
	*/
	void setDofBlurNearDistance(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDofBlurNearDistance, _godot_object, intensity);
	}
	/**
	
	*/
	double getDofBlurNearDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDofBlurNearDistance, _godot_object);
	}
	/**
	
	*/
	void setDofBlurNearTransition(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDofBlurNearTransition, _godot_object, intensity);
	}
	/**
	
	*/
	double getDofBlurNearTransition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDofBlurNearTransition, _godot_object);
	}
	/**
	
	*/
	void setDofBlurNearAmount(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDofBlurNearAmount, _godot_object, intensity);
	}
	/**
	
	*/
	double getDofBlurNearAmount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDofBlurNearAmount, _godot_object);
	}
	/**
	
	*/
	void setDofBlurNearQuality(in long level)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDofBlurNearQuality, _godot_object, level);
	}
	/**
	
	*/
	Environment.DOFBlurQuality getDofBlurNearQuality() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment.DOFBlurQuality)(_classBinding.getDofBlurNearQuality, _godot_object);
	}
	/**
	
	*/
	void setGlowEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlowEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isGlowEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isGlowEnabled, _godot_object);
	}
	/**
	
	*/
	void setGlowLevel(in long idx, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlowLevel, _godot_object, idx, enabled);
	}
	/**
	
	*/
	bool isGlowLevelEnabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isGlowLevelEnabled, _godot_object, idx);
	}
	/**
	
	*/
	void setGlowIntensity(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlowIntensity, _godot_object, intensity);
	}
	/**
	
	*/
	double getGlowIntensity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGlowIntensity, _godot_object);
	}
	/**
	
	*/
	void setGlowStrength(in double strength)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlowStrength, _godot_object, strength);
	}
	/**
	
	*/
	double getGlowStrength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGlowStrength, _godot_object);
	}
	/**
	
	*/
	void setGlowBloom(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlowBloom, _godot_object, amount);
	}
	/**
	
	*/
	double getGlowBloom() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGlowBloom, _godot_object);
	}
	/**
	
	*/
	void setGlowBlendMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlowBlendMode, _godot_object, mode);
	}
	/**
	
	*/
	Environment.GlowBlendMode getGlowBlendMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment.GlowBlendMode)(_classBinding.getGlowBlendMode, _godot_object);
	}
	/**
	
	*/
	void setGlowHdrBleedThreshold(in double threshold)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlowHdrBleedThreshold, _godot_object, threshold);
	}
	/**
	
	*/
	double getGlowHdrBleedThreshold() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGlowHdrBleedThreshold, _godot_object);
	}
	/**
	
	*/
	void setGlowHdrBleedScale(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlowHdrBleedScale, _godot_object, scale);
	}
	/**
	
	*/
	double getGlowHdrBleedScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGlowHdrBleedScale, _godot_object);
	}
	/**
	
	*/
	void setGlowBicubicUpscale(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlowBicubicUpscale, _godot_object, enabled);
	}
	/**
	
	*/
	bool isGlowBicubicUpscaleEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isGlowBicubicUpscaleEnabled, _godot_object);
	}
	/**
	
	*/
	void setAdjustmentEnable(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAdjustmentEnable, _godot_object, enabled);
	}
	/**
	
	*/
	bool isAdjustmentEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAdjustmentEnabled, _godot_object);
	}
	/**
	
	*/
	void setAdjustmentBrightness(in double brightness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAdjustmentBrightness, _godot_object, brightness);
	}
	/**
	
	*/
	double getAdjustmentBrightness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAdjustmentBrightness, _godot_object);
	}
	/**
	
	*/
	void setAdjustmentContrast(in double contrast)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAdjustmentContrast, _godot_object, contrast);
	}
	/**
	
	*/
	double getAdjustmentContrast() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAdjustmentContrast, _godot_object);
	}
	/**
	
	*/
	void setAdjustmentSaturation(in double saturation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAdjustmentSaturation, _godot_object, saturation);
	}
	/**
	
	*/
	double getAdjustmentSaturation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAdjustmentSaturation, _godot_object);
	}
	/**
	
	*/
	void setAdjustmentColorCorrection(Texture color_correction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAdjustmentColorCorrection, _godot_object, color_correction);
	}
	/**
	
	*/
	Ref!Texture getAdjustmentColorCorrection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getAdjustmentColorCorrection, _godot_object);
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
	@property double ssaoAoChannelAffect()
	{
		return getSsaoAoChannelAffect();
	}
	/// ditto
	@property void ssaoAoChannelAffect(double v)
	{
		setSsaoAoChannelAffect(v);
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
