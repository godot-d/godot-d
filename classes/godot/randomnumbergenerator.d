/**
A class for generating pseudo-random numbers.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.randomnumbergenerator;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
A class for generating pseudo-random numbers.

RandomNumberGenerator is a class for generating pseudo-random numbers. It currently uses PCG32. The underlying algorithm is an implementation detail. As a result, it should not be depended upon for reproducible random streams across Godot versions.
*/
@GodotBaseClass struct RandomNumberGenerator
{
	enum string _GODOT_internal_name = "RandomNumberGenerator";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_seed") GodotMethod!(void, long) setSeed;
		@GodotName("get_seed") GodotMethod!(long) getSeed;
		@GodotName("randi") GodotMethod!(long) randi;
		@GodotName("randf") GodotMethod!(double) randf;
		@GodotName("randfn") GodotMethod!(double, double, double) randfn;
		@GodotName("randf_range") GodotMethod!(double, double, double) randfRange;
		@GodotName("randi_range") GodotMethod!(long, long, long) randiRange;
		@GodotName("randomize") GodotMethod!(void) randomize;
	}
	bool opEquals(in RandomNumberGenerator other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RandomNumberGenerator opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RandomNumberGenerator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RandomNumberGenerator");
		if(constructor is null) return typeof(this).init;
		return cast(RandomNumberGenerator)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setSeed(in long seed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSeed, _godot_object, seed);
	}
	/**
	
	*/
	long getSeed()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSeed, _godot_object);
	}
	/**
	Generates pseudo-random 32-bit unsigned integer between '0' and '4294967295', inclusive.
	*/
	long randi()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.randi, _godot_object);
	}
	/**
	Generates pseudo-random float between '0.0' and '1.0', inclusive.
	*/
	double randf()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.randf, _godot_object);
	}
	/**
	Generates normally(gaussian) distributed pseudo-random number, using Box-Muller transform with the specified `mean` and a standard `deviation`.
	*/
	double randfn(in double mean = 0, in double deviation = 1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.randfn, _godot_object, mean, deviation);
	}
	/**
	Generates pseudo-random float between `from` and `to`, inclusive.
	*/
	double randfRange(in double from, in double to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.randfRange, _godot_object, from, to);
	}
	/**
	Generates pseudo-random 32-bit signed integer between `from` and `to` (inclusive).
	*/
	long randiRange(in long from, in long to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.randiRange, _godot_object, from, to);
	}
	/**
	Setups a time-based seed to generator.
	*/
	void randomize()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.randomize, _godot_object);
	}
	/**
	The seed used by the random number generator. A given seed will give a reproducible sequence of pseudo-random numbers.
	$(B Note:) The RNG does not have an avalanche effect, and can output similar random streams given similar seeds. Consider using a hash function to improve your seed quality if they're sourced externally.
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
}
