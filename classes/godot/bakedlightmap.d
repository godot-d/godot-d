/**


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
/**

*/
@GodotBaseClass struct BakedLightmap
{
	static immutable string _GODOT_internal_name = "BakedLightmap";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		
		*/
		bakeQualityLow = 0,
		/**
		
		*/
		bakeQualityMedium = 1,
		/**
		
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
		
		*/
		bakeModeConeTrace = 0,
		/**
		
		*/
		bakeModeRayTrace = 1,
	}
	/// 
	enum Constants : int
	{
		bakeErrorOk = 0,
		bakeQualityLow = 0,
		bakeModeConeTrace = 0,
		bakeModeRayTrace = 1,
		bakeErrorNoSavePath = 1,
		bakeQualityMedium = 1,
		bakeQualityHigh = 2,
		bakeErrorNoMeshes = 2,
		bakeErrorCantCreateImage = 3,
		bakeErrorUserAborted = 4,
	}
	package(godot) static GodotMethod!(void, BakedLightmapData) _GODOT_set_light_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_light_data") = _GODOT_set_light_data;
	/**
	
	*/
	void setLightData(BakedLightmapData data)
	{
		_GODOT_set_light_data.bind("BakedLightmap", "set_light_data");
		ptrcall!(void)(_GODOT_set_light_data, _godot_object, data);
	}
	package(godot) static GodotMethod!(BakedLightmapData) _GODOT_get_light_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_light_data") = _GODOT_get_light_data;
	/**
	
	*/
	Ref!BakedLightmapData getLightData() const
	{
		_GODOT_get_light_data.bind("BakedLightmap", "get_light_data");
		return ptrcall!(BakedLightmapData)(_GODOT_get_light_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_bake_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bake_cell_size") = _GODOT_set_bake_cell_size;
	/**
	
	*/
	void setBakeCellSize(in double bake_cell_size)
	{
		_GODOT_set_bake_cell_size.bind("BakedLightmap", "set_bake_cell_size");
		ptrcall!(void)(_GODOT_set_bake_cell_size, _godot_object, bake_cell_size);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_bake_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bake_cell_size") = _GODOT_get_bake_cell_size;
	/**
	
	*/
	double getBakeCellSize() const
	{
		_GODOT_get_bake_cell_size.bind("BakedLightmap", "get_bake_cell_size");
		return ptrcall!(double)(_GODOT_get_bake_cell_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_capture_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_capture_cell_size") = _GODOT_set_capture_cell_size;
	/**
	
	*/
	void setCaptureCellSize(in double capture_cell_size)
	{
		_GODOT_set_capture_cell_size.bind("BakedLightmap", "set_capture_cell_size");
		ptrcall!(void)(_GODOT_set_capture_cell_size, _godot_object, capture_cell_size);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_capture_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_capture_cell_size") = _GODOT_get_capture_cell_size;
	/**
	
	*/
	double getCaptureCellSize() const
	{
		_GODOT_get_capture_cell_size.bind("BakedLightmap", "get_capture_cell_size");
		return ptrcall!(double)(_GODOT_get_capture_cell_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_bake_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bake_quality") = _GODOT_set_bake_quality;
	/**
	
	*/
	void setBakeQuality(in long bake_quality)
	{
		_GODOT_set_bake_quality.bind("BakedLightmap", "set_bake_quality");
		ptrcall!(void)(_GODOT_set_bake_quality, _godot_object, bake_quality);
	}
	package(godot) static GodotMethod!(BakedLightmap.BakeQuality) _GODOT_get_bake_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bake_quality") = _GODOT_get_bake_quality;
	/**
	
	*/
	BakedLightmap.BakeQuality getBakeQuality() const
	{
		_GODOT_get_bake_quality.bind("BakedLightmap", "get_bake_quality");
		return ptrcall!(BakedLightmap.BakeQuality)(_GODOT_get_bake_quality, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_bake_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bake_mode") = _GODOT_set_bake_mode;
	/**
	
	*/
	void setBakeMode(in long bake_mode)
	{
		_GODOT_set_bake_mode.bind("BakedLightmap", "set_bake_mode");
		ptrcall!(void)(_GODOT_set_bake_mode, _godot_object, bake_mode);
	}
	package(godot) static GodotMethod!(BakedLightmap.BakeMode) _GODOT_get_bake_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bake_mode") = _GODOT_get_bake_mode;
	/**
	
	*/
	BakedLightmap.BakeMode getBakeMode() const
	{
		_GODOT_get_bake_mode.bind("BakedLightmap", "get_bake_mode");
		return ptrcall!(BakedLightmap.BakeMode)(_GODOT_get_bake_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_extents") = _GODOT_set_extents;
	/**
	
	*/
	void setExtents(in Vector3 extents)
	{
		_GODOT_set_extents.bind("BakedLightmap", "set_extents");
		ptrcall!(void)(_GODOT_set_extents, _godot_object, extents);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_extents") = _GODOT_get_extents;
	/**
	
	*/
	Vector3 getExtents() const
	{
		_GODOT_get_extents.bind("BakedLightmap", "get_extents");
		return ptrcall!(Vector3)(_GODOT_get_extents, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_propagation") = _GODOT_set_propagation;
	/**
	
	*/
	void setPropagation(in double propagation)
	{
		_GODOT_set_propagation.bind("BakedLightmap", "set_propagation");
		ptrcall!(void)(_GODOT_set_propagation, _godot_object, propagation);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_propagation") = _GODOT_get_propagation;
	/**
	
	*/
	double getPropagation() const
	{
		_GODOT_get_propagation.bind("BakedLightmap", "get_propagation");
		return ptrcall!(double)(_GODOT_get_propagation, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_energy") = _GODOT_set_energy;
	/**
	
	*/
	void setEnergy(in double energy)
	{
		_GODOT_set_energy.bind("BakedLightmap", "set_energy");
		ptrcall!(void)(_GODOT_set_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_energy") = _GODOT_get_energy;
	/**
	
	*/
	double getEnergy() const
	{
		_GODOT_get_energy.bind("BakedLightmap", "get_energy");
		return ptrcall!(double)(_GODOT_get_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hdr;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hdr") = _GODOT_set_hdr;
	/**
	
	*/
	void setHdr(in bool hdr)
	{
		_GODOT_set_hdr.bind("BakedLightmap", "set_hdr");
		ptrcall!(void)(_GODOT_set_hdr, _godot_object, hdr);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_hdr;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_hdr") = _GODOT_is_hdr;
	/**
	
	*/
	bool isHdr() const
	{
		_GODOT_is_hdr.bind("BakedLightmap", "is_hdr");
		return ptrcall!(bool)(_GODOT_is_hdr, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_image_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_image_path") = _GODOT_set_image_path;
	/**
	
	*/
	void setImagePath(StringArg0)(in StringArg0 image_path)
	{
		_GODOT_set_image_path.bind("BakedLightmap", "set_image_path");
		ptrcall!(void)(_GODOT_set_image_path, _godot_object, image_path);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_image_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_image_path") = _GODOT_get_image_path;
	/**
	
	*/
	String getImagePath() const
	{
		_GODOT_get_image_path.bind("BakedLightmap", "get_image_path");
		return ptrcall!(String)(_GODOT_get_image_path, _godot_object);
	}
	package(godot) static GodotMethod!(BakedLightmap.BakeError, GodotObject, bool) _GODOT_bake;
	package(godot) alias _GODOT_methodBindInfo(string name : "bake") = _GODOT_bake;
	/**
	
	*/
	BakedLightmap.BakeError bake(GodotObject from_node = GodotObject.init, in bool create_visual_debug = false)
	{
		_GODOT_bake.bind("BakedLightmap", "bake");
		return ptrcall!(BakedLightmap.BakeError)(_GODOT_bake, _godot_object, from_node, create_visual_debug);
	}
	package(godot) static GodotMethod!(void) _GODOT_debug_bake;
	package(godot) alias _GODOT_methodBindInfo(string name : "debug_bake") = _GODOT_debug_bake;
	/**
	
	*/
	void debugBake()
	{
		_GODOT_debug_bake.bind("BakedLightmap", "debug_bake");
		ptrcall!(void)(_GODOT_debug_bake, _godot_object);
	}
	/**
	
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
