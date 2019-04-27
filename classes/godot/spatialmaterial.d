/**
Default 3D rendering material.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spatialmaterial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.material;
import godot.texture;
import godot.resource;
import godot.reference;
/**
Default 3D rendering material.

This provides a default material with a wide variety of rendering features and properties without the need to write shader code. See the tutorial below for details.
*/
@GodotBaseClass struct SpatialMaterial
{
	enum string _GODOT_internal_name = "SpatialMaterial";
public:
@nogc nothrow:
	union { godot_object _godot_object; Material _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_albedo") GodotMethod!(void, Color) setAlbedo;
		@GodotName("get_albedo") GodotMethod!(Color) getAlbedo;
		@GodotName("set_specular") GodotMethod!(void, double) setSpecular;
		@GodotName("get_specular") GodotMethod!(double) getSpecular;
		@GodotName("set_metallic") GodotMethod!(void, double) setMetallic;
		@GodotName("get_metallic") GodotMethod!(double) getMetallic;
		@GodotName("set_roughness") GodotMethod!(void, double) setRoughness;
		@GodotName("get_roughness") GodotMethod!(double) getRoughness;
		@GodotName("set_emission") GodotMethod!(void, Color) setEmission;
		@GodotName("get_emission") GodotMethod!(Color) getEmission;
		@GodotName("set_emission_energy") GodotMethod!(void, double) setEmissionEnergy;
		@GodotName("get_emission_energy") GodotMethod!(double) getEmissionEnergy;
		@GodotName("set_normal_scale") GodotMethod!(void, double) setNormalScale;
		@GodotName("get_normal_scale") GodotMethod!(double) getNormalScale;
		@GodotName("set_rim") GodotMethod!(void, double) setRim;
		@GodotName("get_rim") GodotMethod!(double) getRim;
		@GodotName("set_rim_tint") GodotMethod!(void, double) setRimTint;
		@GodotName("get_rim_tint") GodotMethod!(double) getRimTint;
		@GodotName("set_clearcoat") GodotMethod!(void, double) setClearcoat;
		@GodotName("get_clearcoat") GodotMethod!(double) getClearcoat;
		@GodotName("set_clearcoat_gloss") GodotMethod!(void, double) setClearcoatGloss;
		@GodotName("get_clearcoat_gloss") GodotMethod!(double) getClearcoatGloss;
		@GodotName("set_anisotropy") GodotMethod!(void, double) setAnisotropy;
		@GodotName("get_anisotropy") GodotMethod!(double) getAnisotropy;
		@GodotName("set_depth_scale") GodotMethod!(void, double) setDepthScale;
		@GodotName("get_depth_scale") GodotMethod!(double) getDepthScale;
		@GodotName("set_subsurface_scattering_strength") GodotMethod!(void, double) setSubsurfaceScatteringStrength;
		@GodotName("get_subsurface_scattering_strength") GodotMethod!(double) getSubsurfaceScatteringStrength;
		@GodotName("set_transmission") GodotMethod!(void, Color) setTransmission;
		@GodotName("get_transmission") GodotMethod!(Color) getTransmission;
		@GodotName("set_refraction") GodotMethod!(void, double) setRefraction;
		@GodotName("get_refraction") GodotMethod!(double) getRefraction;
		@GodotName("set_line_width") GodotMethod!(void, double) setLineWidth;
		@GodotName("get_line_width") GodotMethod!(double) getLineWidth;
		@GodotName("set_point_size") GodotMethod!(void, double) setPointSize;
		@GodotName("get_point_size") GodotMethod!(double) getPointSize;
		@GodotName("set_detail_uv") GodotMethod!(void, long) setDetailUv;
		@GodotName("get_detail_uv") GodotMethod!(SpatialMaterial.DetailUV) getDetailUv;
		@GodotName("set_blend_mode") GodotMethod!(void, long) setBlendMode;
		@GodotName("get_blend_mode") GodotMethod!(SpatialMaterial.BlendMode) getBlendMode;
		@GodotName("set_depth_draw_mode") GodotMethod!(void, long) setDepthDrawMode;
		@GodotName("get_depth_draw_mode") GodotMethod!(SpatialMaterial.DepthDrawMode) getDepthDrawMode;
		@GodotName("set_cull_mode") GodotMethod!(void, long) setCullMode;
		@GodotName("get_cull_mode") GodotMethod!(SpatialMaterial.CullMode) getCullMode;
		@GodotName("set_diffuse_mode") GodotMethod!(void, long) setDiffuseMode;
		@GodotName("get_diffuse_mode") GodotMethod!(SpatialMaterial.DiffuseMode) getDiffuseMode;
		@GodotName("set_specular_mode") GodotMethod!(void, long) setSpecularMode;
		@GodotName("get_specular_mode") GodotMethod!(SpatialMaterial.SpecularMode) getSpecularMode;
		@GodotName("set_flag") GodotMethod!(void, long, bool) setFlag;
		@GodotName("get_flag") GodotMethod!(bool, long) getFlag;
		@GodotName("set_feature") GodotMethod!(void, long, bool) setFeature;
		@GodotName("get_feature") GodotMethod!(bool, long) getFeature;
		@GodotName("set_texture") GodotMethod!(void, long, Texture) setTexture;
		@GodotName("get_texture") GodotMethod!(Texture, long) getTexture;
		@GodotName("set_detail_blend_mode") GodotMethod!(void, long) setDetailBlendMode;
		@GodotName("get_detail_blend_mode") GodotMethod!(SpatialMaterial.BlendMode) getDetailBlendMode;
		@GodotName("set_uv1_scale") GodotMethod!(void, Vector3) setUv1Scale;
		@GodotName("get_uv1_scale") GodotMethod!(Vector3) getUv1Scale;
		@GodotName("set_uv1_offset") GodotMethod!(void, Vector3) setUv1Offset;
		@GodotName("get_uv1_offset") GodotMethod!(Vector3) getUv1Offset;
		@GodotName("set_uv1_triplanar_blend_sharpness") GodotMethod!(void, double) setUv1TriplanarBlendSharpness;
		@GodotName("get_uv1_triplanar_blend_sharpness") GodotMethod!(double) getUv1TriplanarBlendSharpness;
		@GodotName("set_uv2_scale") GodotMethod!(void, Vector3) setUv2Scale;
		@GodotName("get_uv2_scale") GodotMethod!(Vector3) getUv2Scale;
		@GodotName("set_uv2_offset") GodotMethod!(void, Vector3) setUv2Offset;
		@GodotName("get_uv2_offset") GodotMethod!(Vector3) getUv2Offset;
		@GodotName("set_uv2_triplanar_blend_sharpness") GodotMethod!(void, double) setUv2TriplanarBlendSharpness;
		@GodotName("get_uv2_triplanar_blend_sharpness") GodotMethod!(double) getUv2TriplanarBlendSharpness;
		@GodotName("set_billboard_mode") GodotMethod!(void, long) setBillboardMode;
		@GodotName("get_billboard_mode") GodotMethod!(SpatialMaterial.BillboardMode) getBillboardMode;
		@GodotName("set_particles_anim_h_frames") GodotMethod!(void, long) setParticlesAnimHFrames;
		@GodotName("get_particles_anim_h_frames") GodotMethod!(long) getParticlesAnimHFrames;
		@GodotName("set_particles_anim_v_frames") GodotMethod!(void, long) setParticlesAnimVFrames;
		@GodotName("get_particles_anim_v_frames") GodotMethod!(long) getParticlesAnimVFrames;
		@GodotName("set_particles_anim_loop") GodotMethod!(void, bool) setParticlesAnimLoop;
		@GodotName("get_particles_anim_loop") GodotMethod!(bool) getParticlesAnimLoop;
		@GodotName("set_depth_deep_parallax") GodotMethod!(void, bool) setDepthDeepParallax;
		@GodotName("is_depth_deep_parallax_enabled") GodotMethod!(bool) isDepthDeepParallaxEnabled;
		@GodotName("set_depth_deep_parallax_min_layers") GodotMethod!(void, long) setDepthDeepParallaxMinLayers;
		@GodotName("get_depth_deep_parallax_min_layers") GodotMethod!(long) getDepthDeepParallaxMinLayers;
		@GodotName("set_depth_deep_parallax_max_layers") GodotMethod!(void, long) setDepthDeepParallaxMaxLayers;
		@GodotName("get_depth_deep_parallax_max_layers") GodotMethod!(long) getDepthDeepParallaxMaxLayers;
		@GodotName("set_depth_deep_parallax_flip_tangent") GodotMethod!(void, bool) setDepthDeepParallaxFlipTangent;
		@GodotName("get_depth_deep_parallax_flip_tangent") GodotMethod!(bool) getDepthDeepParallaxFlipTangent;
		@GodotName("set_depth_deep_parallax_flip_binormal") GodotMethod!(void, bool) setDepthDeepParallaxFlipBinormal;
		@GodotName("get_depth_deep_parallax_flip_binormal") GodotMethod!(bool) getDepthDeepParallaxFlipBinormal;
		@GodotName("set_grow") GodotMethod!(void, double) setGrow;
		@GodotName("get_grow") GodotMethod!(double) getGrow;
		@GodotName("set_emission_operator") GodotMethod!(void, long) setEmissionOperator;
		@GodotName("get_emission_operator") GodotMethod!(SpatialMaterial.EmissionOperator) getEmissionOperator;
		@GodotName("set_ao_light_affect") GodotMethod!(void, double) setAoLightAffect;
		@GodotName("get_ao_light_affect") GodotMethod!(double) getAoLightAffect;
		@GodotName("set_alpha_scissor_threshold") GodotMethod!(void, double) setAlphaScissorThreshold;
		@GodotName("get_alpha_scissor_threshold") GodotMethod!(double) getAlphaScissorThreshold;
		@GodotName("set_grow_enabled") GodotMethod!(void, bool) setGrowEnabled;
		@GodotName("is_grow_enabled") GodotMethod!(bool) isGrowEnabled;
		@GodotName("set_metallic_texture_channel") GodotMethod!(void, long) setMetallicTextureChannel;
		@GodotName("get_metallic_texture_channel") GodotMethod!(SpatialMaterial.TextureChannel) getMetallicTextureChannel;
		@GodotName("set_roughness_texture_channel") GodotMethod!(void, long) setRoughnessTextureChannel;
		@GodotName("get_roughness_texture_channel") GodotMethod!(SpatialMaterial.TextureChannel) getRoughnessTextureChannel;
		@GodotName("set_ao_texture_channel") GodotMethod!(void, long) setAoTextureChannel;
		@GodotName("get_ao_texture_channel") GodotMethod!(SpatialMaterial.TextureChannel) getAoTextureChannel;
		@GodotName("set_refraction_texture_channel") GodotMethod!(void, long) setRefractionTextureChannel;
		@GodotName("get_refraction_texture_channel") GodotMethod!(SpatialMaterial.TextureChannel) getRefractionTextureChannel;
		@GodotName("set_proximity_fade") GodotMethod!(void, bool) setProximityFade;
		@GodotName("is_proximity_fade_enabled") GodotMethod!(bool) isProximityFadeEnabled;
		@GodotName("set_proximity_fade_distance") GodotMethod!(void, double) setProximityFadeDistance;
		@GodotName("get_proximity_fade_distance") GodotMethod!(double) getProximityFadeDistance;
		@GodotName("set_distance_fade") GodotMethod!(void, long) setDistanceFade;
		@GodotName("get_distance_fade") GodotMethod!(SpatialMaterial.DistanceFadeMode) getDistanceFade;
		@GodotName("set_distance_fade_max_distance") GodotMethod!(void, double) setDistanceFadeMaxDistance;
		@GodotName("get_distance_fade_max_distance") GodotMethod!(double) getDistanceFadeMaxDistance;
		@GodotName("set_distance_fade_min_distance") GodotMethod!(void, double) setDistanceFadeMinDistance;
		@GodotName("get_distance_fade_min_distance") GodotMethod!(double) getDistanceFadeMinDistance;
	}
	bool opEquals(in SpatialMaterial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpatialMaterial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SpatialMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpatialMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(SpatialMaterial)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum EmissionOperator : int
	{
		/**
		
		*/
		emissionOpAdd = 0,
		/**
		
		*/
		emissionOpMultiply = 1,
	}
	/// 
	enum DiffuseMode : int
	{
		/**
		Default diffuse scattering algorithm.
		*/
		diffuseBurley = 0,
		/**
		Diffuse scattering ignores roughness.
		*/
		diffuseLambert = 1,
		/**
		Extends Lambert to cover more than 90 degrees when roughness increases.
		*/
		diffuseLambertWrap = 2,
		/**
		Attempts to use roughness to emulate microsurfacing.
		*/
		diffuseOrenNayar = 3,
		/**
		Uses a hard cut for lighting, with smoothing affected by roughness.
		*/
		diffuseToon = 4,
	}
	/// 
	enum SpecularMode : int
	{
		/**
		Default specular blob.
		*/
		specularSchlickGgx = 0,
		/**
		Older specular algorithm, included for compatibility.
		*/
		specularBlinn = 1,
		/**
		Older specular algorithm, included for compatibility.
		*/
		specularPhong = 2,
		/**
		Toon blob which changes size based on roughness.
		*/
		specularToon = 3,
		/**
		No specular blob.
		*/
		specularDisabled = 4,
	}
	/// 
	enum Feature : int
	{
		/**
		
		*/
		featureTransparent = 0,
		/**
		
		*/
		featureEmission = 1,
		/**
		
		*/
		featureNormalMapping = 2,
		/**
		
		*/
		featureRim = 3,
		/**
		
		*/
		featureClearcoat = 4,
		/**
		
		*/
		featureAnisotropy = 5,
		/**
		
		*/
		featureAmbientOcclusion = 6,
		/**
		
		*/
		featureDepthMapping = 7,
		/**
		
		*/
		featureSubsuraceScattering = 8,
		/**
		
		*/
		featureTransmission = 9,
		/**
		
		*/
		featureRefraction = 10,
		/**
		
		*/
		featureDetail = 11,
		/**
		
		*/
		featureMax = 12,
	}
	/// 
	enum Flags : int
	{
		/**
		
		*/
		flagUnshaded = 0,
		/**
		
		*/
		flagUseVertexLighting = 1,
		/**
		
		*/
		flagDisableDepthTest = 2,
		/**
		
		*/
		flagAlbedoFromVertexColor = 3,
		/**
		
		*/
		flagSrgbVertexColor = 4,
		/**
		
		*/
		flagUsePointSize = 5,
		/**
		
		*/
		flagFixedSize = 6,
		/**
		
		*/
		flagBillboardKeepScale = 7,
		/**
		
		*/
		flagUv1UseTriplanar = 8,
		/**
		
		*/
		flagUv2UseTriplanar = 9,
		/**
		
		*/
		flagTriplanarUseWorld = 10,
		/**
		
		*/
		flagAoOnUv2 = 11,
		/**
		
		*/
		flagEmissionOnUv2 = 12,
		/**
		
		*/
		flagUseAlphaScissor = 13,
		/**
		
		*/
		flagAlbedoTextureForceSrgb = 14,
		/**
		
		*/
		flagDontReceiveShadows = 15,
		/**
		
		*/
		flagEnsureCorrectNormals = 16,
		/**
		
		*/
		flagDisableAmbientLight = 17,
		/**
		
		*/
		flagMax = 18,
	}
	/// 
	enum CullMode : int
	{
		/**
		Default cull mode. The back of the object is culled when not visible.
		*/
		cullBack = 0,
		/**
		The front of the object is culled when not visible.
		*/
		cullFront = 1,
		/**
		No culling is performed.
		*/
		cullDisabled = 2,
	}
	/// 
	enum DetailUV : int
	{
		/**
		
		*/
		detailUv1 = 0,
		/**
		
		*/
		detailUv2 = 1,
	}
	/// 
	enum DistanceFadeMode : int
	{
		/**
		
		*/
		distanceFadeDisabled = 0,
		/**
		
		*/
		distanceFadePixelAlpha = 1,
		/**
		
		*/
		distanceFadePixelDither = 2,
		/**
		
		*/
		distanceFadeObjectDither = 3,
	}
	/// 
	enum BillboardMode : int
	{
		/**
		Default value.
		*/
		billboardDisabled = 0,
		/**
		The object's z-axis will always face the camera.
		*/
		billboardEnabled = 1,
		/**
		The object's x-axis will always face the camera.
		*/
		billboardFixedY = 2,
		/**
		Used for particle systems. Enables particle animation options.
		*/
		billboardParticles = 3,
	}
	/// 
	enum DepthDrawMode : int
	{
		/**
		Default depth draw mode. Depth is drawn only for opaque objects.
		*/
		depthDrawOpaqueOnly = 0,
		/**
		Depth draw is calculated for both opaque and transparent objects.
		*/
		depthDrawAlways = 1,
		/**
		No depth draw.
		*/
		depthDrawDisabled = 2,
		/**
		For transparent objects, an opaque pass is made first with the opaque parts, then transparency is drawn.
		*/
		depthDrawAlphaOpaquePrepass = 3,
	}
	/// 
	enum TextureChannel : int
	{
		/**
		
		*/
		textureChannelRed = 0,
		/**
		
		*/
		textureChannelGreen = 1,
		/**
		
		*/
		textureChannelBlue = 2,
		/**
		
		*/
		textureChannelAlpha = 3,
		/**
		
		*/
		textureChannelGrayscale = 4,
	}
	/// 
	enum BlendMode : int
	{
		/**
		Default blend mode.
		*/
		blendModeMix = 0,
		/**
		
		*/
		blendModeAdd = 1,
		/**
		
		*/
		blendModeSub = 2,
		/**
		
		*/
		blendModeMul = 3,
	}
	/// 
	enum TextureParam : int
	{
		/**
		
		*/
		textureAlbedo = 0,
		/**
		
		*/
		textureMetallic = 1,
		/**
		
		*/
		textureRoughness = 2,
		/**
		
		*/
		textureEmission = 3,
		/**
		
		*/
		textureNormal = 4,
		/**
		
		*/
		textureRim = 5,
		/**
		
		*/
		textureClearcoat = 6,
		/**
		
		*/
		textureFlowmap = 7,
		/**
		
		*/
		textureAmbientOcclusion = 8,
		/**
		
		*/
		textureDepth = 9,
		/**
		
		*/
		textureSubsurfaceScattering = 10,
		/**
		
		*/
		textureTransmission = 11,
		/**
		
		*/
		textureRefraction = 12,
		/**
		
		*/
		textureDetailMask = 13,
		/**
		
		*/
		textureDetailAlbedo = 14,
		/**
		
		*/
		textureDetailNormal = 15,
		/**
		
		*/
		textureMax = 16,
	}
	/// 
	enum Constants : int
	{
		diffuseBurley = 0,
		cullBack = 0,
		distanceFadeDisabled = 0,
		emissionOpAdd = 0,
		depthDrawOpaqueOnly = 0,
		blendModeMix = 0,
		featureTransparent = 0,
		flagUnshaded = 0,
		billboardDisabled = 0,
		textureChannelRed = 0,
		textureAlbedo = 0,
		specularSchlickGgx = 0,
		detailUv1 = 0,
		diffuseLambert = 1,
		cullFront = 1,
		specularBlinn = 1,
		blendModeAdd = 1,
		depthDrawAlways = 1,
		textureChannelGreen = 1,
		textureMetallic = 1,
		featureEmission = 1,
		emissionOpMultiply = 1,
		flagUseVertexLighting = 1,
		billboardEnabled = 1,
		detailUv2 = 1,
		distanceFadePixelAlpha = 1,
		blendModeSub = 2,
		textureChannelBlue = 2,
		cullDisabled = 2,
		depthDrawDisabled = 2,
		specularPhong = 2,
		billboardFixedY = 2,
		distanceFadePixelDither = 2,
		diffuseLambertWrap = 2,
		featureNormalMapping = 2,
		textureRoughness = 2,
		flagDisableDepthTest = 2,
		blendModeMul = 3,
		featureRim = 3,
		flagAlbedoFromVertexColor = 3,
		diffuseOrenNayar = 3,
		specularToon = 3,
		billboardParticles = 3,
		depthDrawAlphaOpaquePrepass = 3,
		textureEmission = 3,
		distanceFadeObjectDither = 3,
		textureChannelAlpha = 3,
		featureClearcoat = 4,
		diffuseToon = 4,
		specularDisabled = 4,
		textureChannelGrayscale = 4,
		flagSrgbVertexColor = 4,
		textureNormal = 4,
		flagUsePointSize = 5,
		featureAnisotropy = 5,
		textureRim = 5,
		textureClearcoat = 6,
		featureAmbientOcclusion = 6,
		flagFixedSize = 6,
		flagBillboardKeepScale = 7,
		textureFlowmap = 7,
		featureDepthMapping = 7,
		flagUv1UseTriplanar = 8,
		featureSubsuraceScattering = 8,
		textureAmbientOcclusion = 8,
		featureTransmission = 9,
		flagUv2UseTriplanar = 9,
		textureDepth = 9,
		flagTriplanarUseWorld = 10,
		featureRefraction = 10,
		textureSubsurfaceScattering = 10,
		flagAoOnUv2 = 11,
		featureDetail = 11,
		textureTransmission = 11,
		featureMax = 12,
		flagEmissionOnUv2 = 12,
		textureRefraction = 12,
		flagUseAlphaScissor = 13,
		textureDetailMask = 13,
		textureDetailAlbedo = 14,
		flagAlbedoTextureForceSrgb = 14,
		textureDetailNormal = 15,
		flagDontReceiveShadows = 15,
		textureMax = 16,
		flagEnsureCorrectNormals = 16,
		flagDisableAmbientLight = 17,
		flagMax = 18,
	}
	/**
	
	*/
	void setAlbedo(in Color albedo)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAlbedo, _godot_object, albedo);
	}
	/**
	
	*/
	Color getAlbedo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getAlbedo, _godot_object);
	}
	/**
	
	*/
	void setSpecular(in double specular)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpecular, _godot_object, specular);
	}
	/**
	
	*/
	double getSpecular() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSpecular, _godot_object);
	}
	/**
	
	*/
	void setMetallic(in double metallic)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMetallic, _godot_object, metallic);
	}
	/**
	
	*/
	double getMetallic() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMetallic, _godot_object);
	}
	/**
	
	*/
	void setRoughness(in double roughness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRoughness, _godot_object, roughness);
	}
	/**
	
	*/
	double getRoughness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRoughness, _godot_object);
	}
	/**
	
	*/
	void setEmission(in Color emission)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmission, _godot_object, emission);
	}
	/**
	
	*/
	Color getEmission() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getEmission, _godot_object);
	}
	/**
	
	*/
	void setEmissionEnergy(in double emission_energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionEnergy, _godot_object, emission_energy);
	}
	/**
	
	*/
	double getEmissionEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getEmissionEnergy, _godot_object);
	}
	/**
	
	*/
	void setNormalScale(in double normal_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNormalScale, _godot_object, normal_scale);
	}
	/**
	
	*/
	double getNormalScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getNormalScale, _godot_object);
	}
	/**
	
	*/
	void setRim(in double rim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRim, _godot_object, rim);
	}
	/**
	
	*/
	double getRim() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRim, _godot_object);
	}
	/**
	
	*/
	void setRimTint(in double rim_tint)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRimTint, _godot_object, rim_tint);
	}
	/**
	
	*/
	double getRimTint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRimTint, _godot_object);
	}
	/**
	
	*/
	void setClearcoat(in double clearcoat)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClearcoat, _godot_object, clearcoat);
	}
	/**
	
	*/
	double getClearcoat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getClearcoat, _godot_object);
	}
	/**
	
	*/
	void setClearcoatGloss(in double clearcoat_gloss)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClearcoatGloss, _godot_object, clearcoat_gloss);
	}
	/**
	
	*/
	double getClearcoatGloss() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getClearcoatGloss, _godot_object);
	}
	/**
	
	*/
	void setAnisotropy(in double anisotropy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnisotropy, _godot_object, anisotropy);
	}
	/**
	
	*/
	double getAnisotropy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAnisotropy, _godot_object);
	}
	/**
	
	*/
	void setDepthScale(in double depth_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDepthScale, _godot_object, depth_scale);
	}
	/**
	
	*/
	double getDepthScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDepthScale, _godot_object);
	}
	/**
	
	*/
	void setSubsurfaceScatteringStrength(in double strength)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSubsurfaceScatteringStrength, _godot_object, strength);
	}
	/**
	
	*/
	double getSubsurfaceScatteringStrength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSubsurfaceScatteringStrength, _godot_object);
	}
	/**
	
	*/
	void setTransmission(in Color transmission)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTransmission, _godot_object, transmission);
	}
	/**
	
	*/
	Color getTransmission() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getTransmission, _godot_object);
	}
	/**
	
	*/
	void setRefraction(in double refraction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRefraction, _godot_object, refraction);
	}
	/**
	
	*/
	double getRefraction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRefraction, _godot_object);
	}
	/**
	
	*/
	void setLineWidth(in double line_width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLineWidth, _godot_object, line_width);
	}
	/**
	
	*/
	double getLineWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLineWidth, _godot_object);
	}
	/**
	
	*/
	void setPointSize(in double point_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointSize, _godot_object, point_size);
	}
	/**
	
	*/
	double getPointSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPointSize, _godot_object);
	}
	/**
	
	*/
	void setDetailUv(in long detail_uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDetailUv, _godot_object, detail_uv);
	}
	/**
	
	*/
	SpatialMaterial.DetailUV getDetailUv() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.DetailUV)(_classBinding.getDetailUv, _godot_object);
	}
	/**
	
	*/
	void setBlendMode(in long blend_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBlendMode, _godot_object, blend_mode);
	}
	/**
	
	*/
	SpatialMaterial.BlendMode getBlendMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.BlendMode)(_classBinding.getBlendMode, _godot_object);
	}
	/**
	
	*/
	void setDepthDrawMode(in long depth_draw_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDepthDrawMode, _godot_object, depth_draw_mode);
	}
	/**
	
	*/
	SpatialMaterial.DepthDrawMode getDepthDrawMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.DepthDrawMode)(_classBinding.getDepthDrawMode, _godot_object);
	}
	/**
	
	*/
	void setCullMode(in long cull_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCullMode, _godot_object, cull_mode);
	}
	/**
	
	*/
	SpatialMaterial.CullMode getCullMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.CullMode)(_classBinding.getCullMode, _godot_object);
	}
	/**
	
	*/
	void setDiffuseMode(in long diffuse_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDiffuseMode, _godot_object, diffuse_mode);
	}
	/**
	
	*/
	SpatialMaterial.DiffuseMode getDiffuseMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.DiffuseMode)(_classBinding.getDiffuseMode, _godot_object);
	}
	/**
	
	*/
	void setSpecularMode(in long specular_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpecularMode, _godot_object, specular_mode);
	}
	/**
	
	*/
	SpatialMaterial.SpecularMode getSpecularMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.SpecularMode)(_classBinding.getSpecularMode, _godot_object);
	}
	/**
	
	*/
	void setFlag(in long flag, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlag, _godot_object, flag, enable);
	}
	/**
	
	*/
	bool getFlag(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getFlag, _godot_object, flag);
	}
	/**
	
	*/
	void setFeature(in long feature, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFeature, _godot_object, feature, enable);
	}
	/**
	
	*/
	bool getFeature(in long feature) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getFeature, _godot_object, feature);
	}
	/**
	
	*/
	void setTexture(in long param, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTexture, _godot_object, param, texture);
	}
	/**
	
	*/
	Ref!Texture getTexture(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getTexture, _godot_object, param);
	}
	/**
	
	*/
	void setDetailBlendMode(in long detail_blend_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDetailBlendMode, _godot_object, detail_blend_mode);
	}
	/**
	
	*/
	SpatialMaterial.BlendMode getDetailBlendMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.BlendMode)(_classBinding.getDetailBlendMode, _godot_object);
	}
	/**
	
	*/
	void setUv1Scale(in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUv1Scale, _godot_object, scale);
	}
	/**
	
	*/
	Vector3 getUv1Scale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getUv1Scale, _godot_object);
	}
	/**
	
	*/
	void setUv1Offset(in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUv1Offset, _godot_object, offset);
	}
	/**
	
	*/
	Vector3 getUv1Offset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getUv1Offset, _godot_object);
	}
	/**
	
	*/
	void setUv1TriplanarBlendSharpness(in double sharpness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUv1TriplanarBlendSharpness, _godot_object, sharpness);
	}
	/**
	
	*/
	double getUv1TriplanarBlendSharpness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getUv1TriplanarBlendSharpness, _godot_object);
	}
	/**
	
	*/
	void setUv2Scale(in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUv2Scale, _godot_object, scale);
	}
	/**
	
	*/
	Vector3 getUv2Scale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getUv2Scale, _godot_object);
	}
	/**
	
	*/
	void setUv2Offset(in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUv2Offset, _godot_object, offset);
	}
	/**
	
	*/
	Vector3 getUv2Offset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getUv2Offset, _godot_object);
	}
	/**
	
	*/
	void setUv2TriplanarBlendSharpness(in double sharpness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUv2TriplanarBlendSharpness, _godot_object, sharpness);
	}
	/**
	
	*/
	double getUv2TriplanarBlendSharpness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getUv2TriplanarBlendSharpness, _godot_object);
	}
	/**
	
	*/
	void setBillboardMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBillboardMode, _godot_object, mode);
	}
	/**
	
	*/
	SpatialMaterial.BillboardMode getBillboardMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.BillboardMode)(_classBinding.getBillboardMode, _godot_object);
	}
	/**
	
	*/
	void setParticlesAnimHFrames(in long frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParticlesAnimHFrames, _godot_object, frames);
	}
	/**
	
	*/
	long getParticlesAnimHFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getParticlesAnimHFrames, _godot_object);
	}
	/**
	
	*/
	void setParticlesAnimVFrames(in long frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParticlesAnimVFrames, _godot_object, frames);
	}
	/**
	
	*/
	long getParticlesAnimVFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getParticlesAnimVFrames, _godot_object);
	}
	/**
	
	*/
	void setParticlesAnimLoop(in bool loop)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParticlesAnimLoop, _godot_object, loop);
	}
	/**
	
	*/
	bool getParticlesAnimLoop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getParticlesAnimLoop, _godot_object);
	}
	/**
	
	*/
	void setDepthDeepParallax(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDepthDeepParallax, _godot_object, enable);
	}
	/**
	
	*/
	bool isDepthDeepParallaxEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDepthDeepParallaxEnabled, _godot_object);
	}
	/**
	
	*/
	void setDepthDeepParallaxMinLayers(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDepthDeepParallaxMinLayers, _godot_object, layer);
	}
	/**
	
	*/
	long getDepthDeepParallaxMinLayers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDepthDeepParallaxMinLayers, _godot_object);
	}
	/**
	
	*/
	void setDepthDeepParallaxMaxLayers(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDepthDeepParallaxMaxLayers, _godot_object, layer);
	}
	/**
	
	*/
	long getDepthDeepParallaxMaxLayers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDepthDeepParallaxMaxLayers, _godot_object);
	}
	/**
	
	*/
	void setDepthDeepParallaxFlipTangent(in bool flip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDepthDeepParallaxFlipTangent, _godot_object, flip);
	}
	/**
	
	*/
	bool getDepthDeepParallaxFlipTangent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getDepthDeepParallaxFlipTangent, _godot_object);
	}
	/**
	
	*/
	void setDepthDeepParallaxFlipBinormal(in bool flip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDepthDeepParallaxFlipBinormal, _godot_object, flip);
	}
	/**
	
	*/
	bool getDepthDeepParallaxFlipBinormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getDepthDeepParallaxFlipBinormal, _godot_object);
	}
	/**
	
	*/
	void setGrow(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGrow, _godot_object, amount);
	}
	/**
	
	*/
	double getGrow() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGrow, _godot_object);
	}
	/**
	
	*/
	void setEmissionOperator(in long operator)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionOperator, _godot_object, operator);
	}
	/**
	
	*/
	SpatialMaterial.EmissionOperator getEmissionOperator() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.EmissionOperator)(_classBinding.getEmissionOperator, _godot_object);
	}
	/**
	
	*/
	void setAoLightAffect(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAoLightAffect, _godot_object, amount);
	}
	/**
	
	*/
	double getAoLightAffect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAoLightAffect, _godot_object);
	}
	/**
	
	*/
	void setAlphaScissorThreshold(in double threshold)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAlphaScissorThreshold, _godot_object, threshold);
	}
	/**
	
	*/
	double getAlphaScissorThreshold() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAlphaScissorThreshold, _godot_object);
	}
	/**
	
	*/
	void setGrowEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGrowEnabled, _godot_object, enable);
	}
	/**
	
	*/
	bool isGrowEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isGrowEnabled, _godot_object);
	}
	/**
	
	*/
	void setMetallicTextureChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMetallicTextureChannel, _godot_object, channel);
	}
	/**
	
	*/
	SpatialMaterial.TextureChannel getMetallicTextureChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.TextureChannel)(_classBinding.getMetallicTextureChannel, _godot_object);
	}
	/**
	
	*/
	void setRoughnessTextureChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRoughnessTextureChannel, _godot_object, channel);
	}
	/**
	
	*/
	SpatialMaterial.TextureChannel getRoughnessTextureChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.TextureChannel)(_classBinding.getRoughnessTextureChannel, _godot_object);
	}
	/**
	
	*/
	void setAoTextureChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAoTextureChannel, _godot_object, channel);
	}
	/**
	
	*/
	SpatialMaterial.TextureChannel getAoTextureChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.TextureChannel)(_classBinding.getAoTextureChannel, _godot_object);
	}
	/**
	
	*/
	void setRefractionTextureChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRefractionTextureChannel, _godot_object, channel);
	}
	/**
	
	*/
	SpatialMaterial.TextureChannel getRefractionTextureChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.TextureChannel)(_classBinding.getRefractionTextureChannel, _godot_object);
	}
	/**
	
	*/
	void setProximityFade(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProximityFade, _godot_object, enabled);
	}
	/**
	
	*/
	bool isProximityFadeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isProximityFadeEnabled, _godot_object);
	}
	/**
	
	*/
	void setProximityFadeDistance(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProximityFadeDistance, _godot_object, distance);
	}
	/**
	
	*/
	double getProximityFadeDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getProximityFadeDistance, _godot_object);
	}
	/**
	
	*/
	void setDistanceFade(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDistanceFade, _godot_object, mode);
	}
	/**
	
	*/
	SpatialMaterial.DistanceFadeMode getDistanceFade() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.DistanceFadeMode)(_classBinding.getDistanceFade, _godot_object);
	}
	/**
	
	*/
	void setDistanceFadeMaxDistance(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDistanceFadeMaxDistance, _godot_object, distance);
	}
	/**
	
	*/
	double getDistanceFadeMaxDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDistanceFadeMaxDistance, _godot_object);
	}
	/**
	
	*/
	void setDistanceFadeMinDistance(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDistanceFadeMinDistance, _godot_object, distance);
	}
	/**
	
	*/
	double getDistanceFadeMinDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDistanceFadeMinDistance, _godot_object);
	}
	/**
	If `true`, transparency is enabled on the body. Default value: `false`. See also $(D paramsBlendMode).
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
	If `true`, the object is unaffected by lighting. Default value: `false`.
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
	If `true`, lighting is calculated per vertex rather than per pixel. This may increase performance on low-end devices. Default value: `false`.
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
	If `true`, depth testing is disabled and the object will be drawn in render order.
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
	If `true`, render point size can be changed. Note: this is only effective for objects whose geometry is point-based rather than triangle-based. See also $(D paramsPointSize).
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
	If `true`, triplanar mapping is calculated in world space rather than object local space. See also $(D uv1Triplanar). Default value: `false`.
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
	If `true`, the object is rendered at the same size regardless of distance. Default value: `false`.
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
	If `true`, the object receives no shadow that would otherwise be cast onto it. Default value: `false`.
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
	If `true`, the object receives no ambient light. Default value: `false`.
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
	If `true`, the vertex color is used as albedo color. Default value: `false`.
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
	/**
	If `true`, the model's vertex colors are processed as sRGB mode. Default value: `false`.
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
	The algorithm used for diffuse light scattering. See $(D diffusemode).
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
	The method for rendering the specular blob. See $(D specularmode).
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
	The material's blend mode. Note that values other than `Mix` force the object into the transparent pipeline. See $(D blendmode).
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
	Which side of the object is not drawn when backfaces are rendered. See $(D cullmode).
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
	Determines when depth rendering takes place. See $(D depthdrawmode). See also $(D flagsTransparent).
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
	The point size in pixels. See $(D flagsUsePointSize).
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
	Controls how the object faces the camera. See $(D billboardmode).
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
	If `true`, enables the vertex grow setting. See $(D paramsGrowAmount).
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
	Grows object vertices in the direction of their normals.
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
	The number of horizontal frames in the particle spritesheet. Only enabled when using `BillboardMode.BILLBOARD_PARTICLES`. See $(D paramsBillboardMode).
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
	The number of vertical frames in the particle spritesheet. Only enabled when using `BillboardMode.BILLBOARD_PARTICLES`. See $(D paramsBillboardMode).
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
	If `true`, particle animations are looped. Only enabled when using `BillboardMode.BILLBOARD_PARTICLES`. See $(D paramsBillboardMode).
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
	The material's base color.
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
	The reflectivity of the object's surface. The higher the value the more light is reflected.
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
	General reflectivity amount. Note: unlike $(D metallic), this is not energy-conserving, so it should be left at `0.5` in most cases.  See also $(D roughness).
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
	Surface reflection. A value of `0` represents a perfect mirror while a value of `1` completely blurs the reflection. See also $(D metallic).
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
	If `true`, the body emits light.
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
	The emitted light's color. See $(D emissionEnabled).
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
	The emitted light's strength. See $(D emissionEnabled).
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
	If `true`, normal mapping is enabled.
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
	The strength of the normal map's effect.
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
	If `true`, rim effect is enabled. Default value: `false`.
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
	The amount of to blend light and albedo color when rendering rim effect. If `0` the light color is used, while `1` means albedo color is used. An intermediate value generally works best.
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
	If `true`, clearcoat rendering is enabled. Adds a secondary transparent pass to the material. Default value: `false`.
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
	If `true`, anisotropy is enabled. Changes the shape of the specular blob and aligns it to tangent space. Default value: `false`.
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
	The strength of the anisotropy effect.
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
	If `true`, ambient occlusion is enabled.
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
	If `true`, Depth mapping is enabled. See also $(D normalEnabled).
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
	If `true`, subsurface scattering is enabled. Emulates light that penetrates an object's surface, is scattered, and then emerges.
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
	The strength of the subsurface scattering effect.
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
	If `true`, the transmission effect is enabled. Default value: `false`.
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
	The color used by the transmission effect. Represents the light passing through an object.
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
	If `true`, the refraction effect is enabled. Distorts transparency based on light from behind the object. Default value: `false`.
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
	The strength of the refraction effect.
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
	If `true`, the proximity and distance fade effect is enabled. Default value: `false`.
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
	@property double distanceFadeMaxDistance()
	{
		return getDistanceFadeMaxDistance();
	}
	/// ditto
	@property void distanceFadeMaxDistance(double v)
	{
		setDistanceFadeMaxDistance(v);
	}
}
