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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.material;
import godot.texture;
/**

*/
@GodotBaseClass struct SpatialMaterial
{
	static immutable string _GODOT_internal_name = "SpatialMaterial";
public:
@nogc nothrow:
	union { godot_object _godot_object; Material _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		
		*/
		diffuseBurley = 0,
		/**
		
		*/
		diffuseLambert = 1,
		/**
		
		*/
		diffuseLambertWrap = 2,
		/**
		
		*/
		diffuseOrenNayar = 3,
		/**
		
		*/
		diffuseToon = 4,
	}
	/// 
	enum SpecularMode : int
	{
		/**
		
		*/
		specularSchlickGgx = 0,
		/**
		
		*/
		specularBlinn = 1,
		/**
		
		*/
		specularPhong = 2,
		/**
		
		*/
		specularToon = 3,
		/**
		
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
		flagUv1UseTriplanar = 7,
		/**
		
		*/
		flagUv2UseTriplanar = 8,
		/**
		
		*/
		flagTriplanarUseWorld = 9,
		/**
		
		*/
		flagAoOnUv2 = 10,
		/**
		
		*/
		flagEmissionOnUv2 = 11,
		/**
		
		*/
		flagUseAlphaScissor = 12,
		/**
		
		*/
		flagAlbedoTextureForceSrgb = 13,
		/**
		
		*/
		flagMax = 14,
	}
	/// 
	enum CullMode : int
	{
		/**
		
		*/
		cullBack = 0,
		/**
		
		*/
		cullFront = 1,
		/**
		
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
	enum BillboardMode : int
	{
		/**
		
		*/
		billboardDisabled = 0,
		/**
		
		*/
		billboardEnabled = 1,
		/**
		
		*/
		billboardFixedY = 2,
		/**
		
		*/
		billboardParticles = 3,
	}
	/// 
	enum DepthDrawMode : int
	{
		/**
		
		*/
		depthDrawOpaqueOnly = 0,
		/**
		
		*/
		depthDrawAlways = 1,
		/**
		
		*/
		depthDrawDisabled = 2,
		/**
		
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
		textureAlbedo = 0,
		billboardDisabled = 0,
		cullBack = 0,
		emissionOpAdd = 0,
		blendModeMix = 0,
		detailUv1 = 0,
		featureTransparent = 0,
		specularSchlickGgx = 0,
		flagUnshaded = 0,
		textureChannelRed = 0,
		depthDrawOpaqueOnly = 0,
		diffuseBurley = 0,
		blendModeAdd = 1,
		featureEmission = 1,
		emissionOpMultiply = 1,
		textureMetallic = 1,
		depthDrawAlways = 1,
		detailUv2 = 1,
		flagUseVertexLighting = 1,
		specularBlinn = 1,
		billboardEnabled = 1,
		textureChannelGreen = 1,
		cullFront = 1,
		diffuseLambert = 1,
		diffuseLambertWrap = 2,
		billboardFixedY = 2,
		textureRoughness = 2,
		blendModeSub = 2,
		featureNormalMapping = 2,
		specularPhong = 2,
		flagDisableDepthTest = 2,
		cullDisabled = 2,
		depthDrawDisabled = 2,
		textureChannelBlue = 2,
		blendModeMul = 3,
		textureEmission = 3,
		flagAlbedoFromVertexColor = 3,
		textureChannelAlpha = 3,
		depthDrawAlphaOpaquePrepass = 3,
		featureRim = 3,
		specularToon = 3,
		diffuseOrenNayar = 3,
		billboardParticles = 3,
		textureNormal = 4,
		specularDisabled = 4,
		textureChannelGrayscale = 4,
		featureClearcoat = 4,
		diffuseToon = 4,
		flagSrgbVertexColor = 4,
		featureAnisotropy = 5,
		textureRim = 5,
		flagUsePointSize = 5,
		textureClearcoat = 6,
		flagFixedSize = 6,
		featureAmbientOcclusion = 6,
		textureFlowmap = 7,
		featureDepthMapping = 7,
		flagUv1UseTriplanar = 7,
		featureSubsuraceScattering = 8,
		flagUv2UseTriplanar = 8,
		textureAmbientOcclusion = 8,
		textureDepth = 9,
		flagTriplanarUseWorld = 9,
		featureTransmission = 9,
		textureSubsurfaceScattering = 10,
		flagAoOnUv2 = 10,
		featureRefraction = 10,
		flagEmissionOnUv2 = 11,
		textureTransmission = 11,
		featureDetail = 11,
		flagUseAlphaScissor = 12,
		textureRefraction = 12,
		featureMax = 12,
		textureDetailMask = 13,
		flagAlbedoTextureForceSrgb = 13,
		flagMax = 14,
		textureDetailAlbedo = 14,
		textureDetailNormal = 15,
		textureMax = 16,
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_albedo;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_albedo") = _GODOT_set_albedo;
	/**
	
	*/
	void setAlbedo(in Color albedo)
	{
		_GODOT_set_albedo.bind("SpatialMaterial", "set_albedo");
		ptrcall!(void)(_GODOT_set_albedo, _godot_object, albedo);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_albedo;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_albedo") = _GODOT_get_albedo;
	/**
	
	*/
	Color getAlbedo() const
	{
		_GODOT_get_albedo.bind("SpatialMaterial", "get_albedo");
		return ptrcall!(Color)(_GODOT_get_albedo, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_specular;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_specular") = _GODOT_set_specular;
	/**
	
	*/
	void setSpecular(in double specular)
	{
		_GODOT_set_specular.bind("SpatialMaterial", "set_specular");
		ptrcall!(void)(_GODOT_set_specular, _godot_object, specular);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_specular;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_specular") = _GODOT_get_specular;
	/**
	
	*/
	double getSpecular() const
	{
		_GODOT_get_specular.bind("SpatialMaterial", "get_specular");
		return ptrcall!(double)(_GODOT_get_specular, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_metallic;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_metallic") = _GODOT_set_metallic;
	/**
	
	*/
	void setMetallic(in double metallic)
	{
		_GODOT_set_metallic.bind("SpatialMaterial", "set_metallic");
		ptrcall!(void)(_GODOT_set_metallic, _godot_object, metallic);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_metallic;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_metallic") = _GODOT_get_metallic;
	/**
	
	*/
	double getMetallic() const
	{
		_GODOT_get_metallic.bind("SpatialMaterial", "get_metallic");
		return ptrcall!(double)(_GODOT_get_metallic, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_roughness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_roughness") = _GODOT_set_roughness;
	/**
	
	*/
	void setRoughness(in double roughness)
	{
		_GODOT_set_roughness.bind("SpatialMaterial", "set_roughness");
		ptrcall!(void)(_GODOT_set_roughness, _godot_object, roughness);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_roughness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_roughness") = _GODOT_get_roughness;
	/**
	
	*/
	double getRoughness() const
	{
		_GODOT_get_roughness.bind("SpatialMaterial", "get_roughness");
		return ptrcall!(double)(_GODOT_get_roughness, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_emission;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission") = _GODOT_set_emission;
	/**
	
	*/
	void setEmission(in Color emission)
	{
		_GODOT_set_emission.bind("SpatialMaterial", "set_emission");
		ptrcall!(void)(_GODOT_set_emission, _godot_object, emission);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_emission;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission") = _GODOT_get_emission;
	/**
	
	*/
	Color getEmission() const
	{
		_GODOT_get_emission.bind("SpatialMaterial", "get_emission");
		return ptrcall!(Color)(_GODOT_get_emission, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_emission_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_energy") = _GODOT_set_emission_energy;
	/**
	
	*/
	void setEmissionEnergy(in double emission_energy)
	{
		_GODOT_set_emission_energy.bind("SpatialMaterial", "set_emission_energy");
		ptrcall!(void)(_GODOT_set_emission_energy, _godot_object, emission_energy);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_emission_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_energy") = _GODOT_get_emission_energy;
	/**
	
	*/
	double getEmissionEnergy() const
	{
		_GODOT_get_emission_energy.bind("SpatialMaterial", "get_emission_energy");
		return ptrcall!(double)(_GODOT_get_emission_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_normal_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_scale") = _GODOT_set_normal_scale;
	/**
	
	*/
	void setNormalScale(in double normal_scale)
	{
		_GODOT_set_normal_scale.bind("SpatialMaterial", "set_normal_scale");
		ptrcall!(void)(_GODOT_set_normal_scale, _godot_object, normal_scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_normal_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_scale") = _GODOT_get_normal_scale;
	/**
	
	*/
	double getNormalScale() const
	{
		_GODOT_get_normal_scale.bind("SpatialMaterial", "get_normal_scale");
		return ptrcall!(double)(_GODOT_get_normal_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rim;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rim") = _GODOT_set_rim;
	/**
	
	*/
	void setRim(in double rim)
	{
		_GODOT_set_rim.bind("SpatialMaterial", "set_rim");
		ptrcall!(void)(_GODOT_set_rim, _godot_object, rim);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rim;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rim") = _GODOT_get_rim;
	/**
	
	*/
	double getRim() const
	{
		_GODOT_get_rim.bind("SpatialMaterial", "get_rim");
		return ptrcall!(double)(_GODOT_get_rim, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rim_tint;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rim_tint") = _GODOT_set_rim_tint;
	/**
	
	*/
	void setRimTint(in double rim_tint)
	{
		_GODOT_set_rim_tint.bind("SpatialMaterial", "set_rim_tint");
		ptrcall!(void)(_GODOT_set_rim_tint, _godot_object, rim_tint);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rim_tint;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rim_tint") = _GODOT_get_rim_tint;
	/**
	
	*/
	double getRimTint() const
	{
		_GODOT_get_rim_tint.bind("SpatialMaterial", "get_rim_tint");
		return ptrcall!(double)(_GODOT_get_rim_tint, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_clearcoat;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clearcoat") = _GODOT_set_clearcoat;
	/**
	
	*/
	void setClearcoat(in double clearcoat)
	{
		_GODOT_set_clearcoat.bind("SpatialMaterial", "set_clearcoat");
		ptrcall!(void)(_GODOT_set_clearcoat, _godot_object, clearcoat);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_clearcoat;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_clearcoat") = _GODOT_get_clearcoat;
	/**
	
	*/
	double getClearcoat() const
	{
		_GODOT_get_clearcoat.bind("SpatialMaterial", "get_clearcoat");
		return ptrcall!(double)(_GODOT_get_clearcoat, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_clearcoat_gloss;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clearcoat_gloss") = _GODOT_set_clearcoat_gloss;
	/**
	
	*/
	void setClearcoatGloss(in double clearcoat_gloss)
	{
		_GODOT_set_clearcoat_gloss.bind("SpatialMaterial", "set_clearcoat_gloss");
		ptrcall!(void)(_GODOT_set_clearcoat_gloss, _godot_object, clearcoat_gloss);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_clearcoat_gloss;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_clearcoat_gloss") = _GODOT_get_clearcoat_gloss;
	/**
	
	*/
	double getClearcoatGloss() const
	{
		_GODOT_get_clearcoat_gloss.bind("SpatialMaterial", "get_clearcoat_gloss");
		return ptrcall!(double)(_GODOT_get_clearcoat_gloss, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_anisotropy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anisotropy") = _GODOT_set_anisotropy;
	/**
	
	*/
	void setAnisotropy(in double anisotropy)
	{
		_GODOT_set_anisotropy.bind("SpatialMaterial", "set_anisotropy");
		ptrcall!(void)(_GODOT_set_anisotropy, _godot_object, anisotropy);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_anisotropy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_anisotropy") = _GODOT_get_anisotropy;
	/**
	
	*/
	double getAnisotropy() const
	{
		_GODOT_get_anisotropy.bind("SpatialMaterial", "get_anisotropy");
		return ptrcall!(double)(_GODOT_get_anisotropy, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_depth_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth_scale") = _GODOT_set_depth_scale;
	/**
	
	*/
	void setDepthScale(in double depth_scale)
	{
		_GODOT_set_depth_scale.bind("SpatialMaterial", "set_depth_scale");
		ptrcall!(void)(_GODOT_set_depth_scale, _godot_object, depth_scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_depth_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth_scale") = _GODOT_get_depth_scale;
	/**
	
	*/
	double getDepthScale() const
	{
		_GODOT_get_depth_scale.bind("SpatialMaterial", "get_depth_scale");
		return ptrcall!(double)(_GODOT_get_depth_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_subsurface_scattering_strength;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subsurface_scattering_strength") = _GODOT_set_subsurface_scattering_strength;
	/**
	
	*/
	void setSubsurfaceScatteringStrength(in double strength)
	{
		_GODOT_set_subsurface_scattering_strength.bind("SpatialMaterial", "set_subsurface_scattering_strength");
		ptrcall!(void)(_GODOT_set_subsurface_scattering_strength, _godot_object, strength);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_subsurface_scattering_strength;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subsurface_scattering_strength") = _GODOT_get_subsurface_scattering_strength;
	/**
	
	*/
	double getSubsurfaceScatteringStrength() const
	{
		_GODOT_get_subsurface_scattering_strength.bind("SpatialMaterial", "get_subsurface_scattering_strength");
		return ptrcall!(double)(_GODOT_get_subsurface_scattering_strength, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_transmission;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transmission") = _GODOT_set_transmission;
	/**
	
	*/
	void setTransmission(in Color transmission)
	{
		_GODOT_set_transmission.bind("SpatialMaterial", "set_transmission");
		ptrcall!(void)(_GODOT_set_transmission, _godot_object, transmission);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_transmission;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transmission") = _GODOT_get_transmission;
	/**
	
	*/
	Color getTransmission() const
	{
		_GODOT_get_transmission.bind("SpatialMaterial", "get_transmission");
		return ptrcall!(Color)(_GODOT_get_transmission, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_refraction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_refraction") = _GODOT_set_refraction;
	/**
	
	*/
	void setRefraction(in double refraction)
	{
		_GODOT_set_refraction.bind("SpatialMaterial", "set_refraction");
		ptrcall!(void)(_GODOT_set_refraction, _godot_object, refraction);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_refraction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_refraction") = _GODOT_get_refraction;
	/**
	
	*/
	double getRefraction() const
	{
		_GODOT_get_refraction.bind("SpatialMaterial", "get_refraction");
		return ptrcall!(double)(_GODOT_get_refraction, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_line_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_line_width") = _GODOT_set_line_width;
	/**
	
	*/
	void setLineWidth(in double line_width)
	{
		_GODOT_set_line_width.bind("SpatialMaterial", "set_line_width");
		ptrcall!(void)(_GODOT_set_line_width, _godot_object, line_width);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_line_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line_width") = _GODOT_get_line_width;
	/**
	
	*/
	double getLineWidth() const
	{
		_GODOT_get_line_width.bind("SpatialMaterial", "get_line_width");
		return ptrcall!(double)(_GODOT_get_line_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_point_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_size") = _GODOT_set_point_size;
	/**
	
	*/
	void setPointSize(in double point_size)
	{
		_GODOT_set_point_size.bind("SpatialMaterial", "set_point_size");
		ptrcall!(void)(_GODOT_set_point_size, _godot_object, point_size);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_point_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_size") = _GODOT_get_point_size;
	/**
	
	*/
	double getPointSize() const
	{
		_GODOT_get_point_size.bind("SpatialMaterial", "get_point_size");
		return ptrcall!(double)(_GODOT_get_point_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_detail_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_detail_uv") = _GODOT_set_detail_uv;
	/**
	
	*/
	void setDetailUv(in long detail_uv)
	{
		_GODOT_set_detail_uv.bind("SpatialMaterial", "set_detail_uv");
		ptrcall!(void)(_GODOT_set_detail_uv, _godot_object, detail_uv);
	}
	package(godot) static GodotMethod!(SpatialMaterial.DetailUV) _GODOT_get_detail_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_detail_uv") = _GODOT_get_detail_uv;
	/**
	
	*/
	SpatialMaterial.DetailUV getDetailUv() const
	{
		_GODOT_get_detail_uv.bind("SpatialMaterial", "get_detail_uv");
		return ptrcall!(SpatialMaterial.DetailUV)(_GODOT_get_detail_uv, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_blend_mode") = _GODOT_set_blend_mode;
	/**
	
	*/
	void setBlendMode(in long blend_mode)
	{
		_GODOT_set_blend_mode.bind("SpatialMaterial", "set_blend_mode");
		ptrcall!(void)(_GODOT_set_blend_mode, _godot_object, blend_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.BlendMode) _GODOT_get_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_blend_mode") = _GODOT_get_blend_mode;
	/**
	
	*/
	SpatialMaterial.BlendMode getBlendMode() const
	{
		_GODOT_get_blend_mode.bind("SpatialMaterial", "get_blend_mode");
		return ptrcall!(SpatialMaterial.BlendMode)(_GODOT_get_blend_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_depth_draw_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth_draw_mode") = _GODOT_set_depth_draw_mode;
	/**
	
	*/
	void setDepthDrawMode(in long depth_draw_mode)
	{
		_GODOT_set_depth_draw_mode.bind("SpatialMaterial", "set_depth_draw_mode");
		ptrcall!(void)(_GODOT_set_depth_draw_mode, _godot_object, depth_draw_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.DepthDrawMode) _GODOT_get_depth_draw_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth_draw_mode") = _GODOT_get_depth_draw_mode;
	/**
	
	*/
	SpatialMaterial.DepthDrawMode getDepthDrawMode() const
	{
		_GODOT_get_depth_draw_mode.bind("SpatialMaterial", "get_depth_draw_mode");
		return ptrcall!(SpatialMaterial.DepthDrawMode)(_GODOT_get_depth_draw_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_cull_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cull_mode") = _GODOT_set_cull_mode;
	/**
	
	*/
	void setCullMode(in long cull_mode)
	{
		_GODOT_set_cull_mode.bind("SpatialMaterial", "set_cull_mode");
		ptrcall!(void)(_GODOT_set_cull_mode, _godot_object, cull_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.CullMode) _GODOT_get_cull_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cull_mode") = _GODOT_get_cull_mode;
	/**
	
	*/
	SpatialMaterial.CullMode getCullMode() const
	{
		_GODOT_get_cull_mode.bind("SpatialMaterial", "get_cull_mode");
		return ptrcall!(SpatialMaterial.CullMode)(_GODOT_get_cull_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_diffuse_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_diffuse_mode") = _GODOT_set_diffuse_mode;
	/**
	
	*/
	void setDiffuseMode(in long diffuse_mode)
	{
		_GODOT_set_diffuse_mode.bind("SpatialMaterial", "set_diffuse_mode");
		ptrcall!(void)(_GODOT_set_diffuse_mode, _godot_object, diffuse_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.DiffuseMode) _GODOT_get_diffuse_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_diffuse_mode") = _GODOT_get_diffuse_mode;
	/**
	
	*/
	SpatialMaterial.DiffuseMode getDiffuseMode() const
	{
		_GODOT_get_diffuse_mode.bind("SpatialMaterial", "get_diffuse_mode");
		return ptrcall!(SpatialMaterial.DiffuseMode)(_GODOT_get_diffuse_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_specular_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_specular_mode") = _GODOT_set_specular_mode;
	/**
	
	*/
	void setSpecularMode(in long specular_mode)
	{
		_GODOT_set_specular_mode.bind("SpatialMaterial", "set_specular_mode");
		ptrcall!(void)(_GODOT_set_specular_mode, _godot_object, specular_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.SpecularMode) _GODOT_get_specular_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_specular_mode") = _GODOT_get_specular_mode;
	/**
	
	*/
	SpatialMaterial.SpecularMode getSpecularMode() const
	{
		_GODOT_get_specular_mode.bind("SpatialMaterial", "get_specular_mode");
		return ptrcall!(SpatialMaterial.SpecularMode)(_GODOT_get_specular_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag") = _GODOT_set_flag;
	/**
	
	*/
	void setFlag(in long flag, in bool enable)
	{
		_GODOT_set_flag.bind("SpatialMaterial", "set_flag");
		ptrcall!(void)(_GODOT_set_flag, _godot_object, flag, enable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag") = _GODOT_get_flag;
	/**
	
	*/
	bool getFlag(in long flag) const
	{
		_GODOT_get_flag.bind("SpatialMaterial", "get_flag");
		return ptrcall!(bool)(_GODOT_get_flag, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_feature;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feature") = _GODOT_set_feature;
	/**
	
	*/
	void setFeature(in long feature, in bool enable)
	{
		_GODOT_set_feature.bind("SpatialMaterial", "set_feature");
		ptrcall!(void)(_GODOT_set_feature, _godot_object, feature, enable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_feature;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_feature") = _GODOT_get_feature;
	/**
	
	*/
	bool getFeature(in long feature) const
	{
		_GODOT_get_feature.bind("SpatialMaterial", "get_feature");
		return ptrcall!(bool)(_GODOT_get_feature, _godot_object, feature);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(in long param, Texture texture)
	{
		_GODOT_set_texture.bind("SpatialMaterial", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, param, texture);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Texture getTexture(in long param) const
	{
		_GODOT_get_texture.bind("SpatialMaterial", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_detail_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_detail_blend_mode") = _GODOT_set_detail_blend_mode;
	/**
	
	*/
	void setDetailBlendMode(in long detail_blend_mode)
	{
		_GODOT_set_detail_blend_mode.bind("SpatialMaterial", "set_detail_blend_mode");
		ptrcall!(void)(_GODOT_set_detail_blend_mode, _godot_object, detail_blend_mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.BlendMode) _GODOT_get_detail_blend_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_detail_blend_mode") = _GODOT_get_detail_blend_mode;
	/**
	
	*/
	SpatialMaterial.BlendMode getDetailBlendMode() const
	{
		_GODOT_get_detail_blend_mode.bind("SpatialMaterial", "get_detail_blend_mode");
		return ptrcall!(SpatialMaterial.BlendMode)(_GODOT_get_detail_blend_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_uv1_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv1_scale") = _GODOT_set_uv1_scale;
	/**
	
	*/
	void setUv1Scale(in Vector3 scale)
	{
		_GODOT_set_uv1_scale.bind("SpatialMaterial", "set_uv1_scale");
		ptrcall!(void)(_GODOT_set_uv1_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_uv1_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv1_scale") = _GODOT_get_uv1_scale;
	/**
	
	*/
	Vector3 getUv1Scale() const
	{
		_GODOT_get_uv1_scale.bind("SpatialMaterial", "get_uv1_scale");
		return ptrcall!(Vector3)(_GODOT_get_uv1_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_uv1_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv1_offset") = _GODOT_set_uv1_offset;
	/**
	
	*/
	void setUv1Offset(in Vector3 offset)
	{
		_GODOT_set_uv1_offset.bind("SpatialMaterial", "set_uv1_offset");
		ptrcall!(void)(_GODOT_set_uv1_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_uv1_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv1_offset") = _GODOT_get_uv1_offset;
	/**
	
	*/
	Vector3 getUv1Offset() const
	{
		_GODOT_get_uv1_offset.bind("SpatialMaterial", "get_uv1_offset");
		return ptrcall!(Vector3)(_GODOT_get_uv1_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_uv1_triplanar_blend_sharpness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv1_triplanar_blend_sharpness") = _GODOT_set_uv1_triplanar_blend_sharpness;
	/**
	
	*/
	void setUv1TriplanarBlendSharpness(in double sharpness)
	{
		_GODOT_set_uv1_triplanar_blend_sharpness.bind("SpatialMaterial", "set_uv1_triplanar_blend_sharpness");
		ptrcall!(void)(_GODOT_set_uv1_triplanar_blend_sharpness, _godot_object, sharpness);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_uv1_triplanar_blend_sharpness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv1_triplanar_blend_sharpness") = _GODOT_get_uv1_triplanar_blend_sharpness;
	/**
	
	*/
	double getUv1TriplanarBlendSharpness() const
	{
		_GODOT_get_uv1_triplanar_blend_sharpness.bind("SpatialMaterial", "get_uv1_triplanar_blend_sharpness");
		return ptrcall!(double)(_GODOT_get_uv1_triplanar_blend_sharpness, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_uv2_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv2_scale") = _GODOT_set_uv2_scale;
	/**
	
	*/
	void setUv2Scale(in Vector3 scale)
	{
		_GODOT_set_uv2_scale.bind("SpatialMaterial", "set_uv2_scale");
		ptrcall!(void)(_GODOT_set_uv2_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_uv2_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv2_scale") = _GODOT_get_uv2_scale;
	/**
	
	*/
	Vector3 getUv2Scale() const
	{
		_GODOT_get_uv2_scale.bind("SpatialMaterial", "get_uv2_scale");
		return ptrcall!(Vector3)(_GODOT_get_uv2_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_uv2_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv2_offset") = _GODOT_set_uv2_offset;
	/**
	
	*/
	void setUv2Offset(in Vector3 offset)
	{
		_GODOT_set_uv2_offset.bind("SpatialMaterial", "set_uv2_offset");
		ptrcall!(void)(_GODOT_set_uv2_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_uv2_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv2_offset") = _GODOT_get_uv2_offset;
	/**
	
	*/
	Vector3 getUv2Offset() const
	{
		_GODOT_get_uv2_offset.bind("SpatialMaterial", "get_uv2_offset");
		return ptrcall!(Vector3)(_GODOT_get_uv2_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_uv2_triplanar_blend_sharpness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv2_triplanar_blend_sharpness") = _GODOT_set_uv2_triplanar_blend_sharpness;
	/**
	
	*/
	void setUv2TriplanarBlendSharpness(in double sharpness)
	{
		_GODOT_set_uv2_triplanar_blend_sharpness.bind("SpatialMaterial", "set_uv2_triplanar_blend_sharpness");
		ptrcall!(void)(_GODOT_set_uv2_triplanar_blend_sharpness, _godot_object, sharpness);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_uv2_triplanar_blend_sharpness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv2_triplanar_blend_sharpness") = _GODOT_get_uv2_triplanar_blend_sharpness;
	/**
	
	*/
	double getUv2TriplanarBlendSharpness() const
	{
		_GODOT_get_uv2_triplanar_blend_sharpness.bind("SpatialMaterial", "get_uv2_triplanar_blend_sharpness");
		return ptrcall!(double)(_GODOT_get_uv2_triplanar_blend_sharpness, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_billboard_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_billboard_mode") = _GODOT_set_billboard_mode;
	/**
	
	*/
	void setBillboardMode(in long mode)
	{
		_GODOT_set_billboard_mode.bind("SpatialMaterial", "set_billboard_mode");
		ptrcall!(void)(_GODOT_set_billboard_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(SpatialMaterial.BillboardMode) _GODOT_get_billboard_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_billboard_mode") = _GODOT_get_billboard_mode;
	/**
	
	*/
	SpatialMaterial.BillboardMode getBillboardMode() const
	{
		_GODOT_get_billboard_mode.bind("SpatialMaterial", "get_billboard_mode");
		return ptrcall!(SpatialMaterial.BillboardMode)(_GODOT_get_billboard_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_particles_anim_h_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_particles_anim_h_frames") = _GODOT_set_particles_anim_h_frames;
	/**
	
	*/
	void setParticlesAnimHFrames(in long frames)
	{
		_GODOT_set_particles_anim_h_frames.bind("SpatialMaterial", "set_particles_anim_h_frames");
		ptrcall!(void)(_GODOT_set_particles_anim_h_frames, _godot_object, frames);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_particles_anim_h_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_particles_anim_h_frames") = _GODOT_get_particles_anim_h_frames;
	/**
	
	*/
	long getParticlesAnimHFrames() const
	{
		_GODOT_get_particles_anim_h_frames.bind("SpatialMaterial", "get_particles_anim_h_frames");
		return ptrcall!(long)(_GODOT_get_particles_anim_h_frames, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_particles_anim_v_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_particles_anim_v_frames") = _GODOT_set_particles_anim_v_frames;
	/**
	
	*/
	void setParticlesAnimVFrames(in long frames)
	{
		_GODOT_set_particles_anim_v_frames.bind("SpatialMaterial", "set_particles_anim_v_frames");
		ptrcall!(void)(_GODOT_set_particles_anim_v_frames, _godot_object, frames);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_particles_anim_v_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_particles_anim_v_frames") = _GODOT_get_particles_anim_v_frames;
	/**
	
	*/
	long getParticlesAnimVFrames() const
	{
		_GODOT_get_particles_anim_v_frames.bind("SpatialMaterial", "get_particles_anim_v_frames");
		return ptrcall!(long)(_GODOT_get_particles_anim_v_frames, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_particles_anim_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_particles_anim_loop") = _GODOT_set_particles_anim_loop;
	/**
	
	*/
	void setParticlesAnimLoop(in long frames)
	{
		_GODOT_set_particles_anim_loop.bind("SpatialMaterial", "set_particles_anim_loop");
		ptrcall!(void)(_GODOT_set_particles_anim_loop, _godot_object, frames);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_particles_anim_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_particles_anim_loop") = _GODOT_get_particles_anim_loop;
	/**
	
	*/
	long getParticlesAnimLoop() const
	{
		_GODOT_get_particles_anim_loop.bind("SpatialMaterial", "get_particles_anim_loop");
		return ptrcall!(long)(_GODOT_get_particles_anim_loop, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_depth_deep_parallax;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth_deep_parallax") = _GODOT_set_depth_deep_parallax;
	/**
	
	*/
	void setDepthDeepParallax(in bool enable)
	{
		_GODOT_set_depth_deep_parallax.bind("SpatialMaterial", "set_depth_deep_parallax");
		ptrcall!(void)(_GODOT_set_depth_deep_parallax, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_depth_deep_parallax_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_depth_deep_parallax_enabled") = _GODOT_is_depth_deep_parallax_enabled;
	/**
	
	*/
	bool isDepthDeepParallaxEnabled() const
	{
		_GODOT_is_depth_deep_parallax_enabled.bind("SpatialMaterial", "is_depth_deep_parallax_enabled");
		return ptrcall!(bool)(_GODOT_is_depth_deep_parallax_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_depth_deep_parallax_min_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth_deep_parallax_min_layers") = _GODOT_set_depth_deep_parallax_min_layers;
	/**
	
	*/
	void setDepthDeepParallaxMinLayers(in long layer)
	{
		_GODOT_set_depth_deep_parallax_min_layers.bind("SpatialMaterial", "set_depth_deep_parallax_min_layers");
		ptrcall!(void)(_GODOT_set_depth_deep_parallax_min_layers, _godot_object, layer);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_depth_deep_parallax_min_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth_deep_parallax_min_layers") = _GODOT_get_depth_deep_parallax_min_layers;
	/**
	
	*/
	long getDepthDeepParallaxMinLayers() const
	{
		_GODOT_get_depth_deep_parallax_min_layers.bind("SpatialMaterial", "get_depth_deep_parallax_min_layers");
		return ptrcall!(long)(_GODOT_get_depth_deep_parallax_min_layers, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_depth_deep_parallax_max_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth_deep_parallax_max_layers") = _GODOT_set_depth_deep_parallax_max_layers;
	/**
	
	*/
	void setDepthDeepParallaxMaxLayers(in long layer)
	{
		_GODOT_set_depth_deep_parallax_max_layers.bind("SpatialMaterial", "set_depth_deep_parallax_max_layers");
		ptrcall!(void)(_GODOT_set_depth_deep_parallax_max_layers, _godot_object, layer);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_depth_deep_parallax_max_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth_deep_parallax_max_layers") = _GODOT_get_depth_deep_parallax_max_layers;
	/**
	
	*/
	long getDepthDeepParallaxMaxLayers() const
	{
		_GODOT_get_depth_deep_parallax_max_layers.bind("SpatialMaterial", "get_depth_deep_parallax_max_layers");
		return ptrcall!(long)(_GODOT_get_depth_deep_parallax_max_layers, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_grow;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_grow") = _GODOT_set_grow;
	/**
	
	*/
	void setGrow(in double amount)
	{
		_GODOT_set_grow.bind("SpatialMaterial", "set_grow");
		ptrcall!(void)(_GODOT_set_grow, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_grow;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_grow") = _GODOT_get_grow;
	/**
	
	*/
	double getGrow() const
	{
		_GODOT_get_grow.bind("SpatialMaterial", "get_grow");
		return ptrcall!(double)(_GODOT_get_grow, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_emission_operator;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_operator") = _GODOT_set_emission_operator;
	/**
	
	*/
	void setEmissionOperator(in long operator)
	{
		_GODOT_set_emission_operator.bind("SpatialMaterial", "set_emission_operator");
		ptrcall!(void)(_GODOT_set_emission_operator, _godot_object, operator);
	}
	package(godot) static GodotMethod!(SpatialMaterial.EmissionOperator) _GODOT_get_emission_operator;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_operator") = _GODOT_get_emission_operator;
	/**
	
	*/
	SpatialMaterial.EmissionOperator getEmissionOperator() const
	{
		_GODOT_get_emission_operator.bind("SpatialMaterial", "get_emission_operator");
		return ptrcall!(SpatialMaterial.EmissionOperator)(_GODOT_get_emission_operator, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ao_light_affect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ao_light_affect") = _GODOT_set_ao_light_affect;
	/**
	
	*/
	void setAoLightAffect(in double amount)
	{
		_GODOT_set_ao_light_affect.bind("SpatialMaterial", "set_ao_light_affect");
		ptrcall!(void)(_GODOT_set_ao_light_affect, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ao_light_affect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ao_light_affect") = _GODOT_get_ao_light_affect;
	/**
	
	*/
	double getAoLightAffect() const
	{
		_GODOT_get_ao_light_affect.bind("SpatialMaterial", "get_ao_light_affect");
		return ptrcall!(double)(_GODOT_get_ao_light_affect, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_alpha_scissor_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_alpha_scissor_threshold") = _GODOT_set_alpha_scissor_threshold;
	/**
	
	*/
	void setAlphaScissorThreshold(in double threshold)
	{
		_GODOT_set_alpha_scissor_threshold.bind("SpatialMaterial", "set_alpha_scissor_threshold");
		ptrcall!(void)(_GODOT_set_alpha_scissor_threshold, _godot_object, threshold);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_alpha_scissor_threshold;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_alpha_scissor_threshold") = _GODOT_get_alpha_scissor_threshold;
	/**
	
	*/
	double getAlphaScissorThreshold() const
	{
		_GODOT_get_alpha_scissor_threshold.bind("SpatialMaterial", "get_alpha_scissor_threshold");
		return ptrcall!(double)(_GODOT_get_alpha_scissor_threshold, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_grow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_grow_enabled") = _GODOT_set_grow_enabled;
	/**
	
	*/
	void setGrowEnabled(in bool enable)
	{
		_GODOT_set_grow_enabled.bind("SpatialMaterial", "set_grow_enabled");
		ptrcall!(void)(_GODOT_set_grow_enabled, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_grow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_grow_enabled") = _GODOT_is_grow_enabled;
	/**
	
	*/
	bool isGrowEnabled() const
	{
		_GODOT_is_grow_enabled.bind("SpatialMaterial", "is_grow_enabled");
		return ptrcall!(bool)(_GODOT_is_grow_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_metallic_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_metallic_texture_channel") = _GODOT_set_metallic_texture_channel;
	/**
	
	*/
	void setMetallicTextureChannel(in long channel)
	{
		_GODOT_set_metallic_texture_channel.bind("SpatialMaterial", "set_metallic_texture_channel");
		ptrcall!(void)(_GODOT_set_metallic_texture_channel, _godot_object, channel);
	}
	package(godot) static GodotMethod!(SpatialMaterial.TextureChannel) _GODOT_get_metallic_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_metallic_texture_channel") = _GODOT_get_metallic_texture_channel;
	/**
	
	*/
	SpatialMaterial.TextureChannel getMetallicTextureChannel() const
	{
		_GODOT_get_metallic_texture_channel.bind("SpatialMaterial", "get_metallic_texture_channel");
		return ptrcall!(SpatialMaterial.TextureChannel)(_GODOT_get_metallic_texture_channel, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_roughness_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_roughness_texture_channel") = _GODOT_set_roughness_texture_channel;
	/**
	
	*/
	void setRoughnessTextureChannel(in long channel)
	{
		_GODOT_set_roughness_texture_channel.bind("SpatialMaterial", "set_roughness_texture_channel");
		ptrcall!(void)(_GODOT_set_roughness_texture_channel, _godot_object, channel);
	}
	package(godot) static GodotMethod!(SpatialMaterial.TextureChannel) _GODOT_get_roughness_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_roughness_texture_channel") = _GODOT_get_roughness_texture_channel;
	/**
	
	*/
	SpatialMaterial.TextureChannel getRoughnessTextureChannel() const
	{
		_GODOT_get_roughness_texture_channel.bind("SpatialMaterial", "get_roughness_texture_channel");
		return ptrcall!(SpatialMaterial.TextureChannel)(_GODOT_get_roughness_texture_channel, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_ao_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ao_texture_channel") = _GODOT_set_ao_texture_channel;
	/**
	
	*/
	void setAoTextureChannel(in long channel)
	{
		_GODOT_set_ao_texture_channel.bind("SpatialMaterial", "set_ao_texture_channel");
		ptrcall!(void)(_GODOT_set_ao_texture_channel, _godot_object, channel);
	}
	package(godot) static GodotMethod!(SpatialMaterial.TextureChannel) _GODOT_get_ao_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ao_texture_channel") = _GODOT_get_ao_texture_channel;
	/**
	
	*/
	SpatialMaterial.TextureChannel getAoTextureChannel() const
	{
		_GODOT_get_ao_texture_channel.bind("SpatialMaterial", "get_ao_texture_channel");
		return ptrcall!(SpatialMaterial.TextureChannel)(_GODOT_get_ao_texture_channel, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_refraction_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_refraction_texture_channel") = _GODOT_set_refraction_texture_channel;
	/**
	
	*/
	void setRefractionTextureChannel(in long channel)
	{
		_GODOT_set_refraction_texture_channel.bind("SpatialMaterial", "set_refraction_texture_channel");
		ptrcall!(void)(_GODOT_set_refraction_texture_channel, _godot_object, channel);
	}
	package(godot) static GodotMethod!(SpatialMaterial.TextureChannel) _GODOT_get_refraction_texture_channel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_refraction_texture_channel") = _GODOT_get_refraction_texture_channel;
	/**
	
	*/
	SpatialMaterial.TextureChannel getRefractionTextureChannel() const
	{
		_GODOT_get_refraction_texture_channel.bind("SpatialMaterial", "get_refraction_texture_channel");
		return ptrcall!(SpatialMaterial.TextureChannel)(_GODOT_get_refraction_texture_channel, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_proximity_fade;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_proximity_fade") = _GODOT_set_proximity_fade;
	/**
	
	*/
	void setProximityFade(in bool enabled)
	{
		_GODOT_set_proximity_fade.bind("SpatialMaterial", "set_proximity_fade");
		ptrcall!(void)(_GODOT_set_proximity_fade, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_proximity_fade_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_proximity_fade_enabled") = _GODOT_is_proximity_fade_enabled;
	/**
	
	*/
	bool isProximityFadeEnabled() const
	{
		_GODOT_is_proximity_fade_enabled.bind("SpatialMaterial", "is_proximity_fade_enabled");
		return ptrcall!(bool)(_GODOT_is_proximity_fade_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_proximity_fade_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_proximity_fade_distance") = _GODOT_set_proximity_fade_distance;
	/**
	
	*/
	void setProximityFadeDistance(in double distance)
	{
		_GODOT_set_proximity_fade_distance.bind("SpatialMaterial", "set_proximity_fade_distance");
		ptrcall!(void)(_GODOT_set_proximity_fade_distance, _godot_object, distance);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_proximity_fade_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_proximity_fade_distance") = _GODOT_get_proximity_fade_distance;
	/**
	
	*/
	double getProximityFadeDistance() const
	{
		_GODOT_get_proximity_fade_distance.bind("SpatialMaterial", "get_proximity_fade_distance");
		return ptrcall!(double)(_GODOT_get_proximity_fade_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_distance_fade;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_distance_fade") = _GODOT_set_distance_fade;
	/**
	
	*/
	void setDistanceFade(in bool enabled)
	{
		_GODOT_set_distance_fade.bind("SpatialMaterial", "set_distance_fade");
		ptrcall!(void)(_GODOT_set_distance_fade, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_distance_fade_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_distance_fade_enabled") = _GODOT_is_distance_fade_enabled;
	/**
	
	*/
	bool isDistanceFadeEnabled() const
	{
		_GODOT_is_distance_fade_enabled.bind("SpatialMaterial", "is_distance_fade_enabled");
		return ptrcall!(bool)(_GODOT_is_distance_fade_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_distance_fade_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_distance_fade_max_distance") = _GODOT_set_distance_fade_max_distance;
	/**
	
	*/
	void setDistanceFadeMaxDistance(in double distance)
	{
		_GODOT_set_distance_fade_max_distance.bind("SpatialMaterial", "set_distance_fade_max_distance");
		ptrcall!(void)(_GODOT_set_distance_fade_max_distance, _godot_object, distance);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_distance_fade_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_distance_fade_max_distance") = _GODOT_get_distance_fade_max_distance;
	/**
	
	*/
	double getDistanceFadeMaxDistance() const
	{
		_GODOT_get_distance_fade_max_distance.bind("SpatialMaterial", "get_distance_fade_max_distance");
		return ptrcall!(double)(_GODOT_get_distance_fade_max_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_distance_fade_min_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_distance_fade_min_distance") = _GODOT_set_distance_fade_min_distance;
	/**
	
	*/
	void setDistanceFadeMinDistance(in double distance)
	{
		_GODOT_set_distance_fade_min_distance.bind("SpatialMaterial", "set_distance_fade_min_distance");
		ptrcall!(void)(_GODOT_set_distance_fade_min_distance, _godot_object, distance);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_distance_fade_min_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_distance_fade_min_distance") = _GODOT_get_distance_fade_min_distance;
	/**
	
	*/
	double getDistanceFadeMinDistance() const
	{
		_GODOT_get_distance_fade_min_distance.bind("SpatialMaterial", "get_distance_fade_min_distance");
		return ptrcall!(double)(_GODOT_get_distance_fade_min_distance, _godot_object);
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
	@property bool flagsWorldTriplanar()
	{
		return getFlag(9);
	}
	/// ditto
	@property void flagsWorldTriplanar(bool v)
	{
		setFlag(9, v);
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
	@property bool flagsAlbedoTexForceSrgb()
	{
		return getFlag(13);
	}
	/// ditto
	@property void flagsAlbedoTexForceSrgb(bool v)
	{
		setFlag(13, v);
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
	@property bool paramsUseAlphaScissor()
	{
		return getFlag(12);
	}
	/// ditto
	@property void paramsUseAlphaScissor(bool v)
	{
		setFlag(12, v);
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
	@property long particlesAnimLoop()
	{
		return getParticlesAnimLoop();
	}
	/// ditto
	@property void particlesAnimLoop(long v)
	{
		setParticlesAnimLoop(v);
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
		return getFlag(11);
	}
	/// ditto
	@property void emissionOnUv2(bool v)
	{
		setFlag(11, v);
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
		return getFlag(10);
	}
	/// ditto
	@property void aoOnUv2(bool v)
	{
		setFlag(10, v);
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
		return getFlag(7);
	}
	/// ditto
	@property void uv1Triplanar(bool v)
	{
		setFlag(7, v);
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
		return getFlag(8);
	}
	/// ditto
	@property void uv2Triplanar(bool v)
	{
		setFlag(8, v);
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
	@property bool distanceFadeEnable()
	{
		return isDistanceFadeEnabled();
	}
	/// ditto
	@property void distanceFadeEnable(bool v)
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
