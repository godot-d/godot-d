/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spatialmaterial;
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
import godot.material;
import godot.resource;
import godot.reference;
import godot.texture;
/**

*/
@GodotBaseClass struct SpatialMaterial
{
	package(godot) enum string _GODOT_internal_name = "SpatialMaterial";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Material _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_albedo") GodotMethod!(Color) getAlbedo;
		@GodotName("get_alpha_scissor_threshold") GodotMethod!(double) getAlphaScissorThreshold;
		@GodotName("get_anisotropy") GodotMethod!(double) getAnisotropy;
		@GodotName("get_ao_light_affect") GodotMethod!(double) getAoLightAffect;
		@GodotName("get_ao_texture_channel") GodotMethod!(SpatialMaterial.TextureChannel) getAoTextureChannel;
		@GodotName("get_async_mode") GodotMethod!(SpatialMaterial.AsyncMode) getAsyncMode;
		@GodotName("get_billboard_mode") GodotMethod!(SpatialMaterial.BillboardMode) getBillboardMode;
		@GodotName("get_blend_mode") GodotMethod!(SpatialMaterial.BlendMode) getBlendMode;
		@GodotName("get_clearcoat") GodotMethod!(double) getClearcoat;
		@GodotName("get_clearcoat_gloss") GodotMethod!(double) getClearcoatGloss;
		@GodotName("get_cull_mode") GodotMethod!(SpatialMaterial.CullMode) getCullMode;
		@GodotName("get_depth_deep_parallax_flip_binormal") GodotMethod!(bool) getDepthDeepParallaxFlipBinormal;
		@GodotName("get_depth_deep_parallax_flip_tangent") GodotMethod!(bool) getDepthDeepParallaxFlipTangent;
		@GodotName("get_depth_deep_parallax_max_layers") GodotMethod!(long) getDepthDeepParallaxMaxLayers;
		@GodotName("get_depth_deep_parallax_min_layers") GodotMethod!(long) getDepthDeepParallaxMinLayers;
		@GodotName("get_depth_draw_mode") GodotMethod!(SpatialMaterial.DepthDrawMode) getDepthDrawMode;
		@GodotName("get_depth_scale") GodotMethod!(double) getDepthScale;
		@GodotName("get_detail_blend_mode") GodotMethod!(SpatialMaterial.BlendMode) getDetailBlendMode;
		@GodotName("get_detail_uv") GodotMethod!(SpatialMaterial.DetailUV) getDetailUv;
		@GodotName("get_diffuse_mode") GodotMethod!(SpatialMaterial.DiffuseMode) getDiffuseMode;
		@GodotName("get_distance_fade") GodotMethod!(SpatialMaterial.DistanceFadeMode) getDistanceFade;
		@GodotName("get_distance_fade_max_distance") GodotMethod!(double) getDistanceFadeMaxDistance;
		@GodotName("get_distance_fade_min_distance") GodotMethod!(double) getDistanceFadeMinDistance;
		@GodotName("get_emission") GodotMethod!(Color) getEmission;
		@GodotName("get_emission_energy") GodotMethod!(double) getEmissionEnergy;
		@GodotName("get_emission_operator") GodotMethod!(SpatialMaterial.EmissionOperator) getEmissionOperator;
		@GodotName("get_feature") GodotMethod!(bool, long) getFeature;
		@GodotName("get_flag") GodotMethod!(bool, long) getFlag;
		@GodotName("get_grow") GodotMethod!(double) getGrow;
		@GodotName("get_line_width") GodotMethod!(double) getLineWidth;
		@GodotName("get_metallic") GodotMethod!(double) getMetallic;
		@GodotName("get_metallic_texture_channel") GodotMethod!(SpatialMaterial.TextureChannel) getMetallicTextureChannel;
		@GodotName("get_normal_scale") GodotMethod!(double) getNormalScale;
		@GodotName("get_particles_anim_h_frames") GodotMethod!(long) getParticlesAnimHFrames;
		@GodotName("get_particles_anim_loop") GodotMethod!(bool) getParticlesAnimLoop;
		@GodotName("get_particles_anim_v_frames") GodotMethod!(long) getParticlesAnimVFrames;
		@GodotName("get_point_size") GodotMethod!(double) getPointSize;
		@GodotName("get_proximity_fade_distance") GodotMethod!(double) getProximityFadeDistance;
		@GodotName("get_refraction") GodotMethod!(double) getRefraction;
		@GodotName("get_refraction_texture_channel") GodotMethod!(SpatialMaterial.TextureChannel) getRefractionTextureChannel;
		@GodotName("get_rim") GodotMethod!(double) getRim;
		@GodotName("get_rim_tint") GodotMethod!(double) getRimTint;
		@GodotName("get_roughness") GodotMethod!(double) getRoughness;
		@GodotName("get_roughness_texture_channel") GodotMethod!(SpatialMaterial.TextureChannel) getRoughnessTextureChannel;
		@GodotName("get_specular") GodotMethod!(double) getSpecular;
		@GodotName("get_specular_mode") GodotMethod!(SpatialMaterial.SpecularMode) getSpecularMode;
		@GodotName("get_subsurface_scattering_strength") GodotMethod!(double) getSubsurfaceScatteringStrength;
		@GodotName("get_texture") GodotMethod!(Texture, long) getTexture;
		@GodotName("get_transmission") GodotMethod!(Color) getTransmission;
		@GodotName("get_uv1_offset") GodotMethod!(Vector3) getUv1Offset;
		@GodotName("get_uv1_scale") GodotMethod!(Vector3) getUv1Scale;
		@GodotName("get_uv1_triplanar_blend_sharpness") GodotMethod!(double) getUv1TriplanarBlendSharpness;
		@GodotName("get_uv2_offset") GodotMethod!(Vector3) getUv2Offset;
		@GodotName("get_uv2_scale") GodotMethod!(Vector3) getUv2Scale;
		@GodotName("get_uv2_triplanar_blend_sharpness") GodotMethod!(double) getUv2TriplanarBlendSharpness;
		@GodotName("is_depth_deep_parallax_enabled") GodotMethod!(bool) isDepthDeepParallaxEnabled;
		@GodotName("is_grow_enabled") GodotMethod!(bool) isGrowEnabled;
		@GodotName("is_proximity_fade_enabled") GodotMethod!(bool) isProximityFadeEnabled;
		@GodotName("set_albedo") GodotMethod!(void, Color) setAlbedo;
		@GodotName("set_alpha_scissor_threshold") GodotMethod!(void, double) setAlphaScissorThreshold;
		@GodotName("set_anisotropy") GodotMethod!(void, double) setAnisotropy;
		@GodotName("set_ao_light_affect") GodotMethod!(void, double) setAoLightAffect;
		@GodotName("set_ao_texture_channel") GodotMethod!(void, long) setAoTextureChannel;
		@GodotName("set_async_mode") GodotMethod!(void, long) setAsyncMode;
		@GodotName("set_billboard_mode") GodotMethod!(void, long) setBillboardMode;
		@GodotName("set_blend_mode") GodotMethod!(void, long) setBlendMode;
		@GodotName("set_clearcoat") GodotMethod!(void, double) setClearcoat;
		@GodotName("set_clearcoat_gloss") GodotMethod!(void, double) setClearcoatGloss;
		@GodotName("set_cull_mode") GodotMethod!(void, long) setCullMode;
		@GodotName("set_depth_deep_parallax") GodotMethod!(void, bool) setDepthDeepParallax;
		@GodotName("set_depth_deep_parallax_flip_binormal") GodotMethod!(void, bool) setDepthDeepParallaxFlipBinormal;
		@GodotName("set_depth_deep_parallax_flip_tangent") GodotMethod!(void, bool) setDepthDeepParallaxFlipTangent;
		@GodotName("set_depth_deep_parallax_max_layers") GodotMethod!(void, long) setDepthDeepParallaxMaxLayers;
		@GodotName("set_depth_deep_parallax_min_layers") GodotMethod!(void, long) setDepthDeepParallaxMinLayers;
		@GodotName("set_depth_draw_mode") GodotMethod!(void, long) setDepthDrawMode;
		@GodotName("set_depth_scale") GodotMethod!(void, double) setDepthScale;
		@GodotName("set_detail_blend_mode") GodotMethod!(void, long) setDetailBlendMode;
		@GodotName("set_detail_uv") GodotMethod!(void, long) setDetailUv;
		@GodotName("set_diffuse_mode") GodotMethod!(void, long) setDiffuseMode;
		@GodotName("set_distance_fade") GodotMethod!(void, long) setDistanceFade;
		@GodotName("set_distance_fade_max_distance") GodotMethod!(void, double) setDistanceFadeMaxDistance;
		@GodotName("set_distance_fade_min_distance") GodotMethod!(void, double) setDistanceFadeMinDistance;
		@GodotName("set_emission") GodotMethod!(void, Color) setEmission;
		@GodotName("set_emission_energy") GodotMethod!(void, double) setEmissionEnergy;
		@GodotName("set_emission_operator") GodotMethod!(void, long) setEmissionOperator;
		@GodotName("set_feature") GodotMethod!(void, long, bool) setFeature;
		@GodotName("set_flag") GodotMethod!(void, long, bool) setFlag;
		@GodotName("set_grow") GodotMethod!(void, double) setGrow;
		@GodotName("set_grow_enabled") GodotMethod!(void, bool) setGrowEnabled;
		@GodotName("set_line_width") GodotMethod!(void, double) setLineWidth;
		@GodotName("set_metallic") GodotMethod!(void, double) setMetallic;
		@GodotName("set_metallic_texture_channel") GodotMethod!(void, long) setMetallicTextureChannel;
		@GodotName("set_normal_scale") GodotMethod!(void, double) setNormalScale;
		@GodotName("set_particles_anim_h_frames") GodotMethod!(void, long) setParticlesAnimHFrames;
		@GodotName("set_particles_anim_loop") GodotMethod!(void, bool) setParticlesAnimLoop;
		@GodotName("set_particles_anim_v_frames") GodotMethod!(void, long) setParticlesAnimVFrames;
		@GodotName("set_point_size") GodotMethod!(void, double) setPointSize;
		@GodotName("set_proximity_fade") GodotMethod!(void, bool) setProximityFade;
		@GodotName("set_proximity_fade_distance") GodotMethod!(void, double) setProximityFadeDistance;
		@GodotName("set_refraction") GodotMethod!(void, double) setRefraction;
		@GodotName("set_refraction_texture_channel") GodotMethod!(void, long) setRefractionTextureChannel;
		@GodotName("set_rim") GodotMethod!(void, double) setRim;
		@GodotName("set_rim_tint") GodotMethod!(void, double) setRimTint;
		@GodotName("set_roughness") GodotMethod!(void, double) setRoughness;
		@GodotName("set_roughness_texture_channel") GodotMethod!(void, long) setRoughnessTextureChannel;
		@GodotName("set_specular") GodotMethod!(void, double) setSpecular;
		@GodotName("set_specular_mode") GodotMethod!(void, long) setSpecularMode;
		@GodotName("set_subsurface_scattering_strength") GodotMethod!(void, double) setSubsurfaceScatteringStrength;
		@GodotName("set_texture") GodotMethod!(void, long, Texture) setTexture;
		@GodotName("set_transmission") GodotMethod!(void, Color) setTransmission;
		@GodotName("set_uv1_offset") GodotMethod!(void, Vector3) setUv1Offset;
		@GodotName("set_uv1_scale") GodotMethod!(void, Vector3) setUv1Scale;
		@GodotName("set_uv1_triplanar_blend_sharpness") GodotMethod!(void, double) setUv1TriplanarBlendSharpness;
		@GodotName("set_uv2_offset") GodotMethod!(void, Vector3) setUv2Offset;
		@GodotName("set_uv2_scale") GodotMethod!(void, Vector3) setUv2Scale;
		@GodotName("set_uv2_triplanar_blend_sharpness") GodotMethod!(void, double) setUv2TriplanarBlendSharpness;
	}
	/// 
	pragma(inline, true) bool opEquals(in SpatialMaterial other) const
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
	/// Construct a new instance of SpatialMaterial.
	/// Note: use `memnew!SpatialMaterial` instead.
	static SpatialMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpatialMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(SpatialMaterial)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum AsyncMode : int
	{
		/** */
		asyncModeVisible = 0,
		/** */
		asyncModeHidden = 1,
	}
	/// 
	enum EmissionOperator : int
	{
		/** */
		emissionOpAdd = 0,
		/** */
		emissionOpMultiply = 1,
	}
	/// 
	enum DiffuseMode : int
	{
		/** */
		diffuseBurley = 0,
		/** */
		diffuseLambert = 1,
		/** */
		diffuseLambertWrap = 2,
		/** */
		diffuseOrenNayar = 3,
		/** */
		diffuseToon = 4,
	}
	/// 
	enum SpecularMode : int
	{
		/** */
		specularSchlickGgx = 0,
		/** */
		specularBlinn = 1,
		/** */
		specularPhong = 2,
		/** */
		specularToon = 3,
		/** */
		specularDisabled = 4,
	}
	/// 
	enum Feature : int
	{
		/** */
		featureTransparent = 0,
		/** */
		featureEmission = 1,
		/** */
		featureNormalMapping = 2,
		/** */
		featureRim = 3,
		/** */
		featureClearcoat = 4,
		/** */
		featureAnisotropy = 5,
		/** */
		featureAmbientOcclusion = 6,
		/** */
		featureDepthMapping = 7,
		/** */
		featureSubsuraceScattering = 8,
		/** */
		featureTransmission = 9,
		/** */
		featureRefraction = 10,
		/** */
		featureDetail = 11,
		/** */
		featureMax = 12,
	}
	/// 
	enum Flags : int
	{
		/** */
		flagUnshaded = 0,
		/** */
		flagUseVertexLighting = 1,
		/** */
		flagDisableDepthTest = 2,
		/** */
		flagAlbedoFromVertexColor = 3,
		/** */
		flagSrgbVertexColor = 4,
		/** */
		flagUsePointSize = 5,
		/** */
		flagFixedSize = 6,
		/** */
		flagBillboardKeepScale = 7,
		/** */
		flagUv1UseTriplanar = 8,
		/** */
		flagUv2UseTriplanar = 9,
		/** */
		flagTriplanarUseWorld = 10,
		/** */
		flagAoOnUv2 = 11,
		/** */
		flagEmissionOnUv2 = 12,
		/** */
		flagUseAlphaScissor = 13,
		/** */
		flagAlbedoTextureForceSrgb = 14,
		/** */
		flagDontReceiveShadows = 15,
		/** */
		flagEnsureCorrectNormals = 16,
		/** */
		flagDisableAmbientLight = 17,
		/** */
		flagUseShadowToOpacity = 18,
		/** */
		flagAlbedoTextureSdf = 19,
		/** */
		flagMax = 20,
	}
	/// 
	enum CullMode : int
	{
		/** */
		cullBack = 0,
		/** */
		cullFront = 1,
		/** */
		cullDisabled = 2,
	}
	/// 
	enum DetailUV : int
	{
		/** */
		detailUv1 = 0,
		/** */
		detailUv2 = 1,
	}
	/// 
	enum DistanceFadeMode : int
	{
		/** */
		distanceFadeDisabled = 0,
		/** */
		distanceFadePixelAlpha = 1,
		/** */
		distanceFadePixelDither = 2,
		/** */
		distanceFadeObjectDither = 3,
	}
	/// 
	enum BillboardMode : int
	{
		/** */
		billboardDisabled = 0,
		/** */
		billboardEnabled = 1,
		/** */
		billboardFixedY = 2,
		/** */
		billboardParticles = 3,
	}
	/// 
	enum DepthDrawMode : int
	{
		/** */
		depthDrawOpaqueOnly = 0,
		/** */
		depthDrawAlways = 1,
		/** */
		depthDrawDisabled = 2,
		/** */
		depthDrawAlphaOpaquePrepass = 3,
	}
	/// 
	enum TextureChannel : int
	{
		/** */
		textureChannelRed = 0,
		/** */
		textureChannelGreen = 1,
		/** */
		textureChannelBlue = 2,
		/** */
		textureChannelAlpha = 3,
		/** */
		textureChannelGrayscale = 4,
	}
	/// 
	enum BlendMode : int
	{
		/** */
		blendModeMix = 0,
		/** */
		blendModeAdd = 1,
		/** */
		blendModeSub = 2,
		/** */
		blendModeMul = 3,
	}
	/// 
	enum TextureParam : int
	{
		/** */
		textureAlbedo = 0,
		/** */
		textureMetallic = 1,
		/** */
		textureRoughness = 2,
		/** */
		textureEmission = 3,
		/** */
		textureNormal = 4,
		/** */
		textureRim = 5,
		/** */
		textureClearcoat = 6,
		/** */
		textureFlowmap = 7,
		/** */
		textureAmbientOcclusion = 8,
		/** */
		textureDepth = 9,
		/** */
		textureSubsurfaceScattering = 10,
		/** */
		textureTransmission = 11,
		/** */
		textureRefraction = 12,
		/** */
		textureDetailMask = 13,
		/** */
		textureDetailAlbedo = 14,
		/** */
		textureDetailNormal = 15,
		/** */
		textureMax = 16,
	}
	/// 
	enum Constants : int
	{
		cullBack = 0,
		emissionOpAdd = 0,
		depthDrawOpaqueOnly = 0,
		diffuseBurley = 0,
		distanceFadeDisabled = 0,
		blendModeMix = 0,
		featureTransparent = 0,
		textureAlbedo = 0,
		flagUnshaded = 0,
		asyncModeVisible = 0,
		textureChannelRed = 0,
		detailUv1 = 0,
		billboardDisabled = 0,
		specularSchlickGgx = 0,
		textureMetallic = 1,
		depthDrawAlways = 1,
		textureChannelGreen = 1,
		featureEmission = 1,
		asyncModeHidden = 1,
		emissionOpMultiply = 1,
		billboardEnabled = 1,
		detailUv2 = 1,
		distanceFadePixelAlpha = 1,
		flagUseVertexLighting = 1,
		specularBlinn = 1,
		diffuseLambert = 1,
		cullFront = 1,
		blendModeAdd = 1,
		diffuseLambertWrap = 2,
		blendModeSub = 2,
		flagDisableDepthTest = 2,
		featureNormalMapping = 2,
		billboardFixedY = 2,
		distanceFadePixelDither = 2,
		textureRoughness = 2,
		textureChannelBlue = 2,
		specularPhong = 2,
		cullDisabled = 2,
		depthDrawDisabled = 2,
		distanceFadeObjectDither = 3,
		textureEmission = 3,
		blendModeMul = 3,
		textureChannelAlpha = 3,
		billboardParticles = 3,
		depthDrawAlphaOpaquePrepass = 3,
		featureRim = 3,
		flagAlbedoFromVertexColor = 3,
		specularToon = 3,
		diffuseOrenNayar = 3,
		flagSrgbVertexColor = 4,
		textureNormal = 4,
		textureChannelGrayscale = 4,
		specularDisabled = 4,
		diffuseToon = 4,
		featureClearcoat = 4,
		textureRim = 5,
		featureAnisotropy = 5,
		flagUsePointSize = 5,
		featureAmbientOcclusion = 6,
		flagFixedSize = 6,
		textureClearcoat = 6,
		featureDepthMapping = 7,
		textureFlowmap = 7,
		flagBillboardKeepScale = 7,
		flagUv1UseTriplanar = 8,
		textureAmbientOcclusion = 8,
		featureSubsuraceScattering = 8,
		textureDepth = 9,
		flagUv2UseTriplanar = 9,
		featureTransmission = 9,
		flagTriplanarUseWorld = 10,
		textureSubsurfaceScattering = 10,
		featureRefraction = 10,
		featureDetail = 11,
		flagAoOnUv2 = 11,
		textureTransmission = 11,
		featureMax = 12,
		flagEmissionOnUv2 = 12,
		textureRefraction = 12,
		textureDetailMask = 13,
		flagUseAlphaScissor = 13,
		flagAlbedoTextureForceSrgb = 14,
		textureDetailAlbedo = 14,
		flagDontReceiveShadows = 15,
		textureDetailNormal = 15,
		flagEnsureCorrectNormals = 16,
		textureMax = 16,
		flagDisableAmbientLight = 17,
		flagUseShadowToOpacity = 18,
		flagAlbedoTextureSdf = 19,
		flagMax = 20,
	}
	/**
	
	*/
	Color getAlbedo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getAlbedo, _godot_object);
	}
	/**
	
	*/
	double getAlphaScissorThreshold() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAlphaScissorThreshold, _godot_object);
	}
	/**
	
	*/
	double getAnisotropy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAnisotropy, _godot_object);
	}
	/**
	
	*/
	double getAoLightAffect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAoLightAffect, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.TextureChannel getAoTextureChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.TextureChannel)(GDNativeClassBinding.getAoTextureChannel, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.AsyncMode getAsyncMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.AsyncMode)(GDNativeClassBinding.getAsyncMode, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.BillboardMode getBillboardMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.BillboardMode)(GDNativeClassBinding.getBillboardMode, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.BlendMode getBlendMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.BlendMode)(GDNativeClassBinding.getBlendMode, _godot_object);
	}
	/**
	
	*/
	double getClearcoat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getClearcoat, _godot_object);
	}
	/**
	
	*/
	double getClearcoatGloss() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getClearcoatGloss, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.CullMode getCullMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.CullMode)(GDNativeClassBinding.getCullMode, _godot_object);
	}
	/**
	
	*/
	bool getDepthDeepParallaxFlipBinormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getDepthDeepParallaxFlipBinormal, _godot_object);
	}
	/**
	
	*/
	bool getDepthDeepParallaxFlipTangent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getDepthDeepParallaxFlipTangent, _godot_object);
	}
	/**
	
	*/
	long getDepthDeepParallaxMaxLayers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDepthDeepParallaxMaxLayers, _godot_object);
	}
	/**
	
	*/
	long getDepthDeepParallaxMinLayers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDepthDeepParallaxMinLayers, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.DepthDrawMode getDepthDrawMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.DepthDrawMode)(GDNativeClassBinding.getDepthDrawMode, _godot_object);
	}
	/**
	
	*/
	double getDepthScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDepthScale, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.BlendMode getDetailBlendMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.BlendMode)(GDNativeClassBinding.getDetailBlendMode, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.DetailUV getDetailUv() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.DetailUV)(GDNativeClassBinding.getDetailUv, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.DiffuseMode getDiffuseMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.DiffuseMode)(GDNativeClassBinding.getDiffuseMode, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.DistanceFadeMode getDistanceFade() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.DistanceFadeMode)(GDNativeClassBinding.getDistanceFade, _godot_object);
	}
	/**
	
	*/
	double getDistanceFadeMaxDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDistanceFadeMaxDistance, _godot_object);
	}
	/**
	
	*/
	double getDistanceFadeMinDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDistanceFadeMinDistance, _godot_object);
	}
	/**
	
	*/
	Color getEmission() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getEmission, _godot_object);
	}
	/**
	
	*/
	double getEmissionEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEmissionEnergy, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.EmissionOperator getEmissionOperator() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.EmissionOperator)(GDNativeClassBinding.getEmissionOperator, _godot_object);
	}
	/**
	
	*/
	bool getFeature(in long feature) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFeature, _godot_object, feature);
	}
	/**
	
	*/
	bool getFlag(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFlag, _godot_object, flag);
	}
	/**
	
	*/
	double getGrow() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGrow, _godot_object);
	}
	/**
	
	*/
	double getLineWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLineWidth, _godot_object);
	}
	/**
	
	*/
	double getMetallic() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMetallic, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.TextureChannel getMetallicTextureChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.TextureChannel)(GDNativeClassBinding.getMetallicTextureChannel, _godot_object);
	}
	/**
	
	*/
	double getNormalScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getNormalScale, _godot_object);
	}
	/**
	
	*/
	long getParticlesAnimHFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getParticlesAnimHFrames, _godot_object);
	}
	/**
	
	*/
	bool getParticlesAnimLoop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getParticlesAnimLoop, _godot_object);
	}
	/**
	
	*/
	long getParticlesAnimVFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getParticlesAnimVFrames, _godot_object);
	}
	/**
	
	*/
	double getPointSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPointSize, _godot_object);
	}
	/**
	
	*/
	double getProximityFadeDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getProximityFadeDistance, _godot_object);
	}
	/**
	
	*/
	double getRefraction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRefraction, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.TextureChannel getRefractionTextureChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.TextureChannel)(GDNativeClassBinding.getRefractionTextureChannel, _godot_object);
	}
	/**
	
	*/
	double getRim() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRim, _godot_object);
	}
	/**
	
	*/
	double getRimTint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRimTint, _godot_object);
	}
	/**
	
	*/
	double getRoughness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRoughness, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.TextureChannel getRoughnessTextureChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.TextureChannel)(GDNativeClassBinding.getRoughnessTextureChannel, _godot_object);
	}
	/**
	
	*/
	double getSpecular() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSpecular, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.SpecularMode getSpecularMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.SpecularMode)(GDNativeClassBinding.getSpecularMode, _godot_object);
	}
	/**
	
	*/
	double getSubsurfaceScatteringStrength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSubsurfaceScatteringStrength, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getTexture(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getTexture, _godot_object, param);
	}
	/**
	
	*/
	Color getTransmission() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getTransmission, _godot_object);
	}
	/**
	
	*/
	Vector3 getUv1Offset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getUv1Offset, _godot_object);
	}
	/**
	
	*/
	Vector3 getUv1Scale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getUv1Scale, _godot_object);
	}
	/**
	
	*/
	double getUv1TriplanarBlendSharpness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getUv1TriplanarBlendSharpness, _godot_object);
	}
	/**
	
	*/
	Vector3 getUv2Offset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getUv2Offset, _godot_object);
	}
	/**
	
	*/
	Vector3 getUv2Scale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getUv2Scale, _godot_object);
	}
	/**
	
	*/
	double getUv2TriplanarBlendSharpness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getUv2TriplanarBlendSharpness, _godot_object);
	}
	/**
	
	*/
	bool isDepthDeepParallaxEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDepthDeepParallaxEnabled, _godot_object);
	}
	/**
	
	*/
	bool isGrowEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isGrowEnabled, _godot_object);
	}
	/**
	
	*/
	bool isProximityFadeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isProximityFadeEnabled, _godot_object);
	}
	/**
	
	*/
	void setAlbedo(in Color albedo)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlbedo, _godot_object, albedo);
	}
	/**
	
	*/
	void setAlphaScissorThreshold(in double threshold)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlphaScissorThreshold, _godot_object, threshold);
	}
	/**
	
	*/
	void setAnisotropy(in double anisotropy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnisotropy, _godot_object, anisotropy);
	}
	/**
	
	*/
	void setAoLightAffect(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAoLightAffect, _godot_object, amount);
	}
	/**
	
	*/
	void setAoTextureChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAoTextureChannel, _godot_object, channel);
	}
	/**
	
	*/
	void setAsyncMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAsyncMode, _godot_object, mode);
	}
	/**
	
	*/
	void setBillboardMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBillboardMode, _godot_object, mode);
	}
	/**
	
	*/
	void setBlendMode(in long blend_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlendMode, _godot_object, blend_mode);
	}
	/**
	
	*/
	void setClearcoat(in double clearcoat)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClearcoat, _godot_object, clearcoat);
	}
	/**
	
	*/
	void setClearcoatGloss(in double clearcoat_gloss)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClearcoatGloss, _godot_object, clearcoat_gloss);
	}
	/**
	
	*/
	void setCullMode(in long cull_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCullMode, _godot_object, cull_mode);
	}
	/**
	
	*/
	void setDepthDeepParallax(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDepthDeepParallax, _godot_object, enable);
	}
	/**
	
	*/
	void setDepthDeepParallaxFlipBinormal(in bool flip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDepthDeepParallaxFlipBinormal, _godot_object, flip);
	}
	/**
	
	*/
	void setDepthDeepParallaxFlipTangent(in bool flip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDepthDeepParallaxFlipTangent, _godot_object, flip);
	}
	/**
	
	*/
	void setDepthDeepParallaxMaxLayers(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDepthDeepParallaxMaxLayers, _godot_object, layer);
	}
	/**
	
	*/
	void setDepthDeepParallaxMinLayers(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDepthDeepParallaxMinLayers, _godot_object, layer);
	}
	/**
	
	*/
	void setDepthDrawMode(in long depth_draw_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDepthDrawMode, _godot_object, depth_draw_mode);
	}
	/**
	
	*/
	void setDepthScale(in double depth_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDepthScale, _godot_object, depth_scale);
	}
	/**
	
	*/
	void setDetailBlendMode(in long detail_blend_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDetailBlendMode, _godot_object, detail_blend_mode);
	}
	/**
	
	*/
	void setDetailUv(in long detail_uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDetailUv, _godot_object, detail_uv);
	}
	/**
	
	*/
	void setDiffuseMode(in long diffuse_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDiffuseMode, _godot_object, diffuse_mode);
	}
	/**
	
	*/
	void setDistanceFade(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDistanceFade, _godot_object, mode);
	}
	/**
	
	*/
	void setDistanceFadeMaxDistance(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDistanceFadeMaxDistance, _godot_object, distance);
	}
	/**
	
	*/
	void setDistanceFadeMinDistance(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDistanceFadeMinDistance, _godot_object, distance);
	}
	/**
	
	*/
	void setEmission(in Color emission)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmission, _godot_object, emission);
	}
	/**
	
	*/
	void setEmissionEnergy(in double emission_energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionEnergy, _godot_object, emission_energy);
	}
	/**
	
	*/
	void setEmissionOperator(in long operator)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionOperator, _godot_object, operator);
	}
	/**
	
	*/
	void setFeature(in long feature, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFeature, _godot_object, feature, enable);
	}
	/**
	
	*/
	void setFlag(in long flag, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlag, _godot_object, flag, enable);
	}
	/**
	
	*/
	void setGrow(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGrow, _godot_object, amount);
	}
	/**
	
	*/
	void setGrowEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGrowEnabled, _godot_object, enable);
	}
	/**
	
	*/
	void setLineWidth(in double line_width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLineWidth, _godot_object, line_width);
	}
	/**
	
	*/
	void setMetallic(in double metallic)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMetallic, _godot_object, metallic);
	}
	/**
	
	*/
	void setMetallicTextureChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMetallicTextureChannel, _godot_object, channel);
	}
	/**
	
	*/
	void setNormalScale(in double normal_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNormalScale, _godot_object, normal_scale);
	}
	/**
	
	*/
	void setParticlesAnimHFrames(in long frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParticlesAnimHFrames, _godot_object, frames);
	}
	/**
	
	*/
	void setParticlesAnimLoop(in bool loop)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParticlesAnimLoop, _godot_object, loop);
	}
	/**
	
	*/
	void setParticlesAnimVFrames(in long frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParticlesAnimVFrames, _godot_object, frames);
	}
	/**
	
	*/
	void setPointSize(in double point_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointSize, _godot_object, point_size);
	}
	/**
	
	*/
	void setProximityFade(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProximityFade, _godot_object, enabled);
	}
	/**
	
	*/
	void setProximityFadeDistance(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProximityFadeDistance, _godot_object, distance);
	}
	/**
	
	*/
	void setRefraction(in double refraction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRefraction, _godot_object, refraction);
	}
	/**
	
	*/
	void setRefractionTextureChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRefractionTextureChannel, _godot_object, channel);
	}
	/**
	
	*/
	void setRim(in double rim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRim, _godot_object, rim);
	}
	/**
	
	*/
	void setRimTint(in double rim_tint)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRimTint, _godot_object, rim_tint);
	}
	/**
	
	*/
	void setRoughness(in double roughness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRoughness, _godot_object, roughness);
	}
	/**
	
	*/
	void setRoughnessTextureChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRoughnessTextureChannel, _godot_object, channel);
	}
	/**
	
	*/
	void setSpecular(in double specular)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpecular, _godot_object, specular);
	}
	/**
	
	*/
	void setSpecularMode(in long specular_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpecularMode, _godot_object, specular_mode);
	}
	/**
	
	*/
	void setSubsurfaceScatteringStrength(in double strength)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSubsurfaceScatteringStrength, _godot_object, strength);
	}
	/**
	
	*/
	void setTexture(in long param, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTexture, _godot_object, param, texture);
	}
	/**
	
	*/
	void setTransmission(in Color transmission)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransmission, _godot_object, transmission);
	}
	/**
	
	*/
	void setUv1Offset(in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUv1Offset, _godot_object, offset);
	}
	/**
	
	*/
	void setUv1Scale(in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUv1Scale, _godot_object, scale);
	}
	/**
	
	*/
	void setUv1TriplanarBlendSharpness(in double sharpness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUv1TriplanarBlendSharpness, _godot_object, sharpness);
	}
	/**
	
	*/
	void setUv2Offset(in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUv2Offset, _godot_object, offset);
	}
	/**
	
	*/
	void setUv2Scale(in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUv2Scale, _godot_object, scale);
	}
	/**
	
	*/
	void setUv2TriplanarBlendSharpness(in double sharpness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUv2TriplanarBlendSharpness, _godot_object, sharpness);
	}
	/**
	
	*/
	@property Color albedoColor()
	{
		return getAlbedo();
	}
	/// ditto
	@property void albedoColor(Color v)
	{
		setAlbedo(v);
	}
	/**
	
	*/
	@property Texture albedoTexture()
	{
		return getTexture(0);
	}
	/// ditto
	@property void albedoTexture(Texture v)
	{
		setTexture(0, v);
	}
	/**
	
	*/
	@property double anisotropy()
	{
		return getAnisotropy();
	}
	/// ditto
	@property void anisotropy(double v)
	{
		setAnisotropy(v);
	}
	/**
	
	*/
	@property bool anisotropyEnabled()
	{
		return getFeature(5);
	}
	/// ditto
	@property void anisotropyEnabled(bool v)
	{
		setFeature(5, v);
	}
	/**
	
	*/
	@property Texture anisotropyFlowmap()
	{
		return getTexture(7);
	}
	/// ditto
	@property void anisotropyFlowmap(Texture v)
	{
		setTexture(7, v);
	}
	/**
	
	*/
	@property bool aoEnabled()
	{
		return getFeature(6);
	}
	/// ditto
	@property void aoEnabled(bool v)
	{
		setFeature(6, v);
	}
	/**
	
	*/
	@property double aoLightAffect()
	{
		return getAoLightAffect();
	}
	/// ditto
	@property void aoLightAffect(double v)
	{
		setAoLightAffect(v);
	}
	/**
	
	*/
	@property bool aoOnUv2()
	{
		return getFlag(11);
	}
	/// ditto
	@property void aoOnUv2(bool v)
	{
		setFlag(11, v);
	}
	/**
	
	*/
	@property Texture aoTexture()
	{
		return getTexture(8);
	}
	/// ditto
	@property void aoTexture(Texture v)
	{
		setTexture(8, v);
	}
	/**
	
	*/
	@property SpatialMaterial.TextureChannel aoTextureChannel()
	{
		return getAoTextureChannel();
	}
	/// ditto
	@property void aoTextureChannel(long v)
	{
		setAoTextureChannel(v);
	}
	/**
	
	*/
	@property SpatialMaterial.AsyncMode asyncMode()
	{
		return getAsyncMode();
	}
	/// ditto
	@property void asyncMode(long v)
	{
		setAsyncMode(v);
	}
	/**
	
	*/
	@property double clearcoat()
	{
		return getClearcoat();
	}
	/// ditto
	@property void clearcoat(double v)
	{
		setClearcoat(v);
	}
	/**
	
	*/
	@property bool clearcoatEnabled()
	{
		return getFeature(4);
	}
	/// ditto
	@property void clearcoatEnabled(bool v)
	{
		setFeature(4, v);
	}
	/**
	
	*/
	@property double clearcoatGloss()
	{
		return getClearcoatGloss();
	}
	/// ditto
	@property void clearcoatGloss(double v)
	{
		setClearcoatGloss(v);
	}
	/**
	
	*/
	@property Texture clearcoatTexture()
	{
		return getTexture(6);
	}
	/// ditto
	@property void clearcoatTexture(Texture v)
	{
		setTexture(6, v);
	}
	/**
	
	*/
	@property bool depthDeepParallax()
	{
		return isDepthDeepParallaxEnabled();
	}
	/// ditto
	@property void depthDeepParallax(bool v)
	{
		setDepthDeepParallax(v);
	}
	/**
	
	*/
	@property bool depthEnabled()
	{
		return getFeature(7);
	}
	/// ditto
	@property void depthEnabled(bool v)
	{
		setFeature(7, v);
	}
	/**
	
	*/
	@property bool depthFlipBinormal()
	{
		return getDepthDeepParallaxFlipBinormal();
	}
	/// ditto
	@property void depthFlipBinormal(bool v)
	{
		setDepthDeepParallaxFlipBinormal(v);
	}
	/**
	
	*/
	@property bool depthFlipTangent()
	{
		return getDepthDeepParallaxFlipTangent();
	}
	/// ditto
	@property void depthFlipTangent(bool v)
	{
		setDepthDeepParallaxFlipTangent(v);
	}
	/**
	
	*/
	@property long depthMaxLayers()
	{
		return getDepthDeepParallaxMaxLayers();
	}
	/// ditto
	@property void depthMaxLayers(long v)
	{
		setDepthDeepParallaxMaxLayers(v);
	}
	/**
	
	*/
	@property long depthMinLayers()
	{
		return getDepthDeepParallaxMinLayers();
	}
	/// ditto
	@property void depthMinLayers(long v)
	{
		setDepthDeepParallaxMinLayers(v);
	}
	/**
	
	*/
	@property double depthScale()
	{
		return getDepthScale();
	}
	/// ditto
	@property void depthScale(double v)
	{
		setDepthScale(v);
	}
	/**
	
	*/
	@property Texture depthTexture()
	{
		return getTexture(9);
	}
	/// ditto
	@property void depthTexture(Texture v)
	{
		setTexture(9, v);
	}
	/**
	
	*/
	@property Texture detailAlbedo()
	{
		return getTexture(14);
	}
	/// ditto
	@property void detailAlbedo(Texture v)
	{
		setTexture(14, v);
	}
	/**
	
	*/
	@property SpatialMaterial.BlendMode detailBlendMode()
	{
		return getDetailBlendMode();
	}
	/// ditto
	@property void detailBlendMode(long v)
	{
		setDetailBlendMode(v);
	}
	/**
	
	*/
	@property bool detailEnabled()
	{
		return getFeature(11);
	}
	/// ditto
	@property void detailEnabled(bool v)
	{
		setFeature(11, v);
	}
	/**
	
	*/
	@property Texture detailMask()
	{
		return getTexture(13);
	}
	/// ditto
	@property void detailMask(Texture v)
	{
		setTexture(13, v);
	}
	/**
	
	*/
	@property Texture detailNormal()
	{
		return getTexture(15);
	}
	/// ditto
	@property void detailNormal(Texture v)
	{
		setTexture(15, v);
	}
	/**
	
	*/
	@property SpatialMaterial.DetailUV detailUvLayer()
	{
		return getDetailUv();
	}
	/// ditto
	@property void detailUvLayer(long v)
	{
		setDetailUv(v);
	}
	/**
	
	*/
	@property double distanceFadeMaxDistance()
	{
		return getDistanceFadeMaxDistance();
	}
	/// ditto
	@property void distanceFadeMaxDistance(double v)
	{
		setDistanceFadeMaxDistance(v);
	}
	/**
	
	*/
	@property double distanceFadeMinDistance()
	{
		return getDistanceFadeMinDistance();
	}
	/// ditto
	@property void distanceFadeMinDistance(double v)
	{
		setDistanceFadeMinDistance(v);
	}
	/**
	
	*/
	@property SpatialMaterial.DistanceFadeMode distanceFadeMode()
	{
		return getDistanceFade();
	}
	/// ditto
	@property void distanceFadeMode(long v)
	{
		setDistanceFade(v);
	}
	/**
	
	*/
	@property Color emission()
	{
		return getEmission();
	}
	/// ditto
	@property void emission(Color v)
	{
		setEmission(v);
	}
	/**
	
	*/
	@property bool emissionEnabled()
	{
		return getFeature(1);
	}
	/// ditto
	@property void emissionEnabled(bool v)
	{
		setFeature(1, v);
	}
	/**
	
	*/
	@property double emissionEnergy()
	{
		return getEmissionEnergy();
	}
	/// ditto
	@property void emissionEnergy(double v)
	{
		setEmissionEnergy(v);
	}
	/**
	
	*/
	@property bool emissionOnUv2()
	{
		return getFlag(12);
	}
	/// ditto
	@property void emissionOnUv2(bool v)
	{
		setFlag(12, v);
	}
	/**
	
	*/
	@property SpatialMaterial.EmissionOperator emissionOperator()
	{
		return getEmissionOperator();
	}
	/// ditto
	@property void emissionOperator(long v)
	{
		setEmissionOperator(v);
	}
	/**
	
	*/
	@property Texture emissionTexture()
	{
		return getTexture(3);
	}
	/// ditto
	@property void emissionTexture(Texture v)
	{
		setTexture(3, v);
	}
	/**
	
	*/
	@property bool flagsAlbedoTexForceSrgb()
	{
		return getFlag(14);
	}
	/// ditto
	@property void flagsAlbedoTexForceSrgb(bool v)
	{
		setFlag(14, v);
	}
	/**
	
	*/
	@property bool flagsAlbedoTexMsdf()
	{
		return getFlag(19);
	}
	/// ditto
	@property void flagsAlbedoTexMsdf(bool v)
	{
		setFlag(19, v);
	}
	/**
	
	*/
	@property bool flagsDisableAmbientLight()
	{
		return getFlag(17);
	}
	/// ditto
	@property void flagsDisableAmbientLight(bool v)
	{
		setFlag(17, v);
	}
	/**
	
	*/
	@property bool flagsDoNotReceiveShadows()
	{
		return getFlag(15);
	}
	/// ditto
	@property void flagsDoNotReceiveShadows(bool v)
	{
		setFlag(15, v);
	}
	/**
	
	*/
	@property bool flagsEnsureCorrectNormals()
	{
		return getFlag(16);
	}
	/// ditto
	@property void flagsEnsureCorrectNormals(bool v)
	{
		setFlag(16, v);
	}
	/**
	
	*/
	@property bool flagsFixedSize()
	{
		return getFlag(6);
	}
	/// ditto
	@property void flagsFixedSize(bool v)
	{
		setFlag(6, v);
	}
	/**
	
	*/
	@property bool flagsNoDepthTest()
	{
		return getFlag(2);
	}
	/// ditto
	@property void flagsNoDepthTest(bool v)
	{
		setFlag(2, v);
	}
	/**
	
	*/
	@property bool flagsTransparent()
	{
		return getFeature(0);
	}
	/// ditto
	@property void flagsTransparent(bool v)
	{
		setFeature(0, v);
	}
	/**
	
	*/
	@property bool flagsUnshaded()
	{
		return getFlag(0);
	}
	/// ditto
	@property void flagsUnshaded(bool v)
	{
		setFlag(0, v);
	}
	/**
	
	*/
	@property bool flagsUsePointSize()
	{
		return getFlag(5);
	}
	/// ditto
	@property void flagsUsePointSize(bool v)
	{
		setFlag(5, v);
	}
	/**
	
	*/
	@property bool flagsUseShadowToOpacity()
	{
		return getFlag(18);
	}
	/// ditto
	@property void flagsUseShadowToOpacity(bool v)
	{
		setFlag(18, v);
	}
	/**
	
	*/
	@property bool flagsVertexLighting()
	{
		return getFlag(1);
	}
	/// ditto
	@property void flagsVertexLighting(bool v)
	{
		setFlag(1, v);
	}
	/**
	
	*/
	@property bool flagsWorldTriplanar()
	{
		return getFlag(10);
	}
	/// ditto
	@property void flagsWorldTriplanar(bool v)
	{
		setFlag(10, v);
	}
	/**
	
	*/
	@property double metallic()
	{
		return getMetallic();
	}
	/// ditto
	@property void metallic(double v)
	{
		setMetallic(v);
	}
	/**
	
	*/
	@property double metallicSpecular()
	{
		return getSpecular();
	}
	/// ditto
	@property void metallicSpecular(double v)
	{
		setSpecular(v);
	}
	/**
	
	*/
	@property Texture metallicTexture()
	{
		return getTexture(1);
	}
	/// ditto
	@property void metallicTexture(Texture v)
	{
		setTexture(1, v);
	}
	/**
	
	*/
	@property SpatialMaterial.TextureChannel metallicTextureChannel()
	{
		return getMetallicTextureChannel();
	}
	/// ditto
	@property void metallicTextureChannel(long v)
	{
		setMetallicTextureChannel(v);
	}
	/**
	
	*/
	@property bool normalEnabled()
	{
		return getFeature(2);
	}
	/// ditto
	@property void normalEnabled(bool v)
	{
		setFeature(2, v);
	}
	/**
	
	*/
	@property double normalScale()
	{
		return getNormalScale();
	}
	/// ditto
	@property void normalScale(double v)
	{
		setNormalScale(v);
	}
	/**
	
	*/
	@property Texture normalTexture()
	{
		return getTexture(4);
	}
	/// ditto
	@property void normalTexture(Texture v)
	{
		setTexture(4, v);
	}
	/**
	
	*/
	@property double paramsAlphaScissorThreshold()
	{
		return getAlphaScissorThreshold();
	}
	/// ditto
	@property void paramsAlphaScissorThreshold(double v)
	{
		setAlphaScissorThreshold(v);
	}
	/**
	
	*/
	@property bool paramsBillboardKeepScale()
	{
		return getFlag(7);
	}
	/// ditto
	@property void paramsBillboardKeepScale(bool v)
	{
		setFlag(7, v);
	}
	/**
	
	*/
	@property SpatialMaterial.BillboardMode paramsBillboardMode()
	{
		return getBillboardMode();
	}
	/// ditto
	@property void paramsBillboardMode(long v)
	{
		setBillboardMode(v);
	}
	/**
	
	*/
	@property SpatialMaterial.BlendMode paramsBlendMode()
	{
		return getBlendMode();
	}
	/// ditto
	@property void paramsBlendMode(long v)
	{
		setBlendMode(v);
	}
	/**
	
	*/
	@property SpatialMaterial.CullMode paramsCullMode()
	{
		return getCullMode();
	}
	/// ditto
	@property void paramsCullMode(long v)
	{
		setCullMode(v);
	}
	/**
	
	*/
	@property SpatialMaterial.DepthDrawMode paramsDepthDrawMode()
	{
		return getDepthDrawMode();
	}
	/// ditto
	@property void paramsDepthDrawMode(long v)
	{
		setDepthDrawMode(v);
	}
	/**
	
	*/
	@property SpatialMaterial.DiffuseMode paramsDiffuseMode()
	{
		return getDiffuseMode();
	}
	/// ditto
	@property void paramsDiffuseMode(long v)
	{
		setDiffuseMode(v);
	}
	/**
	
	*/
	@property bool paramsGrow()
	{
		return isGrowEnabled();
	}
	/// ditto
	@property void paramsGrow(bool v)
	{
		setGrowEnabled(v);
	}
	/**
	
	*/
	@property double paramsGrowAmount()
	{
		return getGrow();
	}
	/// ditto
	@property void paramsGrowAmount(double v)
	{
		setGrow(v);
	}
	/**
	
	*/
	@property double paramsLineWidth()
	{
		return getLineWidth();
	}
	/// ditto
	@property void paramsLineWidth(double v)
	{
		setLineWidth(v);
	}
	/**
	
	*/
	@property double paramsPointSize()
	{
		return getPointSize();
	}
	/// ditto
	@property void paramsPointSize(double v)
	{
		setPointSize(v);
	}
	/**
	
	*/
	@property SpatialMaterial.SpecularMode paramsSpecularMode()
	{
		return getSpecularMode();
	}
	/// ditto
	@property void paramsSpecularMode(long v)
	{
		setSpecularMode(v);
	}
	/**
	
	*/
	@property bool paramsUseAlphaScissor()
	{
		return getFlag(13);
	}
	/// ditto
	@property void paramsUseAlphaScissor(bool v)
	{
		setFlag(13, v);
	}
	/**
	
	*/
	@property long particlesAnimHFrames()
	{
		return getParticlesAnimHFrames();
	}
	/// ditto
	@property void particlesAnimHFrames(long v)
	{
		setParticlesAnimHFrames(v);
	}
	/**
	
	*/
	@property bool particlesAnimLoop()
	{
		return getParticlesAnimLoop();
	}
	/// ditto
	@property void particlesAnimLoop(bool v)
	{
		setParticlesAnimLoop(v);
	}
	/**
	
	*/
	@property long particlesAnimVFrames()
	{
		return getParticlesAnimVFrames();
	}
	/// ditto
	@property void particlesAnimVFrames(long v)
	{
		setParticlesAnimVFrames(v);
	}
	/**
	
	*/
	@property double proximityFadeDistance()
	{
		return getProximityFadeDistance();
	}
	/// ditto
	@property void proximityFadeDistance(double v)
	{
		setProximityFadeDistance(v);
	}
	/**
	
	*/
	@property bool proximityFadeEnable()
	{
		return isProximityFadeEnabled();
	}
	/// ditto
	@property void proximityFadeEnable(bool v)
	{
		setProximityFade(v);
	}
	/**
	
	*/
	@property bool refractionEnabled()
	{
		return getFeature(10);
	}
	/// ditto
	@property void refractionEnabled(bool v)
	{
		setFeature(10, v);
	}
	/**
	
	*/
	@property double refractionScale()
	{
		return getRefraction();
	}
	/// ditto
	@property void refractionScale(double v)
	{
		setRefraction(v);
	}
	/**
	
	*/
	@property Texture refractionTexture()
	{
		return getTexture(12);
	}
	/// ditto
	@property void refractionTexture(Texture v)
	{
		setTexture(12, v);
	}
	/**
	
	*/
	@property SpatialMaterial.TextureChannel refractionTextureChannel()
	{
		return getRefractionTextureChannel();
	}
	/// ditto
	@property void refractionTextureChannel(long v)
	{
		setRefractionTextureChannel(v);
	}
	/**
	
	*/
	@property double rim()
	{
		return getRim();
	}
	/// ditto
	@property void rim(double v)
	{
		setRim(v);
	}
	/**
	
	*/
	@property bool rimEnabled()
	{
		return getFeature(3);
	}
	/// ditto
	@property void rimEnabled(bool v)
	{
		setFeature(3, v);
	}
	/**
	
	*/
	@property Texture rimTexture()
	{
		return getTexture(5);
	}
	/// ditto
	@property void rimTexture(Texture v)
	{
		setTexture(5, v);
	}
	/**
	
	*/
	@property double rimTint()
	{
		return getRimTint();
	}
	/// ditto
	@property void rimTint(double v)
	{
		setRimTint(v);
	}
	/**
	
	*/
	@property double roughness()
	{
		return getRoughness();
	}
	/// ditto
	@property void roughness(double v)
	{
		setRoughness(v);
	}
	/**
	
	*/
	@property Texture roughnessTexture()
	{
		return getTexture(2);
	}
	/// ditto
	@property void roughnessTexture(Texture v)
	{
		setTexture(2, v);
	}
	/**
	
	*/
	@property SpatialMaterial.TextureChannel roughnessTextureChannel()
	{
		return getRoughnessTextureChannel();
	}
	/// ditto
	@property void roughnessTextureChannel(long v)
	{
		setRoughnessTextureChannel(v);
	}
	/**
	
	*/
	@property bool subsurfScatterEnabled()
	{
		return getFeature(8);
	}
	/// ditto
	@property void subsurfScatterEnabled(bool v)
	{
		setFeature(8, v);
	}
	/**
	
	*/
	@property double subsurfScatterStrength()
	{
		return getSubsurfaceScatteringStrength();
	}
	/// ditto
	@property void subsurfScatterStrength(double v)
	{
		setSubsurfaceScatteringStrength(v);
	}
	/**
	
	*/
	@property Texture subsurfScatterTexture()
	{
		return getTexture(10);
	}
	/// ditto
	@property void subsurfScatterTexture(Texture v)
	{
		setTexture(10, v);
	}
	/**
	
	*/
	@property Color transmission()
	{
		return getTransmission();
	}
	/// ditto
	@property void transmission(Color v)
	{
		setTransmission(v);
	}
	/**
	
	*/
	@property bool transmissionEnabled()
	{
		return getFeature(9);
	}
	/// ditto
	@property void transmissionEnabled(bool v)
	{
		setFeature(9, v);
	}
	/**
	
	*/
	@property Texture transmissionTexture()
	{
		return getTexture(11);
	}
	/// ditto
	@property void transmissionTexture(Texture v)
	{
		setTexture(11, v);
	}
	/**
	
	*/
	@property Vector3 uv1Offset()
	{
		return getUv1Offset();
	}
	/// ditto
	@property void uv1Offset(Vector3 v)
	{
		setUv1Offset(v);
	}
	/**
	
	*/
	@property Vector3 uv1Scale()
	{
		return getUv1Scale();
	}
	/// ditto
	@property void uv1Scale(Vector3 v)
	{
		setUv1Scale(v);
	}
	/**
	
	*/
	@property bool uv1Triplanar()
	{
		return getFlag(8);
	}
	/// ditto
	@property void uv1Triplanar(bool v)
	{
		setFlag(8, v);
	}
	/**
	
	*/
	@property double uv1TriplanarSharpness()
	{
		return getUv1TriplanarBlendSharpness();
	}
	/// ditto
	@property void uv1TriplanarSharpness(double v)
	{
		setUv1TriplanarBlendSharpness(v);
	}
	/**
	
	*/
	@property Vector3 uv2Offset()
	{
		return getUv2Offset();
	}
	/// ditto
	@property void uv2Offset(Vector3 v)
	{
		setUv2Offset(v);
	}
	/**
	
	*/
	@property Vector3 uv2Scale()
	{
		return getUv2Scale();
	}
	/// ditto
	@property void uv2Scale(Vector3 v)
	{
		setUv2Scale(v);
	}
	/**
	
	*/
	@property bool uv2Triplanar()
	{
		return getFlag(9);
	}
	/// ditto
	@property void uv2Triplanar(bool v)
	{
		setFlag(9, v);
	}
	/**
	
	*/
	@property double uv2TriplanarSharpness()
	{
		return getUv2TriplanarBlendSharpness();
	}
	/// ditto
	@property void uv2TriplanarSharpness(double v)
	{
		setUv2TriplanarBlendSharpness(v);
	}
	/**
	
	*/
	@property bool vertexColorIsSrgb()
	{
		return getFlag(4);
	}
	/// ditto
	@property void vertexColorIsSrgb(bool v)
	{
		setFlag(4, v);
	}
	/**
	
	*/
	@property bool vertexColorUseAsAlbedo()
	{
		return getFlag(3);
	}
	/// ditto
	@property void vertexColorUseAsAlbedo(bool v)
	{
		setFlag(3, v);
	}
}
