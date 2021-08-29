/**
Prerendered indirect light map for a scene.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.bakedlightmap;
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
import godot.visualinstance;
import godot.node;
import godot.sky;
import godot.bakedlightmapdata;
/**
Prerendered indirect light map for a scene.

Baked lightmaps are an alternative workflow for adding indirect (or baked) lighting to a scene. Unlike the $(D GIProbe) approach, baked lightmaps work fine on low-end PCs and mobile devices as they consume almost no resources in run-time.
*/
@GodotBaseClass struct BakedLightmap
{
	package(godot) enum string _GODOT_internal_name = "BakedLightmap";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("bake") GodotMethod!(BakedLightmap.BakeError, Node, String) bake;
		@GodotName("get_bake_quality") GodotMethod!(BakedLightmap.BakeQuality) getBakeQuality;
		@GodotName("get_bias") GodotMethod!(double) getBias;
		@GodotName("get_bounces") GodotMethod!(long) getBounces;
		@GodotName("get_capture_cell_size") GodotMethod!(double) getCaptureCellSize;
		@GodotName("get_capture_enabled") GodotMethod!(bool) getCaptureEnabled;
		@GodotName("get_capture_propagation") GodotMethod!(double) getCapturePropagation;
		@GodotName("get_capture_quality") GodotMethod!(BakedLightmap.BakeQuality) getCaptureQuality;
		@GodotName("get_default_texels_per_unit") GodotMethod!(double) getDefaultTexelsPerUnit;
		@GodotName("get_environment_custom_color") GodotMethod!(Color) getEnvironmentCustomColor;
		@GodotName("get_environment_custom_energy") GodotMethod!(double) getEnvironmentCustomEnergy;
		@GodotName("get_environment_custom_sky") GodotMethod!(Sky) getEnvironmentCustomSky;
		@GodotName("get_environment_custom_sky_rotation_degrees") GodotMethod!(Vector3) getEnvironmentCustomSkyRotationDegrees;
		@GodotName("get_environment_min_light") GodotMethod!(Color) getEnvironmentMinLight;
		@GodotName("get_environment_mode") GodotMethod!(BakedLightmap.EnvironmentMode) getEnvironmentMode;
		@GodotName("get_extents") GodotMethod!(Vector3) getExtents;
		@GodotName("get_image_path") GodotMethod!(String) getImagePath;
		@GodotName("get_light_data") GodotMethod!(BakedLightmapData) getLightData;
		@GodotName("get_max_atlas_size") GodotMethod!(long) getMaxAtlasSize;
		@GodotName("is_generate_atlas_enabled") GodotMethod!(bool) isGenerateAtlasEnabled;
		@GodotName("is_using_color") GodotMethod!(bool) isUsingColor;
		@GodotName("is_using_denoiser") GodotMethod!(bool) isUsingDenoiser;
		@GodotName("is_using_hdr") GodotMethod!(bool) isUsingHdr;
		@GodotName("set_bake_quality") GodotMethod!(void, long) setBakeQuality;
		@GodotName("set_bias") GodotMethod!(void, double) setBias;
		@GodotName("set_bounces") GodotMethod!(void, long) setBounces;
		@GodotName("set_capture_cell_size") GodotMethod!(void, double) setCaptureCellSize;
		@GodotName("set_capture_enabled") GodotMethod!(void, bool) setCaptureEnabled;
		@GodotName("set_capture_propagation") GodotMethod!(void, double) setCapturePropagation;
		@GodotName("set_capture_quality") GodotMethod!(void, long) setCaptureQuality;
		@GodotName("set_default_texels_per_unit") GodotMethod!(void, double) setDefaultTexelsPerUnit;
		@GodotName("set_environment_custom_color") GodotMethod!(void, Color) setEnvironmentCustomColor;
		@GodotName("set_environment_custom_energy") GodotMethod!(void, double) setEnvironmentCustomEnergy;
		@GodotName("set_environment_custom_sky") GodotMethod!(void, Sky) setEnvironmentCustomSky;
		@GodotName("set_environment_custom_sky_rotation_degrees") GodotMethod!(void, Vector3) setEnvironmentCustomSkyRotationDegrees;
		@GodotName("set_environment_min_light") GodotMethod!(void, Color) setEnvironmentMinLight;
		@GodotName("set_environment_mode") GodotMethod!(void, long) setEnvironmentMode;
		@GodotName("set_extents") GodotMethod!(void, Vector3) setExtents;
		@GodotName("set_generate_atlas") GodotMethod!(void, bool) setGenerateAtlas;
		@GodotName("set_image_path") GodotMethod!(void, String) setImagePath;
		@GodotName("set_light_data") GodotMethod!(void, BakedLightmapData) setLightData;
		@GodotName("set_max_atlas_size") GodotMethod!(void, long) setMaxAtlasSize;
		@GodotName("set_use_color") GodotMethod!(void, bool) setUseColor;
		@GodotName("set_use_denoiser") GodotMethod!(void, bool) setUseDenoiser;
		@GodotName("set_use_hdr") GodotMethod!(void, bool) setUseHdr;
	}
	/// 
	pragma(inline, true) bool opEquals(in BakedLightmap other) const
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
	/// Construct a new instance of BakedLightmap.
	/// Note: use `memnew!BakedLightmap` instead.
	static BakedLightmap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BakedLightmap");
		if(constructor is null) return typeof(this).init;
		return cast(BakedLightmap)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum BakeQuality : int
	{
		/**
		The lowest bake quality mode. Fastest to calculate.
		*/
		bakeQualityLow = 0,
		/**
		The default bake quality mode.
		*/
		bakeQualityMedium = 1,
		/**
		A higher bake quality mode. Takes longer to calculate.
		*/
		bakeQualityHigh = 2,
		/**
		The highest bake quality mode. Takes the longest to calculate.
		*/
		bakeQualityUltra = 3,
	}
	/// 
	enum BakeError : int
	{
		/**
		Baking was successful.
		*/
		bakeErrorOk = 0,
		/**
		Returns if no viable save path is found. This can happen where an $(D imagePath) is not specified or when the save location is invalid.
		*/
		bakeErrorNoSavePath = 1,
		/**
		Currently unused.
		*/
		bakeErrorNoMeshes = 2,
		/**
		Returns when the baker cannot save per-mesh textures to file.
		*/
		bakeErrorCantCreateImage = 3,
		/**
		The size of the generated lightmaps is too large.
		*/
		bakeErrorLightmapSize = 4,
		/**
		Some mesh contains UV2 values outside the `$(D 0,1)` range.
		*/
		bakeErrorInvalidMesh = 5,
		/**
		Returns if user cancels baking.
		*/
		bakeErrorUserAborted = 6,
		/**
		
		*/
		bakeErrorNoLightmapper = 7,
	}
	/// 
	enum EnvironmentMode : int
	{
		/**
		No environment is used during baking.
		*/
		environmentModeDisabled = 0,
		/**
		The baked environment is automatically picked from the current scene.
		*/
		environmentModeScene = 1,
		/**
		A custom sky is used as environment during baking.
		*/
		environmentModeCustomSky = 2,
		/**
		A custom solid color is used as environment during baking.
		*/
		environmentModeCustomColor = 3,
	}
	/// 
	enum Constants : int
	{
		bakeErrorOk = 0,
		bakeQualityLow = 0,
		environmentModeDisabled = 0,
		bakeErrorNoSavePath = 1,
		bakeQualityMedium = 1,
		environmentModeScene = 1,
		bakeQualityHigh = 2,
		environmentModeCustomSky = 2,
		bakeErrorNoMeshes = 2,
		environmentModeCustomColor = 3,
		bakeErrorCantCreateImage = 3,
		bakeQualityUltra = 3,
		bakeErrorLightmapSize = 4,
		bakeErrorInvalidMesh = 5,
		bakeErrorUserAborted = 6,
		bakeErrorNoLightmapper = 7,
	}
	/**
	Bakes the lightmap, scanning from the given `from_node` root and saves the resulting $(D BakedLightmapData) in `data_save_path`. If no save path is provided it will try to match the path from the current $(D lightData).
	*/
	BakedLightmap.BakeError bake(Node from_node = Node.init, in String data_save_path = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BakedLightmap.BakeError)(GDNativeClassBinding.bake, _godot_object, from_node, data_save_path);
	}
	/**
	
	*/
	BakedLightmap.BakeQuality getBakeQuality() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BakedLightmap.BakeQuality)(GDNativeClassBinding.getBakeQuality, _godot_object);
	}
	/**
	
	*/
	double getBias() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBias, _godot_object);
	}
	/**
	
	*/
	long getBounces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBounces, _godot_object);
	}
	/**
	
	*/
	double getCaptureCellSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCaptureCellSize, _godot_object);
	}
	/**
	
	*/
	bool getCaptureEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCaptureEnabled, _godot_object);
	}
	/**
	
	*/
	double getCapturePropagation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCapturePropagation, _godot_object);
	}
	/**
	
	*/
	BakedLightmap.BakeQuality getCaptureQuality() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BakedLightmap.BakeQuality)(GDNativeClassBinding.getCaptureQuality, _godot_object);
	}
	/**
	
	*/
	double getDefaultTexelsPerUnit() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDefaultTexelsPerUnit, _godot_object);
	}
	/**
	
	*/
	Color getEnvironmentCustomColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getEnvironmentCustomColor, _godot_object);
	}
	/**
	
	*/
	double getEnvironmentCustomEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEnvironmentCustomEnergy, _godot_object);
	}
	/**
	
	*/
	Ref!Sky getEnvironmentCustomSky() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Sky)(GDNativeClassBinding.getEnvironmentCustomSky, _godot_object);
	}
	/**
	
	*/
	Vector3 getEnvironmentCustomSkyRotationDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getEnvironmentCustomSkyRotationDegrees, _godot_object);
	}
	/**
	
	*/
	Color getEnvironmentMinLight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getEnvironmentMinLight, _godot_object);
	}
	/**
	
	*/
	BakedLightmap.EnvironmentMode getEnvironmentMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BakedLightmap.EnvironmentMode)(GDNativeClassBinding.getEnvironmentMode, _godot_object);
	}
	/**
	
	*/
	Vector3 getExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getExtents, _godot_object);
	}
	/**
	
	*/
	String getImagePath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getImagePath, _godot_object);
	}
	/**
	
	*/
	Ref!BakedLightmapData getLightData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BakedLightmapData)(GDNativeClassBinding.getLightData, _godot_object);
	}
	/**
	
	*/
	long getMaxAtlasSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxAtlasSize, _godot_object);
	}
	/**
	
	*/
	bool isGenerateAtlasEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isGenerateAtlasEnabled, _godot_object);
	}
	/**
	
	*/
	bool isUsingColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingColor, _godot_object);
	}
	/**
	
	*/
	bool isUsingDenoiser() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingDenoiser, _godot_object);
	}
	/**
	
	*/
	bool isUsingHdr() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingHdr, _godot_object);
	}
	/**
	
	*/
	void setBakeQuality(in long quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBakeQuality, _godot_object, quality);
	}
	/**
	
	*/
	void setBias(in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBias, _godot_object, bias);
	}
	/**
	
	*/
	void setBounces(in long bounces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBounces, _godot_object, bounces);
	}
	/**
	
	*/
	void setCaptureCellSize(in double capture_cell_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCaptureCellSize, _godot_object, capture_cell_size);
	}
	/**
	
	*/
	void setCaptureEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCaptureEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setCapturePropagation(in double propagation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCapturePropagation, _godot_object, propagation);
	}
	/**
	
	*/
	void setCaptureQuality(in long capture_quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCaptureQuality, _godot_object, capture_quality);
	}
	/**
	
	*/
	void setDefaultTexelsPerUnit(in double texels)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultTexelsPerUnit, _godot_object, texels);
	}
	/**
	
	*/
	void setEnvironmentCustomColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnvironmentCustomColor, _godot_object, color);
	}
	/**
	
	*/
	void setEnvironmentCustomEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnvironmentCustomEnergy, _godot_object, energy);
	}
	/**
	
	*/
	void setEnvironmentCustomSky(Sky sky)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnvironmentCustomSky, _godot_object, sky);
	}
	/**
	
	*/
	void setEnvironmentCustomSkyRotationDegrees(in Vector3 rotation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnvironmentCustomSkyRotationDegrees, _godot_object, rotation);
	}
	/**
	
	*/
	void setEnvironmentMinLight(in Color min_light)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnvironmentMinLight, _godot_object, min_light);
	}
	/**
	
	*/
	void setEnvironmentMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnvironmentMode, _godot_object, mode);
	}
	/**
	
	*/
	void setExtents(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExtents, _godot_object, extents);
	}
	/**
	
	*/
	void setGenerateAtlas(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGenerateAtlas, _godot_object, enabled);
	}
	/**
	
	*/
	void setImagePath(in String image_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setImagePath, _godot_object, image_path);
	}
	/**
	
	*/
	void setLightData(BakedLightmapData data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLightData, _godot_object, data);
	}
	/**
	
	*/
	void setMaxAtlasSize(in long max_atlas_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxAtlasSize, _godot_object, max_atlas_size);
	}
	/**
	
	*/
	void setUseColor(in bool use_denoiser)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseColor, _godot_object, use_denoiser);
	}
	/**
	
	*/
	void setUseDenoiser(in bool use_denoiser)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseDenoiser, _godot_object, use_denoiser);
	}
	/**
	
	*/
	void setUseHdr(in bool use_denoiser)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseHdr, _godot_object, use_denoiser);
	}
	/**
	When enabled, the lightmapper will merge the textures for all meshes into a single large layered texture. Not supported in GLES2.
	*/
	@property bool atlasGenerate()
	{
		return isGenerateAtlasEnabled();
	}
	/// ditto
	@property void atlasGenerate(bool v)
	{
		setGenerateAtlas(v);
	}
	/**
	Maximum size of each lightmap layer, only used when $(D atlasGenerate) is enabled.
	*/
	@property long atlasMaxSize()
	{
		return getMaxAtlasSize();
	}
	/// ditto
	@property void atlasMaxSize(long v)
	{
		setMaxAtlasSize(v);
	}
	/**
	Raycasting bias used during baking to avoid floating point precission issues.
	*/
	@property double bias()
	{
		return getBias();
	}
	/// ditto
	@property void bias(double v)
	{
		setBias(v);
	}
	/**
	Number of light bounces that are taken into account during baking.
	*/
	@property long bounces()
	{
		return getBounces();
	}
	/// ditto
	@property void bounces(long v)
	{
		setBounces(v);
	}
	/**
	Grid size used for real-time capture information on dynamic objects.
	*/
	@property double captureCellSize()
	{
		return getCaptureCellSize();
	}
	/// ditto
	@property void captureCellSize(double v)
	{
		setCaptureCellSize(v);
	}
	/**
	When enabled, an octree containing the scene's lighting information will be computed. This octree will then be used to light dynamic objects in the scene.
	*/
	@property bool captureEnabled()
	{
		return getCaptureEnabled();
	}
	/// ditto
	@property void captureEnabled(bool v)
	{
		setCaptureEnabled(v);
	}
	/**
	Bias value to reduce the amount of light proagation in the captured octree.
	*/
	@property double capturePropagation()
	{
		return getCapturePropagation();
	}
	/// ditto
	@property void capturePropagation(double v)
	{
		setCapturePropagation(v);
	}
	/**
	Bake quality of the capture data.
	*/
	@property BakedLightmap.BakeQuality captureQuality()
	{
		return getCaptureQuality();
	}
	/// ditto
	@property void captureQuality(long v)
	{
		setCaptureQuality(v);
	}
	/**
	If a baked mesh doesn't have a UV2 size hint, this value will be used to roughly compute a suitable lightmap size.
	*/
	@property double defaultTexelsPerUnit()
	{
		return getDefaultTexelsPerUnit();
	}
	/// ditto
	@property void defaultTexelsPerUnit(double v)
	{
		setDefaultTexelsPerUnit(v);
	}
	/**
	The environment color when $(D environmentMode) is set to $(D constant ENVIRONMENT_MODE_CUSTOM_COLOR).
	*/
	@property Color environmentCustomColor()
	{
		return getEnvironmentCustomColor();
	}
	/// ditto
	@property void environmentCustomColor(Color v)
	{
		setEnvironmentCustomColor(v);
	}
	/**
	The energy scaling factor when when $(D environmentMode) is set to $(D constant ENVIRONMENT_MODE_CUSTOM_COLOR) or $(D constant ENVIRONMENT_MODE_CUSTOM_SKY).
	*/
	@property double environmentCustomEnergy()
	{
		return getEnvironmentCustomEnergy();
	}
	/// ditto
	@property void environmentCustomEnergy(double v)
	{
		setEnvironmentCustomEnergy(v);
	}
	/**
	The $(D Sky) resource to use when $(D environmentMode) is set o $(D constant ENVIRONMENT_MODE_CUSTOM_SKY).
	*/
	@property Sky environmentCustomSky()
	{
		return getEnvironmentCustomSky();
	}
	/// ditto
	@property void environmentCustomSky(Sky v)
	{
		setEnvironmentCustomSky(v);
	}
	/**
	The rotation of the baked custom sky.
	*/
	@property Vector3 environmentCustomSkyRotationDegrees()
	{
		return getEnvironmentCustomSkyRotationDegrees();
	}
	/// ditto
	@property void environmentCustomSkyRotationDegrees(Vector3 v)
	{
		setEnvironmentCustomSkyRotationDegrees(v);
	}
	/**
	Minimum ambient light for all the lightmap texels. This doesn't take into account any occlusion from the scene's geometry, it simply ensures a minimum amount of light on all the lightmap texels. Can be used for artistic control on shadow color.
	*/
	@property Color environmentMinLight()
	{
		return getEnvironmentMinLight();
	}
	/// ditto
	@property void environmentMinLight(Color v)
	{
		setEnvironmentMinLight(v);
	}
	/**
	Decides which environment to use during baking.
	*/
	@property BakedLightmap.EnvironmentMode environmentMode()
	{
		return getEnvironmentMode();
	}
	/// ditto
	@property void environmentMode(long v)
	{
		setEnvironmentMode(v);
	}
	/**
	Size of the baked lightmap. Only meshes inside this region will be included in the baked lightmap, also used as the bounds of the captured region for dynamic lighting.
	*/
	@property Vector3 extents()
	{
		return getExtents();
	}
	/// ditto
	@property void extents(Vector3 v)
	{
		setExtents(v);
	}
	/**
	Deprecated, in previous versions it determined the location where lightmaps were be saved.
	*/
	@property String imagePath()
	{
		return getImagePath();
	}
	/// ditto
	@property void imagePath(String v)
	{
		setImagePath(v);
	}
	/**
	The calculated light data.
	*/
	@property BakedLightmapData lightData()
	{
		return getLightData();
	}
	/// ditto
	@property void lightData(BakedLightmapData v)
	{
		setLightData(v);
	}
	/**
	Determines the amount of samples per texel used in indrect light baking. The amount of samples for each quality level can be configured in the project settings.
	*/
	@property BakedLightmap.BakeQuality quality()
	{
		return getBakeQuality();
	}
	/// ditto
	@property void quality(long v)
	{
		setBakeQuality(v);
	}
	/**
	Store full color values in the lightmap textures. When disabled, lightmap textures will store a single brightness channel. Can be disabled to reduce disk usage if the scene contains only white lights or you don't mind losing color information in indirect lighting.
	*/
	@property bool useColor()
	{
		return isUsingColor();
	}
	/// ditto
	@property void useColor(bool v)
	{
		setUseColor(v);
	}
	/**
	When enabled, a lightmap denoiser will be used to reduce the noise inherent to Monte Carlo based global illumination.
	*/
	@property bool useDenoiser()
	{
		return isUsingDenoiser();
	}
	/// ditto
	@property void useDenoiser(bool v)
	{
		setUseDenoiser(v);
	}
	/**
	If `true`, stores the lightmap textures in a high dynamic range format (EXR). If `false`, stores the lightmap texture in a low dynamic range PNG image. This can be set to `false` to reduce disk usage, but light values over 1.0 will be clamped and you may see banding caused by the reduced precision.
	$(B Note:) Setting $(D useHdr) to `true` will decrease lightmap banding even when using the GLES2 backend or if $(D ProjectSettings.rendering/quality/depth/hdr) is `false`.
	*/
	@property bool useHdr()
	{
		return isUsingHdr();
	}
	/// ditto
	@property void useHdr(bool v)
	{
		setUseHdr(v);
	}
}
