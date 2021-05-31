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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.material;
import godot.resource;
import godot.reference;
import godot.texture;
/**
Default 3D rendering material.

This provides a default material with a wide variety of rendering features and properties without the need to write shader code. See the tutorial below for details.
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
	enum EmissionOperator : int
	{
		/**
		Adds the emission color to the color from the emission texture.
		*/
		emissionOpAdd = 0,
		/**
		Multiplies the emission color by the color from the emission texture.
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
		Constant for setting $(D flagsTransparent).
		*/
		featureTransparent = 0,
		/**
		Constant for setting $(D emissionEnabled).
		*/
		featureEmission = 1,
		/**
		Constant for setting $(D normalEnabled).
		*/
		featureNormalMapping = 2,
		/**
		Constant for setting $(D rimEnabled).
		*/
		featureRim = 3,
		/**
		Constant for setting $(D clearcoatEnabled).
		*/
		featureClearcoat = 4,
		/**
		Constant for setting $(D anisotropyEnabled).
		*/
		featureAnisotropy = 5,
		/**
		Constant for setting $(D aoEnabled).
		*/
		featureAmbientOcclusion = 6,
		/**
		Constant for setting $(D depthEnabled).
		*/
		featureDepthMapping = 7,
		/**
		Constant for setting $(D subsurfScatterEnabled).
		*/
		featureSubsuraceScattering = 8,
		/**
		Constant for setting $(D transmissionEnabled).
		*/
		featureTransmission = 9,
		/**
		Constant for setting $(D refractionEnabled).
		*/
		featureRefraction = 10,
		/**
		Constant for setting $(D detailEnabled).
		*/
		featureDetail = 11,
		/**
		Represents the size of the $(D feature) enum.
		*/
		featureMax = 12,
	}
	/// 
	enum Flags : int
	{
		/**
		No lighting is used on the object. Color comes directly from `ALBEDO`.
		*/
		flagUnshaded = 0,
		/**
		Lighting is calculated per-vertex rather than per-pixel. This can be used to increase the speed of the shader at the cost of quality.
		*/
		flagUseVertexLighting = 1,
		/**
		Disables the depth test, so this object is drawn on top of all others. However, objects drawn after it in the draw order may cover it.
		*/
		flagDisableDepthTest = 2,
		/**
		Set `ALBEDO` to the per-vertex color specified in the mesh.
		*/
		flagAlbedoFromVertexColor = 3,
		/**
		Vertex color is in sRGB space and needs to be converted to linear. Only applies in the GLES3 renderer.
		*/
		flagSrgbVertexColor = 4,
		/**
		Uses point size to alter the size of primitive points. Also changes the albedo texture lookup to use `POINT_COORD` instead of `UV`.
		*/
		flagUsePointSize = 5,
		/**
		Object is scaled by depth so that it always appears the same size on screen.
		*/
		flagFixedSize = 6,
		/**
		Shader will keep the scale set for the mesh. Otherwise the scale is lost when billboarding. Only applies when $(D paramsBillboardMode) is $(D constant BILLBOARD_ENABLED).
		*/
		flagBillboardKeepScale = 7,
		/**
		Use triplanar texture lookup for all texture lookups that would normally use `UV`.
		*/
		flagUv1UseTriplanar = 8,
		/**
		Use triplanar texture lookup for all texture lookups that would normally use `UV2`.
		*/
		flagUv2UseTriplanar = 9,
		/**
		Use world coordinates in the triplanar texture lookup instead of local coordinates.
		*/
		flagTriplanarUseWorld = 10,
		/**
		Use `UV2` coordinates to look up from the $(D aoTexture).
		*/
		flagAoOnUv2 = 11,
		/**
		Use `UV2` coordinates to look up from the $(D emissionTexture).
		*/
		flagEmissionOnUv2 = 12,
		/**
		Use alpha scissor. Set by $(D paramsUseAlphaScissor).
		*/
		flagUseAlphaScissor = 13,
		/**
		Forces the shader to convert albedo from sRGB space to linear space.
		*/
		flagAlbedoTextureForceSrgb = 14,
		/**
		Disables receiving shadows from other objects.
		*/
		flagDontReceiveShadows = 15,
		/**
		Ensures that normals appear correct, even with non-uniform scaling.
		*/
		flagEnsureCorrectNormals = 16,
		/**
		Disables receiving ambient light.
		*/
		flagDisableAmbientLight = 17,
		/**
		Enables the shadow to opacity feature.
		*/
		flagUseShadowToOpacity = 18,
		/**
		Represents the size of the $(D flags) enum.
		*/
		flagMax = 19,
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
		Use `UV` with the detail texture.
		*/
		detailUv1 = 0,
		/**
		Use `UV2` with the detail texture.
		*/
		detailUv2 = 1,
	}
	/// 
	enum DistanceFadeMode : int
	{
		/**
		Do not use distance fade.
		*/
		distanceFadeDisabled = 0,
		/**
		Smoothly fades the object out based on each pixel's distance from the camera using the alpha channel.
		*/
		distanceFadePixelAlpha = 1,
		/**
		Smoothly fades the object out based on each pixel's distance from the camera using a dither approach. Dithering discards pixels based on a set pattern to smoothly fade without enabling transparency. On certain hardware this can be faster than $(D constant DISTANCE_FADE_PIXEL_ALPHA).
		*/
		distanceFadePixelDither = 2,
		/**
		Smoothly fades the object out based on the object's distance from the camera using a dither approach. Dithering discards pixels based on a set pattern to smoothly fade without enabling transparency. On certain hardware this can be faster than $(D constant DISTANCE_FADE_PIXEL_ALPHA).
		*/
		distanceFadeObjectDither = 3,
	}
	/// 
	enum BillboardMode : int
	{
		/**
		Billboard mode is disabled.
		*/
		billboardDisabled = 0,
		/**
		The object's Z axis will always face the camera.
		*/
		billboardEnabled = 1,
		/**
		The object's X axis will always face the camera.
		*/
		billboardFixedY = 2,
		/**
		Used for particle systems when assigned to $(D Particles) and $(D CPUParticles) nodes. Enables `particles_anim_*` properties.
		The $(D ParticlesMaterial.animSpeed) or $(D CPUParticles.animSpeed) should also be set to a positive value for the animation to play.
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
		Used to read from the red channel of a texture.
		*/
		textureChannelRed = 0,
		/**
		Used to read from the green channel of a texture.
		*/
		textureChannelGreen = 1,
		/**
		Used to read from the blue channel of a texture.
		*/
		textureChannelBlue = 2,
		/**
		Used to read from the alpha channel of a texture.
		*/
		textureChannelAlpha = 3,
		/**
		Currently unused.
		*/
		textureChannelGrayscale = 4,
	}
	/// 
	enum BlendMode : int
	{
		/**
		Default blend mode. The color of the object is blended over the background based on the object's alpha value.
		*/
		blendModeMix = 0,
		/**
		The color of the object is added to the background.
		*/
		blendModeAdd = 1,
		/**
		The color of the object is subtracted from the background.
		*/
		blendModeSub = 2,
		/**
		The color of the object is multiplied by the background.
		*/
		blendModeMul = 3,
	}
	/// 
	enum TextureParam : int
	{
		/**
		Texture specifying per-pixel color.
		*/
		textureAlbedo = 0,
		/**
		Texture specifying per-pixel metallic value.
		*/
		textureMetallic = 1,
		/**
		Texture specifying per-pixel roughness value.
		*/
		textureRoughness = 2,
		/**
		Texture specifying per-pixel emission color.
		*/
		textureEmission = 3,
		/**
		Texture specifying per-pixel normal vector.
		*/
		textureNormal = 4,
		/**
		Texture specifying per-pixel rim value.
		*/
		textureRim = 5,
		/**
		Texture specifying per-pixel clearcoat value.
		*/
		textureClearcoat = 6,
		/**
		Texture specifying per-pixel flowmap direction for use with $(D anisotropy).
		*/
		textureFlowmap = 7,
		/**
		Texture specifying per-pixel ambient occlusion value.
		*/
		textureAmbientOcclusion = 8,
		/**
		Texture specifying per-pixel depth.
		*/
		textureDepth = 9,
		/**
		Texture specifying per-pixel subsurface scattering.
		*/
		textureSubsurfaceScattering = 10,
		/**
		Texture specifying per-pixel transmission color.
		*/
		textureTransmission = 11,
		/**
		Texture specifying per-pixel refraction strength.
		*/
		textureRefraction = 12,
		/**
		Texture specifying per-pixel detail mask blending value.
		*/
		textureDetailMask = 13,
		/**
		Texture specifying per-pixel detail color.
		*/
		textureDetailAlbedo = 14,
		/**
		Texture specifying per-pixel detail normal.
		*/
		textureDetailNormal = 15,
		/**
		Represents the size of the $(D textureparam) enum.
		*/
		textureMax = 16,
	}
	/// 
	enum Constants : int
	{
		emissionOpAdd = 0,
		cullBack = 0,
		depthDrawOpaqueOnly = 0,
		diffuseBurley = 0,
		distanceFadeDisabled = 0,
		blendModeMix = 0,
		featureTransparent = 0,
		billboardDisabled = 0,
		flagUnshaded = 0,
		textureAlbedo = 0,
		textureChannelRed = 0,
		specularSchlickGgx = 0,
		detailUv1 = 0,
		diffuseLambert = 1,
		cullFront = 1,
		specularBlinn = 1,
		blendModeAdd = 1,
		textureMetallic = 1,
		depthDrawAlways = 1,
		textureChannelGreen = 1,
		featureEmission = 1,
		emissionOpMultiply = 1,
		flagUseVertexLighting = 1,
		distanceFadePixelAlpha = 1,
		billboardEnabled = 1,
		detailUv2 = 1,
		flagDisableDepthTest = 2,
		blendModeSub = 2,
		textureRoughness = 2,
		featureNormalMapping = 2,
		textureChannelBlue = 2,
		cullDisabled = 2,
		depthDrawDisabled = 2,
		diffuseLambertWrap = 2,
		specularPhong = 2,
		billboardFixedY = 2,
		distanceFadePixelDither = 2,
		distanceFadeObjectDither = 3,
		textureEmission = 3,
		billboardParticles = 3,
		specularToon = 3,
		diffuseOrenNayar = 3,
		flagAlbedoFromVertexColor = 3,
		featureRim = 3,
		textureChannelAlpha = 3,
		blendModeMul = 3,
		depthDrawAlphaOpaquePrepass = 3,
		diffuseToon = 4,
		featureClearcoat = 4,
		textureChannelGrayscale = 4,
		specularDisabled = 4,
		flagSrgbVertexColor = 4,
		textureNormal = 4,
		flagUsePointSize = 5,
		featureAnisotropy = 5,
		textureRim = 5,
		featureAmbientOcclusion = 6,
		textureClearcoat = 6,
		flagFixedSize = 6,
		flagBillboardKeepScale = 7,
		textureFlowmap = 7,
		featureDepthMapping = 7,
		flagUv1UseTriplanar = 8,
		featureSubsuraceScattering = 8,
		textureAmbientOcclusion = 8,
		textureDepth = 9,
		flagUv2UseTriplanar = 9,
		featureTransmission = 9,
		flagTriplanarUseWorld = 10,
		featureRefraction = 10,
		textureSubsurfaceScattering = 10,
		featureDetail = 11,
		textureTransmission = 11,
		flagAoOnUv2 = 11,
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
		flagUseShadowToOpacity = 18,
		flagMax = 19,
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
	Returns `true`, if the specified $(D feature) is enabled.
	*/
	bool getFeature(in long feature) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFeature, _godot_object, feature);
	}
	/**
	Returns `true`, if the specified flag is enabled. See $(D flags) enumerator for options.
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
	Returns the $(D Texture) associated with the specified $(D textureparam).
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
	If `true`, enables the specified $(D feature). Many features that are available in $(D SpatialMaterial)s need to be enabled before use. This way the cost for using the feature is only incurred when specified. Features can also be enabled by setting the corresponding member to `true`.
	*/
	void setFeature(in long feature, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFeature, _godot_object, feature, enable);
	}
	/**
	If `true`, enables the specified flag. Flags are optional behaviour that can be turned on and off. Only one flag can be enabled at a time with this function, the flag enumerators cannot be bit-masked together to enable or disable multiple flags at once. Flags can also be enabled by setting the corresponding member to `true`. See $(D flags) enumerator for options.
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
	Sets the $(D Texture) to be used by the specified $(D textureparam). This function is called when setting members ending in `*_texture`.
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
	Texture to multiply by $(D albedoColor). Used for basic texturing of objects.
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
	If `true`, anisotropy is enabled. Changes the shape of the specular blob and aligns it to tangent space. Mesh tangents are needed for this to work. If the mesh does not contain tangents the anisotropy effect will appear broken.
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
	Texture that offsets the tangent map for anisotropy calculations.
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
	If `true`, ambient occlusion is enabled. Ambient occlusion darkens areas based on the $(D aoTexture).
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
	Amount that ambient occlusion affects lighting from lights. If `0`, ambient occlusion only affects ambient light. If `1`, ambient occlusion affects lights just as much as it affects ambient light. This can be used to impact the strength of the ambient occlusion effect, but typically looks unrealistic.
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
	If `true`, use `UV2` coordinates to look up from the $(D aoTexture).
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
	Texture that defines the amount of ambient occlusion for a given point on the object.
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
	Specifies the channel of the $(D aoTexture) in which the ambient occlusion information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored metallic in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.
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
	Sets the strength of the clearcoat effect. Setting to `0` looks the same as disabling the clearcoat effect.
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
	If `true`, clearcoat rendering is enabled. Adds a secondary transparent pass to the lighting calculation resulting in an added specular blob. This makes materials appear as if they have a clear layer on them that can be either glossy or rough.
	$(B Note:) Clearcoat rendering is not visible if the material has $(D flagsUnshaded) set to `true`.
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
	Sets the roughness of the clearcoat pass. A higher value results in a smoother clearcoat while a lower value results in a rougher clearcoat.
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
	Texture that defines the strength of the clearcoat effect and the glossiness of the clearcoat. Strength is specified in the red channel while glossiness is specified in the green channel.
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
	If `true`, the shader will read depth texture at multiple points along the view ray to determine occlusion and parrallax. This can be very performance demanding, but results in more realistic looking depth mapping.
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
	If `true`, depth mapping is enabled (also called "parallax mapping" or "height mapping"). See also $(D normalEnabled).
	$(B Note:) Depth mapping is not supported if triplanar mapping is used on the same material. The value of $(D depthEnabled) will be ignored if $(D uv1Triplanar) is enabled.
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
	If `true`, direction of the binormal is flipped before using in the depth effect. This may be necessary if you have encoded your binormals in a way that is conflicting with the depth effect.
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
	If `true`, direction of the tangent is flipped before using in the depth effect. This may be necessary if you have encoded your tangents in a way that is conflicting with the depth effect.
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
	Number of layers to use when using $(D depthDeepParallax) and the view direction is perpendicular to the surface of the object. A higher number will be more performance demanding while a lower number may not look as crisp.
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
	Number of layers to use when using $(D depthDeepParallax) and the view direction is parallel to the surface of the object. A higher number will be more performance demanding while a lower number may not look as crisp.
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
	Scales the depth offset effect. A higher number will create a larger depth.
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
	Texture used to determine depth at a given pixel. Depth is always stored in the red channel.
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
	Texture that specifies the color of the detail overlay.
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
	Specifies how the $(D detailAlbedo) should blend with the current `ALBEDO`. See $(D blendmode) for options.
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
	If `true`, enables the detail overlay. Detail is a second texture that gets mixed over the surface of the object based on $(D detailMask). This can be used to add variation to objects, or to blend between two different albedo/normal textures.
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
	Texture used to specify how the detail textures get blended with the base textures.
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
	Texture that specifies the per-pixel normal of the detail overlay.
	$(B Note:) Godot expects the normal map to use X+, Y-, and Z+ coordinates. See $(D url=http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates)this page$(D /url) for a comparison of normal map coordinates expected by popular engines.
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
	Specifies whether to use `UV` or `UV2` for the detail layer. See $(D detailuv) for options.
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
	Distance at which the object appears fully opaque.
	$(B Note:) If `distance_fade_max_distance` is less than `distance_fade_min_distance`, the behavior will be reversed. The object will start to fade away at `distance_fade_max_distance` and will fully disappear once it reaches `distance_fade_min_distance`.
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
	Distance at which the object starts to become visible. If the object is less than this distance away, it will be invisible.
	$(B Note:) If `distance_fade_min_distance` is greater than `distance_fade_max_distance`, the behavior will be reversed. The object will start to fade away at `distance_fade_max_distance` and will fully disappear once it reaches `distance_fade_min_distance`.
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
	Specifies which type of fade to use. Can be any of the $(D distancefademode)s.
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
	If `true`, the body emits light. Emitting light makes the object appear brighter. The object can also cast light on other objects if a $(D GIProbe) or $(D BakedLightmap) is used and this object is used in baked lighting.
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
	Use `UV2` to read from the $(D emissionTexture).
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
	Sets how $(D emission) interacts with $(D emissionTexture). Can either add or multiply. See $(D emissionoperator) for options.
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
	Texture that specifies how much surface emits light at a given point.
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
	Forces a conversion of the $(D albedoTexture) from sRGB space to linear space.
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
	If `true`, the object receives no ambient light.
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
	If `true`, the object receives no shadow that would otherwise be cast onto it.
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
	If `true`, the shader will compute extra operations to make sure the normal stays correct when using a non-uniform scale. Only enable if using non-uniform scaling.
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
	If `true`, the object is rendered at the same size regardless of distance.
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
	If `true`, transparency is enabled on the body. See also $(D paramsBlendMode).
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
	If `true`, the object is unaffected by lighting.
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
	If `true`, render point size can be changed.
	$(B Note:) this is only effective for objects whose geometry is point-based rather than triangle-based. See also $(D paramsPointSize).
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
	If `true`, enables the "shadow to opacity" render mode where lighting modifies the alpha so shadowed areas are opaque and non-shadowed areas are transparent. Useful for overlaying shadows onto a camera feed in AR.
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
	If `true`, lighting is calculated per vertex rather than per pixel. This may increase performance on low-end devices.
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
	If `true`, triplanar mapping is calculated in world space rather than object local space. See also $(D uv1Triplanar).
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
	A high value makes the material appear more like a metal. Non-metals use their albedo as the diffuse color and add diffuse to the specular reflection. With non-metals, the reflection appears on top of the albedo color. Metals use their albedo as a multiplier to the specular reflection and set the diffuse color to black resulting in a tinted reflection. Materials work better when fully metal or fully non-metal, values between `0` and `1` should only be used for blending between metal and non-metal sections. To alter the amount of reflection use $(D roughness).
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
	Sets the size of the specular lobe. The specular lobe is the bright spot that is reflected from light sources.
	$(B Note:) unlike $(D metallic), this is not energy-conserving, so it should be left at `0.5` in most cases. See also $(D roughness).
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
	Texture used to specify metallic for an object. This is multiplied by $(D metallic).
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
	Specifies the channel of the $(D metallicTexture) in which the metallic information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored metallic in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.
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
	Texture used to specify the normal at a given pixel. The `normal_texture` only uses the red and green channels. The normal read from `normal_texture` is oriented around the surface normal provided by the $(D Mesh).
	$(B Note:) Godot expects the normal map to use X+, Y-, and Z+ coordinates. See $(D url=http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates)this page$(D /url) for a comparison of normal map coordinates expected by popular engines.
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
	Threshold at which the alpha scissor will discard values.
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
	If `true`, the shader will keep the scale set for the mesh. Otherwise the scale is lost when billboarding. Only applies when $(D paramsBillboardMode) is $(D constant BILLBOARD_ENABLED).
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
	Controls how the object faces the camera. See $(D billboardmode).
	$(B Note:) Billboard mode is not suitable for VR because the left-right vector of the camera is not horizontal when the screen is attached to your head instead of on the table. See $(D url=https://github.com/godotengine/godot/issues/41567)GitHub issue #41567$(D /url) for details.
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
	The material's blend mode.
	$(B Note:) Values other than `Mix` force the object into the transparent pipeline. See $(D blendmode).
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
	Currently unimplemented in Godot.
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
	If `true`, the shader will discard all pixels that have an alpha value less than $(D paramsAlphaScissorThreshold).
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
	The number of horizontal frames in the particle sprite sheet. Only enabled when using $(D constant BILLBOARD_PARTICLES). See $(D paramsBillboardMode).
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
	If `true`, particle animations are looped. Only enabled when using $(D constant BILLBOARD_PARTICLES). See $(D paramsBillboardMode).
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
	The number of vertical frames in the particle sprite sheet. Only enabled when using $(D constant BILLBOARD_PARTICLES). See $(D paramsBillboardMode).
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
	Distance over which the fade effect takes place. The larger the distance the longer it takes for an object to fade.
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
	If `true`, the proximity fade effect is enabled. The proximity fade effect fades out each pixel based on its distance to another object.
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
	If `true`, the refraction effect is enabled. Distorts transparency based on light from behind the object.
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
	Texture that controls the strength of the refraction per-pixel. Multiplied by $(D refractionScale).
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
	Specifies the channel of the $(D aoTexture) in which the ambient occlusion information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored metallic in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.
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
	Sets the strength of the rim lighting effect.
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
	If `true`, rim effect is enabled. Rim lighting increases the brightness at glancing angles on an object.
	$(B Note:) Rim lighting is not visible if the material has $(D flagsUnshaded) set to `true`.
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
	Texture used to set the strength of the rim lighting effect per-pixel. Multiplied by $(D rim).
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
	Texture used to control the roughness per-pixel. Multiplied by $(D roughness).
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
	Specifies the channel of the $(D aoTexture) in which the ambient occlusion information is stored. This is useful when you store the information for multiple effects in a single texture. For example if you stored metallic in the red channel, roughness in the blue, and ambient occlusion in the green you could reduce the number of textures you use.
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
	Texture used to control the subsurface scattering strength. Stored in the red texture channel. Multiplied by $(D subsurfScatterStrength).
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
	If `true`, the transmission effect is enabled.
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
	Texture used to control the transmission effect per-pixel. Added to $(D transmission).
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
	How much to offset the `UV` coordinates. This amount will be added to `UV` in the vertex function. This can be used to offset a texture.
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
	How much to scale the `UV` coordinates. This is multiplied by `UV` in the vertex function.
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
	If `true`, instead of using `UV` textures will use a triplanar texture lookup to determine how to apply textures. Triplanar uses the orientation of the object's surface to blend between texture coordinates. It reads from the source texture 3 times, once for each axis and then blends between the results based on how closely the pixel aligns with each axis. This is often used for natural features to get a realistic blend of materials. Because triplanar texturing requires many more texture reads per-pixel it is much slower than normal UV texturing. Additionally, because it is blending the texture between the three axes, it is unsuitable when you are trying to achieve crisp texturing.
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
	A lower number blends the texture more softly while a higher number blends the texture more sharply.
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
	How much to offset the `UV2` coordinates. This amount will be added to `UV2` in the vertex function. This can be used to offset a texture.
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
	How much to scale the `UV2` coordinates. This is multiplied by `UV2` in the vertex function.
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
	If `true`, instead of using `UV2` textures will use a triplanar texture lookup to determine how to apply textures. Triplanar uses the orientation of the object's surface to blend between texture coordinates. It reads from the source texture 3 times, once for each axis and then blends between the results based on how closely the pixel aligns with each axis. This is often used for natural features to get a realistic blend of materials. Because triplanar texturing requires many more texture reads per-pixel it is much slower than normal UV texturing. Additionally, because it is blending the texture between the three axes, it is unsuitable when you are trying to achieve crisp texturing.
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
	A lower number blends the texture more softly while a higher number blends the texture more sharply.
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
	If `true`, the model's vertex colors are processed as sRGB mode.
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
	If `true`, the vertex color is used as albedo color.
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
