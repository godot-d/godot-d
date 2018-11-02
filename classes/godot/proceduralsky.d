/**
Type of $(D Sky) that is generated procedurally based on user input parameters.

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
import godot.resource;
import godot.reference;
/**
Type of $(D Sky) that is generated procedurally based on user input parameters.

ProceduralSky provides a way to create an effective background quickly by defining procedural parameters for the sun, the sky and the ground. The sky and ground are very similar, they are defined by a color at the horizon, another color, and finally an easing curve to interpolate between these two colors. Similarly the sun is described by a position in the sky, a color, and an easing curve. However, the sun also defines a minimum and maximum angle, these two values define at what distance the easing curve begins and ends from the sun, and thus end up defining the size of the sun in the sky.
The ProceduralSky is updated on the CPU after the parameters change and stored in a texture and then displayed as a background in the scene. This makes it relatively unsuitable for realtime updates during gameplay. But with a small texture size it is still feasible to update relatively frequently because it is updated on a background thread when multi-threading is available.
*/
@GodotBaseClass struct ProceduralSky
{
	enum string _GODOT_internal_name = "ProceduralSky";
public:
@nogc nothrow:
	union { godot_object _godot_object; Sky _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_update_sky") GodotMethod!(void) _updateSky;
		@GodotName("set_sky_top_color") GodotMethod!(void, Color) setSkyTopColor;
		@GodotName("get_sky_top_color") GodotMethod!(Color) getSkyTopColor;
		@GodotName("set_sky_horizon_color") GodotMethod!(void, Color) setSkyHorizonColor;
		@GodotName("get_sky_horizon_color") GodotMethod!(Color) getSkyHorizonColor;
		@GodotName("set_sky_curve") GodotMethod!(void, double) setSkyCurve;
		@GodotName("get_sky_curve") GodotMethod!(double) getSkyCurve;
		@GodotName("set_sky_energy") GodotMethod!(void, double) setSkyEnergy;
		@GodotName("get_sky_energy") GodotMethod!(double) getSkyEnergy;
		@GodotName("set_ground_bottom_color") GodotMethod!(void, Color) setGroundBottomColor;
		@GodotName("get_ground_bottom_color") GodotMethod!(Color) getGroundBottomColor;
		@GodotName("set_ground_horizon_color") GodotMethod!(void, Color) setGroundHorizonColor;
		@GodotName("get_ground_horizon_color") GodotMethod!(Color) getGroundHorizonColor;
		@GodotName("set_ground_curve") GodotMethod!(void, double) setGroundCurve;
		@GodotName("get_ground_curve") GodotMethod!(double) getGroundCurve;
		@GodotName("set_ground_energy") GodotMethod!(void, double) setGroundEnergy;
		@GodotName("get_ground_energy") GodotMethod!(double) getGroundEnergy;
		@GodotName("set_sun_color") GodotMethod!(void, Color) setSunColor;
		@GodotName("get_sun_color") GodotMethod!(Color) getSunColor;
		@GodotName("set_sun_latitude") GodotMethod!(void, double) setSunLatitude;
		@GodotName("get_sun_latitude") GodotMethod!(double) getSunLatitude;
		@GodotName("set_sun_longitude") GodotMethod!(void, double) setSunLongitude;
		@GodotName("get_sun_longitude") GodotMethod!(double) getSunLongitude;
		@GodotName("set_sun_angle_min") GodotMethod!(void, double) setSunAngleMin;
		@GodotName("get_sun_angle_min") GodotMethod!(double) getSunAngleMin;
		@GodotName("set_sun_angle_max") GodotMethod!(void, double) setSunAngleMax;
		@GodotName("get_sun_angle_max") GodotMethod!(double) getSunAngleMax;
		@GodotName("set_sun_curve") GodotMethod!(void, double) setSunCurve;
		@GodotName("get_sun_curve") GodotMethod!(double) getSunCurve;
		@GodotName("set_sun_energy") GodotMethod!(void, double) setSunEnergy;
		@GodotName("get_sun_energy") GodotMethod!(double) getSunEnergy;
		@GodotName("set_texture_size") GodotMethod!(void, long) setTextureSize;
		@GodotName("get_texture_size") GodotMethod!(ProceduralSky.TextureSize) getTextureSize;
		@GodotName("_thread_done") GodotMethod!(void, Image) _threadDone;
	}
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
	@disable new(size_t s);
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
	/**
	
	*/
	void _updateSky()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_sky");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setSkyTopColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSkyTopColor, _godot_object, color);
	}
	/**
	
	*/
	Color getSkyTopColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getSkyTopColor, _godot_object);
	}
	/**
	
	*/
	void setSkyHorizonColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSkyHorizonColor, _godot_object, color);
	}
	/**
	
	*/
	Color getSkyHorizonColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getSkyHorizonColor, _godot_object);
	}
	/**
	
	*/
	void setSkyCurve(in double curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSkyCurve, _godot_object, curve);
	}
	/**
	
	*/
	double getSkyCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSkyCurve, _godot_object);
	}
	/**
	
	*/
	void setSkyEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSkyEnergy, _godot_object, energy);
	}
	/**
	
	*/
	double getSkyEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSkyEnergy, _godot_object);
	}
	/**
	
	*/
	void setGroundBottomColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGroundBottomColor, _godot_object, color);
	}
	/**
	
	*/
	Color getGroundBottomColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getGroundBottomColor, _godot_object);
	}
	/**
	
	*/
	void setGroundHorizonColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGroundHorizonColor, _godot_object, color);
	}
	/**
	
	*/
	Color getGroundHorizonColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getGroundHorizonColor, _godot_object);
	}
	/**
	
	*/
	void setGroundCurve(in double curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGroundCurve, _godot_object, curve);
	}
	/**
	
	*/
	double getGroundCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGroundCurve, _godot_object);
	}
	/**
	
	*/
	void setGroundEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGroundEnergy, _godot_object, energy);
	}
	/**
	
	*/
	double getGroundEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGroundEnergy, _godot_object);
	}
	/**
	
	*/
	void setSunColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSunColor, _godot_object, color);
	}
	/**
	
	*/
	Color getSunColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getSunColor, _godot_object);
	}
	/**
	
	*/
	void setSunLatitude(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSunLatitude, _godot_object, degrees);
	}
	/**
	
	*/
	double getSunLatitude() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSunLatitude, _godot_object);
	}
	/**
	
	*/
	void setSunLongitude(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSunLongitude, _godot_object, degrees);
	}
	/**
	
	*/
	double getSunLongitude() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSunLongitude, _godot_object);
	}
	/**
	
	*/
	void setSunAngleMin(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSunAngleMin, _godot_object, degrees);
	}
	/**
	
	*/
	double getSunAngleMin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSunAngleMin, _godot_object);
	}
	/**
	
	*/
	void setSunAngleMax(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSunAngleMax, _godot_object, degrees);
	}
	/**
	
	*/
	double getSunAngleMax() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSunAngleMax, _godot_object);
	}
	/**
	
	*/
	void setSunCurve(in double curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSunCurve, _godot_object, curve);
	}
	/**
	
	*/
	double getSunCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSunCurve, _godot_object);
	}
	/**
	
	*/
	void setSunEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSunEnergy, _godot_object, energy);
	}
	/**
	
	*/
	double getSunEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSunEnergy, _godot_object);
	}
	/**
	
	*/
	void setTextureSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextureSize, _godot_object, size);
	}
	/**
	
	*/
	ProceduralSky.TextureSize getTextureSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ProceduralSky.TextureSize)(_classBinding.getTextureSize, _godot_object);
	}
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
	Color of the sky at the top.
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
	Color of the sky at the horizon.
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
	How quickly the $(D skyHorizonColor) fades into the $(D skyTopColor).
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
	Amount of energy contribution from the sky.
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
	Color of the ground at the bottom.
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
	Color of the ground at the horizon.
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
	How quickly the $(D groundHorizonColor) fades into the $(D groundBottomColor).
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
	Amount of energy contribution from the ground.
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
	Color of the sun.
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
	The suns height using polar coordinates.
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
	The direction of the sun using polar coordinates.
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
	Distance from sun where it goes from solid to starting to fade.
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
	Distance from center of sun where it fades out completely.
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
	How quickly the sun fades away between $(D sunAngleMin) and $(D sunAngleMax)
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
	Amount of energy contribution from the sun.
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
	Size of $(D Texture) that the ProceduralSky will generate.
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
