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
import godot.container;
import godot.control;
import godot.inputevent;
/**
Color picker control.

$(D Control) node displaying a color picker widget. It's useful for selecting a color from an RGB/RGBA colorspace.
*/
@GodotBaseClass struct ColorPicker
{
	enum string _GODOT_internal_name = "ColorPicker";
public:
@nogc nothrow:
	union { godot_object _godot_object; BoxContainer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_add_preset_pressed") GodotMethod!(void) _addPresetPressed;
		@GodotName("_focus_enter") GodotMethod!(void) _focusEnter;
		@GodotName("_focus_exit") GodotMethod!(void) _focusExit;
		@GodotName("_hsv_draw") GodotMethod!(void, long, Control) _hsvDraw;
		@GodotName("_html_entered") GodotMethod!(void, String) _htmlEntered;
		@GodotName("_html_focus_exit") GodotMethod!(void) _htmlFocusExit;
		@GodotName("_preset_input") GodotMethod!(void, InputEvent) _presetInput;
		@GodotName("_sample_draw") GodotMethod!(void) _sampleDraw;
		@GodotName("_screen_input") GodotMethod!(void, InputEvent) _screenInput;
		@GodotName("_screen_pick_pressed") GodotMethod!(void) _screenPickPressed;
		@GodotName("_text_type_toggled") GodotMethod!(void) _textTypeToggled;
		@GodotName("_update_presets") GodotMethod!(void) _updatePresets;
		@GodotName("_uv_input") GodotMethod!(void, InputEvent) _uvInput;
		@GodotName("_value_changed") GodotMethod!(void, double) _valueChanged;
		@GodotName("_w_input") GodotMethod!(void, InputEvent) _wInput;
		@GodotName("add_preset") GodotMethod!(void, Color) addPreset;
		@GodotName("are_presets_enabled") GodotMethod!(bool) arePresetsEnabled;
		@GodotName("are_presets_visible") GodotMethod!(bool) arePresetsVisible;
		@GodotName("erase_preset") GodotMethod!(void, Color) erasePreset;
		@GodotName("get_pick_color") GodotMethod!(Color) getPickColor;
		@GodotName("get_presets") GodotMethod!(PoolColorArray) getPresets;
		@GodotName("is_deferred_mode") GodotMethod!(bool) isDeferredMode;
		@GodotName("is_editing_alpha") GodotMethod!(bool) isEditingAlpha;
		@GodotName("is_hsv_mode") GodotMethod!(bool) isHsvMode;
		@GodotName("is_raw_mode") GodotMethod!(bool) isRawMode;
		@GodotName("set_deferred_mode") GodotMethod!(void, bool) setDeferredMode;
		@GodotName("set_edit_alpha") GodotMethod!(void, bool) setEditAlpha;
		@GodotName("set_hsv_mode") GodotMethod!(void, bool) setHsvMode;
		@GodotName("set_pick_color") GodotMethod!(void, Color) setPickColor;
		@GodotName("set_presets_enabled") GodotMethod!(void, bool) setPresetsEnabled;
		@GodotName("set_presets_visible") GodotMethod!(void, bool) setPresetsVisible;
		@GodotName("set_raw_mode") GodotMethod!(void, bool) setRawMode;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void _addPresetPressed()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_add_preset_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _focusEnter()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_focus_enter");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _focusExit()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_focus_exit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _hsvDraw(in long arg0, Control arg1)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_hsv_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _htmlEntered(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_html_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _htmlFocusExit()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_html_focus_exit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _presetInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_preset_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _sampleDraw()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_sample_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _screenInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_screen_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _screenPickPressed()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_screen_pick_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _textTypeToggled()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_text_type_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updatePresets()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_presets");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _uvInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_uv_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _valueChanged(in double arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_value_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _wInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_w_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds the given color to a list of color presets. The presets are displayed in the color picker and the user will be able to select them.
	$(B Note:) the presets list is only for $(I this) color picker.
	*/
	void addPreset(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPreset, _godot_object, color);
	}
	/**
	
	*/
	bool arePresetsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.arePresetsEnabled, _godot_object);
	}
	/**
	
	*/
	bool arePresetsVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.arePresetsVisible, _godot_object);
	}
	/**
	Removes the given color from the list of color presets of this color picker.
	*/
	void erasePreset(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.erasePreset, _godot_object, color);
	}
	/**
	
	*/
	Color getPickColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getPickColor, _godot_object);
	}
	/**
	Returns the list of colors in the presets of the color picker.
	*/
	PoolColorArray getPresets() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolColorArray)(_classBinding.getPresets, _godot_object);
	}
	/**
	
	*/
	bool isDeferredMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDeferredMode, _godot_object);
	}
	/**
	
	*/
	bool isEditingAlpha() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEditingAlpha, _godot_object);
	}
	/**
	
	*/
	bool isHsvMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHsvMode, _godot_object);
	}
	/**
	
	*/
	bool isRawMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRawMode, _godot_object);
	}
	/**
	
	*/
	void setDeferredMode(in bool mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDeferredMode, _godot_object, mode);
	}
	/**
	
	*/
	void setEditAlpha(in bool show)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEditAlpha, _godot_object, show);
	}
	/**
	
	*/
	void setHsvMode(in bool mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHsvMode, _godot_object, mode);
	}
	/**
	
	*/
	void setPickColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPickColor, _godot_object, color);
	}
	/**
	
	*/
	void setPresetsEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPresetsEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setPresetsVisible(in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPresetsVisible, _godot_object, visible);
	}
	/**
	
	*/
	void setRawMode(in bool mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRawMode, _godot_object, mode);
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
	If `true`, the color will apply only after the user releases the mouse button, otherwise it will apply immediately even in mouse motion event (which can cause performance issues).
	*/
	@property bool deferredMode()
	{
		return isDeferredMode();
	}
	/// ditto
	@property void deferredMode(bool v)
	{
		setDeferredMode(v);
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
	If `true`, allows editing the color with Hue/Saturation/Value sliders.
	$(B Note:) Cannot be enabled if raw mode is on.
	*/
	@property bool hsvMode()
	{
		return isHsvMode();
	}
	/// ditto
	@property void hsvMode(bool v)
	{
		setHsvMode(v);
	}
	/**
	If `true`, the "add preset" button is enabled.
	*/
	@property bool presetsEnabled()
	{
		return arePresetsEnabled();
	}
	/// ditto
	@property void presetsEnabled(bool v)
	{
		setPresetsEnabled(v);
	}
	/**
	If `true`, saved color presets are visible.
	*/
	@property bool presetsVisible()
	{
		return arePresetsVisible();
	}
	/// ditto
	@property void presetsVisible(bool v)
	{
		setPresetsVisible(v);
	}
	/**
	If `true`, allows the color R, G, B component values to go beyond 1.0, which can be used for certain special operations that require it (like tinting without darkening or rendering sprites in HDR).
	$(B Note:) Cannot be enabled if HSV mode is on.
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
