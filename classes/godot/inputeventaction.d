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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputevent;
import godot.resource;
/**
Input event type for actions.

Contains a generic action which can be targeted from several types of inputs. Actions can be created from the $(B Input Map) tab in the $(B Project &gt; Project Settings) menu. See $(D Node._input).
*/
@GodotBaseClass struct InputEventAction
{
	package(godot) enum string _GODOT_internal_name = "InputEventAction";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_action") GodotMethod!(String) getAction;
		@GodotName("get_strength") GodotMethod!(double) getStrength;
		@GodotName("set_action") GodotMethod!(void, String) setAction;
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
		@GodotName("set_strength") GodotMethod!(void, double) setStrength;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputEventAction other) const
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
	/// Construct a new instance of InputEventAction.
	/// Note: use `memnew!InputEventAction` instead.
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
	String getAction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAction, _godot_object);
	}
	/**
	
	*/
	double getStrength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getStrength, _godot_object);
	}
	/**
	
	*/
	void setAction(in String action)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAction, _godot_object, action);
	}
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPressed, _godot_object, pressed);
	}
	/**
	
	*/
	void setStrength(in double strength)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStrength, _godot_object, strength);
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
	/**
	The action's strength between 0 and 1. This value is considered as equal to 0 if pressed is `false`. The event strength allows faking analog joypad motion events, by precising how strongly is the joypad axis bent or pressed.
	*/
	@property double strength()
	{
		return getStrength();
	}
	/// ditto
	@property void strength(double v)
	{
		setStrength(v);
	}
}
