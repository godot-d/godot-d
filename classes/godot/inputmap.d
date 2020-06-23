/**
Singleton that manages $(D InputEventAction).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputmap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.inputevent;
/**
Singleton that manages $(D InputEventAction).

Manages all $(D InputEventAction) which can be created/modified from the project settings menu $(B Project &gt; Project Settings &gt; Input Map) or in code with $(D addAction) and $(D actionAddEvent). See $(D Node._input).
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
		@GodotName("action_has_event") GodotMethod!(bool, String, InputEvent) actionHasEvent;
		@GodotName("action_set_deadzone") GodotMethod!(void, String, double) actionSetDeadzone;
		@GodotName("add_action") GodotMethod!(void, String, double) addAction;
		@GodotName("erase_action") GodotMethod!(void, String) eraseAction;
		@GodotName("event_is_action") GodotMethod!(bool, InputEvent, String) eventIsAction;
		@GodotName("get_action_list") GodotMethod!(Array, String) getActionList;
		@GodotName("get_actions") GodotMethod!(Array) getActions;
		@GodotName("has_action") GodotMethod!(bool, String) hasAction;
		@GodotName("load_from_globals") GodotMethod!(void) loadFromGlobals;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputMapSingleton other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) InputMapSingleton opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
	@disable new(size_t s);
	/**
	Adds an $(D InputEvent) to an action. This $(D InputEvent) will trigger the action.
	*/
	void actionAddEvent(in String action, InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.actionAddEvent, _godot_object, action, event);
	}
	/**
	Removes an $(D InputEvent) from an action.
	*/
	void actionEraseEvent(in String action, InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.actionEraseEvent, _godot_object, action, event);
	}
	/**
	Removes all events from an action.
	*/
	void actionEraseEvents(in String action)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.actionEraseEvents, _godot_object, action);
	}
	/**
	Returns `true` if the action has the given $(D InputEvent) associated with it.
	*/
	bool actionHasEvent(in String action, InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.actionHasEvent, _godot_object, action, event);
	}
	/**
	Sets a deadzone value for the action.
	*/
	void actionSetDeadzone(in String action, in double deadzone)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.actionSetDeadzone, _godot_object, action, deadzone);
	}
	/**
	Adds an empty action to the $(D InputMap) with a configurable `deadzone`.
	An $(D InputEvent) can then be added to this action with $(D actionAddEvent).
	*/
	void addAction(in String action, in double deadzone = 0.5)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addAction, _godot_object, action, deadzone);
	}
	/**
	Removes an action from the $(D InputMap).
	*/
	void eraseAction(in String action)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.eraseAction, _godot_object, action);
	}
	/**
	Returns `true` if the given event is part of an existing action. This method ignores keyboard modifiers if the given $(D InputEvent) is not pressed (for proper release detection). See $(D actionHasEvent) if you don't want this behavior.
	*/
	bool eventIsAction(InputEvent event, in String action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.eventIsAction, _godot_object, event, action);
	}
	/**
	Returns an array of $(D InputEvent)s associated with a given action.
	*/
	Array getActionList(in String action)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getActionList, _godot_object, action);
	}
	/**
	Returns an array of all actions in the $(D InputMap).
	*/
	Array getActions()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getActions, _godot_object);
	}
	/**
	Returns `true` if the $(D InputMap) has a registered action with the given name.
	*/
	bool hasAction(in String action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAction, _godot_object, action);
	}
	/**
	Clears all $(D InputEventAction) in the $(D InputMap) and load it anew from $(D ProjectSettings).
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
