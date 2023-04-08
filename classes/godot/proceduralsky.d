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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.sky;
import godot.image;
/**

*/
@GodotBaseClass struct ProceduralSky
{
	package(godot) enum string _GODOT_internal_name = "ProceduralSky";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Sky _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_thread_done") GodotMethod!(void, Image) _threadDone;
		@GodotName("_update_sky") GodotMethod!(void) _updateSky;
		@GodotName("get_ground_bottom_color") GodotMethod!(Color) getGroundBottomColor;
		@GodotName("get_ground_curve") GodotMethod!(double) getGroundCurve;
		@GodotName("get_ground_energy") GodotMethod!(double) getGroundEnergy;
		@GodotName("get_ground_horizon_color") GodotMethod!(Color) getGroundHorizonColor;
		@GodotName("get_sky_curve") GodotMethod!(double) getSkyCurve;
		@GodotName("get_sky_energy") GodotMethod!(double) getSkyEnergy;
		@GodotName("get_sky_horizon_color") GodotMethod!(Color) getSkyHorizonColor;
		@GodotName("get_sky_top_color") GodotMethod!(Color) getSkyTopColor;
		@GodotName("get_sun_angle_max") GodotMethod!(double) getSunAngleMax;
		@GodotName("get_sun_angle_min") GodotMethod!(double) getSunAngleMin;
		@GodotName("get_sun_color") GodotMethod!(Color) getSunColor;
		@GodotName("get_sun_curve") GodotMethod!(double) getSunCurve;
		@GodotName("get_sun_energy") GodotMethod!(double) getSunEnergy;
		@GodotName("get_sun_latitude") GodotMethod!(double) getSunLatitude;
		@GodotName("get_sun_longitude") GodotMethod!(double) getSunLongitude;
		@GodotName("get_texture_size") GodotMethod!(ProceduralSky.TextureSize) getTextureSize;
		@GodotName("set_ground_bottom_color") GodotMethod!(void, Color) setGroundBottomColor;
		@GodotName("set_ground_curve") GodotMethod!(void, double) setGroundCurve;
		@GodotName("set_ground_energy") GodotMethod!(void, double) setGroundEnergy;
		@GodotName("set_ground_horizon_color") GodotMethod!(void, Color) setGroundHorizonColor;
		@GodotName("set_sky_curve") GodotMethod!(void, double) setSkyCurve;
		@GodotName("set_sky_energy") GodotMethod!(void, double) setSkyEnergy;
		@GodotName("set_sky_horizon_color") GodotMethod!(void, Color) setSkyHorizonColor;
		@GodotName("set_sky_top_color") GodotMethod!(void, Color) setSkyTopColor;
		@GodotName("set_sun_angle_max") GodotMethod!(void, double) setSunAngleMax;
		@GodotName("set_sun_angle_min") GodotMethod!(void, double) setSunAngleMin;
		@GodotName("set_sun_color") GodotMethod!(void, Color) setSunColor;
		@GodotName("set_sun_curve") GodotMethod!(void, double) setSunCurve;
		@GodotName("set_sun_energy") GodotMethod!(void, double) setSunEnergy;
		@GodotName("set_sun_latitude") GodotMethod!(void, double) setSunLatitude;
		@GodotName("set_sun_longitude") GodotMethod!(void, double) setSunLongitude;
		@GodotName("set_texture_size") GodotMethod!(void, long) setTextureSize;
	}
	/// 
	pragma(inline, true) bool opEquals(in ProceduralSky other) const
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
	/// Construct a new instance of ProceduralSky.
	/// Note: use `memnew!ProceduralSky` instead.
	static ProceduralSky _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ProceduralSky");
		if(constructor is null) return typeof(this).init;
		return cast(ProceduralSky)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum TextureSize : int
	{
		/** */
		textureSize256 = 0,
		/** */
		textureSize512 = 1,
		/** */
		textureSize1024 = 2,
		/** */
		textureSize2048 = 3,
		/** */
		textureSize4096 = 4,
		/** */
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
	/**
	
	*/
	void _threadDone(Image image)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(image);
		String _GODOT_method_name = String("_thread_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateSky()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_sky");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Color getGroundBottomColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getGroundBottomColor, _godot_object);
	}
	/**
	
	*/
	double getGroundCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGroundCurve, _godot_object);
	}
	/**
	
	*/
	double getGroundEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGroundEnergy, _godot_object);
	}
	/**
	
	*/
	Color getGroundHorizonColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getGroundHorizonColor, _godot_object);
	}
	/**
	
	*/
	double getSkyCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSkyCurve, _godot_object);
	}
	/**
	
	*/
	double getSkyEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSkyEnergy, _godot_object);
	}
	/**
	
	*/
	Color getSkyHorizonColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getSkyHorizonColor, _godot_object);
	}
	/**
	
	*/
	Color getSkyTopColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getSkyTopColor, _godot_object);
	}
	/**
	
	*/
	double getSunAngleMax() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSunAngleMax, _godot_object);
	}
	/**
	
	*/
	double getSunAngleMin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSunAngleMin, _godot_object);
	}
	/**
	
	*/
	Color getSunColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getSunColor, _godot_object);
	}
	/**
	
	*/
	double getSunCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSunCurve, _godot_object);
	}
	/**
	
	*/
	double getSunEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSunEnergy, _godot_object);
	}
	/**
	
	*/
	double getSunLatitude() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSunLatitude, _godot_object);
	}
	/**
	
	*/
	double getSunLongitude() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSunLongitude, _godot_object);
	}
	/**
	
	*/
	ProceduralSky.TextureSize getTextureSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ProceduralSky.TextureSize)(GDNativeClassBinding.getTextureSize, _godot_object);
	}
	/**
	
	*/
	void setGroundBottomColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGroundBottomColor, _godot_object, color);
	}
	/**
	
	*/
	void setGroundCurve(in double curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGroundCurve, _godot_object, curve);
	}
	/**
	
	*/
	void setGroundEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGroundEnergy, _godot_object, energy);
	}
	/**
	
	*/
	void setGroundHorizonColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGroundHorizonColor, _godot_object, color);
	}
	/**
	
	*/
	void setSkyCurve(in double curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkyCurve, _godot_object, curve);
	}
	/**
	
	*/
	void setSkyEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkyEnergy, _godot_object, energy);
	}
	/**
	
	*/
	void setSkyHorizonColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkyHorizonColor, _godot_object, color);
	}
	/**
	
	*/
	void setSkyTopColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkyTopColor, _godot_object, color);
	}
	/**
	
	*/
	void setSunAngleMax(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSunAngleMax, _godot_object, degrees);
	}
	/**
	
	*/
	void setSunAngleMin(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSunAngleMin, _godot_object, degrees);
	}
	/**
	
	*/
	void setSunColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSunColor, _godot_object, color);
	}
	/**
	
	*/
	void setSunCurve(in double curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSunCurve, _godot_object, curve);
	}
	/**
	
	*/
	void setSunEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSunEnergy, _godot_object, energy);
	}
	/**
	
	*/
	void setSunLatitude(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSunLatitude, _godot_object, degrees);
	}
	/**
	
	*/
	void setSunLongitude(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSunLongitude, _godot_object, degrees);
	}
	/**
	
	*/
	void setTextureSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextureSize, _godot_object, size);
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
