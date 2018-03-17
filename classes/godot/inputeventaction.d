/**
Input event type for actions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventaction;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputevent;
/**
Input event type for actions.

Contains a generic action which can be targeted from several type of inputs. Actions can be created from the project settings menu `Project &gt; Project Settings &gt; Input Map`. See $(D Node._input).
*/
@GodotBaseClass struct InputEventAction
{
	static immutable string _GODOT_internal_name = "InputEventAction";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputEventAction other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventAction opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventAction _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventAction");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventAction)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_action") = _GODOT_set_action;
	/**
	
	*/
	void setAction(StringArg0)(in StringArg0 action)
	{
		_GODOT_set_action.bind("InputEventAction", "set_action");
		ptrcall!(void)(_GODOT_set_action, _godot_object, action);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action") = _GODOT_get_action;
	/**
	
	*/
	String getAction() const
	{
		_GODOT_get_action.bind("InputEventAction", "get_action");
		return ptrcall!(String)(_GODOT_get_action, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed") = _GODOT_set_pressed;
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		_GODOT_set_pressed.bind("InputEventAction", "set_pressed");
		ptrcall!(void)(_GODOT_set_pressed, _godot_object, pressed);
	}
	/**
	The action's name. Actions are accessed via this $(D String).
	*/
	@property String action()
	{
		return getAction();
	}
	/// ditto
	@property void action(String v)
	{
		setAction(v);
	}
	/**
	If `true` the action's state is pressed. If `false` the action's state is released.
	*/
	@property bool pressed()
	{
		return isPressed();
	}
	/// ditto
	@property void pressed(bool v)
	{
		setPressed(v);
	}
}
