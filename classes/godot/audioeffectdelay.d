/**
Adds a Delay audio effect to an Audio bus. Plays input signal back after a period of time.
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
/**
Adds a Delay audio effect to an Audio bus. Plays input signal back after a period of time.
Two tap delay and feedback options.

Plays input signal back after a period of time. The delayed signal may be played back multiple times to create the sound of a repeating, decaying echo. Delay effects range from a subtle echo effect to a pronounced blending of previous sounds with new sounds.
*/
@GodotBaseClass struct AudioEffectDelay
{
	static immutable string _GODOT_internal_name = "AudioEffectDelay";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, double) _GODOT_set_dry;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dry") = _GODOT_set_dry;
	/**
	
	*/
	void setDry(in double amount)
	{
		_GODOT_set_dry.bind("AudioEffectDelay", "set_dry");
		ptrcall!(void)(_GODOT_set_dry, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_dry;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dry") = _GODOT_get_dry;
	/**
	
	*/
	double getDry()
	{
		_GODOT_get_dry.bind("AudioEffectDelay", "get_dry");
		return ptrcall!(double)(_GODOT_get_dry, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_tap1_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap1_active") = _GODOT_set_tap1_active;
	/**
	
	*/
	void setTap1Active(in bool amount)
	{
		_GODOT_set_tap1_active.bind("AudioEffectDelay", "set_tap1_active");
		ptrcall!(void)(_GODOT_set_tap1_active, _godot_object, amount);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_tap1_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_tap1_active") = _GODOT_is_tap1_active;
	/**
	
	*/
	bool isTap1Active() const
	{
		_GODOT_is_tap1_active.bind("AudioEffectDelay", "is_tap1_active");
		return ptrcall!(bool)(_GODOT_is_tap1_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tap1_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap1_delay_ms") = _GODOT_set_tap1_delay_ms;
	/**
	
	*/
	void setTap1DelayMs(in double amount)
	{
		_GODOT_set_tap1_delay_ms.bind("AudioEffectDelay", "set_tap1_delay_ms");
		ptrcall!(void)(_GODOT_set_tap1_delay_ms, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tap1_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap1_delay_ms") = _GODOT_get_tap1_delay_ms;
	/**
	
	*/
	double getTap1DelayMs() const
	{
		_GODOT_get_tap1_delay_ms.bind("AudioEffectDelay", "get_tap1_delay_ms");
		return ptrcall!(double)(_GODOT_get_tap1_delay_ms, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tap1_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap1_level_db") = _GODOT_set_tap1_level_db;
	/**
	
	*/
	void setTap1LevelDb(in double amount)
	{
		_GODOT_set_tap1_level_db.bind("AudioEffectDelay", "set_tap1_level_db");
		ptrcall!(void)(_GODOT_set_tap1_level_db, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tap1_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap1_level_db") = _GODOT_get_tap1_level_db;
	/**
	
	*/
	double getTap1LevelDb() const
	{
		_GODOT_get_tap1_level_db.bind("AudioEffectDelay", "get_tap1_level_db");
		return ptrcall!(double)(_GODOT_get_tap1_level_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tap1_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap1_pan") = _GODOT_set_tap1_pan;
	/**
	
	*/
	void setTap1Pan(in double amount)
	{
		_GODOT_set_tap1_pan.bind("AudioEffectDelay", "set_tap1_pan");
		ptrcall!(void)(_GODOT_set_tap1_pan, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tap1_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap1_pan") = _GODOT_get_tap1_pan;
	/**
	
	*/
	double getTap1Pan() const
	{
		_GODOT_get_tap1_pan.bind("AudioEffectDelay", "get_tap1_pan");
		return ptrcall!(double)(_GODOT_get_tap1_pan, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_tap2_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap2_active") = _GODOT_set_tap2_active;
	/**
	
	*/
	void setTap2Active(in bool amount)
	{
		_GODOT_set_tap2_active.bind("AudioEffectDelay", "set_tap2_active");
		ptrcall!(void)(_GODOT_set_tap2_active, _godot_object, amount);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_tap2_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_tap2_active") = _GODOT_is_tap2_active;
	/**
	
	*/
	bool isTap2Active() const
	{
		_GODOT_is_tap2_active.bind("AudioEffectDelay", "is_tap2_active");
		return ptrcall!(bool)(_GODOT_is_tap2_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tap2_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap2_delay_ms") = _GODOT_set_tap2_delay_ms;
	/**
	
	*/
	void setTap2DelayMs(in double amount)
	{
		_GODOT_set_tap2_delay_ms.bind("AudioEffectDelay", "set_tap2_delay_ms");
		ptrcall!(void)(_GODOT_set_tap2_delay_ms, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tap2_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap2_delay_ms") = _GODOT_get_tap2_delay_ms;
	/**
	
	*/
	double getTap2DelayMs() const
	{
		_GODOT_get_tap2_delay_ms.bind("AudioEffectDelay", "get_tap2_delay_ms");
		return ptrcall!(double)(_GODOT_get_tap2_delay_ms, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tap2_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap2_level_db") = _GODOT_set_tap2_level_db;
	/**
	
	*/
	void setTap2LevelDb(in double amount)
	{
		_GODOT_set_tap2_level_db.bind("AudioEffectDelay", "set_tap2_level_db");
		ptrcall!(void)(_GODOT_set_tap2_level_db, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tap2_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap2_level_db") = _GODOT_get_tap2_level_db;
	/**
	
	*/
	double getTap2LevelDb() const
	{
		_GODOT_get_tap2_level_db.bind("AudioEffectDelay", "get_tap2_level_db");
		return ptrcall!(double)(_GODOT_get_tap2_level_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_tap2_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tap2_pan") = _GODOT_set_tap2_pan;
	/**
	
	*/
	void setTap2Pan(in double amount)
	{
		_GODOT_set_tap2_pan.bind("AudioEffectDelay", "set_tap2_pan");
		ptrcall!(void)(_GODOT_set_tap2_pan, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_tap2_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tap2_pan") = _GODOT_get_tap2_pan;
	/**
	
	*/
	double getTap2Pan() const
	{
		_GODOT_get_tap2_pan.bind("AudioEffectDelay", "get_tap2_pan");
		return ptrcall!(double)(_GODOT_get_tap2_pan, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_feedback_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feedback_active") = _GODOT_set_feedback_active;
	/**
	
	*/
	void setFeedbackActive(in bool amount)
	{
		_GODOT_set_feedback_active.bind("AudioEffectDelay", "set_feedback_active");
		ptrcall!(void)(_GODOT_set_feedback_active, _godot_object, amount);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_feedback_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_feedback_active") = _GODOT_is_feedback_active;
	/**
	
	*/
	bool isFeedbackActive() const
	{
		_GODOT_is_feedback_active.bind("AudioEffectDelay", "is_feedback_active");
		return ptrcall!(bool)(_GODOT_is_feedback_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_feedback_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feedback_delay_ms") = _GODOT_set_feedback_delay_ms;
	/**
	
	*/
	void setFeedbackDelayMs(in double amount)
	{
		_GODOT_set_feedback_delay_ms.bind("AudioEffectDelay", "set_feedback_delay_ms");
		ptrcall!(void)(_GODOT_set_feedback_delay_ms, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_feedback_delay_ms;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_feedback_delay_ms") = _GODOT_get_feedback_delay_ms;
	/**
	
	*/
	double getFeedbackDelayMs() const
	{
		_GODOT_get_feedback_delay_ms.bind("AudioEffectDelay", "get_feedback_delay_ms");
		return ptrcall!(double)(_GODOT_get_feedback_delay_ms, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_feedback_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feedback_level_db") = _GODOT_set_feedback_level_db;
	/**
	
	*/
	void setFeedbackLevelDb(in double amount)
	{
		_GODOT_set_feedback_level_db.bind("AudioEffectDelay", "set_feedback_level_db");
		ptrcall!(void)(_GODOT_set_feedback_level_db, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_feedback_level_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_feedback_level_db") = _GODOT_get_feedback_level_db;
	/**
	
	*/
	double getFeedbackLevelDb() const
	{
		_GODOT_get_feedback_level_db.bind("AudioEffectDelay", "get_feedback_level_db");
		return ptrcall!(double)(_GODOT_get_feedback_level_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_feedback_lowpass;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_feedback_lowpass") = _GODOT_set_feedback_lowpass;
	/**
	
	*/
	void setFeedbackLowpass(in double amount)
	{
		_GODOT_set_feedback_lowpass.bind("AudioEffectDelay", "set_feedback_lowpass");
		ptrcall!(void)(_GODOT_set_feedback_lowpass, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_feedback_lowpass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_feedback_lowpass") = _GODOT_get_feedback_lowpass;
	/**
	
	*/
	double getFeedbackLowpass() const
	{
		_GODOT_get_feedback_lowpass.bind("AudioEffectDelay", "get_feedback_lowpass");
		return ptrcall!(double)(_GODOT_get_feedback_lowpass, _godot_object);
	}
	/**
	Output percent of original sound. At 0, only delayed sounds are output. Value can range from 0 to 1. Default value: `1`.
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
	If `true`, `tap1` will be enabled. Default value: `true`.
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
	$(B Tap1) delay time in milliseconds. Default value: `250ms`.
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
	Sound level for `tap1`. Default value: `-6 dB`.
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
	Pan position for `tap1`. Value can range from -1 (fully left) to 1 (fully right). Default value: `0.2`.
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
	If `true`, `tap2` will be enabled. Default value: `true`.
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
	$(B Tap2) delay time in milliseconds. Default value: `500ms`.
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
	Sound level for `tap2`. Default value: `-12 dB`.
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
	Pan position for `tap2`. Value can range from -1 (fully left) to 1 (fully right). Default value: `-0.4`.
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
	/**
	If `true` feedback is enabled. Default value: `false`.
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
	Feedback delay time in milliseconds. Default value: `340`.
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
	Sound level for `tap1`. Default value: `-6 dB`.
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
	Low-pass filter for feedback. Frequencies below the Low Cut value are filtered out of the source signal. Default value: `16000`.
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
}
