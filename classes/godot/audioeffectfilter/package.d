/**
Adds a filter to the audio bus.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectfilter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audioeffect;
import godot.resource;
/**
Adds a filter to the audio bus.

Allows frequencies other than the $(D cutoffHz) to pass.
*/
@GodotBaseClass struct AudioEffectFilter
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectFilter";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_cutoff") GodotMethod!(double) getCutoff;
		@GodotName("get_db") GodotMethod!(AudioEffectFilter.FilterDB) getDb;
		@GodotName("get_gain") GodotMethod!(double) getGain;
		@GodotName("get_resonance") GodotMethod!(double) getResonance;
		@GodotName("set_cutoff") GodotMethod!(void, double) setCutoff;
		@GodotName("set_db") GodotMethod!(void, long) setDb;
		@GodotName("set_gain") GodotMethod!(void, double) setGain;
		@GodotName("set_resonance") GodotMethod!(void, double) setResonance;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectFilter other) const
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
	/// Construct a new instance of AudioEffectFilter.
	/// Note: use `memnew!AudioEffectFilter` instead.
	static AudioEffectFilter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectFilter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectFilter)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum FilterDB : int
	{
		/**
		
		*/
		filter6db = 0,
		/**
		
		*/
		filter12db = 1,
		/**
		
		*/
		filter18db = 2,
		/**
		
		*/
		filter24db = 3,
	}
	/// 
	enum Constants : int
	{
		filter6db = 0,
		filter12db = 1,
		filter18db = 2,
		filter24db = 3,
	}
	/**
	
	*/
	double getCutoff() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCutoff, _godot_object);
	}
	/**
	
	*/
	AudioEffectFilter.FilterDB getDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioEffectFilter.FilterDB)(GDNativeClassBinding.getDb, _godot_object);
	}
	/**
	
	*/
	double getGain() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGain, _godot_object);
	}
	/**
	
	*/
	double getResonance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getResonance, _godot_object);
	}
	/**
	
	*/
	void setCutoff(in double freq)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCutoff, _godot_object, freq);
	}
	/**
	
	*/
	void setDb(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDb, _godot_object, amount);
	}
	/**
	
	*/
	void setGain(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGain, _godot_object, amount);
	}
	/**
	
	*/
	void setResonance(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setResonance, _godot_object, amount);
	}
	/**
	Threshold frequency for the filter, in Hz.
	*/
	@property double cutoffHz()
	{
		return getCutoff();
	}
	/// ditto
	@property void cutoffHz(double v)
	{
		setCutoff(v);
	}
	/**
	
	*/
	@property AudioEffectFilter.FilterDB db()
	{
		return getDb();
	}
	/// ditto
	@property void db(long v)
	{
		setDb(v);
	}
	/**
	Gain amount of the frequencies after the filter.
	*/
	@property double gain()
	{
		return getGain();
	}
	/// ditto
	@property void gain(double v)
	{
		setGain(v);
	}
	/**
	Amount of boost in the frequency range near the cutoff frequency.
	*/
	@property double resonance()
	{
		return getResonance();
	}
	/// ditto
	@property void resonance(double v)
	{
		setResonance(v);
	}
}
