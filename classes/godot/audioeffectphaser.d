/**
Adds a Phaser audio effect to an Audio bus.
Combines the original signal with a copy that is slightly out of phase with the original.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectphaser;
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
Adds a Phaser audio effect to an Audio bus.
Combines the original signal with a copy that is slightly out of phase with the original.

Combines phase-shifted signals with the original signal. The movement of the phase-shifted signals is controlled using a Low Frequency Oscillator.
*/
@GodotBaseClass struct AudioEffectPhaser
{
	static immutable string _GODOT_internal_name = "AudioEffectPhaser";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioEffectPhaser other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectPhaser opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectPhaser _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectPhaser");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectPhaser)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, double) _GODOT_set_range_min_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_range_min_hz") = _GODOT_set_range_min_hz;
	/**
	
	*/
	void setRangeMinHz(in double hz)
	{
		_GODOT_set_range_min_hz.bind("AudioEffectPhaser", "set_range_min_hz");
		ptrcall!(void)(_GODOT_set_range_min_hz, _godot_object, hz);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_range_min_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_range_min_hz") = _GODOT_get_range_min_hz;
	/**
	
	*/
	double getRangeMinHz() const
	{
		_GODOT_get_range_min_hz.bind("AudioEffectPhaser", "get_range_min_hz");
		return ptrcall!(double)(_GODOT_get_range_min_hz, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_range_max_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_range_max_hz") = _GODOT_set_range_max_hz;
	/**
	
	*/
	void setRangeMaxHz(in double hz)
	{
		_GODOT_set_range_max_hz.bind("AudioEffectPhaser", "set_range_max_hz");
		ptrcall!(void)(_GODOT_set_range_max_hz, _godot_object, hz);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_range_max_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_range_max_hz") = _GODOT_get_range_max_hz;
	/**
	
	*/
	double getRangeMaxHz() const
	{
		_GODOT_get_range_max_hz.bind("AudioEffectPhaser", "get_range_max_hz");
		return ptrcall!(double)(_GODOT_get_range_max_hz, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rate_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rate_hz") = _GODOT_set_rate_hz;
	/**
	
	*/
	void setRateHz(in double hz)
	{
		_GODOT_set_rate_hz.bind("AudioEffectPhaser", "set_rate_hz");
		ptrcall!(void)(_GODOT_set_rate_hz, _godot_object, hz);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rate_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rate_hz") = _GODOT_get_rate_hz;
	/**
	
	*/
	double getRateHz() const
	{
		_GODOT_get_rate_hz.bind("AudioEffectPhaser", "get_rate_hz");
		return ptrcall!(double)(_GODOT_get_rate_hz, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_feedback;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feedback") = _GODOT_set_feedback;
	/**
	
	*/
	void setFeedback(in double fbk)
	{
		_GODOT_set_feedback.bind("AudioEffectPhaser", "set_feedback");
		ptrcall!(void)(_GODOT_set_feedback, _godot_object, fbk);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_feedback;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_feedback") = _GODOT_get_feedback;
	/**
	
	*/
	double getFeedback() const
	{
		_GODOT_get_feedback.bind("AudioEffectPhaser", "get_feedback");
		return ptrcall!(double)(_GODOT_get_feedback, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth") = _GODOT_set_depth;
	/**
	
	*/
	void setDepth(in double depth)
	{
		_GODOT_set_depth.bind("AudioEffectPhaser", "set_depth");
		ptrcall!(void)(_GODOT_set_depth, _godot_object, depth);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth") = _GODOT_get_depth;
	/**
	
	*/
	double getDepth() const
	{
		_GODOT_get_depth.bind("AudioEffectPhaser", "get_depth");
		return ptrcall!(double)(_GODOT_get_depth, _godot_object);
	}
	/**
	Determines the minimum frequency affected by the LFO modulations. Value can range from 10 to 10000. Default value: `440hz`.
	*/
	@property double rangeMinHz()
	{
		return getRangeMinHz();
	}
	/// ditto
	@property void rangeMinHz(double v)
	{
		setRangeMinHz(v);
	}
	/**
	Determines the maximum frequency affected by the LFO modulations. Value can range from 10 to 10000. Default value: `1600hz`.
	*/
	@property double rangeMaxHz()
	{
		return getRangeMaxHz();
	}
	/// ditto
	@property void rangeMaxHz(double v)
	{
		setRangeMaxHz(v);
	}
	/**
	Adjusts the rate at which the effect sweeps up and down across the frequency range.
	*/
	@property double rateHz()
	{
		return getRateHz();
	}
	/// ditto
	@property void rateHz(double v)
	{
		setRateHz(v);
	}
	/**
	Output percent of modified sound. Value can range from 0.1 to 0.9. Default value: `0.7`.
	*/
	@property double feedback()
	{
		return getFeedback();
	}
	/// ditto
	@property void feedback(double v)
	{
		setFeedback(v);
	}
	/**
	Governs how high the filter frequencies sweep. Low value will primarily affect bass frequencies. High value can sweep high into the treble. Value can range from 0.1 to 4. Default value: `1`.
	*/
	@property double depth()
	{
		return getDepth();
	}
	/// ditto
	@property void depth(double v)
	{
		setDepth(v);
	}
}
