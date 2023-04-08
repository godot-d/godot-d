/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.input;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.inputevent;
import godot.resource;
/**

*/
@GodotBaseClass struct InputSingleton
{
	package(godot) enum string _GODOT_internal_name = "Input";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "Input";
		@GodotName("action_press") GodotMethod!(void, String, double) actionPress;
		@GodotName("action_release") GodotMethod!(void, String) actionRelease;
		@GodotName("add_joy_mapping") GodotMethod!(void, String, bool) addJoyMapping;
		@GodotName("flush_buffered_events") GodotMethod!(void) flushBufferedEvents;
		@GodotName("get_accelerometer") GodotMethod!(Vector3) getAccelerometer;
		@GodotName("get_action_raw_strength") GodotMethod!(double, String, bool) getActionRawStrength;
		@GodotName("get_action_strength") GodotMethod!(double, String, bool) getActionStrength;
		@GodotName("get_axis") GodotMethod!(double, String, String) getAxis;
		@GodotName("get_connected_joypads") GodotMethod!(Array) getConnectedJoypads;
		@GodotName("get_current_cursor_shape") GodotMethod!(Input.CursorShape) getCurrentCursorShape;
		@GodotName("get_gravity") GodotMethod!(Vector3) getGravity;
		@GodotName("get_gyroscope") GodotMethod!(Vector3) getGyroscope;
		@GodotName("get_joy_axis") GodotMethod!(double, long, long) getJoyAxis;
		@GodotName("get_joy_axis_index_from_string") GodotMethod!(long, String) getJoyAxisIndexFromString;
		@GodotName("get_joy_axis_string") GodotMethod!(String, long) getJoyAxisString;
		@GodotName("get_joy_button_index_from_string") GodotMethod!(long, String) getJoyButtonIndexFromString;
		@GodotName("get_joy_button_string") GodotMethod!(String, long) getJoyButtonString;
		@GodotName("get_joy_guid") GodotMethod!(String, long) getJoyGuid;
		@GodotName("get_joy_name") GodotMethod!(String, long) getJoyName;
		@GodotName("get_joy_vibration_duration") GodotMethod!(double, long) getJoyVibrationDuration;
		@GodotName("get_joy_vibration_strength") GodotMethod!(Vector2, long) getJoyVibrationStrength;
		@GodotName("get_last_mouse_speed") GodotMethod!(Vector2) getLastMouseSpeed;
		@GodotName("get_magnetometer") GodotMethod!(Vector3) getMagnetometer;
		@GodotName("get_mouse_button_mask") GodotMethod!(long) getMouseButtonMask;
		@GodotName("get_mouse_mode") GodotMethod!(Input.MouseMode) getMouseMode;
		@GodotName("get_vector") GodotMethod!(Vector2, String, String, String, String, double) getVector;
		@GodotName("is_action_just_pressed") GodotMethod!(bool, String, bool) isActionJustPressed;
		@GodotName("is_action_just_released") GodotMethod!(bool, String, bool) isActionJustReleased;
		@GodotName("is_action_pressed") GodotMethod!(bool, String, bool) isActionPressed;
		@GodotName("is_joy_button_pressed") GodotMethod!(bool, long, long) isJoyButtonPressed;
		@GodotName("is_joy_known") GodotMethod!(bool, long) isJoyKnown;
		@GodotName("is_key_pressed") GodotMethod!(bool, long) isKeyPressed;
		@GodotName("is_mouse_button_pressed") GodotMethod!(bool, long) isMouseButtonPressed;
		@GodotName("is_physical_key_pressed") GodotMethod!(bool, long) isPhysicalKeyPressed;
		@GodotName("is_using_accumulated_input") GodotMethod!(bool) isUsingAccumulatedInput;
		@GodotName("joy_connection_changed") GodotMethod!(void, long, bool, String, String) joyConnectionChanged;
		@GodotName("parse_input_event") GodotMethod!(void, InputEvent) parseInputEvent;
		@GodotName("remove_joy_mapping") GodotMethod!(void, String) removeJoyMapping;
		@GodotName("set_accelerometer") GodotMethod!(void, Vector3) setAccelerometer;
		@GodotName("set_custom_mouse_cursor") GodotMethod!(void, Resource, long, Vector2) setCustomMouseCursor;
		@GodotName("set_default_cursor_shape") GodotMethod!(void, long) setDefaultCursorShape;
		@GodotName("set_gravity") GodotMethod!(void, Vector3) setGravity;
		@GodotName("set_gyroscope") GodotMethod!(void, Vector3) setGyroscope;
		@GodotName("set_magnetometer") GodotMethod!(void, Vector3) setMagnetometer;
		@GodotName("set_mouse_mode") GodotMethod!(void, long) setMouseMode;
		@GodotName("set_use_accumulated_input") GodotMethod!(void, bool) setUseAccumulatedInput;
		@GodotName("start_joy_vibration") GodotMethod!(void, long, double, double, double) startJoyVibration;
		@GodotName("stop_joy_vibration") GodotMethod!(void, long) stopJoyVibration;
		@GodotName("vibrate_handheld") GodotMethod!(void, long) vibrateHandheld;
		@GodotName("warp_mouse_position") GodotMethod!(void, Vector2) warpMousePosition;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputSingleton other) const
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
	/// Construct a new instance of InputSingleton.
	/// Note: use `memnew!InputSingleton` instead.
	static InputSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Input");
		if(constructor is null) return typeof(this).init;
		return cast(InputSingleton)(constructor());
	}
	/// 
	enum MouseMode : int
	{
		/** */
		mouseModeVisible = 0,
		/** */
		mouseModeHidden = 1,
		/** */
		mouseModeCaptured = 2,
		/** */
		mouseModeConfined = 3,
	}
	/// 
	enum CursorShape : int
	{
		/** */
		cursorArrow = 0,
		/** */
		cursorIbeam = 1,
		/** */
		cursorPointingHand = 2,
		/** */
		cursorCross = 3,
		/** */
		cursorWait = 4,
		/** */
		cursorBusy = 5,
		/** */
		cursorDrag = 6,
		/** */
		cursorCanDrop = 7,
		/** */
		cursorForbidden = 8,
		/** */
		cursorVsize = 9,
		/** */
		cursorHsize = 10,
		/** */
		cursorBdiagsize = 11,
		/** */
		cursorFdiagsize = 12,
		/** */
		cursorMove = 13,
		/** */
		cursorVsplit = 14,
		/** */
		cursorHsplit = 15,
		/** */
		cursorHelp = 16,
	}
	/// 
	enum Constants : int
	{
		cursorArrow = 0,
		mouseModeVisible = 0,
		cursorIbeam = 1,
		mouseModeHidden = 1,
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
	/**
	
	*/
	void actionPress(in String action, in double strength = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.actionPress, _godot_object, action, strength);
	}
	/**
	
	*/
	void actionRelease(in String action)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.actionRelease, _godot_object, action);
	}
	/**
	
	*/
	void addJoyMapping(in String mapping, in bool update_existing = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addJoyMapping, _godot_object, mapping, update_existing);
	}
	/**
	
	*/
	void flushBufferedEvents()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.flushBufferedEvents, _godot_object);
	}
	/**
	
	*/
	Vector3 getAccelerometer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getAccelerometer, _godot_object);
	}
	/**
	
	*/
	double getActionRawStrength(in String action, in bool exact = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getActionRawStrength, _godot_object, action, exact);
	}
	/**
	
	*/
	double getActionStrength(in String action, in bool exact = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getActionStrength, _godot_object, action, exact);
	}
	/**
	
	*/
	double getAxis(in String negative_action, in String positive_action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAxis, _godot_object, negative_action, positive_action);
	}
	/**
	
	*/
	Array getConnectedJoypads()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getConnectedJoypads, _godot_object);
	}
	/**
	
	*/
	Input.CursorShape getCurrentCursorShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Input.CursorShape)(GDNativeClassBinding.getCurrentCursorShape, _godot_object);
	}
	/**
	
	*/
	Vector3 getGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getGravity, _godot_object);
	}
	/**
	
	*/
	Vector3 getGyroscope() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getGyroscope, _godot_object);
	}
	/**
	
	*/
	double getJoyAxis(in long device, in long axis) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getJoyAxis, _godot_object, device, axis);
	}
	/**
	
	*/
	long getJoyAxisIndexFromString(in String axis)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getJoyAxisIndexFromString, _godot_object, axis);
	}
	/**
	
	*/
	String getJoyAxisString(in long axis_index)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getJoyAxisString, _godot_object, axis_index);
	}
	/**
	
	*/
	long getJoyButtonIndexFromString(in String button)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getJoyButtonIndexFromString, _godot_object, button);
	}
	/**
	
	*/
	String getJoyButtonString(in long button_index)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getJoyButtonString, _godot_object, button_index);
	}
	/**
	
	*/
	String getJoyGuid(in long device) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getJoyGuid, _godot_object, device);
	}
	/**
	
	*/
	String getJoyName(in long device)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getJoyName, _godot_object, device);
	}
	/**
	
	*/
	double getJoyVibrationDuration(in long device)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getJoyVibrationDuration, _godot_object, device);
	}
	/**
	
	*/
	Vector2 getJoyVibrationStrength(in long device)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getJoyVibrationStrength, _godot_object, device);
	}
	/**
	
	*/
	Vector2 getLastMouseSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getLastMouseSpeed, _godot_object);
	}
	/**
	
	*/
	Vector3 getMagnetometer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getMagnetometer, _godot_object);
	}
	/**
	
	*/
	long getMouseButtonMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMouseButtonMask, _godot_object);
	}
	/**
	
	*/
	Input.MouseMode getMouseMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Input.MouseMode)(GDNativeClassBinding.getMouseMode, _godot_object);
	}
	/**
	
	*/
	Vector2 getVector(in String negative_x, in String positive_x, in String negative_y, in String positive_y, in double deadzone = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getVector, _godot_object, negative_x, positive_x, negative_y, positive_y, deadzone);
	}
	/**
	
	*/
	bool isActionJustPressed(in String action, in bool exact = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActionJustPressed, _godot_object, action, exact);
	}
	/**
	
	*/
	bool isActionJustReleased(in String action, in bool exact = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActionJustReleased, _godot_object, action, exact);
	}
	/**
	
	*/
	bool isActionPressed(in String action, in bool exact = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActionPressed, _godot_object, action, exact);
	}
	/**
	
	*/
	bool isJoyButtonPressed(in long device, in long button) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isJoyButtonPressed, _godot_object, device, button);
	}
	/**
	
	*/
	bool isJoyKnown(in long device)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isJoyKnown, _godot_object, device);
	}
	/**
	
	*/
	bool isKeyPressed(in long scancode) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isKeyPressed, _godot_object, scancode);
	}
	/**
	
	*/
	bool isMouseButtonPressed(in long button) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isMouseButtonPressed, _godot_object, button);
	}
	/**
	
	*/
	bool isPhysicalKeyPressed(in long scancode) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPhysicalKeyPressed, _godot_object, scancode);
	}
	/**
	
	*/
	bool isUsingAccumulatedInput()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingAccumulatedInput, _godot_object);
	}
	/**
	
	*/
	void joyConnectionChanged(in long device, in bool connected, in String name, in String guid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.joyConnectionChanged, _godot_object, device, connected, name, guid);
	}
	/**
	
	*/
	void parseInputEvent(InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.parseInputEvent, _godot_object, event);
	}
	/**
	
	*/
	void removeJoyMapping(in String guid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeJoyMapping, _godot_object, guid);
	}
	/**
	
	*/
	void setAccelerometer(in Vector3 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAccelerometer, _godot_object, value);
	}
	/**
	
	*/
	void setCustomMouseCursor(Resource image, in long shape = 0, in Vector2 hotspot = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomMouseCursor, _godot_object, image, shape, hotspot);
	}
	/**
	
	*/
	void setDefaultCursorShape(in long shape = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultCursorShape, _godot_object, shape);
	}
	/**
	
	*/
	void setGravity(in Vector3 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGravity, _godot_object, value);
	}
	/**
	
	*/
	void setGyroscope(in Vector3 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGyroscope, _godot_object, value);
	}
	/**
	
	*/
	void setMagnetometer(in Vector3 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMagnetometer, _godot_object, value);
	}
	/**
	
	*/
	void setMouseMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMouseMode, _godot_object, mode);
	}
	/**
	
	*/
	void setUseAccumulatedInput(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseAccumulatedInput, _godot_object, enable);
	}
	/**
	
	*/
	void startJoyVibration(in long device, in double weak_magnitude, in double strong_magnitude, in double duration = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.startJoyVibration, _godot_object, device, weak_magnitude, strong_magnitude, duration);
	}
	/**
	
	*/
	void stopJoyVibration(in long device)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stopJoyVibration, _godot_object, device);
	}
	/**
	
	*/
	void vibrateHandheld(in long duration_ms = 500)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.vibrateHandheld, _godot_object, duration_ms);
	}
	/**
	
	*/
	void warpMousePosition(in Vector2 to)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.warpMousePosition, _godot_object, to);
	}
	/**
	
	*/
	@property Input.MouseMode mouseMode()
	{
		return getMouseMode();
	}
	/// ditto
	@property void mouseMode(long v)
	{
		setMouseMode(v);
	}
	/**
	
	*/
	@property bool useAccumulatedInput()
	{
		return isUsingAccumulatedInput();
	}
	/// ditto
	@property void useAccumulatedInput(bool v)
	{
		setUseAccumulatedInput(v);
	}
}
/// Returns: the InputSingleton
@property @nogc nothrow pragma(inline, true)
InputSingleton Input()
{
	checkClassBinding!InputSingleton();
	return InputSingleton(InputSingleton.GDNativeClassBinding._singleton);
}
