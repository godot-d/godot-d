/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputmap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.inputevent;
/**

*/
@GodotBaseClass struct InputMapSingleton
{
	package(godot) enum string _GODOT_internal_name = "InputMap";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "InputMap";
		@GodotName("action_add_event") GodotMethod!(void, String, InputEvent) actionAddEvent;
		@GodotName("action_erase_event") GodotMethod!(void, String, InputEvent) actionEraseEvent;
		@GodotName("action_erase_events") GodotMethod!(void, String) actionEraseEvents;
		@GodotName("action_get_deadzone") GodotMethod!(double, String) actionGetDeadzone;
		@GodotName("action_has_event") GodotMethod!(bool, String, InputEvent) actionHasEvent;
		@GodotName("action_set_deadzone") GodotMethod!(void, String, double) actionSetDeadzone;
		@GodotName("add_action") GodotMethod!(void, String, double) addAction;
		@GodotName("erase_action") GodotMethod!(void, String) eraseAction;
		@GodotName("event_is_action") GodotMethod!(bool, InputEvent, String, bool) eventIsAction;
		@GodotName("get_action_list") GodotMethod!(Array, String) getActionList;
		@GodotName("get_actions") GodotMethod!(Array) getActions;
		@GodotName("has_action") GodotMethod!(bool, String) hasAction;
		@GodotName("load_from_globals") GodotMethod!(void) loadFromGlobals;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputMapSingleton other) const
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
	/// Construct a new instance of InputMapSingleton.
	/// Note: use `memnew!InputMapSingleton` instead.
	static InputMapSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputMap");
		if(constructor is null) return typeof(this).init;
		return cast(InputMapSingleton)(constructor());
	}
	/**
	
	*/
	void actionAddEvent(in String action, InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.actionAddEvent, _godot_object, action, event);
	}
	/**
	
	*/
	void actionEraseEvent(in String action, InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.actionEraseEvent, _godot_object, action, event);
	}
	/**
	
	*/
	void actionEraseEvents(in String action)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.actionEraseEvents, _godot_object, action);
	}
	/**
	
	*/
	double actionGetDeadzone(in String action)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.actionGetDeadzone, _godot_object, action);
	}
	/**
	
	*/
	bool actionHasEvent(in String action, InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.actionHasEvent, _godot_object, action, event);
	}
	/**
	
	*/
	void actionSetDeadzone(in String action, in double deadzone)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.actionSetDeadzone, _godot_object, action, deadzone);
	}
	/**
	
	*/
	void addAction(in String action, in double deadzone = 0.5)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addAction, _godot_object, action, deadzone);
	}
	/**
	
	*/
	void eraseAction(in String action)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.eraseAction, _godot_object, action);
	}
	/**
	
	*/
	bool eventIsAction(InputEvent event, in String action, in bool exact_match = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.eventIsAction, _godot_object, event, action, exact_match);
	}
	/**
	
	*/
	Array getActionList(in String action)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getActionList, _godot_object, action);
	}
	/**
	
	*/
	Array getActions()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getActions, _godot_object);
	}
	/**
	
	*/
	bool hasAction(in String action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAction, _godot_object, action);
	}
	/**
	
	*/
	void loadFromGlobals()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.loadFromGlobals, _godot_object);
	}
}
/// Returns: the InputMapSingleton
@property @nogc nothrow pragma(inline, true)
InputMapSingleton InputMap()
{
	checkClassBinding!InputMapSingleton();
	return InputMapSingleton(InputMapSingleton.GDNativeClassBinding._singleton);
}
