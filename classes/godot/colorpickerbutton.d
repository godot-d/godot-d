/**
Button that pops out a $(D ColorPicker)

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.colorpickerbutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.button;
import godot.colorpicker;
import godot.popuppanel;
/**
Button that pops out a $(D ColorPicker)

Encapsulates a $(D ColorPicker) making it accesible by pressing a button, pressing the button will toggle the $(D ColorPicker) visibility
*/
@GodotBaseClass struct ColorPickerButton
{
	static immutable string _GODOT_internal_name = "ColorPickerButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Button _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ColorPickerButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ColorPickerButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ColorPickerButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ColorPickerButton");
		if(constructor is null) return typeof(this).init;
		return cast(ColorPickerButton)(constructor());
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_pick_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pick_color") = _GODOT_set_pick_color;
	/**
	
	*/
	void setPickColor(in Color color)
	{
		_GODOT_set_pick_color.bind("ColorPickerButton", "set_pick_color");
		ptrcall!(void)(_GODOT_set_pick_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_pick_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pick_color") = _GODOT_get_pick_color;
	/**
	
	*/
	Color getPickColor() const
	{
		_GODOT_get_pick_color.bind("ColorPickerButton", "get_pick_color");
		return ptrcall!(Color)(_GODOT_get_pick_color, _godot_object);
	}
	package(godot) static GodotMethod!(ColorPicker) _GODOT_get_picker;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_picker") = _GODOT_get_picker;
	/**
	Returns the `ColorPicker` that this `ColorPickerButton` toggles.
	*/
	ColorPicker getPicker() const
	{
		_GODOT_get_picker.bind("ColorPickerButton", "get_picker");
		return ptrcall!(ColorPicker)(_GODOT_get_picker, _godot_object);
	}
	package(godot) static GodotMethod!(PopupPanel) _GODOT_get_popup;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_popup") = _GODOT_get_popup;
	/**
	Returns the control's $(D PopupPanel) which allows you to connect to Popup Signals. This allows you to handle events when the ColorPicker is shown or hidden.
	*/
	PopupPanel getPopup() const
	{
		_GODOT_get_popup.bind("ColorPickerButton", "get_popup");
		return ptrcall!(PopupPanel)(_GODOT_get_popup, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_edit_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_edit_alpha") = _GODOT_set_edit_alpha;
	/**
	
	*/
	void setEditAlpha(in bool show)
	{
		_GODOT_set_edit_alpha.bind("ColorPickerButton", "set_edit_alpha");
		ptrcall!(void)(_GODOT_set_edit_alpha, _godot_object, show);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editing_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editing_alpha") = _GODOT_is_editing_alpha;
	/**
	
	*/
	bool isEditingAlpha() const
	{
		_GODOT_is_editing_alpha.bind("ColorPickerButton", "is_editing_alpha");
		return ptrcall!(bool)(_GODOT_is_editing_alpha, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT__color_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_color_changed") = _GODOT__color_changed;
	/**
	
	*/
	void _colorChanged(in Color arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_color_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The currently selected color.
	*/
	@property Color color()
	{
		return getPickColor();
	}
	/// ditto
	@property void color(Color v)
	{
		setPickColor(v);
	}
	/**
	If `true` the alpha channel in the displayed $(D ColorPicker) will be visible. Default value: `true`.
	*/
	@property bool editAlpha()
	{
		return isEditingAlpha();
	}
	/// ditto
	@property void editAlpha(bool v)
	{
		setEditAlpha(v);
	}
}
