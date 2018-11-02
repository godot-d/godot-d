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
import godot.canvasitem;
import godot.node;
/**
Base class for different kinds of buttons.

BaseButton is the abstract base class for buttons, so it shouldn't be used directly (it doesn't display anything). Other types of buttons inherit from it.
*/
@GodotBaseClass struct BaseButton
{
	enum string _GODOT_internal_name = "BaseButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_pressed") GodotMethod!(void) _pressed;
		@GodotName("_toggled") GodotMethod!(void, bool) _toggled;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_unhandled_input") GodotMethod!(void, InputEvent) _unhandledInput;
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
		@GodotName("is_pressed") GodotMethod!(bool) isPressed;
		@GodotName("is_hovered") GodotMethod!(bool) isHovered;
		@GodotName("set_toggle_mode") GodotMethod!(void, bool) setToggleMode;
		@GodotName("is_toggle_mode") GodotMethod!(bool) isToggleMode;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("set_action_mode") GodotMethod!(void, long) setActionMode;
		@GodotName("get_action_mode") GodotMethod!(BaseButton.ActionMode) getActionMode;
		@GodotName("set_button_mask") GodotMethod!(void, long) setButtonMask;
		@GodotName("get_button_mask") GodotMethod!(long) getButtonMask;
		@GodotName("get_draw_mode") GodotMethod!(BaseButton.DrawMode) getDrawMode;
		@GodotName("set_enabled_focus_mode") GodotMethod!(void, long) setEnabledFocusMode;
		@GodotName("get_enabled_focus_mode") GodotMethod!(Control.FocusMode) getEnabledFocusMode;
		@GodotName("set_shortcut") GodotMethod!(void, ShortCut) setShortcut;
		@GodotName("get_shortcut") GodotMethod!(ShortCut) getShortcut;
		@GodotName("set_button_group") GodotMethod!(void, ButtonGroup) setButtonGroup;
		@GodotName("get_button_group") GodotMethod!(ButtonGroup) getButtonGroup;
	}
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
		/**
		
		*/
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
	Called when the button is pressed.
	*/
	void _pressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
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
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _unhandledInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPressed, _godot_object, pressed);
	}
	/**
	
	*/
	bool isPressed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPressed, _godot_object);
	}
	/**
	Return true if the mouse has entered the button and has not left it yet.
	*/
	bool isHovered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHovered, _godot_object);
	}
	/**
	
	*/
	void setToggleMode(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setToggleMode, _godot_object, enabled);
	}
	/**
	
	*/
	bool isToggleMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isToggleMode, _godot_object);
	}
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisabled, _godot_object, disabled);
	}
	/**
	
	*/
	bool isDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDisabled, _godot_object);
	}
	/**
	
	*/
	void setActionMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setActionMode, _godot_object, mode);
	}
	/**
	
	*/
	BaseButton.ActionMode getActionMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BaseButton.ActionMode)(_classBinding.getActionMode, _godot_object);
	}
	/**
	
	*/
	void setButtonMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setButtonMask, _godot_object, mask);
	}
	/**
	
	*/
	long getButtonMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getButtonMask, _godot_object);
	}
	/**
	Return the visual state used to draw the button. This is useful mainly when implementing your own draw code by either overriding _draw() or connecting to "draw" signal. The visual state of the button is defined by the DRAW_* enum.
	*/
	BaseButton.DrawMode getDrawMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BaseButton.DrawMode)(_classBinding.getDrawMode, _godot_object);
	}
	/**
	
	*/
	void setEnabledFocusMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnabledFocusMode, _godot_object, mode);
	}
	/**
	
	*/
	Control.FocusMode getEnabledFocusMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.FocusMode)(_classBinding.getEnabledFocusMode, _godot_object);
	}
	/**
	
	*/
	void setShortcut(ShortCut shortcut)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShortcut, _godot_object, shortcut);
	}
	/**
	
	*/
	Ref!ShortCut getShortcut() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ShortCut)(_classBinding.getShortcut, _godot_object);
	}
	/**
	
	*/
	void setButtonGroup(ButtonGroup button_group)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setButtonGroup, _godot_object, button_group);
	}
	/**
	
	*/
	Ref!ButtonGroup getButtonGroup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ButtonGroup)(_classBinding.getButtonGroup, _godot_object);
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
	Binary mask to choose which mouse buttons this button will respond to.
	To allow both left-click and right-click, set this to 3, because it's BUTTON_MASK_LEFT | BUTTON_MASK_RIGHT.
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
