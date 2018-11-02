/**
Button that pops out a $(D ColorPicker).

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
import godot.basebutton;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Button that pops out a $(D ColorPicker).

Encapsulates a $(D ColorPicker) making it accessible by pressing a button. Pressing the button will toggle the $(D ColorPicker) visibility.
*/
@GodotBaseClass struct ColorPickerButton
{
	enum string _GODOT_internal_name = "ColorPickerButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Button _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_pick_color") GodotMethod!(void, Color) setPickColor;
		@GodotName("get_pick_color") GodotMethod!(Color) getPickColor;
		@GodotName("get_picker") GodotMethod!(ColorPicker) getPicker;
		@GodotName("get_popup") GodotMethod!(PopupPanel) getPopup;
		@GodotName("set_edit_alpha") GodotMethod!(void, bool) setEditAlpha;
		@GodotName("is_editing_alpha") GodotMethod!(bool) isEditingAlpha;
		@GodotName("_color_changed") GodotMethod!(void, Color) _colorChanged;
		@GodotName("_modal_closed") GodotMethod!(void) _modalClosed;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void setPickColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPickColor, _godot_object, color);
	}
	/**
	
	*/
	Color getPickColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getPickColor, _godot_object);
	}
	/**
	Returns the $(D ColorPicker) that this node toggles.
	*/
	ColorPicker getPicker()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ColorPicker)(_classBinding.getPicker, _godot_object);
	}
	/**
	Returns the control's $(D PopupPanel) which allows you to connect to popup signals. This allows you to handle events when the ColorPicker is shown or hidden.
	*/
	PopupPanel getPopup()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PopupPanel)(_classBinding.getPopup, _godot_object);
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
	bool isEditingAlpha() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEditingAlpha, _godot_object);
	}
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
	
	*/
	void _modalClosed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_modal_closed");
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
