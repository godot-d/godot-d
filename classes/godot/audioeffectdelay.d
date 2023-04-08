/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectdelay;
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
import godot.audioeffect;
import godot.resource;
/**

*/
@GodotBaseClass struct AudioEffectDelay
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectDelay";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectDelay other) const
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
	/// Construct a new instance of AudioEffectDelay.
	/// Note: use `memnew!AudioEffectDelay` instead.
	static AudioEffectDelay _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectDelay");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectDelay)(constructor());
	}
	/**
	
	*/
	double getDry()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDry, _godot_object);
	}
	/**
	
	*/
	double getFeedbackDelayMs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFeedbackDelayMs, _godot_object);
	}
	/**
	
	*/
	double getFeedbackLevelDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFeedbackLevelDb, _godot_object);
	}
	/**
	
	*/
	double getFeedbackLowpass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFeedbackLowpass, _godot_object);
	}
	/**
	
	*/
	double getTap1DelayMs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTap1DelayMs, _godot_object);
	}
	/**
	
	*/
	double getTap1LevelDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTap1LevelDb, _godot_object);
	}
	/**
	
	*/
	double getTap1Pan() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTap1Pan, _godot_object);
	}
	/**
	
	*/
	double getTap2DelayMs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTap2DelayMs, _godot_object);
	}
	/**
	
	*/
	double getTap2LevelDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTap2LevelDb, _godot_object);
	}
	/**
	
	*/
	double getTap2Pan() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTap2Pan, _godot_object);
	}
	/**
	
	*/
	bool isFeedbackActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFeedbackActive, _godot_object);
	}
	/**
	
	*/
	bool isTap1Active() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isTap1Active, _godot_object);
	}
	/**
	
	*/
	bool isTap2Active() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isTap2Active, _godot_object);
	}
	/**
	
	*/
	void setDry(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDry, _godot_object, amount);
	}
	/**
	
	*/
	void setFeedbackActive(in bool amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFeedbackActive, _godot_object, amount);
	}
	/**
	
	*/
	void setFeedbackDelayMs(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFeedbackDelayMs, _godot_object, amount);
	}
	/**
	
	*/
	void setFeedbackLevelDb(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFeedbackLevelDb, _godot_object, amount);
	}
	/**
	
	*/
	void setFeedbackLowpass(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFeedbackLowpass, _godot_object, amount);
	}
	/**
	
	*/
	void setTap1Active(in bool amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTap1Active, _godot_object, amount);
	}
	/**
	
	*/
	void setTap1DelayMs(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTap1DelayMs, _godot_object, amount);
	}
	/**
	
	*/
	void setTap1LevelDb(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTap1LevelDb, _godot_object, amount);
	}
	/**
	
	*/
	void setTap1Pan(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTap1Pan, _godot_object, amount);
	}
	/**
	
	*/
	void setTap2Active(in bool amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTap2Active, _godot_object, amount);
	}
	/**
	
	*/
	void setTap2DelayMs(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTap2DelayMs, _godot_object, amount);
	}
	/**
	
	*/
	void setTap2LevelDb(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTap2LevelDb, _godot_object, amount);
	}
	/**
	
	*/
	void setTap2Pan(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTap2Pan, _godot_object, amount);
	}
	/**
	
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
