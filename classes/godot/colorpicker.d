/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.colorpicker;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.boxcontainer;
import godot.container;
import godot.control;
import godot.inputevent;
/**

*/
@GodotBaseClass struct ColorPicker
{
	package(godot) enum string _GODOT_internal_name = "ColorPicker";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ BoxContainer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_add_preset_pressed") GodotMethod!(void) _addPresetPressed;
		@GodotName("_focus_enter") GodotMethod!(void) _focusEnter;
		@GodotName("_focus_exit") GodotMethod!(void) _focusExit;
		@GodotName("_hsv_draw") GodotMethod!(void, long, Control) _hsvDraw;
		@GodotName("_html_entered") GodotMethod!(void, String) _htmlEntered;
		@GodotName("_html_focus_exit") GodotMethod!(void) _htmlFocusExit;
		@GodotName("_preset_input") GodotMethod!(void, InputEvent, Color) _presetInput;
		@GodotName("_sample_draw") GodotMethod!(void) _sampleDraw;
		@GodotName("_sample_input") GodotMethod!(void, InputEvent) _sampleInput;
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
	/// 
	pragma(inline, true) bool opEquals(in ColorPicker other) const
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
	/// Construct a new instance of ColorPicker.
	/// Note: use `memnew!ColorPicker` instead.
	static ColorPicker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ColorPicker");
		if(constructor is null) return typeof(this).init;
		return cast(ColorPicker)(constructor());
	}
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
	void _presetInput(InputEvent arg0, in Color arg1)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
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
	void _sampleInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_sample_input");
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
	
	*/
	void addPreset(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPreset, _godot_object, color);
	}
	/**
	
	*/
	bool arePresetsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.arePresetsEnabled, _godot_object);
	}
	/**
	
	*/
	bool arePresetsVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.arePresetsVisible, _godot_object);
	}
	/**
	
	*/
	void erasePreset(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.erasePreset, _godot_object, color);
	}
	/**
	
	*/
	Color getPickColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getPickColor, _godot_object);
	}
	/**
	
	*/
	PoolColorArray getPresets() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolColorArray)(GDNativeClassBinding.getPresets, _godot_object);
	}
	/**
	
	*/
	bool isDeferredMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDeferredMode, _godot_object);
	}
	/**
	
	*/
	bool isEditingAlpha() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEditingAlpha, _godot_object);
	}
	/**
	
	*/
	bool isHsvMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isHsvMode, _godot_object);
	}
	/**
	
	*/
	bool isRawMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRawMode, _godot_object);
	}
	/**
	
	*/
	void setDeferredMode(in bool mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDeferredMode, _godot_object, mode);
	}
	/**
	
	*/
	void setEditAlpha(in bool show)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEditAlpha, _godot_object, show);
	}
	/**
	
	*/
	void setHsvMode(in bool mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHsvMode, _godot_object, mode);
	}
	/**
	
	*/
	void setPickColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPickColor, _godot_object, color);
	}
	/**
	
	*/
	void setPresetsEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPresetsEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setPresetsVisible(in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPresetsVisible, _godot_object, visible);
	}
	/**
	
	*/
	void setRawMode(in bool mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRawMode, _godot_object, mode);
	}
	/**
	
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
