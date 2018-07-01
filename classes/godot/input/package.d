/**
A Singleton that deals with inputs.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.input;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
import godot.inputevent;
/**
A Singleton that deals with inputs.

This includes key presses, mouse buttons and movement, joypads, and input actions. Actions and their events can be set in the Project Settings / Input Map tab. Or be set with $(D InputMap).
*/
@GodotBaseClass struct InputSingleton
{
	static immutable string _GODOT_internal_name = "Input";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "Input";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Input");
		if(constructor is null) return typeof(this).init;
		return cast(InputSingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum MouseMode : int
	{
		/**
		Makes the mouse cursor visible if it is hidden.
		*/
		mouseModeVisible = 0,
		/**
		Makes the mouse cursor hidden if it is visible.
		*/
		mouseModeHidden = 1,
		/**
		Captures the mouse. The mouse will be hidden and unable to leave the game window. But it will still register movement and mouse button presses.
		*/
		mouseModeCaptured = 2,
		/**
		Makes the mouse cursor visible but confines it to the game window.
		*/
		mouseModeConfined = 3,
	}
	/// 
	enum CursorShape : int
	{
		/**
		Arrow cursor. Standard, default pointing cursor.
		*/
		cursorArrow = 0,
		/**
		I-beam cursor. Usually used to show where the text cursor will appear when the mouse is clicked.
		*/
		cursorIbeam = 1,
		/**
		Pointing hand cursor. Usually used to indicate the pointer is over a link or other interactable item.
		*/
		cursorPointingHand = 2,
		/**
		Cross cursor. Typically appears over regions in which a drawing operation can be performance or for selections.
		*/
		cursorCross = 3,
		/**
		Wait cursor. Indicates that the application is busy performing an operation.
		*/
		cursorWait = 4,
		/**
		Busy cursor. See `CURSOR_WAIT`.
		*/
		cursorBusy = 5,
		/**
		Drag cursor. Usually displayed when dragging something.
		*/
		cursorDrag = 6,
		/**
		Can drop cursor. Usually displayed when dragging something to indicate that it can be dropped at the current position.
		*/
		cursorCanDrop = 7,
		/**
		Forbidden cursor. Indicates that the current action is forbidden (for example, when dragging something) or that the control at a position is disabled.
		*/
		cursorForbidden = 8,
		/**
		Vertical resize mouse cursor. A double headed vertical arrow. It tells the user they can resize the window or the panel vertically.
		*/
		cursorVsize = 9,
		/**
		Horizontal resize mouse cursor. A double headed horizontal arrow. It tells the user they can resize the window or the panel horizontally.
		*/
		cursorHsize = 10,
		/**
		Window resize mouse cursor. The cursor is a double headed arrow that goes from the bottom left to the top right. It tells the user they can resize the window or the panel both horizontally and vertically.
		*/
		cursorBdiagsize = 11,
		/**
		Window resize mouse cursor. The cursor is a double headed arrow that goes from the top left to the bottom right, the opposite of `CURSOR_BDIAGSIZE`. It tells the user they can resize the window or the panel both horizontally and vertically.
		*/
		cursorFdiagsize = 12,
		/**
		Move cursor. Indicates that something can be moved.
		*/
		cursorMove = 13,
		/**
		Vertical split mouse cursor. On Windows, it's the same as `CURSOR_VSIZE`.
		*/
		cursorVsplit = 14,
		/**
		Horizontal split mouse cursor. On Windows, it's the same as `CURSOR_HSIZE`.
		*/
		cursorHsplit = 15,
		/**
		Help cursor. Usually a question mark.
		*/
		cursorHelp = 16,
	}
	/// 
	enum Constants : int
	{
		mouseModeVisible = 0,
		cursorArrow = 0,
		mouseModeHidden = 1,
		cursorIbeam = 1,
		mouseModeCaptured = 2,
		cursorPointingHand = 2,
		cursorCross = 3,
		mouseModeConfined = 3,
		cursorWait = 4,
		cursorBusy = 5,
		cursorDrag = 6,
		cursorCanDrop = 7,
		cursorForbidden = 8,
		cursorVsize = 9,
		cursorHsize = 10,
		cursorBdiagsize = 11,
		cursorFdiagsize = 12,
		cursorMove = 13,
		cursorVsplit = 14,
		cursorHsplit = 15,
		cursorHelp = 16,
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_key_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_key_pressed") = _GODOT_is_key_pressed;
	/**
	Returns `true` if you are pressing the key. You can pass `KEY_*`, which are pre-defined constants listed in $(D @GlobalScope).
	*/
	bool isKeyPressed(in long scancode) const
	{
		_GODOT_is_key_pressed.bind("Input", "is_key_pressed");
		return ptrcall!(bool)(_GODOT_is_key_pressed, _godot_object, scancode);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_mouse_button_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_mouse_button_pressed") = _GODOT_is_mouse_button_pressed;
	/**
	Returns `true` if you are pressing the mouse button. You can pass `BUTTON_*`, which are pre-defined constants listed in $(D @GlobalScope).
	*/
	bool isMouseButtonPressed(in long button) const
	{
		_GODOT_is_mouse_button_pressed.bind("Input", "is_mouse_button_pressed");
		return ptrcall!(bool)(_GODOT_is_mouse_button_pressed, _godot_object, button);
	}
	package(godot) static GodotMethod!(bool, long, long) _GODOT_is_joy_button_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_joy_button_pressed") = _GODOT_is_joy_button_pressed;
	/**
	Returns `true` if you are pressing the joypad button. (see `JOY_*` constants in $(D @GlobalScope))
	*/
	bool isJoyButtonPressed(in long device, in long button) const
	{
		_GODOT_is_joy_button_pressed.bind("Input", "is_joy_button_pressed");
		return ptrcall!(bool)(_GODOT_is_joy_button_pressed, _godot_object, device, button);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_pressed") = _GODOT_is_action_pressed;
	/**
	Returns `true` if you are pressing the action event.
	*/
	bool isActionPressed(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action_pressed.bind("Input", "is_action_pressed");
		return ptrcall!(bool)(_GODOT_is_action_pressed, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action_just_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_just_pressed") = _GODOT_is_action_just_pressed;
	/**
	Returns `true` when the user starts pressing the action event, meaning it's true only on the frame that the user pressed down the button.
	This is useful for code that needs to run only once when an action is pressed, instead of every frame while it's pressed.
	*/
	bool isActionJustPressed(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action_just_pressed.bind("Input", "is_action_just_pressed");
		return ptrcall!(bool)(_GODOT_is_action_just_pressed, _godot_object, action);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_action_just_released;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_action_just_released") = _GODOT_is_action_just_released;
	/**
	Returns `true` when the user stops pressing the action event, meaning it's true only on the frame that the user released the button.
	*/
	bool isActionJustReleased(StringArg0)(in StringArg0 action) const
	{
		_GODOT_is_action_just_released.bind("Input", "is_action_just_released");
		return ptrcall!(bool)(_GODOT_is_action_just_released, _godot_object, action);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_add_joy_mapping;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_joy_mapping") = _GODOT_add_joy_mapping;
	/**
	Add a new mapping entry (in SDL2 format) to the mapping database. Optionally update already connected devices.
	*/
	void addJoyMapping(StringArg0)(in StringArg0 mapping, in bool update_existing = false)
	{
		_GODOT_add_joy_mapping.bind("Input", "add_joy_mapping");
		ptrcall!(void)(_GODOT_add_joy_mapping, _godot_object, mapping, update_existing);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_joy_mapping;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_joy_mapping") = _GODOT_remove_joy_mapping;
	/**
	Removes all mappings from the internal db that match the given uid.
	*/
	void removeJoyMapping(StringArg0)(in StringArg0 guid)
	{
		_GODOT_remove_joy_mapping.bind("Input", "remove_joy_mapping");
		ptrcall!(void)(_GODOT_remove_joy_mapping, _godot_object, guid);
	}
	package(godot) static GodotMethod!(void, long, bool, String, String) _GODOT_joy_connection_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "joy_connection_changed") = _GODOT_joy_connection_changed;
	/**
	
	*/
	void joyConnectionChanged(StringArg2, StringArg3)(in long device, in bool connected, in StringArg2 name, in StringArg3 guid)
	{
		_GODOT_joy_connection_changed.bind("Input", "joy_connection_changed");
		ptrcall!(void)(_GODOT_joy_connection_changed, _godot_object, device, connected, name, guid);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_joy_known;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_joy_known") = _GODOT_is_joy_known;
	/**
	Returns `true` if the system knows the specified device. This means that it sets all button and axis indices exactly as defined in the `JOY_*` constants (see $(D @GlobalScope)). Unknown joypads are not expected to match these constants, but you can still retrieve events from them.
	*/
	bool isJoyKnown(in long device)
	{
		_GODOT_is_joy_known.bind("Input", "is_joy_known");
		return ptrcall!(bool)(_GODOT_is_joy_known, _godot_object, device);
	}
	package(godot) static GodotMethod!(double, long, long) _GODOT_get_joy_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_axis") = _GODOT_get_joy_axis;
	/**
	Returns the current value of the joypad axis at given index (see `JOY_*` constants in $(D @GlobalScope))
	*/
	double getJoyAxis(in long device, in long axis) const
	{
		_GODOT_get_joy_axis.bind("Input", "get_joy_axis");
		return ptrcall!(double)(_GODOT_get_joy_axis, _godot_object, device, axis);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_joy_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_name") = _GODOT_get_joy_name;
	/**
	Returns the name of the joypad at the specified device index
	*/
	String getJoyName(in long device)
	{
		_GODOT_get_joy_name.bind("Input", "get_joy_name");
		return ptrcall!(String)(_GODOT_get_joy_name, _godot_object, device);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_joy_guid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_guid") = _GODOT_get_joy_guid;
	/**
	Returns a SDL2 compatible device guid on platforms that use gamepad remapping. Returns "Default Gamepad" otherwise.
	*/
	String getJoyGuid(in long device) const
	{
		_GODOT_get_joy_guid.bind("Input", "get_joy_guid");
		return ptrcall!(String)(_GODOT_get_joy_guid, _godot_object, device);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_connected_joypads;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connected_joypads") = _GODOT_get_connected_joypads;
	/**
	Returns an $(D Array) containing the device IDs of all currently connected joypads.
	*/
	Array getConnectedJoypads()
	{
		_GODOT_get_connected_joypads.bind("Input", "get_connected_joypads");
		return ptrcall!(Array)(_GODOT_get_connected_joypads, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_joy_vibration_strength;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_vibration_strength") = _GODOT_get_joy_vibration_strength;
	/**
	Returns the strength of the joypad vibration: x is the strength of the weak motor, and y is the strength of the strong motor.
	*/
	Vector2 getJoyVibrationStrength(in long device)
	{
		_GODOT_get_joy_vibration_strength.bind("Input", "get_joy_vibration_strength");
		return ptrcall!(Vector2)(_GODOT_get_joy_vibration_strength, _godot_object, device);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_joy_vibration_duration;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_vibration_duration") = _GODOT_get_joy_vibration_duration;
	/**
	Returns the duration of the current vibration effect in seconds.
	*/
	double getJoyVibrationDuration(in long device)
	{
		_GODOT_get_joy_vibration_duration.bind("Input", "get_joy_vibration_duration");
		return ptrcall!(double)(_GODOT_get_joy_vibration_duration, _godot_object, device);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_joy_button_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_button_string") = _GODOT_get_joy_button_string;
	/**
	
	*/
	String getJoyButtonString(in long button_index)
	{
		_GODOT_get_joy_button_string.bind("Input", "get_joy_button_string");
		return ptrcall!(String)(_GODOT_get_joy_button_string, _godot_object, button_index);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_get_joy_button_index_from_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_button_index_from_string") = _GODOT_get_joy_button_index_from_string;
	/**
	
	*/
	long getJoyButtonIndexFromString(StringArg0)(in StringArg0 button)
	{
		_GODOT_get_joy_button_index_from_string.bind("Input", "get_joy_button_index_from_string");
		return ptrcall!(long)(_GODOT_get_joy_button_index_from_string, _godot_object, button);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_joy_axis_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_axis_string") = _GODOT_get_joy_axis_string;
	/**
	
	*/
	String getJoyAxisString(in long axis_index)
	{
		_GODOT_get_joy_axis_string.bind("Input", "get_joy_axis_string");
		return ptrcall!(String)(_GODOT_get_joy_axis_string, _godot_object, axis_index);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_get_joy_axis_index_from_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_axis_index_from_string") = _GODOT_get_joy_axis_index_from_string;
	/**
	
	*/
	long getJoyAxisIndexFromString(StringArg0)(in StringArg0 axis)
	{
		_GODOT_get_joy_axis_index_from_string.bind("Input", "get_joy_axis_index_from_string");
		return ptrcall!(long)(_GODOT_get_joy_axis_index_from_string, _godot_object, axis);
	}
	package(godot) static GodotMethod!(void, long, double, double, double) _GODOT_start_joy_vibration;
	package(godot) alias _GODOT_methodBindInfo(string name : "start_joy_vibration") = _GODOT_start_joy_vibration;
	/**
	Starts to vibrate the joypad. Joypads usually come with two rumble motors, a strong and a weak one. weak_magnitude is the strength of the weak motor (between 0 and 1) and strong_magnitude is the strength of the strong motor (between 0 and 1). duration is the duration of the effect in seconds (a duration of 0 will try to play the vibration indefinitely).
	Note that not every hardware is compatible with long effect durations, it is recommended to restart an effect if in need to play it for more than a few seconds.
	*/
	void startJoyVibration(in long device, in double weak_magnitude, in double strong_magnitude, in double duration = 0)
	{
		_GODOT_start_joy_vibration.bind("Input", "start_joy_vibration");
		ptrcall!(void)(_GODOT_start_joy_vibration, _godot_object, device, weak_magnitude, strong_magnitude, duration);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_stop_joy_vibration;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop_joy_vibration") = _GODOT_stop_joy_vibration;
	/**
	Stops the vibration of the joypad.
	*/
	void stopJoyVibration(in long device)
	{
		_GODOT_stop_joy_vibration.bind("Input", "stop_joy_vibration");
		ptrcall!(void)(_GODOT_stop_joy_vibration, _godot_object, device);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity") = _GODOT_get_gravity;
	/**
	If the device has an accelerometer, this will return the gravity. Otherwise, it returns an empty $(D Vector3).
	*/
	Vector3 getGravity() const
	{
		_GODOT_get_gravity.bind("Input", "get_gravity");
		return ptrcall!(Vector3)(_GODOT_get_gravity, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_accelerometer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_accelerometer") = _GODOT_get_accelerometer;
	/**
	If the device has an accelerometer, this will return the acceleration. Otherwise, it returns an empty $(D Vector3).
	*/
	Vector3 getAccelerometer() const
	{
		_GODOT_get_accelerometer.bind("Input", "get_accelerometer");
		return ptrcall!(Vector3)(_GODOT_get_accelerometer, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_magnetometer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_magnetometer") = _GODOT_get_magnetometer;
	/**
	If the device has a magnetometer, this will return the magnetic field strength in micro-Tesla for all axes.
	*/
	Vector3 getMagnetometer() const
	{
		_GODOT_get_magnetometer.bind("Input", "get_magnetometer");
		return ptrcall!(Vector3)(_GODOT_get_magnetometer, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_gyroscope;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gyroscope") = _GODOT_get_gyroscope;
	/**
	If the device has a gyroscope, this will return the rate of rotation in rad/s around a device's x, y, and z axis. Otherwise, it returns an empty $(D Vector3).
	*/
	Vector3 getGyroscope() const
	{
		_GODOT_get_gyroscope.bind("Input", "get_gyroscope");
		return ptrcall!(Vector3)(_GODOT_get_gyroscope, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_last_mouse_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_last_mouse_speed") = _GODOT_get_last_mouse_speed;
	/**
	Returns the mouse speed for the last time the cursor was moved, and this until the next frame where the mouse moves. This means that even if the mouse is not moving, this function will still return the value of the last motion.
	*/
	Vector2 getLastMouseSpeed() const
	{
		_GODOT_get_last_mouse_speed.bind("Input", "get_last_mouse_speed");
		return ptrcall!(Vector2)(_GODOT_get_last_mouse_speed, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_mouse_button_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mouse_button_mask") = _GODOT_get_mouse_button_mask;
	/**
	Returns mouse buttons as a bitmask. If multiple mouse buttons are pressed at the same time the bits are added together.
	*/
	long getMouseButtonMask() const
	{
		_GODOT_get_mouse_button_mask.bind("Input", "get_mouse_button_mask");
		return ptrcall!(long)(_GODOT_get_mouse_button_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_mouse_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mouse_mode") = _GODOT_set_mouse_mode;
	/**
	Set the mouse mode. See the constants for more information.
	*/
	void setMouseMode(in long mode)
	{
		_GODOT_set_mouse_mode.bind("Input", "set_mouse_mode");
		ptrcall!(void)(_GODOT_set_mouse_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Input.MouseMode) _GODOT_get_mouse_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mouse_mode") = _GODOT_get_mouse_mode;
	/**
	Return the mouse mode. See the constants for more information.
	*/
	Input.MouseMode getMouseMode() const
	{
		_GODOT_get_mouse_mode.bind("Input", "get_mouse_mode");
		return ptrcall!(Input.MouseMode)(_GODOT_get_mouse_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_warp_mouse_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "warp_mouse_position") = _GODOT_warp_mouse_position;
	/**
	Sets the mouse position to the specified vector.
	*/
	void warpMousePosition(in Vector2 to)
	{
		_GODOT_warp_mouse_position.bind("Input", "warp_mouse_position");
		ptrcall!(void)(_GODOT_warp_mouse_position, _godot_object, to);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_action_press;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_press") = _GODOT_action_press;
	/**
	This will simulate pressing the specified action.
	*/
	void actionPress(StringArg0)(in StringArg0 action)
	{
		_GODOT_action_press.bind("Input", "action_press");
		ptrcall!(void)(_GODOT_action_press, _godot_object, action);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_action_release;
	package(godot) alias _GODOT_methodBindInfo(string name : "action_release") = _GODOT_action_release;
	/**
	If the specified action is already pressed, this will release it.
	*/
	void actionRelease(StringArg0)(in StringArg0 action)
	{
		_GODOT_action_release.bind("Input", "action_release");
		ptrcall!(void)(_GODOT_action_release, _godot_object, action);
	}
	package(godot) static GodotMethod!(void, Resource, long, Vector2) _GODOT_set_custom_mouse_cursor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_mouse_cursor") = _GODOT_set_custom_mouse_cursor;
	/**
	Set a custom mouse cursor image, which is only visible inside the game window. The hotspot can also be specified. Passing `null` to the image parameter resets to the system cursor. See enum `CURSOR_*` for the list of shapes.
	*/
	void setCustomMouseCursor(Resource image, in long shape = 0, in Vector2 hotspot = Vector2(0, 0))
	{
		_GODOT_set_custom_mouse_cursor.bind("Input", "set_custom_mouse_cursor");
		ptrcall!(void)(_GODOT_set_custom_mouse_cursor, _godot_object, image, shape, hotspot);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT_parse_input_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "parse_input_event") = _GODOT_parse_input_event;
	/**
	Feeds an $(D InputEvent) to the game. Can be used to artificially trigger input events from code.
	*/
	void parseInputEvent(InputEvent event)
	{
		_GODOT_parse_input_event.bind("Input", "parse_input_event");
		ptrcall!(void)(_GODOT_parse_input_event, _godot_object, event);
	}
}
/// Returns: the InputSingleton
@property @nogc nothrow pragma(inline, true)
InputSingleton Input()
{
	return InputSingleton._GODOT_singleton();
}
