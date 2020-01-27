/**
Adds a delay audio effect to an audio bus. Plays input signal back after a period of time.
Two tap delay and feedback options.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectdelay;
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
/**
Adds a delay audio effect to an audio bus. Plays input signal back after a period of time.
Two tap delay and feedback options.

Plays input signal back after a period of time. The delayed signal may be played back multiple times to create the sound of a repeating, decaying echo. Delay effects range from a subtle echo effect to a pronounced blending of previous sounds with new sounds.
*/
@GodotBaseClass struct AudioEffectDelay
{
	enum string _GODOT_internal_name = "AudioEffectDelay";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_dry") GodotMethod!(double) getDry;
		@GodotName("get_feedback_delay_ms") GodotMethod!(double) getFeedbackDelayMs;
		@GodotName("get_feedback_level_db") GodotMethod!(double) getFeedbackLevelDb;
		@GodotName("get_feedback_lowpass") GodotMethod!(double) getFeedbackLowpass;
		@GodotName("get_tap1_delay_ms") GodotMethod!(double) getTap1DelayMs;
		@GodotName("get_tap1_level_db") GodotMethod!(double) getTap1LevelDb;
		@GodotName("get_tap1_pan") GodotMethod!(double) getTap1Pan;
		@GodotName("get_tap2_delay_ms") GodotMethod!(double) getTap2DelayMs;
		@GodotName("get_tap2_level_db") GodotMethod!(double) getTap2LevelDb;
		@GodotName("get_tap2_pan") GodotMethod!(double) getTap2Pan;
		@GodotName("is_feedback_active") GodotMethod!(bool) isFeedbackActive;
		@GodotName("is_tap1_active") GodotMethod!(bool) isTap1Active;
		@GodotName("is_tap2_active") GodotMethod!(bool) isTap2Active;
		@GodotName("set_dry") GodotMethod!(void, double) setDry;
		@GodotName("set_feedback_active") GodotMethod!(void, bool) setFeedbackActive;
		@GodotName("set_feedback_delay_ms") GodotMethod!(void, double) setFeedbackDelayMs;
		@GodotName("set_feedback_level_db") GodotMethod!(void, double) setFeedbackLevelDb;
		@GodotName("set_feedback_lowpass") GodotMethod!(void, double) setFeedbackLowpass;
		@GodotName("set_tap1_active") GodotMethod!(void, bool) setTap1Active;
		@GodotName("set_tap1_delay_ms") GodotMethod!(void, double) setTap1DelayMs;
		@GodotName("set_tap1_level_db") GodotMethod!(void, double) setTap1LevelDb;
		@GodotName("set_tap1_pan") GodotMethod!(void, double) setTap1Pan;
		@GodotName("set_tap2_active") GodotMethod!(void, bool) setTap2Active;
		@GodotName("set_tap2_delay_ms") GodotMethod!(void, double) setTap2DelayMs;
		@GodotName("set_tap2_level_db") GodotMethod!(void, double) setTap2LevelDb;
		@GodotName("set_tap2_pan") GodotMethod!(void, double) setTap2Pan;
	}
	bool opEquals(in AudioEffectDelay other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectDelay opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectDelay _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectDelay");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectDelay)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getDry()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDry, _godot_object);
	}
	/**
	
	*/
	double getFeedbackDelayMs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFeedbackDelayMs, _godot_object);
	}
	/**
	
	*/
	double getFeedbackLevelDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFeedbackLevelDb, _godot_object);
	}
	/**
	
	*/
	double getFeedbackLowpass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFeedbackLowpass, _godot_object);
	}
	/**
	
	*/
	double getTap1DelayMs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTap1DelayMs, _godot_object);
	}
	/**
	
	*/
	double getTap1LevelDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTap1LevelDb, _godot_object);
	}
	/**
	
	*/
	double getTap1Pan() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTap1Pan, _godot_object);
	}
	/**
	
	*/
	double getTap2DelayMs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTap2DelayMs, _godot_object);
	}
	/**
	
	*/
	double getTap2LevelDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTap2LevelDb, _godot_object);
	}
	/**
	
	*/
	double getTap2Pan() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTap2Pan, _godot_object);
	}
	/**
	
	*/
	bool isFeedbackActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFeedbackActive, _godot_object);
	}
	/**
	
	*/
	bool isTap1Active() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isTap1Active, _godot_object);
	}
	/**
	
	*/
	bool isTap2Active() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isTap2Active, _godot_object);
	}
	/**
	
	*/
	void setDry(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDry, _godot_object, amount);
	}
	/**
	
	*/
	void setFeedbackActive(in bool amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFeedbackActive, _godot_object, amount);
	}
	/**
	
	*/
	void setFeedbackDelayMs(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFeedbackDelayMs, _godot_object, amount);
	}
	/**
	
	*/
	void setFeedbackLevelDb(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFeedbackLevelDb, _godot_object, amount);
	}
	/**
	
	*/
	void setFeedbackLowpass(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFeedbackLowpass, _godot_object, amount);
	}
	/**
	
	*/
	void setTap1Active(in bool amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTap1Active, _godot_object, amount);
	}
	/**
	
	*/
	void setTap1DelayMs(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTap1DelayMs, _godot_object, amount);
	}
	/**
	
	*/
	void setTap1LevelDb(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTap1LevelDb, _godot_object, amount);
	}
	/**
	
	*/
	void setTap1Pan(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTap1Pan, _godot_object, amount);
	}
	/**
	
	*/
	void setTap2Active(in bool amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTap2Active, _godot_object, amount);
	}
	/**
	
	*/
	void setTap2DelayMs(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTap2DelayMs, _godot_object, amount);
	}
	/**
	
	*/
	void setTap2LevelDb(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTap2LevelDb, _godot_object, amount);
	}
	/**
	
	*/
	void setTap2Pan(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTap2Pan, _godot_object, amount);
	}
	/**
	Output percent of original sound. At 0, only delayed sounds are output. Value can range from 0 to 1.
	*/
	@property double dry()
	{
		return getDry();
	}
	/// ditto
	@property void dry(double v)
	{
		setDry(v);
	}
	/**
	If `true`, feedback is enabled.
	*/
	@property bool feedbackActive()
	{
		return isFeedbackActive();
	}
	/// ditto
	@property void feedbackActive(bool v)
	{
		setFeedbackActive(v);
	}
	/**
	Feedback delay time in milliseconds.
	*/
	@property double feedbackDelayMs()
	{
		return getFeedbackDelayMs();
	}
	/// ditto
	@property void feedbackDelayMs(double v)
	{
		setFeedbackDelayMs(v);
	}
	/**
	Sound level for `tap1`.
	*/
	@property double feedbackLevelDb()
	{
		return getFeedbackLevelDb();
	}
	/// ditto
	@property void feedbackLevelDb(double v)
	{
		setFeedbackLevelDb(v);
	}
	/**
	Low-pass filter for feedback, in Hz. Frequencies below this value are filtered out of the source signal.
	*/
	@property double feedbackLowpass()
	{
		return getFeedbackLowpass();
	}
	/// ditto
	@property void feedbackLowpass(double v)
	{
		setFeedbackLowpass(v);
	}
	/**
	If `true`, `tap1` will be enabled.
	*/
	@property bool tap1Active()
	{
		return isTap1Active();
	}
	/// ditto
	@property void tap1Active(bool v)
	{
		setTap1Active(v);
	}
	/**
	`tap1` delay time in milliseconds.
	*/
	@property double tap1DelayMs()
	{
		return getTap1DelayMs();
	}
	/// ditto
	@property void tap1DelayMs(double v)
	{
		setTap1DelayMs(v);
	}
	/**
	Sound level for `tap1`.
	*/
	@property double tap1LevelDb()
	{
		return getTap1LevelDb();
	}
	/// ditto
	@property void tap1LevelDb(double v)
	{
		setTap1LevelDb(v);
	}
	/**
	Pan position for `tap1`. Value can range from -1 (fully left) to 1 (fully right).
	*/
	@property double tap1Pan()
	{
		return getTap1Pan();
	}
	/// ditto
	@property void tap1Pan(double v)
	{
		setTap1Pan(v);
	}
	/**
	If `true`, `tap2` will be enabled.
	*/
	@property bool tap2Active()
	{
		return isTap2Active();
	}
	/// ditto
	@property void tap2Active(bool v)
	{
		setTap2Active(v);
	}
	/**
	$(B Tap2) delay time in milliseconds.
	*/
	@property double tap2DelayMs()
	{
		return getTap2DelayMs();
	}
	/// ditto
	@property void tap2DelayMs(double v)
	{
		setTap2DelayMs(v);
	}
	/**
	Sound level for `tap2`.
	*/
	@property double tap2LevelDb()
	{
		return getTap2LevelDb();
	}
	/// ditto
	@property void tap2LevelDb(double v)
	{
		setTap2LevelDb(v);
	}
	/**
	Pan position for `tap2`. Value can range from -1 (fully left) to 1 (fully right).
	*/
	@property double tap2Pan()
	{
		return getTap2Pan();
	}
	/// ditto
	@property void tap2Pan(double v)
	{
		setTap2Pan(v);
	}
}
