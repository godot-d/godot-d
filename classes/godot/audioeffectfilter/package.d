/**
Adds a filter to the Audio Bus.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectfilter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audioeffect;
/**
Adds a filter to the Audio Bus.

Allows frequencies other than the $(D cutoffHz) to pass.
*/
@GodotBaseClass struct AudioEffectFilter
{
	static immutable string _GODOT_internal_name = "AudioEffectFilter";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioEffectFilter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectFilter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectFilter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectFilter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectFilter)(constructor());
	}
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
	package(godot) static GodotMethod!(void, double) _GODOT_set_cutoff;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cutoff") = _GODOT_set_cutoff;
	/**
	
	*/
	void setCutoff(in double freq)
	{
		_GODOT_set_cutoff.bind("AudioEffectFilter", "set_cutoff");
		ptrcall!(void)(_GODOT_set_cutoff, _godot_object, freq);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_cutoff;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cutoff") = _GODOT_get_cutoff;
	/**
	
	*/
	double getCutoff() const
	{
		_GODOT_get_cutoff.bind("AudioEffectFilter", "get_cutoff");
		return ptrcall!(double)(_GODOT_get_cutoff, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_resonance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_resonance") = _GODOT_set_resonance;
	/**
	
	*/
	void setResonance(in double amount)
	{
		_GODOT_set_resonance.bind("AudioEffectFilter", "set_resonance");
		ptrcall!(void)(_GODOT_set_resonance, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_resonance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resonance") = _GODOT_get_resonance;
	/**
	
	*/
	double getResonance() const
	{
		_GODOT_get_resonance.bind("AudioEffectFilter", "get_resonance");
		return ptrcall!(double)(_GODOT_get_resonance, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gain") = _GODOT_set_gain;
	/**
	
	*/
	void setGain(in double amount)
	{
		_GODOT_set_gain.bind("AudioEffectFilter", "set_gain");
		ptrcall!(void)(_GODOT_set_gain, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_gain;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gain") = _GODOT_get_gain;
	/**
	
	*/
	double getGain() const
	{
		_GODOT_get_gain.bind("AudioEffectFilter", "get_gain");
		return ptrcall!(double)(_GODOT_get_gain, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_db") = _GODOT_set_db;
	/**
	
	*/
	void setDb(in long amount)
	{
		_GODOT_set_db.bind("AudioEffectFilter", "set_db");
		ptrcall!(void)(_GODOT_set_db, _godot_object, amount);
	}
	package(godot) static GodotMethod!(AudioEffectFilter.FilterDB) _GODOT_get_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_db") = _GODOT_get_db;
	/**
	
	*/
	AudioEffectFilter.FilterDB getDb() const
	{
		_GODOT_get_db.bind("AudioEffectFilter", "get_db");
		return ptrcall!(AudioEffectFilter.FilterDB)(_GODOT_get_db, _godot_object);
	}
	/**
	Threshold frequency for the filter.
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
	Amount of boost in the overtones near the cutoff frequency.
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
}
