/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodestatemachinetransition;
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
import godot.resource;
/**

*/
@GodotBaseClass struct AnimationNodeStateMachineTransition
{
	package(godot) enum string _GODOT_internal_name = "AnimationNodeStateMachineTransition";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_advance_condition") GodotMethod!(String) getAdvanceCondition;
		@GodotName("get_priority") GodotMethod!(long) getPriority;
		@GodotName("get_switch_mode") GodotMethod!(AnimationNodeStateMachineTransition.SwitchMode) getSwitchMode;
		@GodotName("get_xfade_time") GodotMethod!(double) getXfadeTime;
		@GodotName("has_auto_advance") GodotMethod!(bool) hasAutoAdvance;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("set_advance_condition") GodotMethod!(void, String) setAdvanceCondition;
		@GodotName("set_auto_advance") GodotMethod!(void, bool) setAutoAdvance;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("set_priority") GodotMethod!(void, long) setPriority;
		@GodotName("set_switch_mode") GodotMethod!(void, long) setSwitchMode;
		@GodotName("set_xfade_time") GodotMethod!(void, double) setXfadeTime;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationNodeStateMachineTransition other) const
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
	/// Construct a new instance of AnimationNodeStateMachineTransition.
	/// Note: use `memnew!AnimationNodeStateMachineTransition` instead.
	static AnimationNodeStateMachineTransition _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeStateMachineTransition");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeStateMachineTransition)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum SwitchMode : int
	{
		/** */
		switchModeImmediate = 0,
		/** */
		switchModeSync = 1,
		/** */
		switchModeAtEnd = 2,
	}
	/// 
	enum Constants : int
	{
		switchModeImmediate = 0,
		switchModeSync = 1,
		switchModeAtEnd = 2,
	}
	/**
	
	*/
	String getAdvanceCondition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAdvanceCondition, _godot_object);
	}
	/**
	
	*/
	long getPriority() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPriority, _godot_object);
	}
	/**
	
	*/
	AnimationNodeStateMachineTransition.SwitchMode getSwitchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNodeStateMachineTransition.SwitchMode)(GDNativeClassBinding.getSwitchMode, _godot_object);
	}
	/**
	
	*/
	double getXfadeTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getXfadeTime, _godot_object);
	}
	/**
	
	*/
	bool hasAutoAdvance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAutoAdvance, _godot_object);
	}
	/**
	
	*/
	bool isDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDisabled, _godot_object);
	}
	/**
	
	*/
	void setAdvanceCondition(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAdvanceCondition, _godot_object, name);
	}
	/**
	
	*/
	void setAutoAdvance(in bool auto_advance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutoAdvance, _godot_object, auto_advance);
	}
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisabled, _godot_object, disabled);
	}
	/**
	
	*/
	void setPriority(in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPriority, _godot_object, priority);
	}
	/**
	
	*/
	void setSwitchMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSwitchMode, _godot_object, mode);
	}
	/**
	
	*/
	void setXfadeTime(in double secs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setXfadeTime, _godot_object, secs);
	}
	/**
	
	*/
	@property String advanceCondition()
	{
		return getAdvanceCondition();
	}
	/// ditto
	@property void advanceCondition(String v)
	{
		setAdvanceCondition(v);
	}
	/**
	
	*/
	@property bool autoAdvance()
	{
		return hasAutoAdvance();
	}
	/// ditto
	@property void autoAdvance(bool v)
	{
		setAutoAdvance(v);
	}
	/**
	
	*/
	@property bool disabled()
	{
		return isDisabled();
	}
	/// ditto
	@property void disabled(bool v)
	{
		setDisabled(v);
	}
	/**
	
	*/
	@property long priority()
	{
		return getPriority();
	}
	/// ditto
	@property void priority(long v)
	{
		setPriority(v);
	}
	/**
	
	*/
	@property AnimationNodeStateMachineTransition.SwitchMode switchMode()
	{
		return getSwitchMode();
	}
	/// ditto
	@property void switchMode(long v)
	{
		setSwitchMode(v);
	}
	/**
	
	*/
	@property double xfadeTime()
	{
		return getXfadeTime();
	}
	/// ditto
	@property void xfadeTime(double v)
	{
		setXfadeTime(v);
	}
}
