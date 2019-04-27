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
import godot.reference;
/**
Input event for gamepad buttons.

Input event type for gamepad buttons. For joysticks see $(D InputEventJoypadMotion).
*/
@GodotBaseClass struct InputEventJoypadButton
{
	enum string _GODOT_internal_name = "InputEventJoypadButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_button_index") GodotMethod!(void, long) setButtonIndex;
		@GodotName("get_button_index") GodotMethod!(long) getButtonIndex;
		@GodotName("set_pressure") GodotMethod!(void, double) setPressure;
		@GodotName("get_pressure") GodotMethod!(double) getPressure;
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
	}
	bool opEquals(in InputEventJoypadButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventJoypadButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setButtonIndex(in long button_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setButtonIndex, _godot_object, button_index);
	}
	/**
	
	*/
	long getButtonIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getButtonIndex, _godot_object);
	}
	/**
	
	*/
	void setPressure(in double pressure)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPressure, _godot_object, pressure);
	}
	/**
	
	*/
	double getPressure() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPressure, _godot_object);
	}
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPressed, _godot_object, pressed);
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
}
