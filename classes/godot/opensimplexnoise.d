/**
Noise generator based on Open Simplex.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.opensimplexnoise;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.image;
import godot.reference;
/**
Noise generator based on Open Simplex.

This resource allows you to configure and sample a fractal noise space. Here is a brief usage example that configures an OpenSimplexNoise and gets samples at various positions and dimensions:


var noise = OpenSimplexNoise.new()

# Configure
noise.seed = randi()
noise.octaves = 4
noise.period = 20.0
noise.persistence = 0.8

# Sample
print("Values:")
print(noise.get_noise_2d(1.0, 1.0))
print(noise.get_noise_3d(0.5, 3.0, 15.0))
print(noise.get_noise_4d(0.5, 1.9, 4.7, 0.0))


*/
@GodotBaseClass struct OpenSimplexNoise
{
	enum string _GODOT_internal_name = "OpenSimplexNoise";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_seed") GodotMethod!(long) getSeed;
		@GodotName("set_seed") GodotMethod!(void, long) setSeed;
		@GodotName("set_octaves") GodotMethod!(void, long) setOctaves;
		@GodotName("get_octaves") GodotMethod!(long) getOctaves;
		@GodotName("set_period") GodotMethod!(void, double) setPeriod;
		@GodotName("get_period") GodotMethod!(double) getPeriod;
		@GodotName("set_persistence") GodotMethod!(void, double) setPersistence;
		@GodotName("get_persistence") GodotMethod!(double) getPersistence;
		@GodotName("set_lacunarity") GodotMethod!(void, double) setLacunarity;
		@GodotName("get_lacunarity") GodotMethod!(double) getLacunarity;
		@GodotName("get_image") GodotMethod!(Image, long, long) getImage;
		@GodotName("get_seamless_image") GodotMethod!(Image, long) getSeamlessImage;
		@GodotName("get_noise_2d") GodotMethod!(double, double, double) getNoise2d;
		@GodotName("get_noise_3d") GodotMethod!(double, double, double, double) getNoise3d;
		@GodotName("get_noise_4d") GodotMethod!(double, double, double, double, double) getNoise4d;
		@GodotName("get_noise_2dv") GodotMethod!(double, Vector2) getNoise2dv;
		@GodotName("get_noise_3dv") GodotMethod!(double, Vector3) getNoise3dv;
	}
	bool opEquals(in OpenSimplexNoise other) const { return _godot_object.ptr is other._godot_object.ptr; }
	OpenSimplexNoise opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static OpenSimplexNoise _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("OpenSimplexNoise");
		if(constructor is null) return typeof(this).init;
		return cast(OpenSimplexNoise)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getSeed()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSeed, _godot_object);
	}
	/**
	
	*/
	void setSeed(in long seed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSeed, _godot_object, seed);
	}
	/**
	
	*/
	void setOctaves(in long octave_count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOctaves, _godot_object, octave_count);
	}
	/**
	
	*/
	long getOctaves() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOctaves, _godot_object);
	}
	/**
	
	*/
	void setPeriod(in double period)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPeriod, _godot_object, period);
	}
	/**
	
	*/
	double getPeriod() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPeriod, _godot_object);
	}
	/**
	
	*/
	void setPersistence(in double persistence)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPersistence, _godot_object, persistence);
	}
	/**
	
	*/
	double getPersistence() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPersistence, _godot_object);
	}
	/**
	
	*/
	void setLacunarity(in double lacunarity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLacunarity, _godot_object, lacunarity);
	}
	/**
	
	*/
	double getLacunarity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLacunarity, _godot_object);
	}
	/**
	Generate a noise image with the requested `width` and `height`, based on the current noise parameters.
	*/
	Ref!Image getImage(in long width, in long height)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(_classBinding.getImage, _godot_object, width, height);
	}
	/**
	Generate a tileable noise image, based on the current noise parameters. Generated seamless images are always square (`size` x `size`).
	*/
	Ref!Image getSeamlessImage(in long size)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(_classBinding.getSeamlessImage, _godot_object, size);
	}
	/**
	Returns the 2D noise value `$(D -1,1)` at the given position.
	*/
	double getNoise2d(in double x, in double y)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getNoise2d, _godot_object, x, y);
	}
	/**
	Returns the 3D noise value `$(D -1,1)` at the given position.
	*/
	double getNoise3d(in double x, in double y, in double z)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getNoise3d, _godot_object, x, y, z);
	}
	/**
	Returns the 4D noise value `$(D -1,1)` at the given position.
	*/
	double getNoise4d(in double x, in double y, in double z, in double w)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getNoise4d, _godot_object, x, y, z, w);
	}
	/**
	Returns the 2D noise value `$(D -1,1)` at the given position.
	*/
	double getNoise2dv(in Vector2 pos)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getNoise2dv, _godot_object, pos);
	}
	/**
	Returns the 3D noise value `$(D -1,1)` at the given position.
	*/
	double getNoise3dv(in Vector3 pos)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getNoise3dv, _godot_object, pos);
	}
	/**
	Seed used to generate random values, different seeds will generate different noise maps.
	*/
	@property long seed()
	{
		return getSeed();
	}
	/// ditto
	@property void seed(long v)
	{
		setSeed(v);
	}
	/**
	Number of OpenSimplex noise layers that are sampled to get the fractal noise.
	*/
	@property long octaves()
	{
		return getOctaves();
	}
	/// ditto
	@property void octaves(long v)
	{
		setOctaves(v);
	}
	/**
	Period of the base octave. A lower period results in a higher-frequency noise (more value changes across the same distance).
	*/
	@property double period()
	{
		return getPeriod();
	}
	/// ditto
	@property void period(double v)
	{
		setPeriod(v);
	}
	/**
	Contribution factor of the different octaves. A `persistence` value of 1 means all the octaves have the same contribution, a value of 0.5 means each octave contributes half as much as the previous one.
	*/
	@property double persistence()
	{
		return getPersistence();
	}
	/// ditto
	@property void persistence(double v)
	{
		setPersistence(v);
	}
	/**
	Difference in period between $(D octaves).
	*/
	@property double lacunarity()
	{
		return getLacunarity();
	}
	/// ditto
	@property void lacunarity(double v)
	{
		setLacunarity(v);
	}
}