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

Manages all $(D InputEventAction) which can be created/modified from the project settings menu `Project &gt; Project Settings &gt; Input Map` or in code with $(D addAction) and $(D actionAddEvent). See $(D Node._input).
*/
@GodotBaseClass struct InputMapSingleton
{
	static immutable string _GODOT_internal_name = "InputMap";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "InputMap";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputMapSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputMapSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputMapSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputMap");
		if(constructor is null) return typeof(this).init;
		return cast(InputMapSingleton)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(bool, String) _GODOT_has_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_action") = _GODOT_has_action;
	/**
	Returns `true` if the `InputMap` has a registered action with the given name.
	*/
	bool hasAction(StringArg0)(in StringArg0 action) const
	{
		_GODOT_has_action.bind("InputMap", "has_action");
		return ptrcall!(bool)(_GODOT_has_action, _godot_object, action);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_actions;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_actions") = _GODOT_get_actions;
	/**
	Returns an array of all actions in the `InputMap`.
	*/
	Array getActions()
	{
		_GODOT_get_actions.bind("InputMap", "get_actions");
		return ptrcall!(Array)(_GODOT_get_actions, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_add_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_action") = _GODOT_add_action;
	/**
	Adds an (empty) action to the `InputMap`. An $(D InputEvent) can then be added to this action with $(D actionAddEvent).
	*/
	void addAction(StringArg0)(in StringArg0 action, in double deadzone = 0.5)
	{
		_GODOT_add_action.bind("InputMap", "add_action");
		ptrcall!(void)(_GODOT_add_action, _godot_object, action, deadzone);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_erase_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "erase_action") = _GODOT_erase_action;
	/**
	Removes an action from the `InputMap`.
	*/
	void eraseAction(StringArg0)(in StringArg0 action)
	{
		_GODOT_erase_action.bind("InputMap", "erase_action");
		ptrcall!(void)(_GODOT_erase_action, _godot_object, action);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_action_set_deadzone;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_set_deadzone") = _GODOT_action_set_deadzone;
	/**
	
	*/
	void actionSetDeadzone(StringArg0)(in StringArg0 deadzone, in double arg1)
	{
		_GODOT_action_set_deadzone.bind("InputMap", "action_set_deadzone");
		ptrcall!(void)(_GODOT_action_set_deadzone, _godot_object, deadzone, arg1);
	}
	package(godot) static GodotMethod!(void, String, InputEvent) _GODOT_action_add_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_add_event") = _GODOT_action_add_event;
	/**
	Adds an $(D InputEvent) to an action. This $(D InputEvent) will trigger the action.
	*/
	void actionAddEvent(StringArg0)(in StringArg0 action, InputEvent event)
	{
		_GODOT_action_add_event.bind("InputMap", "action_add_event");
		ptrcall!(void)(_GODOT_action_add_event, _godot_object, action, event);
	}
	package(godot) static GodotMethod!(bool, String, InputEvent) _GODOT_action_has_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_has_event") = _GODOT_action_has_event;
	/**
	Returns $(D true) if an action has an $(D InputEvent) associated with it.
	*/
	bool actionHasEvent(StringArg0)(in StringArg0 action, InputEvent event)
	{
		_GODOT_action_has_event.bind("InputMap", "action_has_event");
		return ptrcall!(bool)(_GODOT_action_has_event, _godot_object, action, event);
	}
	package(godot) static GodotMethod!(void, String, InputEvent) _GODOT_action_erase_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_erase_event") = _GODOT_action_erase_event;
	/**
	Removes an $(D InputEvent) from an action.
	*/
	void actionEraseEvent(StringArg0)(in StringArg0 action, InputEvent event)
	{
		_GODOT_action_erase_event.bind("InputMap", "action_erase_event");
		ptrcall!(void)(_GODOT_action_erase_event, _godot_object, action, event);
	}
	package(godot) static GodotMethod!(Array, String) _GODOT_get_action_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action_list") = _GODOT_get_action_list;
	/**
	Returns an array of $(D InputEvent)s associated with a given action.
	*/
	Array getActionList(StringArg0)(in StringArg0 action)
	{
		_GODOT_get_action_list.bind("InputMap", "get_action_list");
		return ptrcall!(Array)(_GODOT_get_action_list, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool, InputEvent, String) _GODOT_event_is_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "event_is_action") = _GODOT_event_is_action;
	/**
	Returns $(D true) if the given event is part of an existing action. This method ignores keyboard modifiers if the given $(D InputEvent) is not pressed (for proper release detection). See $(D actionHasEvent) if you don't want this behavior.
	*/
	bool eventIsAction(StringArg1)(InputEvent event, in StringArg1 action) const
	{
		_GODOT_event_is_action.bind("InputMap", "event_is_action");
		return ptrcall!(bool)(_GODOT_event_is_action, _godot_object, event, action);
	}
	package(godot) static GodotMethod!(void) _GODOT_load_from_globals;
	package(godot) alias _GODOT_methodBindInfo(string name : "load_from_globals") = _GODOT_load_from_globals;
	/**
	Clears all $(D InputEventAction) in the `InputMap` and load it anew from $(D ProjectSettings).
	*/
	void loadFromGlobals()
	{
		_GODOT_load_from_globals.bind("InputMap", "load_from_globals");
		ptrcall!(void)(_GODOT_load_from_globals, _godot_object);
	}
}
/// Returns: the InputMapSingleton
@property @nogc nothrow pragma(inline, true)
InputMapSingleton InputMap()
{
	return InputMapSingleton._GODOT_singleton();
}
