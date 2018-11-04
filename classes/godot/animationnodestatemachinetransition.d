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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct AnimationNodeStateMachineTransition
{
	enum string _GODOT_internal_name = "AnimationNodeStateMachineTransition";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_switch_mode") GodotMethod!(void, long) setSwitchMode;
		@GodotName("get_switch_mode") GodotMethod!(AnimationNodeStateMachineTransition.SwitchMode) getSwitchMode;
		@GodotName("set_auto_advance") GodotMethod!(void, bool) setAutoAdvance;
		@GodotName("has_auto_advance") GodotMethod!(bool) hasAutoAdvance;
		@GodotName("set_advance_condition") GodotMethod!(void, String) setAdvanceCondition;
		@GodotName("get_advance_condition") GodotMethod!(String) getAdvanceCondition;
		@GodotName("set_xfade_time") GodotMethod!(void, double) setXfadeTime;
		@GodotName("get_xfade_time") GodotMethod!(double) getXfadeTime;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("set_priority") GodotMethod!(void, long) setPriority;
		@GodotName("get_priority") GodotMethod!(long) getPriority;
	}
	bool opEquals(in AnimationNodeStateMachineTransition other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationNodeStateMachineTransition opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		
		*/
		switchModeImmediate = 0,
		/**
		
		*/
		switchModeSync = 1,
		/**
		
		*/
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
	void setSwitchMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSwitchMode, _godot_object, mode);
	}
	/**
	
	*/
	AnimationNodeStateMachineTransition.SwitchMode getSwitchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNodeStateMachineTransition.SwitchMode)(_classBinding.getSwitchMode, _godot_object);
	}
	/**
	
	*/
	void setAutoAdvance(in bool auto_advance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutoAdvance, _godot_object, auto_advance);
	}
	/**
	
	*/
	bool hasAutoAdvance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasAutoAdvance, _godot_object);
	}
	/**
	
	*/
	void setAdvanceCondition(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAdvanceCondition, _godot_object, name);
	}
	/**
	
	*/
	String getAdvanceCondition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getAdvanceCondition, _godot_object);
	}
	/**
	
	*/
	void setXfadeTime(in double secs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setXfadeTime, _godot_object, secs);
	}
	/**
	
	*/
	double getXfadeTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getXfadeTime, _godot_object);
	}
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisabled, _godot_object, disabled);
	}
	/**
	
	*/
	bool isDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDisabled, _godot_object);
	}
	/**
	
	*/
	void setPriority(in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPriority, _godot_object, priority);
	}
	/**
	
	*/
	long getPriority() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPriority, _godot_object);
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
	@property double xfadeTime()
	{
		return getXfadeTime();
	}
	/// ditto
	@property void xfadeTime(double v)
	{
		setXfadeTime(v);
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
	@property bool disabled()
	{
		return isDisabled();
	}
	/// ditto
	@property void disabled(bool v)
	{
		setDisabled(v);
	}
}
