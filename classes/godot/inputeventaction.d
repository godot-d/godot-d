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
import godot.resource;
import godot.reference;
/**
Input event type for actions.

Contains a generic action which can be targeted from several type of inputs. Actions can be created from the project settings menu `Project &gt; Project Settings &gt; Input Map`. See $(D Node._input).
*/
@GodotBaseClass struct InputEventAction
{
	enum string _GODOT_internal_name = "InputEventAction";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_action") GodotMethod!(void, String) setAction;
		@GodotName("get_action") GodotMethod!(String) getAction;
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void setAction(in String action)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAction, _godot_object, action);
	}
	/**
	
	*/
	String getAction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getAction, _godot_object);
	}
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPressed, _godot_object, pressed);
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
	If `true`, the action's state is pressed. If `false`, the action's state is released.
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
