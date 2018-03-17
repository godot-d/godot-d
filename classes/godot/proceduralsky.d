/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.proceduralsky;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.sky;
import godot.image;
/**

*/
@GodotBaseClass struct ProceduralSky
{
	static immutable string _GODOT_internal_name = "ProceduralSky";
public:
@nogc nothrow:
	union { godot_object _godot_object; Sky _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ProceduralSky other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ProceduralSky opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ProceduralSky _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ProceduralSky");
		if(constructor is null) return typeof(this).init;
		return cast(ProceduralSky)(constructor());
	}
	/// 
	enum TextureSize : int
	{
		/**
		
		*/
		textureSize256 = 0,
		/**
		
		*/
		textureSize512 = 1,
		/**
		
		*/
		textureSize1024 = 2,
		/**
		
		*/
		textureSize2048 = 3,
		/**
		
		*/
		textureSize4096 = 4,
		/**
		
		*/
		textureSizeMax = 5,
	}
	/// 
	enum Constants : int
	{
		textureSize256 = 0,
		textureSize512 = 1,
		textureSize1024 = 2,
		textureSize2048 = 3,
		textureSize4096 = 4,
		textureSizeMax = 5,
	}
	package(godot) static GodotMethod!(void) _GODOT__update_sky;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_sky") = _GODOT__update_sky;
	/**
	
	*/
	void _updateSky()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_sky");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_sky_top_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky_top_color") = _GODOT_set_sky_top_color;
	/**
	
	*/
	void setSkyTopColor(in Color color)
	{
		_GODOT_set_sky_top_color.bind("ProceduralSky", "set_sky_top_color");
		ptrcall!(void)(_GODOT_set_sky_top_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_sky_top_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky_top_color") = _GODOT_get_sky_top_color;
	/**
	
	*/
	Color getSkyTopColor() const
	{
		_GODOT_get_sky_top_color.bind("ProceduralSky", "get_sky_top_color");
		return ptrcall!(Color)(_GODOT_get_sky_top_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_sky_horizon_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky_horizon_color") = _GODOT_set_sky_horizon_color;
	/**
	
	*/
	void setSkyHorizonColor(in Color color)
	{
		_GODOT_set_sky_horizon_color.bind("ProceduralSky", "set_sky_horizon_color");
		ptrcall!(void)(_GODOT_set_sky_horizon_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_sky_horizon_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky_horizon_color") = _GODOT_get_sky_horizon_color;
	/**
	
	*/
	Color getSkyHorizonColor() const
	{
		_GODOT_get_sky_horizon_color.bind("ProceduralSky", "get_sky_horizon_color");
		return ptrcall!(Color)(_GODOT_get_sky_horizon_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_sky_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky_curve") = _GODOT_set_sky_curve;
	/**
	
	*/
	void setSkyCurve(in double curve)
	{
		_GODOT_set_sky_curve.bind("ProceduralSky", "set_sky_curve");
		ptrcall!(void)(_GODOT_set_sky_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_sky_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky_curve") = _GODOT_get_sky_curve;
	/**
	
	*/
	double getSkyCurve() const
	{
		_GODOT_get_sky_curve.bind("ProceduralSky", "get_sky_curve");
		return ptrcall!(double)(_GODOT_get_sky_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_sky_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sky_energy") = _GODOT_set_sky_energy;
	/**
	
	*/
	void setSkyEnergy(in double energy)
	{
		_GODOT_set_sky_energy.bind("ProceduralSky", "set_sky_energy");
		ptrcall!(void)(_GODOT_set_sky_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_sky_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sky_energy") = _GODOT_get_sky_energy;
	/**
	
	*/
	double getSkyEnergy() const
	{
		_GODOT_get_sky_energy.bind("ProceduralSky", "get_sky_energy");
		return ptrcall!(double)(_GODOT_get_sky_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_ground_bottom_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ground_bottom_color") = _GODOT_set_ground_bottom_color;
	/**
	
	*/
	void setGroundBottomColor(in Color color)
	{
		_GODOT_set_ground_bottom_color.bind("ProceduralSky", "set_ground_bottom_color");
		ptrcall!(void)(_GODOT_set_ground_bottom_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_ground_bottom_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ground_bottom_color") = _GODOT_get_ground_bottom_color;
	/**
	
	*/
	Color getGroundBottomColor() const
	{
		_GODOT_get_ground_bottom_color.bind("ProceduralSky", "get_ground_bottom_color");
		return ptrcall!(Color)(_GODOT_get_ground_bottom_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_ground_horizon_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ground_horizon_color") = _GODOT_set_ground_horizon_color;
	/**
	
	*/
	void setGroundHorizonColor(in Color color)
	{
		_GODOT_set_ground_horizon_color.bind("ProceduralSky", "set_ground_horizon_color");
		ptrcall!(void)(_GODOT_set_ground_horizon_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_ground_horizon_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ground_horizon_color") = _GODOT_get_ground_horizon_color;
	/**
	
	*/
	Color getGroundHorizonColor() const
	{
		_GODOT_get_ground_horizon_color.bind("ProceduralSky", "get_ground_horizon_color");
		return ptrcall!(Color)(_GODOT_get_ground_horizon_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ground_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ground_curve") = _GODOT_set_ground_curve;
	/**
	
	*/
	void setGroundCurve(in double curve)
	{
		_GODOT_set_ground_curve.bind("ProceduralSky", "set_ground_curve");
		ptrcall!(void)(_GODOT_set_ground_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ground_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ground_curve") = _GODOT_get_ground_curve;
	/**
	
	*/
	double getGroundCurve() const
	{
		_GODOT_get_ground_curve.bind("ProceduralSky", "get_ground_curve");
		return ptrcall!(double)(_GODOT_get_ground_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ground_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ground_energy") = _GODOT_set_ground_energy;
	/**
	
	*/
	void setGroundEnergy(in double energy)
	{
		_GODOT_set_ground_energy.bind("ProceduralSky", "set_ground_energy");
		ptrcall!(void)(_GODOT_set_ground_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ground_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ground_energy") = _GODOT_get_ground_energy;
	/**
	
	*/
	double getGroundEnergy() const
	{
		_GODOT_get_ground_energy.bind("ProceduralSky", "get_ground_energy");
		return ptrcall!(double)(_GODOT_get_ground_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_sun_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_color") = _GODOT_set_sun_color;
	/**
	
	*/
	void setSunColor(in Color color)
	{
		_GODOT_set_sun_color.bind("ProceduralSky", "set_sun_color");
		ptrcall!(void)(_GODOT_set_sun_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_sun_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_color") = _GODOT_get_sun_color;
	/**
	
	*/
	Color getSunColor() const
	{
		_GODOT_get_sun_color.bind("ProceduralSky", "get_sun_color");
		return ptrcall!(Color)(_GODOT_get_sun_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_sun_latitude;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_latitude") = _GODOT_set_sun_latitude;
	/**
	
	*/
	void setSunLatitude(in double degrees)
	{
		_GODOT_set_sun_latitude.bind("ProceduralSky", "set_sun_latitude");
		ptrcall!(void)(_GODOT_set_sun_latitude, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_sun_latitude;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_latitude") = _GODOT_get_sun_latitude;
	/**
	
	*/
	double getSunLatitude() const
	{
		_GODOT_get_sun_latitude.bind("ProceduralSky", "get_sun_latitude");
		return ptrcall!(double)(_GODOT_get_sun_latitude, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_sun_longitude;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_longitude") = _GODOT_set_sun_longitude;
	/**
	
	*/
	void setSunLongitude(in double degrees)
	{
		_GODOT_set_sun_longitude.bind("ProceduralSky", "set_sun_longitude");
		ptrcall!(void)(_GODOT_set_sun_longitude, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_sun_longitude;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_longitude") = _GODOT_get_sun_longitude;
	/**
	
	*/
	double getSunLongitude() const
	{
		_GODOT_get_sun_longitude.bind("ProceduralSky", "get_sun_longitude");
		return ptrcall!(double)(_GODOT_get_sun_longitude, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_sun_angle_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_angle_min") = _GODOT_set_sun_angle_min;
	/**
	
	*/
	void setSunAngleMin(in double degrees)
	{
		_GODOT_set_sun_angle_min.bind("ProceduralSky", "set_sun_angle_min");
		ptrcall!(void)(_GODOT_set_sun_angle_min, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_sun_angle_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_angle_min") = _GODOT_get_sun_angle_min;
	/**
	
	*/
	double getSunAngleMin() const
	{
		_GODOT_get_sun_angle_min.bind("ProceduralSky", "get_sun_angle_min");
		return ptrcall!(double)(_GODOT_get_sun_angle_min, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_sun_angle_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_angle_max") = _GODOT_set_sun_angle_max;
	/**
	
	*/
	void setSunAngleMax(in double degrees)
	{
		_GODOT_set_sun_angle_max.bind("ProceduralSky", "set_sun_angle_max");
		ptrcall!(void)(_GODOT_set_sun_angle_max, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_sun_angle_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_angle_max") = _GODOT_get_sun_angle_max;
	/**
	
	*/
	double getSunAngleMax() const
	{
		_GODOT_get_sun_angle_max.bind("ProceduralSky", "get_sun_angle_max");
		return ptrcall!(double)(_GODOT_get_sun_angle_max, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_sun_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_curve") = _GODOT_set_sun_curve;
	/**
	
	*/
	void setSunCurve(in double curve)
	{
		_GODOT_set_sun_curve.bind("ProceduralSky", "set_sun_curve");
		ptrcall!(void)(_GODOT_set_sun_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_sun_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_curve") = _GODOT_get_sun_curve;
	/**
	
	*/
	double getSunCurve() const
	{
		_GODOT_get_sun_curve.bind("ProceduralSky", "get_sun_curve");
		return ptrcall!(double)(_GODOT_get_sun_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_sun_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sun_energy") = _GODOT_set_sun_energy;
	/**
	
	*/
	void setSunEnergy(in double energy)
	{
		_GODOT_set_sun_energy.bind("ProceduralSky", "set_sun_energy");
		ptrcall!(void)(_GODOT_set_sun_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_sun_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sun_energy") = _GODOT_get_sun_energy;
	/**
	
	*/
	double getSunEnergy() const
	{
		_GODOT_get_sun_energy.bind("ProceduralSky", "get_sun_energy");
		return ptrcall!(double)(_GODOT_get_sun_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_texture_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_size") = _GODOT_set_texture_size;
	/**
	
	*/
	void setTextureSize(in long size)
	{
		_GODOT_set_texture_size.bind("ProceduralSky", "set_texture_size");
		ptrcall!(void)(_GODOT_set_texture_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(ProceduralSky.TextureSize) _GODOT_get_texture_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_size") = _GODOT_get_texture_size;
	/**
	
	*/
	ProceduralSky.TextureSize getTextureSize() const
	{
		_GODOT_get_texture_size.bind("ProceduralSky", "get_texture_size");
		return ptrcall!(ProceduralSky.TextureSize)(_GODOT_get_texture_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, Image) _GODOT__thread_done;
	package(godot) alias _GODOT_methodBindInfo(string name : "_thread_done") = _GODOT__thread_done;
	/**
	
	*/
	void _threadDone(Image image)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(image);
		String _GODOT_method_name = String("_thread_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	@property Color skyTopColor()
	{
		return getSkyTopColor();
	}
	/// ditto
	@property void skyTopColor(Color v)
	{
		setSkyTopColor(v);
	}
	/**
	
	*/
	@property Color skyHorizonColor()
	{
		return getSkyHorizonColor();
	}
	/// ditto
	@property void skyHorizonColor(Color v)
	{
		setSkyHorizonColor(v);
	}
	/**
	
	*/
	@property double skyCurve()
	{
		return getSkyCurve();
	}
	/// ditto
	@property void skyCurve(double v)
	{
		setSkyCurve(v);
	}
	/**
	
	*/
	@property double skyEnergy()
	{
		return getSkyEnergy();
	}
	/// ditto
	@property void skyEnergy(double v)
	{
		setSkyEnergy(v);
	}
	/**
	
	*/
	@property Color groundBottomColor()
	{
		return getGroundBottomColor();
	}
	/// ditto
	@property void groundBottomColor(Color v)
	{
		setGroundBottomColor(v);
	}
	/**
	
	*/
	@property Color groundHorizonColor()
	{
		return getGroundHorizonColor();
	}
	/// ditto
	@property void groundHorizonColor(Color v)
	{
		setGroundHorizonColor(v);
	}
	/**
	
	*/
	@property double groundCurve()
	{
		return getGroundCurve();
	}
	/// ditto
	@property void groundCurve(double v)
	{
		setGroundCurve(v);
	}
	/**
	
	*/
	@property double groundEnergy()
	{
		return getGroundEnergy();
	}
	/// ditto
	@property void groundEnergy(double v)
	{
		setGroundEnergy(v);
	}
	/**
	
	*/
	@property Color sunColor()
	{
		return getSunColor();
	}
	/// ditto
	@property void sunColor(Color v)
	{
		setSunColor(v);
	}
	/**
	
	*/
	@property double sunLatitude()
	{
		return getSunLatitude();
	}
	/// ditto
	@property void sunLatitude(double v)
	{
		setSunLatitude(v);
	}
	/**
	
	*/
	@property double sunLongitude()
	{
		return getSunLongitude();
	}
	/// ditto
	@property void sunLongitude(double v)
	{
		setSunLongitude(v);
	}
	/**
	
	*/
	@property double sunAngleMin()
	{
		return getSunAngleMin();
	}
	/// ditto
	@property void sunAngleMin(double v)
	{
		setSunAngleMin(v);
	}
	/**
	
	*/
	@property double sunAngleMax()
	{
		return getSunAngleMax();
	}
	/// ditto
	@property void sunAngleMax(double v)
	{
		setSunAngleMax(v);
	}
	/**
	
	*/
	@property double sunCurve()
	{
		return getSunCurve();
	}
	/// ditto
	@property void sunCurve(double v)
	{
		setSunCurve(v);
	}
	/**
	
	*/
	@property double sunEnergy()
	{
		return getSunEnergy();
	}
	/// ditto
	@property void sunEnergy(double v)
	{
		setSunEnergy(v);
	}
	/**
	
	*/
	@property ProceduralSky.TextureSize textureSize()
	{
		return getTextureSize();
	}
	/// ditto
	@property void textureSize(long v)
	{
		setTextureSize(v);
	}
}
