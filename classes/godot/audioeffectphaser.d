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
import godot.resource;
import godot.reference;
/**
Adds a Phaser audio effect to an Audio bus.
Combines the original signal with a copy that is slightly out of phase with the original.

Combines phase-shifted signals with the original signal. The movement of the phase-shifted signals is controlled using a Low Frequency Oscillator.
*/
@GodotBaseClass struct AudioEffectPhaser
{
	enum string _GODOT_internal_name = "AudioEffectPhaser";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_range_min_hz") GodotMethod!(void, double) setRangeMinHz;
		@GodotName("get_range_min_hz") GodotMethod!(double) getRangeMinHz;
		@GodotName("set_range_max_hz") GodotMethod!(void, double) setRangeMaxHz;
		@GodotName("get_range_max_hz") GodotMethod!(double) getRangeMaxHz;
		@GodotName("set_rate_hz") GodotMethod!(void, double) setRateHz;
		@GodotName("get_rate_hz") GodotMethod!(double) getRateHz;
		@GodotName("set_feedback") GodotMethod!(void, double) setFeedback;
		@GodotName("get_feedback") GodotMethod!(double) getFeedback;
		@GodotName("set_depth") GodotMethod!(void, double) setDepth;
		@GodotName("get_depth") GodotMethod!(double) getDepth;
	}
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
	/**
	
	*/
	void setRangeMinHz(in double hz)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRangeMinHz, _godot_object, hz);
	}
	/**
	
	*/
	double getRangeMinHz() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRangeMinHz, _godot_object);
	}
	/**
	
	*/
	void setRangeMaxHz(in double hz)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRangeMaxHz, _godot_object, hz);
	}
	/**
	
	*/
	double getRangeMaxHz() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRangeMaxHz, _godot_object);
	}
	/**
	
	*/
	void setRateHz(in double hz)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRateHz, _godot_object, hz);
	}
	/**
	
	*/
	double getRateHz() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRateHz, _godot_object);
	}
	/**
	
	*/
	void setFeedback(in double fbk)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFeedback, _godot_object, fbk);
	}
	/**
	
	*/
	double getFeedback() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFeedback, _godot_object);
	}
	/**
	
	*/
	void setDepth(in double depth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDepth, _godot_object, depth);
	}
	/**
	
	*/
	double getDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDepth, _godot_object);
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
