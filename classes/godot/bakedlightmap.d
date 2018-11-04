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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualinstance;
import godot.bakedlightmapdata;
import godot.spatial;
import godot.node;
/**
Prerendered indirect light map for a scene.

Baked lightmaps are an alternative workflow for adding indirect (or baked) lighting to a scene. Unlike the $(D GIProbe) approach, baked lightmaps work fine on low-end PCs and mobile devices as they consume almost no resources in run-time.
*/
@GodotBaseClass struct BakedLightmap
{
	enum string _GODOT_internal_name = "BakedLightmap";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_light_data") GodotMethod!(void, BakedLightmapData) setLightData;
		@GodotName("get_light_data") GodotMethod!(BakedLightmapData) getLightData;
		@GodotName("set_bake_cell_size") GodotMethod!(void, double) setBakeCellSize;
		@GodotName("get_bake_cell_size") GodotMethod!(double) getBakeCellSize;
		@GodotName("set_capture_cell_size") GodotMethod!(void, double) setCaptureCellSize;
		@GodotName("get_capture_cell_size") GodotMethod!(double) getCaptureCellSize;
		@GodotName("set_bake_quality") GodotMethod!(void, long) setBakeQuality;
		@GodotName("get_bake_quality") GodotMethod!(BakedLightmap.BakeQuality) getBakeQuality;
		@GodotName("set_bake_mode") GodotMethod!(void, long) setBakeMode;
		@GodotName("get_bake_mode") GodotMethod!(BakedLightmap.BakeMode) getBakeMode;
		@GodotName("set_extents") GodotMethod!(void, Vector3) setExtents;
		@GodotName("get_extents") GodotMethod!(Vector3) getExtents;
		@GodotName("set_propagation") GodotMethod!(void, double) setPropagation;
		@GodotName("get_propagation") GodotMethod!(double) getPropagation;
		@GodotName("set_energy") GodotMethod!(void, double) setEnergy;
		@GodotName("get_energy") GodotMethod!(double) getEnergy;
		@GodotName("set_hdr") GodotMethod!(void, bool) setHdr;
		@GodotName("is_hdr") GodotMethod!(bool) isHdr;
		@GodotName("set_image_path") GodotMethod!(void, String) setImagePath;
		@GodotName("get_image_path") GodotMethod!(String) getImagePath;
		@GodotName("bake") GodotMethod!(BakedLightmap.BakeError, GodotObject, bool) bake;
		@GodotName("debug_bake") GodotMethod!(void) debugBake;
	}
	bool opEquals(in BakedLightmap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BakedLightmap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Lowest bake quality mode. Fastest to calculate.
		*/
		bakeQualityLow = 0,
		/**
		Default bake quality mode.
		*/
		bakeQualityMedium = 1,
		/**
		Highest bake quality mode. Takes longer to calculate.
		*/
		bakeQualityHigh = 2,
	}
	/// 
	enum BakeError : int
	{
		/**
		
		*/
		bakeErrorOk = 0,
		/**
		
		*/
		bakeErrorNoSavePath = 1,
		/**
		
		*/
		bakeErrorNoMeshes = 2,
		/**
		
		*/
		bakeErrorCantCreateImage = 3,
		/**
		
		*/
		bakeErrorUserAborted = 4,
	}
	/// 
	enum BakeMode : int
	{
		/**
		Less precise but faster bake mode.
		*/
		bakeModeConeTrace = 0,
		/**
		More precise bake mode but can take considerably longer to bake.
		*/
		bakeModeRayTrace = 1,
	}
	/// 
	enum Constants : int
	{
		bakeErrorOk = 0,
		bakeQualityLow = 0,
		bakeModeConeTrace = 0,
		bakeErrorNoSavePath = 1,
		bakeQualityMedium = 1,
		bakeModeRayTrace = 1,
		bakeQualityHigh = 2,
		bakeErrorNoMeshes = 2,
		bakeErrorCantCreateImage = 3,
		bakeErrorUserAborted = 4,
	}
	/**
	
	*/
	void setLightData(BakedLightmapData data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLightData, _godot_object, data);
	}
	/**
	
	*/
	Ref!BakedLightmapData getLightData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BakedLightmapData)(_classBinding.getLightData, _godot_object);
	}
	/**
	
	*/
	void setBakeCellSize(in double bake_cell_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBakeCellSize, _godot_object, bake_cell_size);
	}
	/**
	
	*/
	double getBakeCellSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBakeCellSize, _godot_object);
	}
	/**
	
	*/
	void setCaptureCellSize(in double capture_cell_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCaptureCellSize, _godot_object, capture_cell_size);
	}
	/**
	
	*/
	double getCaptureCellSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getCaptureCellSize, _godot_object);
	}
	/**
	
	*/
	void setBakeQuality(in long bake_quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBakeQuality, _godot_object, bake_quality);
	}
	/**
	
	*/
	BakedLightmap.BakeQuality getBakeQuality() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BakedLightmap.BakeQuality)(_classBinding.getBakeQuality, _godot_object);
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
	BakedLightmap.BakeMode getBakeMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BakedLightmap.BakeMode)(_classBinding.getBakeMode, _godot_object);
	}
	/**
	
	*/
	void setExtents(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExtents, _godot_object, extents);
	}
	/**
	
	*/
	Vector3 getExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getExtents, _godot_object);
	}
	/**
	
	*/
	void setPropagation(in double propagation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPropagation, _godot_object, propagation);
	}
	/**
	
	*/
	double getPropagation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPropagation, _godot_object);
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
	double getEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getEnergy, _godot_object);
	}
	/**
	
	*/
	void setHdr(in bool hdr)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHdr, _godot_object, hdr);
	}
	/**
	
	*/
	bool isHdr() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHdr, _godot_object);
	}
	/**
	
	*/
	void setImagePath(in String image_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setImagePath, _godot_object, image_path);
	}
	/**
	
	*/
	String getImagePath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getImagePath, _godot_object);
	}
	/**
	
	*/
	BakedLightmap.BakeError bake(GodotObject from_node = GodotObject.init, in bool create_visual_debug = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BakedLightmap.BakeError)(_classBinding.bake, _godot_object, from_node, create_visual_debug);
	}
	/**
	
	*/
	void debugBake()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.debugBake, _godot_object);
	}
	/**
	Grid subdivision size for lightmapper calculation. Default value of `0.25` will work for most cases. Increase for better lighting on small details or if your scene is very large.
	*/
	@property double bakeCellSize()
	{
		return getBakeCellSize();
	}
	/// ditto
	@property void bakeCellSize(double v)
	{
		setBakeCellSize(v);
	}
	/**
	Three quality modes are available. Higher quality requires more rendering time. See $(D bakequality).
	*/
	@property BakedLightmap.BakeQuality bakeQuality()
	{
		return getBakeQuality();
	}
	/// ditto
	@property void bakeQuality(long v)
	{
		setBakeQuality(v);
	}
	/**
	Lightmapping mode. See $(D bakemode).
	*/
	@property BakedLightmap.BakeMode bakeMode()
	{
		return getBakeMode();
	}
	/// ditto
	@property void bakeMode(long v)
	{
		setBakeMode(v);
	}
	/**
	
	*/
	@property double bakePropagation()
	{
		return getPropagation();
	}
	/// ditto
	@property void bakePropagation(double v)
	{
		setPropagation(v);
	}
	/**
	
	*/
	@property double bakeEnergy()
	{
		return getEnergy();
	}
	/// ditto
	@property void bakeEnergy(double v)
	{
		setEnergy(v);
	}
	/**
	If `true` lightmap can capture light values greater than `1.0`. Turning this off will result in a smaller lightmap. Default value:`false`.
	*/
	@property bool bakeHdr()
	{
		return isHdr();
	}
	/// ditto
	@property void bakeHdr(bool v)
	{
		setHdr(v);
	}
	/**
	Size of affected area.
	*/
	@property Vector3 bakeExtents()
	{
		return getExtents();
	}
	/// ditto
	@property void bakeExtents(Vector3 v)
	{
		setExtents(v);
	}
	/**
	Grid size used for real-time capture information on dynamic objects. Cannot be larger than $(D bakeCellSize).
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
	Location where lightmaps will be saved.
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
}
