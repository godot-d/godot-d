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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.reference;
/**
A class for generating pseudo-random numbers.

RandomNumberGenerator is a class for generating pseudo-random numbers. It currently uses $(D url=http://www.pcg-random.org/)PCG32$(D /url).
$(B Note:) The underlying algorithm is an implementation detail. As a result, it should not be depended upon for reproducible random streams across Godot versions.
To generate a random float number (within a given range) based on a time-dependant seed:


var rng = RandomNumberGenerator.new()
func _ready():
    rng.randomize()
    var my_random_number = rng.randf_range(-10.0, 10.0)


$(B Note:) The default values of $(D seed) and $(D state) properties are pseudo-random, and changes when calling $(D randomize). The `0` value documented here is a placeholder, and not the actual default seed.
*/
@GodotBaseClass struct RandomNumberGenerator
{
	package(godot) enum string _GODOT_internal_name = "RandomNumberGenerator";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_seed") GodotMethod!(long) getSeed;
		@GodotName("get_state") GodotMethod!(long) getState;
		@GodotName("randf") GodotMethod!(double) randf;
		@GodotName("randf_range") GodotMethod!(double, double, double) randfRange;
		@GodotName("randfn") GodotMethod!(double, double, double) randfn;
		@GodotName("randi") GodotMethod!(long) randi;
		@GodotName("randi_range") GodotMethod!(long, long, long) randiRange;
		@GodotName("randomize") GodotMethod!(void) randomize;
		@GodotName("set_seed") GodotMethod!(void, long) setSeed;
		@GodotName("set_state") GodotMethod!(void, long) setState;
	}
	/// 
	pragma(inline, true) bool opEquals(in RandomNumberGenerator other) const
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
	/// Construct a new instance of RandomNumberGenerator.
	/// Note: use `memnew!RandomNumberGenerator` instead.
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
	long getSeed()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSeed, _godot_object);
	}
	/**
	
	*/
	long getState() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getState, _godot_object);
	}
	/**
	Generates a pseudo-random float between `0.0` and `1.0` (inclusive).
	*/
	double randf()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.randf, _godot_object);
	}
	/**
	Generates a pseudo-random float between `from` and `to` (inclusive).
	*/
	double randfRange(in double from, in double to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.randfRange, _godot_object, from, to);
	}
	/**
	Generates a $(D url=https://en.wikipedia.org/wiki/Normal_distribution)normally-distributed$(D /url) pseudo-random number, using Box-Muller transform with the specified `mean` and a standard `deviation`. This is also called Gaussian distribution.
	*/
	double randfn(in double mean = 0, in double deviation = 1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.randfn, _godot_object, mean, deviation);
	}
	/**
	Generates a pseudo-random 32-bit unsigned integer between `0` and `4294967295` (inclusive).
	*/
	long randi()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.randi, _godot_object);
	}
	/**
	Generates a pseudo-random 32-bit signed integer between `from` and `to` (inclusive).
	*/
	long randiRange(in long from, in long to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.randiRange, _godot_object, from, to);
	}
	/**
	Setups a time-based seed to generator.
	*/
	void randomize()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.randomize, _godot_object);
	}
	/**
	
	*/
	void setSeed(in long seed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSeed, _godot_object, seed);
	}
	/**
	
	*/
	void setState(in long state)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setState, _godot_object, state);
	}
	/**
	Initializes the random number generator state based on the given seed value. A given seed will give a reproducible sequence of pseudo-random numbers.
	$(B Note:) The RNG does not have an avalanche effect, and can output similar random streams given similar seeds. Consider using a hash function to improve your seed quality if they're sourced externally.
	$(B Note:) Setting this property produces a side effect of changing the internal $(D state), so make sure to initialize the seed $(I before) modifying the $(D state):
	
	
	var rng = RandomNumberGenerator.new()
	rng.seed = hash("Godot")
	rng.state = 100 # Restore to some previously saved state.
	
	
	$(B Warning:) the getter of this property returns the previous $(D state), and not the initial seed value, which is going to be fixed in Godot 4.0.
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
	The current state of the random number generator. Save and restore this property to restore the generator to a previous state:
	
	
	var rng = RandomNumberGenerator.new()
	print(rng.randf())
	var saved_state = rng.state # Store current state.
	print(rng.randf()) # Advance internal state.
	rng.state = saved_state # Restore the state.
	print(rng.randf()) # Prints the same value as in previous.
	
	
	$(B Note:) Do not set state to arbitrary values, since the random number generator requires the state to have certain qualities to behave properly. It should only be set to values that came from the state property itself. To initialize the random number generator with arbitrary input, use $(D seed) instead.
	*/
	@property long state()
	{
		return getState();
	}
	/// ditto
	@property void state(long v)
	{
		setState(v);
	}
}
