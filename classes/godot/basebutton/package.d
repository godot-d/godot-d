/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.basebutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.control;
import godot.inputevent;
import godot.buttongroup;
import godot.shortcut;
/**

*/
@GodotBaseClass struct BaseButton
{
	package(godot) enum string _GODOT_internal_name = "BaseButton";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_pressed") GodotMethod!(void) _pressed;
		@GodotName("_toggled") GodotMethod!(void, bool) _toggled;
		@GodotName("_unhandled_input") GodotMethod!(void, InputEvent) _unhandledInput;
		@GodotName("get_action_mode") GodotMethod!(BaseButton.ActionMode) getActionMode;
		@GodotName("get_button_group") GodotMethod!(ButtonGroup) getButtonGroup;
		@GodotName("get_button_mask") GodotMethod!(long) getButtonMask;
		@GodotName("get_draw_mode") GodotMethod!(BaseButton.DrawMode) getDrawMode;
		@GodotName("get_enabled_focus_mode") GodotMethod!(Control.FocusMode) getEnabledFocusMode;
		@GodotName("get_shortcut") GodotMethod!(ShortCut) getShortcut;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("is_hovered") GodotMethod!(bool) isHovered;
		@GodotName("is_keep_pressed_outside") GodotMethod!(bool) isKeepPressedOutside;
		@GodotName("is_pressed") GodotMethod!(bool) isPressed;
		@GodotName("is_shortcut_in_tooltip_enabled") GodotMethod!(bool) isShortcutInTooltipEnabled;
		@GodotName("is_toggle_mode") GodotMethod!(bool) isToggleMode;
		@GodotName("set_action_mode") GodotMethod!(void, long) setActionMode;
		@GodotName("set_button_group") GodotMethod!(void, ButtonGroup) setButtonGroup;
		@GodotName("set_button_mask") GodotMethod!(void, long) setButtonMask;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("set_enabled_focus_mode") GodotMethod!(void, long) setEnabledFocusMode;
		@GodotName("set_keep_pressed_outside") GodotMethod!(void, bool) setKeepPressedOutside;
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
		@GodotName("set_pressed_no_signal") GodotMethod!(void, bool) setPressedNoSignal;
		@GodotName("set_shortcut") GodotMethod!(void, ShortCut) setShortcut;
		@GodotName("set_shortcut_in_tooltip") GodotMethod!(void, bool) setShortcutInTooltip;
		@GodotName("set_toggle_mode") GodotMethod!(void, bool) setToggleMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in BaseButton other) const
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
	/// Construct a new instance of BaseButton.
	/// Note: use `memnew!BaseButton` instead.
	static BaseButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BaseButton");
		if(constructor is null) return typeof(this).init;
		return cast(BaseButton)(constructor());
	}
	/// 
	enum ActionMode : int
	{
		/** */
		actionModeButtonPress = 0,
		/** */
		actionModeButtonRelease = 1,
	}
	/// 
	enum DrawMode : int
	{
		/** */
		drawNormal = 0,
		/** */
		drawPressed = 1,
		/** */
		drawHover = 2,
		/** */
		drawDisabled = 3,
		/** */
		drawHoverPressed = 4,
	}
	/// 
	enum Constants : int
	{
		drawNormal = 0,
		actionModeButtonPress = 0,
		drawPressed = 1,
		actionModeButtonRelease = 1,
		drawHover = 2,
		drawDisabled = 3,
		drawHoverPressed = 4,
	}
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _pressed()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _toggled(in bool button_pressed)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(button_pressed);
		String _GODOT_method_name = String("_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _unhandledInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	BaseButton.ActionMode getActionMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BaseButton.ActionMode)(GDNativeClassBinding.getActionMode, _godot_object);
	}
	/**
	
	*/
	Ref!ButtonGroup getButtonGroup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ButtonGroup)(GDNativeClassBinding.getButtonGroup, _godot_object);
	}
	/**
	
	*/
	long getButtonMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getButtonMask, _godot_object);
	}
	/**
	
	*/
	BaseButton.DrawMode getDrawMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BaseButton.DrawMode)(GDNativeClassBinding.getDrawMode, _godot_object);
	}
	/**
	
	*/
	Control.FocusMode getEnabledFocusMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.FocusMode)(GDNativeClassBinding.getEnabledFocusMode, _godot_object);
	}
	/**
	
	*/
	Ref!ShortCut getShortcut() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ShortCut)(GDNativeClassBinding.getShortcut, _godot_object);
	}
	/**
	
	*/
	bool isDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDisabled, _godot_object);
	}
	/**
	
	*/
	bool isHovered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isHovered, _godot_object);
	}
	/**
	
	*/
	bool isKeepPressedOutside() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isKeepPressedOutside, _godot_object);
	}
	/**
	
	*/
	bool isPressed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPressed, _godot_object);
	}
	/**
	
	*/
	bool isShortcutInTooltipEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isShortcutInTooltipEnabled, _godot_object);
	}
	/**
	
	*/
	bool isToggleMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isToggleMode, _godot_object);
	}
	/**
	
	*/
	void setActionMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setActionMode, _godot_object, mode);
	}
	/**
	
	*/
	void setButtonGroup(ButtonGroup button_group)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setButtonGroup, _godot_object, button_group);
	}
	/**
	
	*/
	void setButtonMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setButtonMask, _godot_object, mask);
	}
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisabled, _godot_object, disabled);
	}
	/**
	
	*/
	void setEnabledFocusMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnabledFocusMode, _godot_object, mode);
	}
	/**
	
	*/
	void setKeepPressedOutside(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setKeepPressedOutside, _godot_object, enabled);
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
	void setPressedNoSignal(in bool pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPressedNoSignal, _godot_object, pressed);
	}
	/**
	
	*/
	void setShortcut(ShortCut shortcut)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShortcut, _godot_object, shortcut);
	}
	/**
	
	*/
	void setShortcutInTooltip(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShortcutInTooltip, _godot_object, enabled);
	}
	/**
	
	*/
	void setToggleMode(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setToggleMode, _godot_object, enabled);
	}
	/**
	
	*/
	@property BaseButton.ActionMode actionMode()
	{
		return getActionMode();
	}
	/// ditto
	@property void actionMode(long v)
	{
		setActionMode(v);
	}
	/**
	
	*/
	@property long buttonMask()
	{
		return getButtonMask();
	}
	/// ditto
	@property void buttonMask(long v)
	{
		setButtonMask(v);
	}
	/**
	
	*/
	@property bool disabled()
	{
		return isDisabled();
	}
	/// ditto
	@property void disabled(bool v)
	{
		setDisabled(v);
	}
	/**
	
	*/
	@property Control.FocusMode enabledFocusMode()
	{
		return getEnabledFocusMode();
	}
	/// ditto
	@property void enabledFocusMode(long v)
	{
		setEnabledFocusMode(v);
	}
	/**
	
	*/
	@property ButtonGroup group()
	{
		return getButtonGroup();
	}
	/// ditto
	@property void group(ButtonGroup v)
	{
		setButtonGroup(v);
	}
	/**
	
	*/
	@property bool keepPressedOutside()
	{
		return isKeepPressedOutside();
	}
	/// ditto
	@property void keepPressedOutside(bool v)
	{
		setKeepPressedOutside(v);
	}
	/**
	
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
	
	*/
	@property ShortCut shortcut()
	{
		return getShortcut();
	}
	/// ditto
	@property void shortcut(ShortCut v)
	{
		setShortcut(v);
	}
	/**
	
	*/
	@property bool shortcutInTooltip()
	{
		return isShortcutInTooltipEnabled();
	}
	/// ditto
	@property void shortcutInTooltip(bool v)
	{
		setShortcutInTooltip(v);
	}
	/**
	
	*/
	@property bool toggleMode()
	{
		return isToggleMode();
	}
	/// ditto
	@property void toggleMode(bool v)
	{
		setToggleMode(v);
	}
}
