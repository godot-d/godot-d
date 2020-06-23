/**
Input event for gamepad buttons.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventjoypadbutton;
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
/**
Input event for gamepad buttons.

Input event type for gamepad buttons. For gamepad analog sticks and joysticks, see $(D InputEventJoypadMotion).
*/
@GodotBaseClass struct InputEventJoypadButton
{
	package(godot) enum string _GODOT_internal_name = "InputEventJoypadButton";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_button_index") GodotMethod!(long) getButtonIndex;
		@GodotName("get_pressure") GodotMethod!(double) getPressure;
		@GodotName("set_button_index") GodotMethod!(void, long) setButtonIndex;
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
		@GodotName("set_pressure") GodotMethod!(void, double) setPressure;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputEventJoypadButton other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) InputEventJoypadButton opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of InputEventJoypadButton.
	/// Note: use `memnew!InputEventJoypadButton` instead.
	static InputEventJoypadButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventJoypadButton");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventJoypadButton)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getButtonIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getButtonIndex, _godot_object);
	}
	/**
	
	*/
	double getPressure() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPressure, _godot_object);
	}
	/**
	
	*/
	void setButtonIndex(in long button_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setButtonIndex, _godot_object, button_index);
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
	void setPressure(in double pressure)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPressure, _godot_object, pressure);
	}
	/**
	Button identifier. One of the $(D joysticklist) button constants.
	*/
	@property long buttonIndex()
	{
		return getButtonIndex();
	}
	/// ditto
	@property void buttonIndex(long v)
	{
		setButtonIndex(v);
	}
	/**
	If `true`, the button's state is pressed. If `false`, the button's state is released.
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
	Represents the pressure the user puts on the button with his finger, if the controller supports it. Ranges from `0` to `1`.
	*/
	@property double pressure()
	{
		return getPressure();
	}
	/// ditto
	@property void pressure(double v)
	{
		setPressure(v);
	}
}
