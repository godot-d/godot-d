/**


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
	
	*/
	double randf()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.randf, _godot_object);
	}
	/**
	
	*/
	double randfRange(in double from, in double to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.randfRange, _godot_object, from, to);
	}
	/**
	
	*/
	double randfn(in double mean = 0, in double deviation = 1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.randfn, _godot_object, mean, deviation);
	}
	/**
	
	*/
	long randi()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.randi, _godot_object);
	}
	/**
	
	*/
	long randiRange(in long from, in long to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.randiRange, _godot_object, from, to);
	}
	/**
	
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
