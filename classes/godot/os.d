/**
Operating System functions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.os;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.image;
/**
Operating System functions.

OS Wraps the most common functionality to communicate with the host Operating System, such as: mouse grabbing, mouse cursors, clipboard, video mode, date and time, timers, environment variables, execution of binaries, command line, etc.
*/
@GodotBaseClass struct OSSingleton
{
	static immutable string _GODOT_internal_name = "_OS";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "OS";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in OSSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	OSSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static OSSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_OS");
		if(constructor is null) return typeof(this).init;
		return cast(OSSingleton)(constructor());
	}
	/// 
	enum SystemDir : int
	{
		/**
		
		*/
		systemDirDesktop = 0,
		/**
		
		*/
		systemDirDcim = 1,
		/**
		
		*/
		systemDirDocuments = 2,
		/**
		
		*/
		systemDirDownloads = 3,
		/**
		
		*/
		systemDirMovies = 4,
		/**
		
		*/
		systemDirMusic = 5,
		/**
		
		*/
		systemDirPictures = 6,
		/**
		
		*/
		systemDirRingtones = 7,
	}
	/// 
	enum ScreenOrientation : int
	{
		/**
		
		*/
		screenOrientationLandscape = 0,
		/**
		
		*/
		screenOrientationPortrait = 1,
		/**
		
		*/
		screenOrientationReverseLandscape = 2,
		/**
		
		*/
		screenOrientationReversePortrait = 3,
		/**
		
		*/
		screenOrientationSensorLandscape = 4,
		/**
		
		*/
		screenOrientationSensorPortrait = 5,
		/**
		
		*/
		screenOrientationSensor = 6,
	}
	/// 
	enum PowerState : int
	{
		/**
		
		*/
		powerstateUnknown = 0,
		/**
		
		*/
		powerstateOnBattery = 1,
		/**
		
		*/
		powerstateNoBattery = 2,
		/**
		
		*/
		powerstateCharging = 3,
		/**
		
		*/
		powerstateCharged = 4,
	}
	/// 
	enum Month : int
	{
		/**
		
		*/
		monthJanuary = 1,
		/**
		
		*/
		monthFebruary = 2,
		/**
		
		*/
		monthMarch = 3,
		/**
		
		*/
		monthApril = 4,
		/**
		
		*/
		monthMay = 5,
		/**
		
		*/
		monthJune = 6,
		/**
		
		*/
		monthJuly = 7,
		/**
		
		*/
		monthAugust = 8,
		/**
		
		*/
		monthSeptember = 9,
		/**
		
		*/
		monthOctober = 10,
		/**
		
		*/
		monthNovember = 11,
		/**
		
		*/
		monthDecember = 12,
	}
	/// 
	enum Weekday : int
	{
		/**
		
		*/
		daySunday = 0,
		/**
		
		*/
		dayMonday = 1,
		/**
		
		*/
		dayTuesday = 2,
		/**
		
		*/
		dayWednesday = 3,
		/**
		
		*/
		dayThursday = 4,
		/**
		
		*/
		dayFriday = 5,
		/**
		
		*/
		daySaturday = 6,
	}
	/// 
	enum Constants : int
	{
		powerstateUnknown = 0,
		daySunday = 0,
		screenOrientationLandscape = 0,
		systemDirDesktop = 0,
		screenOrientationPortrait = 1,
		dayMonday = 1,
		powerstateOnBattery = 1,
		monthJanuary = 1,
		systemDirDcim = 1,
		dayTuesday = 2,
		monthFebruary = 2,
		screenOrientationReverseLandscape = 2,
		systemDirDocuments = 2,
		powerstateNoBattery = 2,
		dayWednesday = 3,
		screenOrientationReversePortrait = 3,
		monthMarch = 3,
		powerstateCharging = 3,
		systemDirDownloads = 3,
		powerstateCharged = 4,
		screenOrientationSensorLandscape = 4,
		dayThursday = 4,
		systemDirMovies = 4,
		monthApril = 4,
		dayFriday = 5,
		systemDirMusic = 5,
		screenOrientationSensorPortrait = 5,
		monthMay = 5,
		screenOrientationSensor = 6,
		daySaturday = 6,
		monthJune = 6,
		systemDirPictures = 6,
		monthJuly = 7,
		systemDirRingtones = 7,
		monthAugust = 8,
		monthSeptember = 9,
		monthOctober = 10,
		monthNovember = 11,
		monthDecember = 12,
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_clipboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clipboard") = _GODOT_set_clipboard;
	/**
	
	*/
	void setClipboard(StringArg0)(in StringArg0 clipboard)
	{
		_GODOT_set_clipboard.bind("_OS", "set_clipboard");
		ptrcall!(void)(_GODOT_set_clipboard, _godot_object, clipboard);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_clipboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_clipboard") = _GODOT_get_clipboard;
	/**
	
	*/
	String getClipboard() const
	{
		_GODOT_get_clipboard.bind("_OS", "get_clipboard");
		return ptrcall!(String)(_GODOT_get_clipboard, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_video_driver_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_video_driver_count") = _GODOT_get_video_driver_count;
	/**
	
	*/
	long getVideoDriverCount() const
	{
		_GODOT_get_video_driver_count.bind("_OS", "get_video_driver_count");
		return ptrcall!(long)(_GODOT_get_video_driver_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_video_driver_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_video_driver_name") = _GODOT_get_video_driver_name;
	/**
	
	*/
	String getVideoDriverName(in long arg0) const
	{
		_GODOT_get_video_driver_name.bind("_OS", "get_video_driver_name");
		return ptrcall!(String)(_GODOT_get_video_driver_name, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_audio_driver_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_audio_driver_count") = _GODOT_get_audio_driver_count;
	/**
	
	*/
	long getAudioDriverCount() const
	{
		_GODOT_get_audio_driver_count.bind("_OS", "get_audio_driver_count");
		return ptrcall!(long)(_GODOT_get_audio_driver_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_audio_driver_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_audio_driver_name") = _GODOT_get_audio_driver_name;
	/**
	
	*/
	String getAudioDriverName(in long arg0) const
	{
		_GODOT_get_audio_driver_name.bind("_OS", "get_audio_driver_name");
		return ptrcall!(String)(_GODOT_get_audio_driver_name, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_screen_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_screen_count") = _GODOT_get_screen_count;
	/**
	Returns the number of displays attached to the host machine.
	*/
	long getScreenCount() const
	{
		_GODOT_get_screen_count.bind("_OS", "get_screen_count");
		return ptrcall!(long)(_GODOT_get_screen_count, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_current_screen;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_screen") = _GODOT_get_current_screen;
	/**
	
	*/
	long getCurrentScreen() const
	{
		_GODOT_get_current_screen.bind("_OS", "get_current_screen");
		return ptrcall!(long)(_GODOT_get_current_screen, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_current_screen;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_screen") = _GODOT_set_current_screen;
	/**
	
	*/
	void setCurrentScreen(in long screen)
	{
		_GODOT_set_current_screen.bind("_OS", "set_current_screen");
		ptrcall!(void)(_GODOT_set_current_screen, _godot_object, screen);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_screen_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_screen_position") = _GODOT_get_screen_position;
	/**
	Returns the position of the specified screen by index. If no screen index is provided, the current screen will be used.
	*/
	Vector2 getScreenPosition(in long screen = -1) const
	{
		_GODOT_get_screen_position.bind("_OS", "get_screen_position");
		return ptrcall!(Vector2)(_GODOT_get_screen_position, _godot_object, screen);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_screen_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_screen_size") = _GODOT_get_screen_size;
	/**
	Returns the dimensions in pixels of the specified screen.
	*/
	Vector2 getScreenSize(in long screen = -1) const
	{
		_GODOT_get_screen_size.bind("_OS", "get_screen_size");
		return ptrcall!(Vector2)(_GODOT_get_screen_size, _godot_object, screen);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_screen_dpi;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_screen_dpi") = _GODOT_get_screen_dpi;
	/**
	Returns the dots per inch density of the specified screen.
	
	On Android Devices, the actual screen densities are grouped into six generalized densities:
		ldpi    - 120 dpi
		mdpi    - 160 dpi
		hdpi    - 240 dpi
		xhdpi   - 320 dpi
		xxhdpi  - 480 dpi
		xxxhdpi - 640 dpi
	*/
	long getScreenDpi(in long screen = -1) const
	{
		_GODOT_get_screen_dpi.bind("_OS", "get_screen_dpi");
		return ptrcall!(long)(_GODOT_get_screen_dpi, _godot_object, screen);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_window_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_window_position") = _GODOT_get_window_position;
	/**
	
	*/
	Vector2 getWindowPosition() const
	{
		_GODOT_get_window_position.bind("_OS", "get_window_position");
		return ptrcall!(Vector2)(_GODOT_get_window_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_window_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_position") = _GODOT_set_window_position;
	/**
	
	*/
	void setWindowPosition(in Vector2 position)
	{
		_GODOT_set_window_position.bind("_OS", "set_window_position");
		ptrcall!(void)(_GODOT_set_window_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_window_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_window_size") = _GODOT_get_window_size;
	/**
	
	*/
	Vector2 getWindowSize() const
	{
		_GODOT_get_window_size.bind("_OS", "get_window_size");
		return ptrcall!(Vector2)(_GODOT_get_window_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_window_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_size") = _GODOT_set_window_size;
	/**
	
	*/
	void setWindowSize(in Vector2 size)
	{
		_GODOT_set_window_size.bind("_OS", "set_window_size");
		ptrcall!(void)(_GODOT_set_window_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_window_fullscreen;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_fullscreen") = _GODOT_set_window_fullscreen;
	/**
	
	*/
	void setWindowFullscreen(in bool enabled)
	{
		_GODOT_set_window_fullscreen.bind("_OS", "set_window_fullscreen");
		ptrcall!(void)(_GODOT_set_window_fullscreen, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_window_fullscreen;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_window_fullscreen") = _GODOT_is_window_fullscreen;
	/**
	
	*/
	bool isWindowFullscreen() const
	{
		_GODOT_is_window_fullscreen.bind("_OS", "is_window_fullscreen");
		return ptrcall!(bool)(_GODOT_is_window_fullscreen, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_window_resizable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_resizable") = _GODOT_set_window_resizable;
	/**
	
	*/
	void setWindowResizable(in bool enabled)
	{
		_GODOT_set_window_resizable.bind("_OS", "set_window_resizable");
		ptrcall!(void)(_GODOT_set_window_resizable, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_window_resizable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_window_resizable") = _GODOT_is_window_resizable;
	/**
	
	*/
	bool isWindowResizable() const
	{
		_GODOT_is_window_resizable.bind("_OS", "is_window_resizable");
		return ptrcall!(bool)(_GODOT_is_window_resizable, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_window_minimized;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_minimized") = _GODOT_set_window_minimized;
	/**
	
	*/
	void setWindowMinimized(in bool enabled)
	{
		_GODOT_set_window_minimized.bind("_OS", "set_window_minimized");
		ptrcall!(void)(_GODOT_set_window_minimized, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_window_minimized;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_window_minimized") = _GODOT_is_window_minimized;
	/**
	
	*/
	bool isWindowMinimized() const
	{
		_GODOT_is_window_minimized.bind("_OS", "is_window_minimized");
		return ptrcall!(bool)(_GODOT_is_window_minimized, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_window_maximized;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_maximized") = _GODOT_set_window_maximized;
	/**
	
	*/
	void setWindowMaximized(in bool enabled)
	{
		_GODOT_set_window_maximized.bind("_OS", "set_window_maximized");
		ptrcall!(void)(_GODOT_set_window_maximized, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_window_maximized;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_window_maximized") = _GODOT_is_window_maximized;
	/**
	
	*/
	bool isWindowMaximized() const
	{
		_GODOT_is_window_maximized.bind("_OS", "is_window_maximized");
		return ptrcall!(bool)(_GODOT_is_window_maximized, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_window_always_on_top;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_always_on_top") = _GODOT_set_window_always_on_top;
	/**
	
	*/
	void setWindowAlwaysOnTop(in bool enabled)
	{
		_GODOT_set_window_always_on_top.bind("_OS", "set_window_always_on_top");
		ptrcall!(void)(_GODOT_set_window_always_on_top, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_window_always_on_top;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_window_always_on_top") = _GODOT_is_window_always_on_top;
	/**
	
	*/
	bool isWindowAlwaysOnTop() const
	{
		_GODOT_is_window_always_on_top.bind("_OS", "is_window_always_on_top");
		return ptrcall!(bool)(_GODOT_is_window_always_on_top, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_request_attention;
	package(godot) alias _GODOT_methodBindInfo(string name : "request_attention") = _GODOT_request_attention;
	/**
	Request the user attention to the window. It'll flash the taskbar button on Windows or bounce the dock icon on OSX.
	*/
	void requestAttention()
	{
		_GODOT_request_attention.bind("_OS", "request_attention");
		ptrcall!(void)(_GODOT_request_attention, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_real_window_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_real_window_size") = _GODOT_get_real_window_size;
	/**
	
	*/
	Vector2 getRealWindowSize() const
	{
		_GODOT_get_real_window_size.bind("_OS", "get_real_window_size");
		return ptrcall!(Vector2)(_GODOT_get_real_window_size, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_center_window;
	package(godot) alias _GODOT_methodBindInfo(string name : "center_window") = _GODOT_center_window;
	/**
	
	*/
	void centerWindow()
	{
		_GODOT_center_window.bind("_OS", "center_window");
		ptrcall!(void)(_GODOT_center_window, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_borderless_window;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_borderless_window") = _GODOT_set_borderless_window;
	/**
	
	*/
	void setBorderlessWindow(in bool borderless)
	{
		_GODOT_set_borderless_window.bind("_OS", "set_borderless_window");
		ptrcall!(void)(_GODOT_set_borderless_window, _godot_object, borderless);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_borderless_window;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_borderless_window") = _GODOT_get_borderless_window;
	/**
	
	*/
	bool getBorderlessWindow() const
	{
		_GODOT_get_borderless_window.bind("_OS", "get_borderless_window");
		return ptrcall!(bool)(_GODOT_get_borderless_window, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_ime_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ime_position") = _GODOT_set_ime_position;
	/**
	
	*/
	void setImePosition(in Vector2 position)
	{
		_GODOT_set_ime_position.bind("_OS", "set_ime_position");
		ptrcall!(void)(_GODOT_set_ime_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_screen_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_screen_orientation") = _GODOT_set_screen_orientation;
	/**
	
	*/
	void setScreenOrientation(in long orientation)
	{
		_GODOT_set_screen_orientation.bind("_OS", "set_screen_orientation");
		ptrcall!(void)(_GODOT_set_screen_orientation, _godot_object, orientation);
	}
	package(godot) static GodotMethod!(OS.ScreenOrientation) _GODOT_get_screen_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_screen_orientation") = _GODOT_get_screen_orientation;
	/**
	
	*/
	OS.ScreenOrientation getScreenOrientation() const
	{
		_GODOT_get_screen_orientation.bind("_OS", "get_screen_orientation");
		return ptrcall!(OS.ScreenOrientation)(_GODOT_get_screen_orientation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_keep_screen_on;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_keep_screen_on") = _GODOT_set_keep_screen_on;
	/**
	
	*/
	void setKeepScreenOn(in bool enabled)
	{
		_GODOT_set_keep_screen_on.bind("_OS", "set_keep_screen_on");
		ptrcall!(void)(_GODOT_set_keep_screen_on, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_keep_screen_on;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_keep_screen_on") = _GODOT_is_keep_screen_on;
	/**
	
	*/
	bool isKeepScreenOn() const
	{
		_GODOT_is_keep_screen_on.bind("_OS", "is_keep_screen_on");
		return ptrcall!(bool)(_GODOT_is_keep_screen_on, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_touchscreen_ui_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_touchscreen_ui_hint") = _GODOT_has_touchscreen_ui_hint;
	/**
	Returns `true` if the device has a touchscreen or emulates one.
	*/
	bool hasTouchscreenUiHint() const
	{
		_GODOT_has_touchscreen_ui_hint.bind("_OS", "has_touchscreen_ui_hint");
		return ptrcall!(bool)(_GODOT_has_touchscreen_ui_hint, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_window_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_title") = _GODOT_set_window_title;
	/**
	Sets the window title to the specified string.
	*/
	void setWindowTitle(StringArg0)(in StringArg0 title)
	{
		_GODOT_set_window_title.bind("_OS", "set_window_title");
		ptrcall!(void)(_GODOT_set_window_title, _godot_object, title);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_low_processor_usage_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_low_processor_usage_mode") = _GODOT_set_low_processor_usage_mode;
	/**
	
	*/
	void setLowProcessorUsageMode(in bool enable)
	{
		_GODOT_set_low_processor_usage_mode.bind("_OS", "set_low_processor_usage_mode");
		ptrcall!(void)(_GODOT_set_low_processor_usage_mode, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_in_low_processor_usage_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_in_low_processor_usage_mode") = _GODOT_is_in_low_processor_usage_mode;
	/**
	
	*/
	bool isInLowProcessorUsageMode() const
	{
		_GODOT_is_in_low_processor_usage_mode.bind("_OS", "is_in_low_processor_usage_mode");
		return ptrcall!(bool)(_GODOT_is_in_low_processor_usage_mode, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_processor_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_processor_count") = _GODOT_get_processor_count;
	/**
	Returns the number of cores available in the host machine.
	*/
	long getProcessorCount() const
	{
		_GODOT_get_processor_count.bind("_OS", "get_processor_count");
		return ptrcall!(long)(_GODOT_get_processor_count, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_executable_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_executable_path") = _GODOT_get_executable_path;
	/**
	Returns the path to the current engine executable.
	*/
	String getExecutablePath() const
	{
		_GODOT_get_executable_path.bind("_OS", "get_executable_path");
		return ptrcall!(String)(_GODOT_get_executable_path, _godot_object);
	}
	package(godot) static GodotMethod!(long, String, PoolStringArray, bool, Array) _GODOT_execute;
	package(godot) alias _GODOT_methodBindInfo(string name : "execute") = _GODOT_execute;
	/**
	Execute the file at the given path, optionally blocking until it returns.
	Platform path resolution will take place.  The resolved file must exist and be executable.
	Returns a process id.
	For example:
	
	
	var output = []
	var pid = OS.execute('ls', [], true, output)
	
	
	If you wish to access a shell built-in or perform a composite command, a platform specific shell can be invoked.  For example:
	
	
	var pid = OS.execute('CMD.exe', $(D '/C', 'cd %TEMP% &amp;&amp; dir'), true, output)
	
	
	*/
	long execute(StringArg0)(in StringArg0 path, in PoolStringArray arguments, in bool blocking, in Array output = Array.empty_array)
	{
		_GODOT_execute.bind("_OS", "execute");
		return ptrcall!(long)(_GODOT_execute, _godot_object, path, arguments, blocking, output);
	}
	package(godot) static GodotMethod!(GodotError, long) _GODOT_kill;
	package(godot) alias _GODOT_methodBindInfo(string name : "kill") = _GODOT_kill;
	/**
	Kill a process ID (this method can be used to kill processes that were not spawned by the game).
	*/
	GodotError kill(in long pid)
	{
		_GODOT_kill.bind("_OS", "kill");
		return ptrcall!(GodotError)(_GODOT_kill, _godot_object, pid);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_shell_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "shell_open") = _GODOT_shell_open;
	/**
	Requests the OS to open a resource with the most appropriate program. For example.
		`OS.shell_open("C:\\Users\name\Downloads")` on Windows opens the file explorer at the downloads folders of the user.
		`OS.shell_open("http://godotengine.org")` opens the default web browser on the official Godot website.
	*/
	GodotError shellOpen(StringArg0)(in StringArg0 uri)
	{
		_GODOT_shell_open.bind("_OS", "shell_open");
		return ptrcall!(GodotError)(_GODOT_shell_open, _godot_object, uri);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_process_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_process_id") = _GODOT_get_process_id;
	/**
	Returns the game process ID
	*/
	long getProcessId() const
	{
		_GODOT_get_process_id.bind("_OS", "get_process_id");
		return ptrcall!(long)(_GODOT_get_process_id, _godot_object);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_environment") = _GODOT_get_environment;
	/**
	Returns an environment variable.
	*/
	String getEnvironment(StringArg0)(in StringArg0 environment) const
	{
		_GODOT_get_environment.bind("_OS", "get_environment");
		return ptrcall!(String)(_GODOT_get_environment, _godot_object, environment);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_environment") = _GODOT_has_environment;
	/**
	Returns `true` if an environment variable exists.
	*/
	bool hasEnvironment(StringArg0)(in StringArg0 environment) const
	{
		_GODOT_has_environment.bind("_OS", "has_environment");
		return ptrcall!(bool)(_GODOT_has_environment, _godot_object, environment);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	/**
	Returns the name of the host OS. Possible values are: "Android", "Haiku", "iOS", "HTML5", "OSX", "Server", "Windows", "UWP", "X11".
	*/
	String getName() const
	{
		_GODOT_get_name.bind("_OS", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_cmdline_args;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cmdline_args") = _GODOT_get_cmdline_args;
	/**
	Returns the command line arguments passed to the engine.
	*/
	PoolStringArray getCmdlineArgs()
	{
		_GODOT_get_cmdline_args.bind("_OS", "get_cmdline_args");
		return ptrcall!(PoolStringArray)(_GODOT_get_cmdline_args, _godot_object);
	}
	package(godot) static GodotMethod!(Dictionary, bool) _GODOT_get_datetime;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_datetime") = _GODOT_get_datetime;
	/**
	Returns current datetime as a dictionary of keys: year, month, day, weekday, dst (daylight savings time), hour, minute, second.
	*/
	Dictionary getDatetime(in bool utc = false) const
	{
		_GODOT_get_datetime.bind("_OS", "get_datetime");
		return ptrcall!(Dictionary)(_GODOT_get_datetime, _godot_object, utc);
	}
	package(godot) static GodotMethod!(Dictionary, bool) _GODOT_get_date;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_date") = _GODOT_get_date;
	/**
	Returns current date as a dictionary of keys: year, month, day, weekday, dst (daylight savings time).
	*/
	Dictionary getDate(in bool utc = false) const
	{
		_GODOT_get_date.bind("_OS", "get_date");
		return ptrcall!(Dictionary)(_GODOT_get_date, _godot_object, utc);
	}
	package(godot) static GodotMethod!(Dictionary, bool) _GODOT_get_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time") = _GODOT_get_time;
	/**
	Returns current time as a dictionary of keys: hour, minute, second.
	*/
	Dictionary getTime(in bool utc = false) const
	{
		_GODOT_get_time.bind("_OS", "get_time");
		return ptrcall!(Dictionary)(_GODOT_get_time, _godot_object, utc);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT_get_time_zone_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time_zone_info") = _GODOT_get_time_zone_info;
	/**
	Returns the current time zone as a dictionary with the keys: bias and name.
	*/
	Dictionary getTimeZoneInfo() const
	{
		_GODOT_get_time_zone_info.bind("_OS", "get_time_zone_info");
		return ptrcall!(Dictionary)(_GODOT_get_time_zone_info, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_unix_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unix_time") = _GODOT_get_unix_time;
	/**
	Return	the current unix timestamp.
	*/
	long getUnixTime() const
	{
		_GODOT_get_unix_time.bind("_OS", "get_unix_time");
		return ptrcall!(long)(_GODOT_get_unix_time, _godot_object);
	}
	package(godot) static GodotMethod!(Dictionary, long) _GODOT_get_datetime_from_unix_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_datetime_from_unix_time") = _GODOT_get_datetime_from_unix_time;
	/**
	Get a dictionary of time values when given epoch time.
	Dictionary Time values will be a union of values from $(D getTime) and $(D getDate) dictionaries (with the exception of dst = day light standard time, as it cannot be determined from epoch).
	*/
	Dictionary getDatetimeFromUnixTime(in long unix_time_val) const
	{
		_GODOT_get_datetime_from_unix_time.bind("_OS", "get_datetime_from_unix_time");
		return ptrcall!(Dictionary)(_GODOT_get_datetime_from_unix_time, _godot_object, unix_time_val);
	}
	package(godot) static GodotMethod!(long, Dictionary) _GODOT_get_unix_time_from_datetime;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unix_time_from_datetime") = _GODOT_get_unix_time_from_datetime;
	/**
	Get an epoch time value from a dictionary of time values.
	`datetime` must be populated with the following keys: year, month, day, hour, minute, second.
	You can pass the output from $(D getDatetimeFromUnixTime) directly into this function. Daylight savings time (dst), if present, is ignored.
	*/
	long getUnixTimeFromDatetime(in Dictionary datetime) const
	{
		_GODOT_get_unix_time_from_datetime.bind("_OS", "get_unix_time_from_datetime");
		return ptrcall!(long)(_GODOT_get_unix_time_from_datetime, _godot_object, datetime);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_system_time_secs;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_system_time_secs") = _GODOT_get_system_time_secs;
	/**
	Returns the epoch time of the operating system in seconds.
	*/
	long getSystemTimeSecs() const
	{
		_GODOT_get_system_time_secs.bind("_OS", "get_system_time_secs");
		return ptrcall!(long)(_GODOT_get_system_time_secs, _godot_object);
	}
	package(godot) static GodotMethod!(void, Image) _GODOT_set_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon") = _GODOT_set_icon;
	/**
	Sets the game's icon.
	*/
	void setIcon(Image icon)
	{
		_GODOT_set_icon.bind("_OS", "set_icon");
		ptrcall!(void)(_GODOT_set_icon, _godot_object, icon);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_exit_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exit_code") = _GODOT_get_exit_code;
	/**
	
	*/
	long getExitCode() const
	{
		_GODOT_get_exit_code.bind("_OS", "get_exit_code");
		return ptrcall!(long)(_GODOT_get_exit_code, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_exit_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exit_code") = _GODOT_set_exit_code;
	/**
	
	*/
	void setExitCode(in long code)
	{
		_GODOT_set_exit_code.bind("_OS", "set_exit_code");
		ptrcall!(void)(_GODOT_set_exit_code, _godot_object, code);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_delay_usec;
	package(godot) alias _GODOT_methodBindInfo(string name : "delay_usec") = _GODOT_delay_usec;
	/**
	Delay executing of the current thread by given microseconds.
	*/
	void delayUsec(in long usec) const
	{
		_GODOT_delay_usec.bind("_OS", "delay_usec");
		ptrcall!(void)(_GODOT_delay_usec, _godot_object, usec);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_delay_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "delay_msec") = _GODOT_delay_msec;
	/**
	Delay executing of the current thread by given milliseconds.
	*/
	void delayMsec(in long msec) const
	{
		_GODOT_delay_msec.bind("_OS", "delay_msec");
		ptrcall!(void)(_GODOT_delay_msec, _godot_object, msec);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_ticks_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ticks_msec") = _GODOT_get_ticks_msec;
	/**
	Returns the amount of time passed in milliseconds since the engine started.
	*/
	long getTicksMsec() const
	{
		_GODOT_get_ticks_msec.bind("_OS", "get_ticks_msec");
		return ptrcall!(long)(_GODOT_get_ticks_msec, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_splash_tick_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_splash_tick_msec") = _GODOT_get_splash_tick_msec;
	/**
	
	*/
	long getSplashTickMsec() const
	{
		_GODOT_get_splash_tick_msec.bind("_OS", "get_splash_tick_msec");
		return ptrcall!(long)(_GODOT_get_splash_tick_msec, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_locale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_locale") = _GODOT_get_locale;
	/**
	Returns the host OS locale.
	*/
	String getLocale() const
	{
		_GODOT_get_locale.bind("_OS", "get_locale");
		return ptrcall!(String)(_GODOT_get_locale, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_latin_keyboard_variant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_latin_keyboard_variant") = _GODOT_get_latin_keyboard_variant;
	/**
	Returns the current latin keyboard variant as a String.
	Possible return values are: "QWERTY", "AZERTY", "QZERTY", "DVORAK", "NEO", "COLEMAK" or "ERROR".
	*/
	String getLatinKeyboardVariant() const
	{
		_GODOT_get_latin_keyboard_variant.bind("_OS", "get_latin_keyboard_variant");
		return ptrcall!(String)(_GODOT_get_latin_keyboard_variant, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_model_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_model_name") = _GODOT_get_model_name;
	/**
	Returns the model name of the current device.
	*/
	String getModelName() const
	{
		_GODOT_get_model_name.bind("_OS", "get_model_name");
		return ptrcall!(String)(_GODOT_get_model_name, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_draw") = _GODOT_can_draw;
	/**
	Returns `true` if the host OS allows drawing.
	*/
	bool canDraw() const
	{
		_GODOT_can_draw.bind("_OS", "can_draw");
		return ptrcall!(bool)(_GODOT_can_draw, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_userfs_persistent;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_userfs_persistent") = _GODOT_is_userfs_persistent;
	/**
	If `true`, the `user://` file system is persistent, so that its state is the same after a player quits and starts the game again. Relevant to the HTML5 platform, where this persistence may be unavailable.
	*/
	bool isUserfsPersistent() const
	{
		_GODOT_is_userfs_persistent.bind("_OS", "is_userfs_persistent");
		return ptrcall!(bool)(_GODOT_is_userfs_persistent, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_stdout_verbose;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_stdout_verbose") = _GODOT_is_stdout_verbose;
	/**
	Returns `true` if the engine was executed with -v (verbose stdout).
	*/
	bool isStdoutVerbose() const
	{
		_GODOT_is_stdout_verbose.bind("_OS", "is_stdout_verbose");
		return ptrcall!(bool)(_GODOT_is_stdout_verbose, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_use_threads;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_use_threads") = _GODOT_can_use_threads;
	/**
	Returns `true` if the current host platform is using multiple threads.
	*/
	bool canUseThreads() const
	{
		_GODOT_can_use_threads.bind("_OS", "can_use_threads");
		return ptrcall!(bool)(_GODOT_can_use_threads, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_debug_build;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_debug_build") = _GODOT_is_debug_build;
	/**
	Returns `true` if the build is a debug build.
	Returns `true` when running in the editor.
	Returns `false` if the build is a release build.
	*/
	bool isDebugBuild() const
	{
		_GODOT_is_debug_build.bind("_OS", "is_debug_build");
		return ptrcall!(bool)(_GODOT_is_debug_build, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_dump_memory_to_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "dump_memory_to_file") = _GODOT_dump_memory_to_file;
	/**
	Dumps the memory allocation ringlist to a file (only works in debug).
	Entry format per line: "Address - Size - Description"
	*/
	void dumpMemoryToFile(StringArg0)(in StringArg0 file)
	{
		_GODOT_dump_memory_to_file.bind("_OS", "dump_memory_to_file");
		ptrcall!(void)(_GODOT_dump_memory_to_file, _godot_object, file);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_dump_resources_to_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "dump_resources_to_file") = _GODOT_dump_resources_to_file;
	/**
	Dumps all used resources to file (only works in debug).
	Entry format per line: "Resource Type : Resource Location"
	At the end of the file is a statistic of all used Resource Types.
	*/
	void dumpResourcesToFile(StringArg0)(in StringArg0 file)
	{
		_GODOT_dump_resources_to_file.bind("_OS", "dump_resources_to_file");
		ptrcall!(void)(_GODOT_dump_resources_to_file, _godot_object, file);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_virtual_keyboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_virtual_keyboard") = _GODOT_has_virtual_keyboard;
	/**
	Returns `true` if the platform has a virtual keyboard, `false` otherwise.
	*/
	bool hasVirtualKeyboard() const
	{
		_GODOT_has_virtual_keyboard.bind("_OS", "has_virtual_keyboard");
		return ptrcall!(bool)(_GODOT_has_virtual_keyboard, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_show_virtual_keyboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "show_virtual_keyboard") = _GODOT_show_virtual_keyboard;
	/**
	Shows the virtual keyboard if the platform has one. The $(I existing_text) parameter is useful for implementing your own LineEdit, as it tells the virtual keyboard what text has already been typed (the virtual keyboard uses it for auto-correct and predictions).
	*/
	void showVirtualKeyboard(StringArg0)(in StringArg0 existing_text = "")
	{
		_GODOT_show_virtual_keyboard.bind("_OS", "show_virtual_keyboard");
		ptrcall!(void)(_GODOT_show_virtual_keyboard, _godot_object, existing_text);
	}
	package(godot) static GodotMethod!(void) _GODOT_hide_virtual_keyboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "hide_virtual_keyboard") = _GODOT_hide_virtual_keyboard;
	/**
	Hides the virtual keyboard if it is shown, does nothing otherwise.
	*/
	void hideVirtualKeyboard()
	{
		_GODOT_hide_virtual_keyboard.bind("_OS", "hide_virtual_keyboard");
		ptrcall!(void)(_GODOT_hide_virtual_keyboard, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_virtual_keyboard_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_virtual_keyboard_height") = _GODOT_get_virtual_keyboard_height;
	/**
	
	*/
	long getVirtualKeyboardHeight()
	{
		_GODOT_get_virtual_keyboard_height.bind("_OS", "get_virtual_keyboard_height");
		return ptrcall!(long)(_GODOT_get_virtual_keyboard_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_print_resources_in_use;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_resources_in_use") = _GODOT_print_resources_in_use;
	/**
	Shows all resources currently used by the game.
	*/
	void printResourcesInUse(in bool _short = false)
	{
		_GODOT_print_resources_in_use.bind("_OS", "print_resources_in_use");
		ptrcall!(void)(_GODOT_print_resources_in_use, _godot_object, _short);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_print_all_resources;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_all_resources") = _GODOT_print_all_resources;
	/**
	Shows all resources in the game. Optionally the list can be written to a file.
	*/
	void printAllResources(StringArg0)(in StringArg0 tofile = "")
	{
		_GODOT_print_all_resources.bind("_OS", "print_all_resources");
		ptrcall!(void)(_GODOT_print_all_resources, _godot_object, tofile);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_static_memory_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_static_memory_usage") = _GODOT_get_static_memory_usage;
	/**
	Returns the amount of static memory being used by the program in bytes.
	*/
	long getStaticMemoryUsage() const
	{
		_GODOT_get_static_memory_usage.bind("_OS", "get_static_memory_usage");
		return ptrcall!(long)(_GODOT_get_static_memory_usage, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_static_memory_peak_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_static_memory_peak_usage") = _GODOT_get_static_memory_peak_usage;
	/**
	Returns the max amount of static memory used (only works in debug).
	*/
	long getStaticMemoryPeakUsage() const
	{
		_GODOT_get_static_memory_peak_usage.bind("_OS", "get_static_memory_peak_usage");
		return ptrcall!(long)(_GODOT_get_static_memory_peak_usage, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_dynamic_memory_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dynamic_memory_usage") = _GODOT_get_dynamic_memory_usage;
	/**
	Returns the total amount of dynamic memory used (only works in debug).
	*/
	long getDynamicMemoryUsage() const
	{
		_GODOT_get_dynamic_memory_usage.bind("_OS", "get_dynamic_memory_usage");
		return ptrcall!(long)(_GODOT_get_dynamic_memory_usage, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_user_data_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_user_data_dir") = _GODOT_get_user_data_dir;
	/**
	Returns the absolute directory path where user data is written (`user://`).
	On Linux, this is `~/.local/share/godot/app_userdata/$(D project_name)`, or `~/.local/share/$(D custom_name)` if `use_custom_user_dir` is set.
	On macOS, this is `~/Library/Application Support/Godot/app_userdata/$(D project_name)`, or `~/Library/Application Support/$(D custom_name)` if `use_custom_user_dir` is set.
	On Windows, this is `%APPDATA%/Godot/app_userdata/$(D project_name)`, or `%APPDATA%/$(D custom_name)` if `use_custom_user_dir` is set.
	If the project name is empty, `user://` falls back to `res://`.
	*/
	String getUserDataDir() const
	{
		_GODOT_get_user_data_dir.bind("_OS", "get_user_data_dir");
		return ptrcall!(String)(_GODOT_get_user_data_dir, _godot_object);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_system_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_system_dir") = _GODOT_get_system_dir;
	/**
	Returns the actual path to commonly used folders across different platforms. Available locations are specified in $(D OS.SystemDir).
	*/
	String getSystemDir(in long dir) const
	{
		_GODOT_get_system_dir.bind("_OS", "get_system_dir");
		return ptrcall!(String)(_GODOT_get_system_dir, _godot_object, dir);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_unique_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unique_id") = _GODOT_get_unique_id;
	/**
	Returns a string that is unique to the device.
	Returns empty string on HTML5 and UWP which are not supported yet.
	*/
	String getUniqueId() const
	{
		_GODOT_get_unique_id.bind("_OS", "get_unique_id");
		return ptrcall!(String)(_GODOT_get_unique_id, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ok_left_and_cancel_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ok_left_and_cancel_right") = _GODOT_is_ok_left_and_cancel_right;
	/**
	Returns `true` if the "Okay" button should appear on the left and "Cancel" on the right.
	*/
	bool isOkLeftAndCancelRight() const
	{
		_GODOT_is_ok_left_and_cancel_right.bind("_OS", "is_ok_left_and_cancel_right");
		return ptrcall!(bool)(_GODOT_is_ok_left_and_cancel_right, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_print_all_textures_by_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_all_textures_by_size") = _GODOT_print_all_textures_by_size;
	/**
	Shows the list of loaded textures sorted by size in memory.
	*/
	void printAllTexturesBySize()
	{
		_GODOT_print_all_textures_by_size.bind("_OS", "print_all_textures_by_size");
		ptrcall!(void)(_GODOT_print_all_textures_by_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolStringArray) _GODOT_print_resources_by_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_resources_by_type") = _GODOT_print_resources_by_type;
	/**
	Shows the number of resources loaded by the game of the given types.
	*/
	void printResourcesByType(in PoolStringArray types)
	{
		_GODOT_print_resources_by_type.bind("_OS", "print_resources_by_type");
		ptrcall!(void)(_GODOT_print_resources_by_type, _godot_object, types);
	}
	package(godot) static GodotMethod!(GodotError, String, double, String, String) _GODOT_native_video_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "native_video_play") = _GODOT_native_video_play;
	/**
	Plays native video from the specified path, at the given volume and with audio and subtitle tracks.
	*/
	GodotError nativeVideoPlay(StringArg0, StringArg2, StringArg3)(in StringArg0 path, in double volume, in StringArg2 audio_track, in StringArg3 subtitle_track)
	{
		_GODOT_native_video_play.bind("_OS", "native_video_play");
		return ptrcall!(GodotError)(_GODOT_native_video_play, _godot_object, path, volume, audio_track, subtitle_track);
	}
	package(godot) static GodotMethod!(bool) _GODOT_native_video_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "native_video_is_playing") = _GODOT_native_video_is_playing;
	/**
	Returns `true` if native video is playing.
	*/
	bool nativeVideoIsPlaying()
	{
		_GODOT_native_video_is_playing.bind("_OS", "native_video_is_playing");
		return ptrcall!(bool)(_GODOT_native_video_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_native_video_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "native_video_stop") = _GODOT_native_video_stop;
	/**
	Stops native video playback.
	*/
	void nativeVideoStop()
	{
		_GODOT_native_video_stop.bind("_OS", "native_video_stop");
		ptrcall!(void)(_GODOT_native_video_stop, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_native_video_pause;
	package(godot) alias _GODOT_methodBindInfo(string name : "native_video_pause") = _GODOT_native_video_pause;
	/**
	Pauses native video playback.
	*/
	void nativeVideoPause()
	{
		_GODOT_native_video_pause.bind("_OS", "native_video_pause");
		ptrcall!(void)(_GODOT_native_video_pause, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_native_video_unpause;
	package(godot) alias _GODOT_methodBindInfo(string name : "native_video_unpause") = _GODOT_native_video_unpause;
	/**
	Resumes native video playback.
	*/
	void nativeVideoUnpause()
	{
		_GODOT_native_video_unpause.bind("_OS", "native_video_unpause");
		ptrcall!(void)(_GODOT_native_video_unpause, _godot_object);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_scancode_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scancode_string") = _GODOT_get_scancode_string;
	/**
	Returns the given scancode as a string (e.g. Return values: "Escape", "Shift+Escape").
	*/
	String getScancodeString(in long code) const
	{
		_GODOT_get_scancode_string.bind("_OS", "get_scancode_string");
		return ptrcall!(String)(_GODOT_get_scancode_string, _godot_object, code);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_scancode_unicode;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_scancode_unicode") = _GODOT_is_scancode_unicode;
	/**
	Returns `true` if the input code has a unicode character.
	*/
	bool isScancodeUnicode(in long code) const
	{
		_GODOT_is_scancode_unicode.bind("_OS", "is_scancode_unicode");
		return ptrcall!(bool)(_GODOT_is_scancode_unicode, _godot_object, code);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_find_scancode_from_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_scancode_from_string") = _GODOT_find_scancode_from_string;
	/**
	Returns the scancode of the given string (e.g. "Escape")
	*/
	long findScancodeFromString(StringArg0)(in StringArg0 string) const
	{
		_GODOT_find_scancode_from_string.bind("_OS", "find_scancode_from_string");
		return ptrcall!(long)(_GODOT_find_scancode_from_string, _godot_object, string);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_file_access_save_and_swap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_file_access_save_and_swap") = _GODOT_set_use_file_access_save_and_swap;
	/**
	Enables backup saves if `enabled` is `true`.
	*/
	void setUseFileAccessSaveAndSwap(in bool enabled)
	{
		_GODOT_set_use_file_access_save_and_swap.bind("_OS", "set_use_file_access_save_and_swap");
		ptrcall!(void)(_GODOT_set_use_file_access_save_and_swap, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_alert;
	package(godot) alias _GODOT_methodBindInfo(string name : "alert") = _GODOT_alert;
	/**
	Displays a modal dialog box utilizing the host OS.
	*/
	void alert(StringArg0, StringArg1)(in StringArg0 text, in StringArg1 title = "Alert!")
	{
		_GODOT_alert.bind("_OS", "alert");
		ptrcall!(void)(_GODOT_alert, _godot_object, text, title);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_set_thread_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_thread_name") = _GODOT_set_thread_name;
	/**
	Sets the name of the current thread.
	*/
	GodotError setThreadName(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_thread_name.bind("_OS", "set_thread_name");
		return ptrcall!(GodotError)(_GODOT_set_thread_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_vsync;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_vsync") = _GODOT_set_use_vsync;
	/**
	
	*/
	void setUseVsync(in bool enable)
	{
		_GODOT_set_use_vsync.bind("_OS", "set_use_vsync");
		ptrcall!(void)(_GODOT_set_use_vsync, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_vsync_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_vsync_enabled") = _GODOT_is_vsync_enabled;
	/**
	
	*/
	bool isVsyncEnabled() const
	{
		_GODOT_is_vsync_enabled.bind("_OS", "is_vsync_enabled");
		return ptrcall!(bool)(_GODOT_is_vsync_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_feature;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_feature") = _GODOT_has_feature;
	/**
	
	*/
	bool hasFeature(StringArg0)(in StringArg0 tag_name) const
	{
		_GODOT_has_feature.bind("_OS", "has_feature");
		return ptrcall!(bool)(_GODOT_has_feature, _godot_object, tag_name);
	}
	package(godot) static GodotMethod!(OS.PowerState) _GODOT_get_power_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_power_state") = _GODOT_get_power_state;
	/**
	Returns the current state of the device regarding battery and power. See `POWERSTATE_*` constants.
	*/
	OS.PowerState getPowerState()
	{
		_GODOT_get_power_state.bind("_OS", "get_power_state");
		return ptrcall!(OS.PowerState)(_GODOT_get_power_state, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_power_seconds_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_power_seconds_left") = _GODOT_get_power_seconds_left;
	/**
	Returns the time in seconds before the device runs out of battery.
	*/
	long getPowerSecondsLeft()
	{
		_GODOT_get_power_seconds_left.bind("_OS", "get_power_seconds_left");
		return ptrcall!(long)(_GODOT_get_power_seconds_left, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_power_percent_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_power_percent_left") = _GODOT_get_power_percent_left;
	/**
	Returns the amount of battery left in the device as a percentage.
	*/
	long getPowerPercentLeft()
	{
		_GODOT_get_power_percent_left.bind("_OS", "get_power_percent_left");
		return ptrcall!(long)(_GODOT_get_power_percent_left, _godot_object);
	}
	/**
	The clipboard from the host OS. Might be unavailable on some platforms.
	*/
	@property String clipboard()
	{
		return getClipboard();
	}
	/// ditto
	@property void clipboard(String v)
	{
		setClipboard(v);
	}
	/**
	The current screen index (starting from 0).
	*/
	@property long currentScreen()
	{
		return getCurrentScreen();
	}
	/// ditto
	@property void currentScreen(long v)
	{
		setCurrentScreen(v);
	}
	/**
	
	*/
	@property long exitCode()
	{
		return getExitCode();
	}
	/// ditto
	@property void exitCode(long v)
	{
		setExitCode(v);
	}
	/**
	
	*/
	@property bool vsyncEnabled()
	{
		return isVsyncEnabled();
	}
	/// ditto
	@property void vsyncEnabled(bool v)
	{
		setUseVsync(v);
	}
	/**
	
	*/
	@property bool lowProcessorUsageMode()
	{
		return isInLowProcessorUsageMode();
	}
	/// ditto
	@property void lowProcessorUsageMode(bool v)
	{
		setLowProcessorUsageMode(v);
	}
	/**
	
	*/
	@property bool keepScreenOn()
	{
		return isKeepScreenOn();
	}
	/// ditto
	@property void keepScreenOn(bool v)
	{
		setKeepScreenOn(v);
	}
	/**
	The current screen orientation.
	*/
	@property OS.ScreenOrientation screenOrientation()
	{
		return getScreenOrientation();
	}
	/// ditto
	@property void screenOrientation(long v)
	{
		setScreenOrientation(v);
	}
	/**
	If `true`, removes the window frame.
	*/
	@property bool windowBorderless()
	{
		return getBorderlessWindow();
	}
	/// ditto
	@property void windowBorderless(bool v)
	{
		setBorderlessWindow(v);
	}
	/**
	If `true`, the window is fullscreen.
	*/
	@property bool windowFullscreen()
	{
		return isWindowFullscreen();
	}
	/// ditto
	@property void windowFullscreen(bool v)
	{
		setWindowFullscreen(v);
	}
	/**
	If `true`, the window is maximized.
	*/
	@property bool windowMaximized()
	{
		return isWindowMaximized();
	}
	/// ditto
	@property void windowMaximized(bool v)
	{
		setWindowMaximized(v);
	}
	/**
	If `true`, the window is minimized.
	*/
	@property bool windowMinimized()
	{
		return isWindowMinimized();
	}
	/// ditto
	@property void windowMinimized(bool v)
	{
		setWindowMinimized(v);
	}
	/**
	If `true`, the window is resizable by the user.
	*/
	@property bool windowResizable()
	{
		return isWindowResizable();
	}
	/// ditto
	@property void windowResizable(bool v)
	{
		setWindowResizable(v);
	}
	/**
	The window position relative to the screen, the origin is the top left corner, +Y axis goes to the bottom and +X axis goes to the right.
	*/
	@property Vector2 windowPosition()
	{
		return getWindowPosition();
	}
	/// ditto
	@property void windowPosition(Vector2 v)
	{
		setWindowPosition(v);
	}
	/**
	The size of the window (without counting window manager decorations).
	*/
	@property Vector2 windowSize()
	{
		return getWindowSize();
	}
	/// ditto
	@property void windowSize(Vector2 v)
	{
		setWindowSize(v);
	}
}
/// Returns: the OSSingleton
@property @nogc nothrow pragma(inline, true)
OSSingleton OS()
{
	return OSSingleton._GODOT_singleton();
}
