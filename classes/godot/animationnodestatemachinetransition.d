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
		/**
		Switch to the next state immediately. The current state will end and blend into the beginning of the new one.
		*/
		switchModeImmediate = 0,
		/**
		Switch to the next state immediately, but will seek the new state to the playback position of the old state.
		*/
		switchModeSync = 1,
		/**
		Wait for the current state playback to end, then switch to the beginning of the next state animation.
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
	Turn on auto advance when this condition is set. The provided name will become a boolean parameter on the $(D AnimationTree) that can be controlled from code (see $(D url=https://docs.godotengine.org/en/3.3/tutorials/animation/animation_tree.html#controlling-from-code)$(D /url)). For example, if $(D AnimationTree.treeRoot) is an $(D AnimationNodeStateMachine) and $(D advanceCondition) is set to `"idle"`:
	
	
	$animation_tree$(D "parameters/conditions/idle") = is_on_floor and (linear_velocity.x == 0)
	
	
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
	Turn on the transition automatically when this state is reached. This works best with $(D constant SWITCH_MODE_AT_END).
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
	Don't use this transition during $(D AnimationNodeStateMachinePlayback.travel) or $(D autoAdvance).
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
	Lower priority transitions are preferred when travelling through the tree via $(D AnimationNodeStateMachinePlayback.travel) or $(D autoAdvance).
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
	The transition type.
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
	The time to cross-fade between this state and the next.
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
