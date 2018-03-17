/**
Color picker control.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.colorpicker;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.boxcontainer;
import godot.inputevent;
/**
Color picker control.

This is a simple color picker $(D Control). It's useful for selecting a color from an RGB/RGBA colorspace.
*/
@GodotBaseClass struct ColorPicker
{
	static immutable string _GODOT_internal_name = "ColorPicker";
public:
@nogc nothrow:
	union { godot_object _godot_object; BoxContainer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ColorPicker other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ColorPicker opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ColorPicker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ColorPicker");
		if(constructor is null) return typeof(this).init;
		return cast(ColorPicker)(constructor());
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_pick_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pick_color") = _GODOT_set_pick_color;
	/**
	
	*/
	void setPickColor(in Color color)
	{
		_GODOT_set_pick_color.bind("ColorPicker", "set_pick_color");
		ptrcall!(void)(_GODOT_set_pick_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_pick_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pick_color") = _GODOT_get_pick_color;
	/**
	
	*/
	Color getPickColor() const
	{
		_GODOT_get_pick_color.bind("ColorPicker", "get_pick_color");
		return ptrcall!(Color)(_GODOT_get_pick_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_raw_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_raw_mode") = _GODOT_set_raw_mode;
	/**
	
	*/
	void setRawMode(in bool mode)
	{
		_GODOT_set_raw_mode.bind("ColorPicker", "set_raw_mode");
		ptrcall!(void)(_GODOT_set_raw_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_raw_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_raw_mode") = _GODOT_is_raw_mode;
	/**
	
	*/
	bool isRawMode() const
	{
		_GODOT_is_raw_mode.bind("ColorPicker", "is_raw_mode");
		return ptrcall!(bool)(_GODOT_is_raw_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_edit_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_edit_alpha") = _GODOT_set_edit_alpha;
	/**
	
	*/
	void setEditAlpha(in bool show)
	{
		_GODOT_set_edit_alpha.bind("ColorPicker", "set_edit_alpha");
		ptrcall!(void)(_GODOT_set_edit_alpha, _godot_object, show);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editing_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editing_alpha") = _GODOT_is_editing_alpha;
	/**
	
	*/
	bool isEditingAlpha() const
	{
		_GODOT_is_editing_alpha.bind("ColorPicker", "is_editing_alpha");
		return ptrcall!(bool)(_GODOT_is_editing_alpha, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_add_preset;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_preset") = _GODOT_add_preset;
	/**
	Adds the current selected to color to a list of colors (presets), the presets will be displayed in the color picker and the user will be able to select them, notice that the presets list is only for this color picker.
	*/
	void addPreset(in Color color)
	{
		_GODOT_add_preset.bind("ColorPicker", "add_preset");
		ptrcall!(void)(_GODOT_add_preset, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__value_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_value_changed") = _GODOT__value_changed;
	/**
	
	*/
	void _valueChanged(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_value_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__html_entered;
	package(godot) alias _GODOT_methodBindInfo(string name : "_html_entered") = _GODOT__html_entered;
	/**
	
	*/
	void _htmlEntered(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_html_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__text_type_toggled;
	package(godot) alias _GODOT_methodBindInfo(string name : "_text_type_toggled") = _GODOT__text_type_toggled;
	/**
	
	*/
	void _textTypeToggled()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_text_type_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__add_preset_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_add_preset_pressed") = _GODOT__add_preset_pressed;
	/**
	
	*/
	void _addPresetPressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_add_preset_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__screen_pick_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_screen_pick_pressed") = _GODOT__screen_pick_pressed;
	/**
	
	*/
	void _screenPickPressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_screen_pick_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__sample_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "_sample_draw") = _GODOT__sample_draw;
	/**
	
	*/
	void _sampleDraw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_sample_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_presets;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_presets") = _GODOT__update_presets;
	/**
	
	*/
	void _updatePresets()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_presets");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long, GodotObject) _GODOT__hsv_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "_hsv_draw") = _GODOT__hsv_draw;
	/**
	
	*/
	void _hsvDraw(in long arg0, GodotObject arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_hsv_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__uv_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_uv_input") = _GODOT__uv_input;
	/**
	
	*/
	void _uvInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_uv_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__w_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_w_input") = _GODOT__w_input;
	/**
	
	*/
	void _wInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_w_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__preset_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_preset_input") = _GODOT__preset_input;
	/**
	
	*/
	void _presetInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_preset_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__screen_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_screen_input") = _GODOT__screen_input;
	/**
	
	*/
	void _screenInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_screen_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__focus_enter;
	package(godot) alias _GODOT_methodBindInfo(string name : "_focus_enter") = _GODOT__focus_enter;
	/**
	
	*/
	void _focusEnter()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_focus_enter");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__focus_exit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_focus_exit") = _GODOT__focus_exit;
	/**
	
	*/
	void _focusExit()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_focus_exit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__html_focus_exit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_html_focus_exit") = _GODOT__html_focus_exit;
	/**
	
	*/
	void _htmlFocusExit()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_html_focus_exit");
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
	If `true`, shows an alpha channel slider (transparency).
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
	/**
	If `true`, allows the color R, G, B component values to go beyond 1.0, which can be used for certain special operations that require it (like tinting without darkening or rendering sprites in HDR).
	*/
	@property bool rawMode()
	{
		return isRawMode();
	}
	/// ditto
	@property void rawMode(bool v)
	{
		setRawMode(v);
	}
}
