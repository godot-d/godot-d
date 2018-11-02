/**
Group of Buttons.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.buttongroup;
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
import godot.basebutton;
import godot.reference;
/**
Group of Buttons.

Group of $(D Button). All direct and indirect children buttons become radios. Only one allows being pressed.
$(D BaseButton.toggleMode) should be `true`.
*/
@GodotBaseClass struct ButtonGroup
{
	enum string _GODOT_internal_name = "ButtonGroup";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_pressed_button") GodotMethod!(BaseButton) getPressedButton;
	}
	bool opEquals(in ButtonGroup other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ButtonGroup opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ButtonGroup _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ButtonGroup");
		if(constructor is null) return typeof(this).init;
		return cast(ButtonGroup)(constructor());
	}
	@disable new(size_t s);
	/**
	Return the pressed button.
	*/
	BaseButton getPressedButton()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BaseButton)(_classBinding.getPressedButton, _godot_object);
	}
}
