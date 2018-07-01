/**
Base class for different kinds of buttons.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.basebutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.control;
import godot.inputevent;
import godot.shortcut;
import godot.buttongroup;
/**
Base class for different kinds of buttons.

BaseButton is the abstract base class for buttons, so it shouldn't be used directly (it doesn't display anything). Other types of buttons inherit from it.
*/
@GodotBaseClass struct BaseButton
{
	static immutable string _GODOT_internal_name = "BaseButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in BaseButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BaseButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BaseButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BaseButton");
		if(constructor is null) return typeof(this).init;
		return cast(BaseButton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ActionMode : int
	{
		/**
		Require just a press to consider the button clicked.
		*/
		actionModeButtonPress = 0,
		/**
		Require a press and a subsequent release before considering the button clicked.
		*/
		actionModeButtonRelease = 1,
	}
	/// 
	enum DrawMode : int
	{
		/**
		The normal state (i.e. not pressed, not hovered, not toggled and enabled) of buttons.
		*/
		drawNormal = 0,
		/**
		The state of buttons are pressed.
		*/
		drawPressed = 1,
		/**
		The state of buttons are hovered.
		*/
		drawHover = 2,
		/**
		The state of buttons are disabled.
		*/
		drawDisabled = 3,
	}
	/// 
	enum Constants : int
	{
		drawNormal = 0,
		actionModeButtonPress = 0,
		actionModeButtonRelease = 1,
		drawPressed = 1,
		drawHover = 2,
		drawDisabled = 3,
	}
	package(godot) static GodotMethod!(void) _GODOT__pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_pressed") = _GODOT__pressed;
	/**
	Called when the button is pressed.
	*/
	void _pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__toggled;
	package(godot) alias _GODOT_methodBindInfo(string name : "_toggled") = _GODOT__toggled;
	/**
	Called when the button is toggled (only if toggle_mode is active).
	*/
	void _toggled(in bool button_pressed)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(button_pressed);
		String _GODOT_method_name = String("_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_unhandled_input") = _GODOT__unhandled_input;
	/**
	
	*/
	void _unhandledInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed") = _GODOT_set_pressed;
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		_GODOT_set_pressed.bind("BaseButton", "set_pressed");
		ptrcall!(void)(_GODOT_set_pressed, _godot_object, pressed);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_pressed") = _GODOT_is_pressed;
	/**
	
	*/
	bool isPressed() const
	{
		_GODOT_is_pressed.bind("BaseButton", "is_pressed");
		return ptrcall!(bool)(_GODOT_is_pressed, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_hovered;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_hovered") = _GODOT_is_hovered;
	/**
	Return true if the mouse has entered the button and has not left it yet.
	*/
	bool isHovered() const
	{
		_GODOT_is_hovered.bind("BaseButton", "is_hovered");
		return ptrcall!(bool)(_GODOT_is_hovered, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_toggle_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_toggle_mode") = _GODOT_set_toggle_mode;
	/**
	
	*/
	void setToggleMode(in bool enabled)
	{
		_GODOT_set_toggle_mode.bind("BaseButton", "set_toggle_mode");
		ptrcall!(void)(_GODOT_set_toggle_mode, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_toggle_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_toggle_mode") = _GODOT_is_toggle_mode;
	/**
	
	*/
	bool isToggleMode() const
	{
		_GODOT_is_toggle_mode.bind("BaseButton", "is_toggle_mode");
		return ptrcall!(bool)(_GODOT_is_toggle_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled") = _GODOT_set_disabled;
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		_GODOT_set_disabled.bind("BaseButton", "set_disabled");
		ptrcall!(void)(_GODOT_set_disabled, _godot_object, disabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_disabled") = _GODOT_is_disabled;
	/**
	
	*/
	bool isDisabled() const
	{
		_GODOT_is_disabled.bind("BaseButton", "is_disabled");
		return ptrcall!(bool)(_GODOT_is_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_action_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_action_mode") = _GODOT_set_action_mode;
	/**
	
	*/
	void setActionMode(in long mode)
	{
		_GODOT_set_action_mode.bind("BaseButton", "set_action_mode");
		ptrcall!(void)(_GODOT_set_action_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(BaseButton.ActionMode) _GODOT_get_action_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action_mode") = _GODOT_get_action_mode;
	/**
	
	*/
	BaseButton.ActionMode getActionMode() const
	{
		_GODOT_get_action_mode.bind("BaseButton", "get_action_mode");
		return ptrcall!(BaseButton.ActionMode)(_GODOT_get_action_mode, _godot_object);
	}
	package(godot) static GodotMethod!(BaseButton.DrawMode) _GODOT_get_draw_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_draw_mode") = _GODOT_get_draw_mode;
	/**
	Return the visual state used to draw the button. This is useful mainly when implementing your own draw code by either overriding _draw() or connecting to "draw" signal. The visual state of the button is defined by the DRAW_* enum.
	*/
	BaseButton.DrawMode getDrawMode() const
	{
		_GODOT_get_draw_mode.bind("BaseButton", "get_draw_mode");
		return ptrcall!(BaseButton.DrawMode)(_GODOT_get_draw_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_enabled_focus_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enabled_focus_mode") = _GODOT_set_enabled_focus_mode;
	/**
	
	*/
	void setEnabledFocusMode(in long mode)
	{
		_GODOT_set_enabled_focus_mode.bind("BaseButton", "set_enabled_focus_mode");
		ptrcall!(void)(_GODOT_set_enabled_focus_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Control.FocusMode) _GODOT_get_enabled_focus_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_enabled_focus_mode") = _GODOT_get_enabled_focus_mode;
	/**
	
	*/
	Control.FocusMode getEnabledFocusMode() const
	{
		_GODOT_get_enabled_focus_mode.bind("BaseButton", "get_enabled_focus_mode");
		return ptrcall!(Control.FocusMode)(_GODOT_get_enabled_focus_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, ShortCut) _GODOT_set_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shortcut") = _GODOT_set_shortcut;
	/**
	
	*/
	void setShortcut(ShortCut shortcut)
	{
		_GODOT_set_shortcut.bind("BaseButton", "set_shortcut");
		ptrcall!(void)(_GODOT_set_shortcut, _godot_object, shortcut);
	}
	package(godot) static GodotMethod!(ShortCut) _GODOT_get_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shortcut") = _GODOT_get_shortcut;
	/**
	
	*/
	Ref!ShortCut getShortcut() const
	{
		_GODOT_get_shortcut.bind("BaseButton", "get_shortcut");
		return ptrcall!(ShortCut)(_GODOT_get_shortcut, _godot_object);
	}
	package(godot) static GodotMethod!(void, ButtonGroup) _GODOT_set_button_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button_group") = _GODOT_set_button_group;
	/**
	
	*/
	void setButtonGroup(ButtonGroup button_group)
	{
		_GODOT_set_button_group.bind("BaseButton", "set_button_group");
		ptrcall!(void)(_GODOT_set_button_group, _godot_object, button_group);
	}
	package(godot) static GodotMethod!(ButtonGroup) _GODOT_get_button_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_group") = _GODOT_get_button_group;
	/**
	
	*/
	Ref!ButtonGroup getButtonGroup() const
	{
		_GODOT_get_button_group.bind("BaseButton", "get_button_group");
		return ptrcall!(ButtonGroup)(_GODOT_get_button_group, _godot_object);
	}
	/**
	If `true` the button is in disabled state and can't be clicked or toggled.
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
	If `true` the button is in toggle mode. Makes the button flip state between pressed and unpressed each time its area is clicked.
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
	/**
	If `true` the button's state is pressed. Means the button is pressed down or toggled (if toggle_mode is active).
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
	Determines when the button is considered clicked, one of the ACTION_MODE_* constants.
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
	Focus access mode to use when switching between enabled/disabled (see $(D Control.setFocusMode) and $(D disabled)).
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
	$(D Shortcut) associated to the button.
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
	$(D ButtonGroup) associated to the button.
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
}
