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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.image;
/**
Operating System functions.

OS wraps the most common functionality to communicate with the host operating system, such as the clipboard, video driver, date and time, timers, environment variables, execution of binaries, command line, etc.
*/
@GodotBaseClass struct OSSingleton
{
	package(godot) enum string _GODOT_internal_name = "_OS";
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
		immutable char* _singletonName = "OS";
		@GodotName("alert") GodotMethod!(void, String, String) alert;
		@GodotName("can_draw") GodotMethod!(bool) canDraw;
		@GodotName("can_use_threads") GodotMethod!(bool) canUseThreads;
		@GodotName("center_window") GodotMethod!(void) centerWindow;
		@GodotName("close_midi_inputs") GodotMethod!(void) closeMidiInputs;
		@GodotName("delay_msec") GodotMethod!(void, long) delayMsec;
		@GodotName("delay_usec") GodotMethod!(void, long) delayUsec;
		@GodotName("dump_memory_to_file") GodotMethod!(void, String) dumpMemoryToFile;
		@GodotName("dump_resources_to_file") GodotMethod!(void, String) dumpResourcesToFile;
		@GodotName("execute") GodotMethod!(long, String, PoolStringArray, bool, Array, bool) execute;
		@GodotName("find_scancode_from_string") GodotMethod!(long, String) findScancodeFromString;
		@GodotName("get_audio_driver_count") GodotMethod!(long) getAudioDriverCount;
		@GodotName("get_audio_driver_name") GodotMethod!(String, long) getAudioDriverName;
		@GodotName("get_borderless_window") GodotMethod!(bool) getBorderlessWindow;
		@GodotName("get_clipboard") GodotMethod!(String) getClipboard;
		@GodotName("get_cmdline_args") GodotMethod!(PoolStringArray) getCmdlineArgs;
		@GodotName("get_connected_midi_inputs") GodotMethod!(PoolStringArray) getConnectedMidiInputs;
		@GodotName("get_current_screen") GodotMethod!(long) getCurrentScreen;
		@GodotName("get_current_tablet_driver") GodotMethod!(String) getCurrentTabletDriver;
		@GodotName("get_current_video_driver") GodotMethod!(OS.VideoDriver) getCurrentVideoDriver;
		@GodotName("get_date") GodotMethod!(Dictionary, bool) getDate;
		@GodotName("get_datetime") GodotMethod!(Dictionary, bool) getDatetime;
		@GodotName("get_datetime_from_unix_time") GodotMethod!(Dictionary, long) getDatetimeFromUnixTime;
		@GodotName("get_dynamic_memory_usage") GodotMethod!(long) getDynamicMemoryUsage;
		@GodotName("get_environment") GodotMethod!(String, String) getEnvironment;
		@GodotName("get_executable_path") GodotMethod!(String) getExecutablePath;
		@GodotName("get_exit_code") GodotMethod!(long) getExitCode;
		@GodotName("get_granted_permissions") GodotMethod!(PoolStringArray) getGrantedPermissions;
		@GodotName("get_ime_selection") GodotMethod!(Vector2) getImeSelection;
		@GodotName("get_ime_text") GodotMethod!(String) getImeText;
		@GodotName("get_latin_keyboard_variant") GodotMethod!(String) getLatinKeyboardVariant;
		@GodotName("get_locale") GodotMethod!(String) getLocale;
		@GodotName("get_low_processor_usage_mode_sleep_usec") GodotMethod!(long) getLowProcessorUsageModeSleepUsec;
		@GodotName("get_max_window_size") GodotMethod!(Vector2) getMaxWindowSize;
		@GodotName("get_min_window_size") GodotMethod!(Vector2) getMinWindowSize;
		@GodotName("get_model_name") GodotMethod!(String) getModelName;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("get_native_handle") GodotMethod!(long, long) getNativeHandle;
		@GodotName("get_power_percent_left") GodotMethod!(long) getPowerPercentLeft;
		@GodotName("get_power_seconds_left") GodotMethod!(long) getPowerSecondsLeft;
		@GodotName("get_power_state") GodotMethod!(OS.PowerState) getPowerState;
		@GodotName("get_process_id") GodotMethod!(long) getProcessId;
		@GodotName("get_processor_count") GodotMethod!(long) getProcessorCount;
		@GodotName("get_real_window_size") GodotMethod!(Vector2) getRealWindowSize;
		@GodotName("get_scancode_string") GodotMethod!(String, long) getScancodeString;
		@GodotName("get_screen_count") GodotMethod!(long) getScreenCount;
		@GodotName("get_screen_dpi") GodotMethod!(long, long) getScreenDpi;
		@GodotName("get_screen_max_scale") GodotMethod!(double) getScreenMaxScale;
		@GodotName("get_screen_orientation") GodotMethod!(OS.ScreenOrientation) getScreenOrientation;
		@GodotName("get_screen_position") GodotMethod!(Vector2, long) getScreenPosition;
		@GodotName("get_screen_scale") GodotMethod!(double, long) getScreenScale;
		@GodotName("get_screen_size") GodotMethod!(Vector2, long) getScreenSize;
		@GodotName("get_splash_tick_msec") GodotMethod!(long) getSplashTickMsec;
		@GodotName("get_static_memory_peak_usage") GodotMethod!(long) getStaticMemoryPeakUsage;
		@GodotName("get_static_memory_usage") GodotMethod!(long) getStaticMemoryUsage;
		@GodotName("get_system_dir") GodotMethod!(String, long) getSystemDir;
		@GodotName("get_system_time_msecs") GodotMethod!(long) getSystemTimeMsecs;
		@GodotName("get_system_time_secs") GodotMethod!(long) getSystemTimeSecs;
		@GodotName("get_tablet_driver_count") GodotMethod!(long) getTabletDriverCount;
		@GodotName("get_tablet_driver_name") GodotMethod!(String, long) getTabletDriverName;
		@GodotName("get_thread_caller_id") GodotMethod!(long) getThreadCallerId;
		@GodotName("get_ticks_msec") GodotMethod!(long) getTicksMsec;
		@GodotName("get_ticks_usec") GodotMethod!(long) getTicksUsec;
		@GodotName("get_time") GodotMethod!(Dictionary, bool) getTime;
		@GodotName("get_time_zone_info") GodotMethod!(Dictionary) getTimeZoneInfo;
		@GodotName("get_unique_id") GodotMethod!(String) getUniqueId;
		@GodotName("get_unix_time") GodotMethod!(long) getUnixTime;
		@GodotName("get_unix_time_from_datetime") GodotMethod!(long, Dictionary) getUnixTimeFromDatetime;
		@GodotName("get_user_data_dir") GodotMethod!(String) getUserDataDir;
		@GodotName("get_video_driver_count") GodotMethod!(long) getVideoDriverCount;
		@GodotName("get_video_driver_name") GodotMethod!(String, long) getVideoDriverName;
		@GodotName("get_virtual_keyboard_height") GodotMethod!(long) getVirtualKeyboardHeight;
		@GodotName("get_window_per_pixel_transparency_enabled") GodotMethod!(bool) getWindowPerPixelTransparencyEnabled;
		@GodotName("get_window_position") GodotMethod!(Vector2) getWindowPosition;
		@GodotName("get_window_safe_area") GodotMethod!(Rect2) getWindowSafeArea;
		@GodotName("get_window_size") GodotMethod!(Vector2) getWindowSize;
		@GodotName("global_menu_add_item") GodotMethod!(void, String, String, Variant, Variant) globalMenuAddItem;
		@GodotName("global_menu_add_separator") GodotMethod!(void, String) globalMenuAddSeparator;
		@GodotName("global_menu_clear") GodotMethod!(void, String) globalMenuClear;
		@GodotName("global_menu_remove_item") GodotMethod!(void, String, long) globalMenuRemoveItem;
		@GodotName("has_environment") GodotMethod!(bool, String) hasEnvironment;
		@GodotName("has_feature") GodotMethod!(bool, String) hasFeature;
		@GodotName("has_touchscreen_ui_hint") GodotMethod!(bool) hasTouchscreenUiHint;
		@GodotName("has_virtual_keyboard") GodotMethod!(bool) hasVirtualKeyboard;
		@GodotName("hide_virtual_keyboard") GodotMethod!(void) hideVirtualKeyboard;
		@GodotName("is_debug_build") GodotMethod!(bool) isDebugBuild;
		@GodotName("is_in_low_processor_usage_mode") GodotMethod!(bool) isInLowProcessorUsageMode;
		@GodotName("is_keep_screen_on") GodotMethod!(bool) isKeepScreenOn;
		@GodotName("is_ok_left_and_cancel_right") GodotMethod!(bool) isOkLeftAndCancelRight;
		@GodotName("is_scancode_unicode") GodotMethod!(bool, long) isScancodeUnicode;
		@GodotName("is_stdout_verbose") GodotMethod!(bool) isStdoutVerbose;
		@GodotName("is_userfs_persistent") GodotMethod!(bool) isUserfsPersistent;
		@GodotName("is_vsync_enabled") GodotMethod!(bool) isVsyncEnabled;
		@GodotName("is_vsync_via_compositor_enabled") GodotMethod!(bool) isVsyncViaCompositorEnabled;
		@GodotName("is_window_always_on_top") GodotMethod!(bool) isWindowAlwaysOnTop;
		@GodotName("is_window_focused") GodotMethod!(bool) isWindowFocused;
		@GodotName("is_window_fullscreen") GodotMethod!(bool) isWindowFullscreen;
		@GodotName("is_window_maximized") GodotMethod!(bool) isWindowMaximized;
		@GodotName("is_window_minimized") GodotMethod!(bool) isWindowMinimized;
		@GodotName("is_window_resizable") GodotMethod!(bool) isWindowResizable;
		@GodotName("keyboard_get_current_layout") GodotMethod!(long) keyboardGetCurrentLayout;
		@GodotName("keyboard_get_layout_count") GodotMethod!(long) keyboardGetLayoutCount;
		@GodotName("keyboard_get_layout_language") GodotMethod!(String, long) keyboardGetLayoutLanguage;
		@GodotName("keyboard_get_layout_name") GodotMethod!(String, long) keyboardGetLayoutName;
		@GodotName("keyboard_set_current_layout") GodotMethod!(void, long) keyboardSetCurrentLayout;
		@GodotName("kill") GodotMethod!(GodotError, long) kill;
		@GodotName("move_window_to_foreground") GodotMethod!(void) moveWindowToForeground;
		@GodotName("native_video_is_playing") GodotMethod!(bool) nativeVideoIsPlaying;
		@GodotName("native_video_pause") GodotMethod!(void) nativeVideoPause;
		@GodotName("native_video_play") GodotMethod!(GodotError, String, double, String, String) nativeVideoPlay;
		@GodotName("native_video_stop") GodotMethod!(void) nativeVideoStop;
		@GodotName("native_video_unpause") GodotMethod!(void) nativeVideoUnpause;
		@GodotName("open_midi_inputs") GodotMethod!(void) openMidiInputs;
		@GodotName("print_all_resources") GodotMethod!(void, String) printAllResources;
		@GodotName("print_all_textures_by_size") GodotMethod!(void) printAllTexturesBySize;
		@GodotName("print_resources_by_type") GodotMethod!(void, PoolStringArray) printResourcesByType;
		@GodotName("print_resources_in_use") GodotMethod!(void, bool) printResourcesInUse;
		@GodotName("request_attention") GodotMethod!(void) requestAttention;
		@GodotName("request_permission") GodotMethod!(bool, String) requestPermission;
		@GodotName("request_permissions") GodotMethod!(bool) requestPermissions;
		@GodotName("set_borderless_window") GodotMethod!(void, bool) setBorderlessWindow;
		@GodotName("set_clipboard") GodotMethod!(void, String) setClipboard;
		@GodotName("set_current_screen") GodotMethod!(void, long) setCurrentScreen;
		@GodotName("set_current_tablet_driver") GodotMethod!(void, String) setCurrentTabletDriver;
		@GodotName("set_environment") GodotMethod!(bool, String, String) setEnvironment;
		@GodotName("set_exit_code") GodotMethod!(void, long) setExitCode;
		@GodotName("set_icon") GodotMethod!(void, Image) setIcon;
		@GodotName("set_ime_active") GodotMethod!(void, bool) setImeActive;
		@GodotName("set_ime_position") GodotMethod!(void, Vector2) setImePosition;
		@GodotName("set_keep_screen_on") GodotMethod!(void, bool) setKeepScreenOn;
		@GodotName("set_low_processor_usage_mode") GodotMethod!(void, bool) setLowProcessorUsageMode;
		@GodotName("set_low_processor_usage_mode_sleep_usec") GodotMethod!(void, long) setLowProcessorUsageModeSleepUsec;
		@GodotName("set_max_window_size") GodotMethod!(void, Vector2) setMaxWindowSize;
		@GodotName("set_min_window_size") GodotMethod!(void, Vector2) setMinWindowSize;
		@GodotName("set_native_icon") GodotMethod!(void, String) setNativeIcon;
		@GodotName("set_screen_orientation") GodotMethod!(void, long) setScreenOrientation;
		@GodotName("set_thread_name") GodotMethod!(GodotError, String) setThreadName;
		@GodotName("set_use_file_access_save_and_swap") GodotMethod!(void, bool) setUseFileAccessSaveAndSwap;
		@GodotName("set_use_vsync") GodotMethod!(void, bool) setUseVsync;
		@GodotName("set_vsync_via_compositor") GodotMethod!(void, bool) setVsyncViaCompositor;
		@GodotName("set_window_always_on_top") GodotMethod!(void, bool) setWindowAlwaysOnTop;
		@GodotName("set_window_fullscreen") GodotMethod!(void, bool) setWindowFullscreen;
		@GodotName("set_window_maximized") GodotMethod!(void, bool) setWindowMaximized;
		@GodotName("set_window_minimized") GodotMethod!(void, bool) setWindowMinimized;
		@GodotName("set_window_mouse_passthrough") GodotMethod!(void, PoolVector2Array) setWindowMousePassthrough;
		@GodotName("set_window_per_pixel_transparency_enabled") GodotMethod!(void, bool) setWindowPerPixelTransparencyEnabled;
		@GodotName("set_window_position") GodotMethod!(void, Vector2) setWindowPosition;
		@GodotName("set_window_resizable") GodotMethod!(void, bool) setWindowResizable;
		@GodotName("set_window_size") GodotMethod!(void, Vector2) setWindowSize;
		@GodotName("set_window_title") GodotMethod!(void, String) setWindowTitle;
		@GodotName("shell_open") GodotMethod!(GodotError, String) shellOpen;
		@GodotName("show_virtual_keyboard") GodotMethod!(void, String, bool) showVirtualKeyboard;
	}
	/// 
	pragma(inline, true) bool opEquals(in OSSingleton other) const
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
	/// Construct a new instance of OSSingleton.
	/// Note: use `memnew!OSSingleton` instead.
	static OSSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_OS");
		if(constructor is null) return typeof(this).init;
		return cast(OSSingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum VideoDriver : int
	{
		/**
		The GLES3 rendering backend. It uses OpenGL ES 3.0 on mobile devices, OpenGL 3.3 on desktop platforms and WebGL 2.0 on the web.
		*/
		videoDriverGles3 = 0,
		/**
		The GLES2 rendering backend. It uses OpenGL ES 2.0 on mobile devices, OpenGL 2.1 on desktop platforms and WebGL 1.0 on the web.
		*/
		videoDriverGles2 = 1,
	}
	/// 
	enum SystemDir : int
	{
		/**
		Desktop directory path.
		*/
		systemDirDesktop = 0,
		/**
		DCIM (Digital Camera Images) directory path.
		*/
		systemDirDcim = 1,
		/**
		Documents directory path.
		*/
		systemDirDocuments = 2,
		/**
		Downloads directory path.
		*/
		systemDirDownloads = 3,
		/**
		Movies directory path.
		*/
		systemDirMovies = 4,
		/**
		Music directory path.
		*/
		systemDirMusic = 5,
		/**
		Pictures directory path.
		*/
		systemDirPictures = 6,
		/**
		Ringtones directory path.
		*/
		systemDirRingtones = 7,
	}
	/// 
	enum ScreenOrientation : int
	{
		/**
		Landscape screen orientation.
		*/
		screenOrientationLandscape = 0,
		/**
		Portrait screen orientation.
		*/
		screenOrientationPortrait = 1,
		/**
		Reverse landscape screen orientation.
		*/
		screenOrientationReverseLandscape = 2,
		/**
		Reverse portrait screen orientation.
		*/
		screenOrientationReversePortrait = 3,
		/**
		Uses landscape or reverse landscape based on the hardware sensor.
		*/
		screenOrientationSensorLandscape = 4,
		/**
		Uses portrait or reverse portrait based on the hardware sensor.
		*/
		screenOrientationSensorPortrait = 5,
		/**
		Uses most suitable orientation based on the hardware sensor.
		*/
		screenOrientationSensor = 6,
	}
	/// 
	enum PowerState : int
	{
		/**
		Unknown powerstate.
		*/
		powerstateUnknown = 0,
		/**
		Unplugged, running on battery.
		*/
		powerstateOnBattery = 1,
		/**
		Plugged in, no battery available.
		*/
		powerstateNoBattery = 2,
		/**
		Plugged in, battery charging.
		*/
		powerstateCharging = 3,
		/**
		Plugged in, battery fully charged.
		*/
		powerstateCharged = 4,
	}
	/// 
	enum HandleType : int
	{
		/**
		Application handle:
		- Windows: `HINSTANCE` of the application
		- MacOS: `NSApplication*` of the application (not yet implemented)
		- Android: `JNIEnv*` of the application (not yet implemented)
		*/
		applicationHandle = 0,
		/**
		Display handle:
		- Linux: `X11::Display*` for the display
		*/
		displayHandle = 1,
		/**
		Window handle:
		- Windows: `HWND` of the main window
		- Linux: `X11::Window*` of the main window
		- MacOS: `NSWindow*` of the main window (not yet implemented)
		- Android: `jObject` the main android activity (not yet implemented)
		*/
		windowHandle = 2,
		/**
		Window view:
		- Windows: `HDC` of the main window drawing context
		- MacOS: `NSView*` of the main windows view (not yet implemented)
		*/
		windowView = 3,
		/**
		OpenGL Context:
		- Windows: `HGLRC`
		- Linux: `X11::GLXContext`
		- MacOS: `NSOpenGLContext*` (not yet implemented)
		*/
		openglContext = 4,
	}
	/// 
	enum Month : int
	{
		/**
		January.
		*/
		monthJanuary = 1,
		/**
		February.
		*/
		monthFebruary = 2,
		/**
		March.
		*/
		monthMarch = 3,
		/**
		April.
		*/
		monthApril = 4,
		/**
		May.
		*/
		monthMay = 5,
		/**
		June.
		*/
		monthJune = 6,
		/**
		July.
		*/
		monthJuly = 7,
		/**
		August.
		*/
		monthAugust = 8,
		/**
		September.
		*/
		monthSeptember = 9,
		/**
		October.
		*/
		monthOctober = 10,
		/**
		November.
		*/
		monthNovember = 11,
		/**
		December.
		*/
		monthDecember = 12,
	}
	/// 
	enum Weekday : int
	{
		/**
		Sunday.
		*/
		daySunday = 0,
		/**
		Monday.
		*/
		dayMonday = 1,
		/**
		Tuesday.
		*/
		dayTuesday = 2,
		/**
		Wednesday.
		*/
		dayWednesday = 3,
		/**
		Thursday.
		*/
		dayThursday = 4,
		/**
		Friday.
		*/
		dayFriday = 5,
		/**
		Saturday.
		*/
		daySaturday = 6,
	}
	/// 
	enum Constants : int
	{
		videoDriverGles3 = 0,
		powerstateUnknown = 0,
		screenOrientationLandscape = 0,
		systemDirDesktop = 0,
		applicationHandle = 0,
		daySunday = 0,
		screenOrientationPortrait = 1,
		videoDriverGles2 = 1,
		systemDirDcim = 1,
		monthJanuary = 1,
		dayMonday = 1,
		powerstateOnBattery = 1,
		displayHandle = 1,
		powerstateNoBattery = 2,
		monthFebruary = 2,
		windowHandle = 2,
		dayTuesday = 2,
		screenOrientationReverseLandscape = 2,
		systemDirDocuments = 2,
		windowView = 3,
		screenOrientationReversePortrait = 3,
		monthMarch = 3,
		powerstateCharging = 3,
		systemDirDownloads = 3,
		dayWednesday = 3,
		screenOrientationSensorLandscape = 4,
		openglContext = 4,
		powerstateCharged = 4,
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
	/**
	Displays a modal dialog box using the host OS' facilities. Execution is blocked until the dialog is closed.
	*/
	void alert(in String text, in String title = gs!"Alert!")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.alert, _godot_object, text, title);
	}
	/**
	Returns `true` if the host OS allows drawing.
	*/
	bool canDraw() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canDraw, _godot_object);
	}
	/**
	Returns `true` if the current host platform is using multiple threads.
	*/
	bool canUseThreads() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canUseThreads, _godot_object);
	}
	/**
	Centers the window on the screen if in windowed mode.
	*/
	void centerWindow()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.centerWindow, _godot_object);
	}
	/**
	Shuts down system MIDI driver.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	void closeMidiInputs()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.closeMidiInputs, _godot_object);
	}
	/**
	Delay execution of the current thread by `msec` milliseconds. `msec` must be greater than or equal to `0`. Otherwise, $(D delayMsec) will do nothing and will print an error message.
	*/
	void delayMsec(in long msec) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.delayMsec, _godot_object, msec);
	}
	/**
	Delay execution of the current thread by `usec` microseconds. `usec` must be greater than or equal to `0`. Otherwise, $(D delayUsec) will do nothing and will print an error message.
	*/
	void delayUsec(in long usec) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.delayUsec, _godot_object, usec);
	}
	/**
	Dumps the memory allocation ringlist to a file (only works in debug).
	Entry format per line: "Address - Size - Description".
	*/
	void dumpMemoryToFile(in String file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.dumpMemoryToFile, _godot_object, file);
	}
	/**
	Dumps all used resources to file (only works in debug).
	Entry format per line: "Resource Type : Resource Location".
	At the end of the file is a statistic of all used Resource Types.
	*/
	void dumpResourcesToFile(in String file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.dumpResourcesToFile, _godot_object, file);
	}
	/**
	Execute the file at the given path with the arguments passed as an array of strings. Platform path resolution will take place. The resolved file must exist and be executable.
	The arguments are used in the given order and separated by a space, so `OS.execute("ping", $(D "-w", "3", "godotengine.org"), false)` will resolve to `ping -w 3 godotengine.org` in the system's shell.
	This method has slightly different behavior based on whether the `blocking` mode is enabled.
	If `blocking` is `true`, the Godot thread will pause its execution while waiting for the process to terminate. The shell output of the process will be written to the `output` array as a single string. When the process terminates, the Godot thread will resume execution.
	If `blocking` is `false`, the Godot thread will continue while the new process runs. It is not possible to retrieve the shell output in non-blocking mode, so `output` will be empty.
	The return value also depends on the blocking mode. When blocking, the method will return an exit code of the process. When non-blocking, the method returns a process ID, which you can use to monitor the process (and potentially terminate it with $(D kill)). If the process forking (non-blocking) or opening (blocking) fails, the method will return `-1` or another exit code.
	Example of blocking mode and retrieving the shell output:
	
	
	var output = []
	var exit_code = OS.execute("ls", $(D "-l", "/tmp"), true, output)
	
	
	Example of non-blocking mode, running another instance of the project and storing its process ID:
	
	
	var pid = OS.execute(OS.get_executable_path(), [], false)
	
	
	If you wish to access a shell built-in or perform a composite command, a platform-specific shell can be invoked. For example:
	
	
	OS.execute("CMD.exe", $(D "/C", "cd %TEMP% &amp;&amp; dir"), true, output)
	
	
	$(B Note:) This method is implemented on Android, iOS, Linux, macOS and Windows.
	*/
	long execute(in String path, in PoolStringArray arguments, in bool blocking = true, in Array output = Array.make(), in bool read_stderr = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.execute, _godot_object, path, arguments, blocking, output, read_stderr);
	}
	/**
	Returns the scancode of the given string (e.g. "Escape").
	*/
	long findScancodeFromString(in String string) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.findScancodeFromString, _godot_object, string);
	}
	/**
	Returns the total number of available audio drivers.
	*/
	long getAudioDriverCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAudioDriverCount, _godot_object);
	}
	/**
	Returns the audio driver name for the given index.
	*/
	String getAudioDriverName(in long driver) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAudioDriverName, _godot_object, driver);
	}
	/**
	
	*/
	bool getBorderlessWindow() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getBorderlessWindow, _godot_object);
	}
	/**
	
	*/
	String getClipboard() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getClipboard, _godot_object);
	}
	/**
	Returns the command-line arguments passed to the engine.
	Command-line arguments can be written in any form, including both `--key value` and `--key=value` forms so they can be properly parsed, as long as custom command-line arguments do not conflict with engine arguments.
	You can also incorporate environment variables using the $(D getEnvironment) method.
	You can set `editor/main_run_args` in the Project Settings to define command-line arguments to be passed by the editor when running the project.
	Here's a minimal example on how to parse command-line arguments into a dictionary using the `--key=value` form for arguments:
	
	
	var arguments = {}
	for argument in OS.get_cmdline_args():
	    if argument.find("=") &gt; -1:
	        var key_value = argument.split("=")
	        arguments$(D key_value[0).lstrip("--")] = key_value$(D 1)
	
	
	*/
	PoolStringArray getCmdlineArgs()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getCmdlineArgs, _godot_object);
	}
	/**
	Returns an array of MIDI device names.
	The returned array will be empty if the system MIDI driver has not previously been initialised with $(D openMidiInputs).
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	PoolStringArray getConnectedMidiInputs()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getConnectedMidiInputs, _godot_object);
	}
	/**
	
	*/
	long getCurrentScreen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCurrentScreen, _godot_object);
	}
	/**
	
	*/
	String getCurrentTabletDriver() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCurrentTabletDriver, _godot_object);
	}
	/**
	Returns the currently used video driver, using one of the values from $(D videodriver).
	*/
	OS.VideoDriver getCurrentVideoDriver() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OS.VideoDriver)(GDNativeClassBinding.getCurrentVideoDriver, _godot_object);
	}
	/**
	Returns current date as a dictionary of keys: `year`, `month`, `day`, `weekday`, `dst` (Daylight Savings Time).
	*/
	Dictionary getDate(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDate, _godot_object, utc);
	}
	/**
	Returns current datetime as a dictionary of keys: `year`, `month`, `day`, `weekday`, `dst` (Daylight Savings Time), `hour`, `minute`, `second`.
	*/
	Dictionary getDatetime(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDatetime, _godot_object, utc);
	}
	/**
	Gets a dictionary of time values corresponding to the given UNIX epoch time (in seconds).
	The returned Dictionary's values will be the same as $(D getDatetime), with the exception of Daylight Savings Time as it cannot be determined from the epoch.
	*/
	Dictionary getDatetimeFromUnixTime(in long unix_time_val) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDatetimeFromUnixTime, _godot_object, unix_time_val);
	}
	/**
	Returns the total amount of dynamic memory used (only works in debug).
	*/
	long getDynamicMemoryUsage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDynamicMemoryUsage, _godot_object);
	}
	/**
	Returns the value of an environment variable. Returns an empty string if the environment variable doesn't exist.
	$(B Note:) Double-check the casing of `variable`. Environment variable names are case-sensitive on all platforms except Windows.
	*/
	String getEnvironment(in String variable) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getEnvironment, _godot_object, variable);
	}
	/**
	Returns the path to the current engine executable.
	*/
	String getExecutablePath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getExecutablePath, _godot_object);
	}
	/**
	
	*/
	long getExitCode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getExitCode, _godot_object);
	}
	/**
	With this function, you can get the list of dangerous permissions that have been granted to the Android application.
	$(B Note:) This method is implemented on Android.
	*/
	PoolStringArray getGrantedPermissions() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getGrantedPermissions, _godot_object);
	}
	/**
	Returns the IME cursor position (the currently-edited portion of the string) relative to the characters in the composition string.
	$(D constant MainLoop.NOTIFICATION_OS_IME_UPDATE) is sent to the application to notify it of changes to the IME cursor position.
	$(B Note:) This method is implemented on macOS.
	*/
	Vector2 getImeSelection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getImeSelection, _godot_object);
	}
	/**
	Returns the IME intermediate composition string.
	$(D constant MainLoop.NOTIFICATION_OS_IME_UPDATE) is sent to the application to notify it of changes to the IME composition string.
	$(B Note:) This method is implemented on macOS.
	*/
	String getImeText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getImeText, _godot_object);
	}
	/**
	Returns the current latin keyboard variant as a String.
	Possible return values are: `"QWERTY"`, `"AZERTY"`, `"QZERTY"`, `"DVORAK"`, `"NEO"`, `"COLEMAK"` or `"ERROR"`.
	$(B Note:) This method is implemented on Linux, macOS and Windows. Returns `"QWERTY"` on unsupported platforms.
	*/
	String getLatinKeyboardVariant() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLatinKeyboardVariant, _godot_object);
	}
	/**
	Returns the host OS locale.
	*/
	String getLocale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLocale, _godot_object);
	}
	/**
	
	*/
	long getLowProcessorUsageModeSleepUsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLowProcessorUsageModeSleepUsec, _godot_object);
	}
	/**
	
	*/
	Vector2 getMaxWindowSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMaxWindowSize, _godot_object);
	}
	/**
	
	*/
	Vector2 getMinWindowSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMinWindowSize, _godot_object);
	}
	/**
	Returns the model name of the current device.
	$(B Note:) This method is implemented on Android and iOS. Returns `"GenericDevice"` on unsupported platforms.
	*/
	String getModelName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getModelName, _godot_object);
	}
	/**
	Returns the name of the host OS. Possible values are: `"Android"`, `"iOS"`, `"HTML5"`, `"OSX"`, `"Server"`, `"Windows"`, `"UWP"`, `"X11"`.
	*/
	String getName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getName, _godot_object);
	}
	/**
	Returns internal structure pointers for use in GDNative plugins.
	$(B Note:) This method is implemented on Linux and Windows (other OSs will soon be supported).
	*/
	long getNativeHandle(in long handle_type)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNativeHandle, _godot_object, handle_type);
	}
	/**
	Returns the amount of battery left in the device as a percentage. Returns `-1` if power state is unknown.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	long getPowerPercentLeft()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPowerPercentLeft, _godot_object);
	}
	/**
	Returns an estimate of the time left in seconds before the device runs out of battery. Returns `-1` if power state is unknown.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	long getPowerSecondsLeft()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPowerSecondsLeft, _godot_object);
	}
	/**
	Returns the current state of the device regarding battery and power. See $(D powerstate) constants.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	OS.PowerState getPowerState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OS.PowerState)(GDNativeClassBinding.getPowerState, _godot_object);
	}
	/**
	Returns the project's process ID.
	$(B Note:) This method is implemented on Android, iOS, Linux, macOS and Windows.
	*/
	long getProcessId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getProcessId, _godot_object);
	}
	/**
	Returns the number of threads available on the host machine.
	*/
	long getProcessorCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getProcessorCount, _godot_object);
	}
	/**
	Returns the window size including decorations like window borders.
	*/
	Vector2 getRealWindowSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getRealWindowSize, _godot_object);
	}
	/**
	Returns the given scancode as a string (e.g. Return values: `"Escape"`, `"Shift+Escape"`).
	See also $(D InputEventKey.scancode) and $(D InputEventKey.getScancodeWithModifiers).
	*/
	String getScancodeString(in long code) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getScancodeString, _godot_object, code);
	}
	/**
	Returns the number of displays attached to the host machine.
	*/
	long getScreenCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getScreenCount, _godot_object);
	}
	/**
	Returns the dots per inch density of the specified screen. If `screen` is $(D /code)-1$(D /code) (the default value), the current screen will be used.
	$(B Note:) On macOS, returned value is inaccurate if fractional display scaling mode is used.
	$(B Note:) On Android devices, the actual screen densities are grouped into six generalized densities:
	
	
	   ldpi - 120 dpi
	   mdpi - 160 dpi
	   hdpi - 240 dpi
	  xhdpi - 320 dpi
	 xxhdpi - 480 dpi
	xxxhdpi - 640 dpi
	
	
	$(B Note:) This method is implemented on Android, Linux, macOS and Windows. Returns `72` on unsupported platforms.
	*/
	long getScreenDpi(in long screen = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getScreenDpi, _godot_object, screen);
	}
	/**
	Return the greatest scale factor of all screens.
	$(B Note:) On macOS returned value is `2.0` if there is at least one hiDPI (Retina) screen in the system, and `1.0` in all other cases.
	$(B Note:) This method is implemented on macOS.
	*/
	double getScreenMaxScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getScreenMaxScale, _godot_object);
	}
	/**
	
	*/
	OS.ScreenOrientation getScreenOrientation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OS.ScreenOrientation)(GDNativeClassBinding.getScreenOrientation, _godot_object);
	}
	/**
	Returns the position of the specified screen by index. If `screen` is $(D /code)-1$(D /code) (the default value), the current screen will be used.
	*/
	Vector2 getScreenPosition(in long screen = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getScreenPosition, _godot_object, screen);
	}
	/**
	Return the scale factor of the specified screen by index. If `screen` is $(D /code)-1$(D /code) (the default value), the current screen will be used.
	$(B Note:) On macOS returned value is `2.0` for hiDPI (Retina) screen, and `1.0` for all other cases.
	$(B Note:) This method is implemented on macOS.
	*/
	double getScreenScale(in long screen = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getScreenScale, _godot_object, screen);
	}
	/**
	Returns the dimensions in pixels of the specified screen. If `screen` is $(D /code)-1$(D /code) (the default value), the current screen will be used.
	*/
	Vector2 getScreenSize(in long screen = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getScreenSize, _godot_object, screen);
	}
	/**
	Returns the amount of time in milliseconds it took for the boot logo to appear.
	*/
	long getSplashTickMsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSplashTickMsec, _godot_object);
	}
	/**
	Returns the maximum amount of static memory used (only works in debug).
	*/
	long getStaticMemoryPeakUsage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getStaticMemoryPeakUsage, _godot_object);
	}
	/**
	Returns the amount of static memory being used by the program in bytes.
	*/
	long getStaticMemoryUsage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getStaticMemoryUsage, _godot_object);
	}
	/**
	Returns the actual path to commonly used folders across different platforms. Available locations are specified in $(D systemdir).
	$(B Note:) This method is implemented on Android, Linux, macOS and Windows.
	$(B Note:) Shared storage is implemented on Android and allows to differentiate between app specific and shared directories. Shared directories have additional restrictions on Android.
	*/
	String getSystemDir(in long dir) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSystemDir, _godot_object, dir);
	}
	/**
	Returns the epoch time of the operating system in milliseconds.
	*/
	long getSystemTimeMsecs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSystemTimeMsecs, _godot_object);
	}
	/**
	Returns the epoch time of the operating system in seconds.
	*/
	long getSystemTimeSecs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSystemTimeSecs, _godot_object);
	}
	/**
	Returns the total number of available tablet drivers.
	$(B Note:) This method is implemented on Windows.
	*/
	long getTabletDriverCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTabletDriverCount, _godot_object);
	}
	/**
	Returns the tablet driver name for the given index.
	$(B Note:) This method is implemented on Windows.
	*/
	String getTabletDriverName(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTabletDriverName, _godot_object, idx);
	}
	/**
	Returns the ID of the current thread. This can be used in logs to ease debugging of multi-threaded applications.
	$(B Note:) Thread IDs are not deterministic and may be reused across application restarts.
	*/
	long getThreadCallerId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getThreadCallerId, _godot_object);
	}
	/**
	Returns the amount of time passed in milliseconds since the engine started.
	*/
	long getTicksMsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTicksMsec, _godot_object);
	}
	/**
	Returns the amount of time passed in microseconds since the engine started.
	*/
	long getTicksUsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTicksUsec, _godot_object);
	}
	/**
	Returns current time as a dictionary of keys: hour, minute, second.
	*/
	Dictionary getTime(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getTime, _godot_object, utc);
	}
	/**
	Returns the current time zone as a dictionary with the keys: bias and name.
	*/
	Dictionary getTimeZoneInfo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getTimeZoneInfo, _godot_object);
	}
	/**
	Returns a string that is unique to the device.
	$(B Note:) This string may change without notice if the user reinstalls/upgrades their operating system or changes their hardware. This means it should generally not be used to encrypt persistent data as the data saved before an unexpected ID change would become inaccessible. The returned string may also be falsified using external programs, so do not rely on the string returned by $(D getUniqueId) for security purposes.
	$(B Note:) Returns an empty string on HTML5 and UWP, as this method isn't implemented on those platforms yet.
	*/
	String getUniqueId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getUniqueId, _godot_object);
	}
	/**
	Returns the current UNIX epoch timestamp in seconds.
	$(B Important:) This is the system clock that the user can manually set. $(B Never use) this method for precise time calculation since its results are also subject to automatic adjustments by the operating system. $(B Always use) $(D getTicksUsec) or $(D getTicksMsec) for precise time calculation instead, since they are guaranteed to be monotonic (i.e. never decrease).
	*/
	long getUnixTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getUnixTime, _godot_object);
	}
	/**
	Gets an epoch time value from a dictionary of time values.
	`datetime` must be populated with the following keys: `year`, `month`, `day`, `hour`, `minute`, `second`.
	If the dictionary is empty `0` is returned. If some keys are omitted, they default to the equivalent values for the UNIX epoch timestamp 0 (1970-01-01 at 00:00:00 UTC).
	You can pass the output from $(D getDatetimeFromUnixTime) directly into this function. Daylight Savings Time (`dst`), if present, is ignored.
	*/
	long getUnixTimeFromDatetime(in Dictionary datetime) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getUnixTimeFromDatetime, _godot_object, datetime);
	}
	/**
	Returns the absolute directory path where user data is written (`user://`).
	On Linux, this is `~/.local/share/godot/app_userdata/$(D project_name)`, or `~/.local/share/$(D custom_name)` if `use_custom_user_dir` is set.
	On macOS, this is `~/Library/Application Support/Godot/app_userdata/$(D project_name)`, or `~/Library/Application Support/$(D custom_name)` if `use_custom_user_dir` is set.
	On Windows, this is `%APPDATA%\Godot\app_userdata\$(D project_name)`, or `%APPDATA%\$(D custom_name)` if `use_custom_user_dir` is set. `%APPDATA%` expands to `%USERPROFILE%\AppData\Roaming`.
	If the project name is empty, `user://` falls back to `res://`.
	*/
	String getUserDataDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getUserDataDir, _godot_object);
	}
	/**
	Returns the number of video drivers supported on the current platform.
	*/
	long getVideoDriverCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVideoDriverCount, _godot_object);
	}
	/**
	Returns the name of the video driver matching the given `driver` index. This index is a value from $(D videodriver), and you can use $(D getCurrentVideoDriver) to get the current backend's index.
	*/
	String getVideoDriverName(in long driver) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getVideoDriverName, _godot_object, driver);
	}
	/**
	Returns the on-screen keyboard's height in pixels. Returns 0 if there is no keyboard or if it is currently hidden.
	*/
	long getVirtualKeyboardHeight()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVirtualKeyboardHeight, _godot_object);
	}
	/**
	
	*/
	bool getWindowPerPixelTransparencyEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getWindowPerPixelTransparencyEnabled, _godot_object);
	}
	/**
	
	*/
	Vector2 getWindowPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getWindowPosition, _godot_object);
	}
	/**
	Returns unobscured area of the window where interactive controls should be rendered.
	*/
	Rect2 getWindowSafeArea() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getWindowSafeArea, _godot_object);
	}
	/**
	
	*/
	Vector2 getWindowSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getWindowSize, _godot_object);
	}
	/**
	Add a new item with text "label" to global menu. Use "_dock" menu to add item to the macOS dock icon menu.
	$(B Note:) This method is implemented on macOS.
	*/
	void globalMenuAddItem(VariantArg2, VariantArg3)(in String menu, in String label, in VariantArg2 id, in VariantArg3 meta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalMenuAddItem, _godot_object, menu, label, id, meta);
	}
	/**
	Add a separator between items. Separators also occupy an index.
	$(B Note:) This method is implemented on macOS.
	*/
	void globalMenuAddSeparator(in String menu)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalMenuAddSeparator, _godot_object, menu);
	}
	/**
	Clear the global menu, in effect removing all items.
	$(B Note:) This method is implemented on macOS.
	*/
	void globalMenuClear(in String menu)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalMenuClear, _godot_object, menu);
	}
	/**
	Removes the item at index "idx" from the global menu. Note that the indexes of items after the removed item are going to be shifted by one.
	$(B Note:) This method is implemented on macOS.
	*/
	void globalMenuRemoveItem(in String menu, in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalMenuRemoveItem, _godot_object, menu, idx);
	}
	/**
	Returns `true` if the environment variable with the name `variable` exists.
	$(B Note:) Double-check the casing of `variable`. Environment variable names are case-sensitive on all platforms except Windows.
	*/
	bool hasEnvironment(in String variable) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasEnvironment, _godot_object, variable);
	}
	/**
	Returns `true` if the feature for the given feature tag is supported in the currently running instance, depending on the platform, build etc. Can be used to check whether you're currently running a debug build, on a certain platform or arch, etc. Refer to the $(D url=https://docs.godotengine.org/en/3.3/getting_started/workflow/export/feature_tags.html)Feature Tags$(D /url) documentation for more details.
	$(B Note:) Tag names are case-sensitive.
	*/
	bool hasFeature(in String tag_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFeature, _godot_object, tag_name);
	}
	/**
	Returns `true` if the device has a touchscreen or emulates one.
	*/
	bool hasTouchscreenUiHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasTouchscreenUiHint, _godot_object);
	}
	/**
	Returns `true` if the platform has a virtual keyboard, `false` otherwise.
	*/
	bool hasVirtualKeyboard() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasVirtualKeyboard, _godot_object);
	}
	/**
	Hides the virtual keyboard if it is shown, does nothing otherwise.
	*/
	void hideVirtualKeyboard()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.hideVirtualKeyboard, _godot_object);
	}
	/**
	Returns `true` if the Godot binary used to run the project is a $(I debug) export template, or when running in the editor.
	Returns `false` if the Godot binary used to run the project is a $(I release) export template.
	To check whether the Godot binary used to run the project is an export template (debug or release), use `OS.has_feature("standalone")` instead.
	*/
	bool isDebugBuild() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDebugBuild, _godot_object);
	}
	/**
	
	*/
	bool isInLowProcessorUsageMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInLowProcessorUsageMode, _godot_object);
	}
	/**
	
	*/
	bool isKeepScreenOn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isKeepScreenOn, _godot_object);
	}
	/**
	Returns `true` if the $(B OK) button should appear on the left and $(B Cancel) on the right.
	*/
	bool isOkLeftAndCancelRight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOkLeftAndCancelRight, _godot_object);
	}
	/**
	Returns `true` if the input scancode corresponds to a Unicode character.
	*/
	bool isScancodeUnicode(in long code) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isScancodeUnicode, _godot_object, code);
	}
	/**
	Returns `true` if the engine was executed with `-v` (verbose stdout).
	*/
	bool isStdoutVerbose() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isStdoutVerbose, _godot_object);
	}
	/**
	If `true`, the `user://` file system is persistent, so that its state is the same after a player quits and starts the game again. Relevant to the HTML5 platform, where this persistence may be unavailable.
	*/
	bool isUserfsPersistent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUserfsPersistent, _godot_object);
	}
	/**
	
	*/
	bool isVsyncEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVsyncEnabled, _godot_object);
	}
	/**
	
	*/
	bool isVsyncViaCompositorEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVsyncViaCompositorEnabled, _godot_object);
	}
	/**
	Returns `true` if the window should always be on top of other windows.
	*/
	bool isWindowAlwaysOnTop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isWindowAlwaysOnTop, _godot_object);
	}
	/**
	Returns `true` if the window is currently focused.
	$(B Note:) Only implemented on desktop platforms. On other platforms, it will always return `true`.
	*/
	bool isWindowFocused() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isWindowFocused, _godot_object);
	}
	/**
	
	*/
	bool isWindowFullscreen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isWindowFullscreen, _godot_object);
	}
	/**
	
	*/
	bool isWindowMaximized() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isWindowMaximized, _godot_object);
	}
	/**
	
	*/
	bool isWindowMinimized() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isWindowMinimized, _godot_object);
	}
	/**
	
	*/
	bool isWindowResizable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isWindowResizable, _godot_object);
	}
	/**
	Returns active keyboard layout index.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	long keyboardGetCurrentLayout() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.keyboardGetCurrentLayout, _godot_object);
	}
	/**
	Returns the number of keyboard layouts.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	long keyboardGetLayoutCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.keyboardGetLayoutCount, _godot_object);
	}
	/**
	Returns the ISO-639/BCP-47 language code of the keyboard layout at position `index`.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	String keyboardGetLayoutLanguage(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.keyboardGetLayoutLanguage, _godot_object, index);
	}
	/**
	Returns the localized name of the keyboard layout at position `index`.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	String keyboardGetLayoutName(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.keyboardGetLayoutName, _godot_object, index);
	}
	/**
	Sets active keyboard layout.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	void keyboardSetCurrentLayout(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.keyboardSetCurrentLayout, _godot_object, index);
	}
	/**
	Kill (terminate) the process identified by the given process ID (`pid`), e.g. the one returned by $(D execute) in non-blocking mode.
	$(B Note:) This method can also be used to kill processes that were not spawned by the game.
	$(B Note:) This method is implemented on Android, iOS, Linux, macOS and Windows.
	*/
	GodotError kill(in long pid)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.kill, _godot_object, pid);
	}
	/**
	Moves the window to the front.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	void moveWindowToForeground()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.moveWindowToForeground, _godot_object);
	}
	/**
	Returns `true` if native video is playing.
	$(B Note:) This method is implemented on Android and iOS.
	*/
	bool nativeVideoIsPlaying()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.nativeVideoIsPlaying, _godot_object);
	}
	/**
	Pauses native video playback.
	$(B Note:) This method is implemented on Android and iOS.
	*/
	void nativeVideoPause()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.nativeVideoPause, _godot_object);
	}
	/**
	Plays native video from the specified path, at the given volume and with audio and subtitle tracks.
	$(B Note:) This method is implemented on Android and iOS, and the current Android implementation does not support the `volume`, `audio_track` and `subtitle_track` options.
	*/
	GodotError nativeVideoPlay(in String path, in double volume, in String audio_track, in String subtitle_track)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.nativeVideoPlay, _godot_object, path, volume, audio_track, subtitle_track);
	}
	/**
	Stops native video playback.
	$(B Note:) This method is implemented on Android and iOS.
	*/
	void nativeVideoStop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.nativeVideoStop, _godot_object);
	}
	/**
	Resumes native video playback.
	$(B Note:) This method is implemented on Android and iOS.
	*/
	void nativeVideoUnpause()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.nativeVideoUnpause, _godot_object);
	}
	/**
	Initialises the singleton for the system MIDI driver.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	void openMidiInputs()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.openMidiInputs, _godot_object);
	}
	/**
	Shows all resources in the game. Optionally, the list can be written to a file by specifying a file path in `tofile`.
	*/
	void printAllResources(in String tofile = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.printAllResources, _godot_object, tofile);
	}
	/**
	Shows the list of loaded textures sorted by size in memory.
	*/
	void printAllTexturesBySize()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.printAllTexturesBySize, _godot_object);
	}
	/**
	Shows the number of resources loaded by the game of the given types.
	*/
	void printResourcesByType(in PoolStringArray types)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.printResourcesByType, _godot_object, types);
	}
	/**
	Shows all resources currently used by the game.
	*/
	void printResourcesInUse(in bool _short = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.printResourcesInUse, _godot_object, _short);
	}
	/**
	Request the user attention to the window. It'll flash the taskbar button on Windows or bounce the dock icon on OSX.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	void requestAttention()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.requestAttention, _godot_object);
	}
	/**
	At the moment this function is only used by `AudioDriverOpenSL` to request permission for `RECORD_AUDIO` on Android.
	*/
	bool requestPermission(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.requestPermission, _godot_object, name);
	}
	/**
	With this function, you can request dangerous permissions since normal permissions are automatically granted at install time in Android applications.
	$(B Note:) This method is implemented on Android.
	*/
	bool requestPermissions()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.requestPermissions, _godot_object);
	}
	/**
	
	*/
	void setBorderlessWindow(in bool borderless)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBorderlessWindow, _godot_object, borderless);
	}
	/**
	
	*/
	void setClipboard(in String clipboard)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClipboard, _godot_object, clipboard);
	}
	/**
	
	*/
	void setCurrentScreen(in long screen)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrentScreen, _godot_object, screen);
	}
	/**
	
	*/
	void setCurrentTabletDriver(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrentTabletDriver, _godot_object, name);
	}
	/**
	Sets the value of the environment variable `variable` to `value`. The environment variable will be set for the Godot process and any process executed with $(D execute) after running $(D setEnvironment). The environment variable will $(I not) persist to processes run after the Godot process was terminated.
	$(B Note:) Double-check the casing of `variable`. Environment variable names are case-sensitive on all platforms except Windows.
	*/
	bool setEnvironment(in String variable, in String value) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.setEnvironment, _godot_object, variable, value);
	}
	/**
	
	*/
	void setExitCode(in long code)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExitCode, _godot_object, code);
	}
	/**
	Sets the game's icon using an $(D Image) resource.
	The same image is used for window caption, taskbar/dock and window selection dialog. Image is scaled as needed.
	$(B Note:) This method is implemented on HTML5, Linux, macOS and Windows.
	*/
	void setIcon(Image icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIcon, _godot_object, icon);
	}
	/**
	Sets whether IME input mode should be enabled.
	If active IME handles key events before the application and creates an composition string and suggestion list.
	Application can retrieve the composition status by using $(D getImeSelection) and $(D getImeText) functions.
	Completed composition string is committed when input is finished.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	void setImeActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setImeActive, _godot_object, active);
	}
	/**
	Sets position of IME suggestion list popup (in window coordinates).
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	void setImePosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setImePosition, _godot_object, position);
	}
	/**
	
	*/
	void setKeepScreenOn(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setKeepScreenOn, _godot_object, enabled);
	}
	/**
	
	*/
	void setLowProcessorUsageMode(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLowProcessorUsageMode, _godot_object, enable);
	}
	/**
	
	*/
	void setLowProcessorUsageModeSleepUsec(in long usec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLowProcessorUsageModeSleepUsec, _godot_object, usec);
	}
	/**
	
	*/
	void setMaxWindowSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxWindowSize, _godot_object, size);
	}
	/**
	
	*/
	void setMinWindowSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMinWindowSize, _godot_object, size);
	}
	/**
	Sets the game's icon using a multi-size platform-specific icon file (`*.ico` on Windows and `*.icns` on macOS).
	Appropriate size sub-icons are used for window caption, taskbar/dock and window selection dialog.
	$(B Note:) This method is implemented on macOS and Windows.
	*/
	void setNativeIcon(in String filename)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNativeIcon, _godot_object, filename);
	}
	/**
	
	*/
	void setScreenOrientation(in long orientation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScreenOrientation, _godot_object, orientation);
	}
	/**
	Sets the name of the current thread.
	*/
	GodotError setThreadName(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.setThreadName, _godot_object, name);
	}
	/**
	Enables backup saves if `enabled` is `true`.
	*/
	void setUseFileAccessSaveAndSwap(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseFileAccessSaveAndSwap, _godot_object, enabled);
	}
	/**
	
	*/
	void setUseVsync(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseVsync, _godot_object, enable);
	}
	/**
	
	*/
	void setVsyncViaCompositor(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVsyncViaCompositor, _godot_object, enable);
	}
	/**
	Sets whether the window should always be on top.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	void setWindowAlwaysOnTop(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWindowAlwaysOnTop, _godot_object, enabled);
	}
	/**
	
	*/
	void setWindowFullscreen(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWindowFullscreen, _godot_object, enabled);
	}
	/**
	
	*/
	void setWindowMaximized(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWindowMaximized, _godot_object, enabled);
	}
	/**
	
	*/
	void setWindowMinimized(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWindowMinimized, _godot_object, enabled);
	}
	/**
	Sets a polygonal region of the window which accepts mouse events. Mouse events outside the region will be passed through.
	Passing an empty array will disable passthrough support (all mouse events will be intercepted by the window, which is the default behavior).
	
	
	# Set region, using Path2D node.
	OS.set_window_mouse_passthrough($Path2D.curve.get_baked_points())
	
	# Set region, using Polygon2D node.
	OS.set_window_mouse_passthrough($Polygon2D.polygon)
	
	# Reset region to default.
	OS.set_window_mouse_passthrough([])
	
	
	$(B Note:) On Windows, the portion of a window that lies outside the region is not drawn, while on Linux and macOS it is.
	$(B Note:) This method is implemented on Linux, macOS and Windows.
	*/
	void setWindowMousePassthrough(in PoolVector2Array region)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWindowMousePassthrough, _godot_object, region);
	}
	/**
	
	*/
	void setWindowPerPixelTransparencyEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWindowPerPixelTransparencyEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setWindowPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWindowPosition, _godot_object, position);
	}
	/**
	
	*/
	void setWindowResizable(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWindowResizable, _godot_object, enabled);
	}
	/**
	
	*/
	void setWindowSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWindowSize, _godot_object, size);
	}
	/**
	Sets the window title to the specified string.
	$(B Note:) This should be used sporadically. Don't set this every frame, as that will negatively affect performance on some window managers.
	$(B Note:) This method is implemented on HTML5, Linux, macOS and Windows.
	*/
	void setWindowTitle(in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWindowTitle, _godot_object, title);
	}
	/**
	Requests the OS to open a resource with the most appropriate program. For example:
	- `OS.shell_open("C:\\Users\name\Downloads")` on Windows opens the file explorer at the user's Downloads folder.
	- `OS.shell_open("https://godotengine.org")` opens the default web browser on the official Godot website.
	- `OS.shell_open("mailto:example@example.com")` opens the default email client with the "To" field set to `example@example.com`. See $(D url=https://blog.escapecreative.com/customizing-mailto-links/)Customizing `mailto:` Links$(D /url) for a list of fields that can be added.
	Use $(D ProjectSettings.globalizePath) to convert a `res://` or `user://` path into a system path for use with this method.
	$(B Note:) This method is implemented on Android, iOS, HTML5, Linux, macOS and Windows.
	*/
	GodotError shellOpen(in String uri)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.shellOpen, _godot_object, uri);
	}
	/**
	Shows the virtual keyboard if the platform has one.
	The `existing_text` parameter is useful for implementing your own $(D LineEdit) or $(D TextEdit), as it tells the virtual keyboard what text has already been typed (the virtual keyboard uses it for auto-correct and predictions).
	The `multiline` parameter needs to be set to `true` to be able to enter multiple lines of text, as in $(D TextEdit).
	$(B Note:) This method is implemented on Android, iOS and UWP.
	*/
	void showVirtualKeyboard(in String existing_text = gs!"", in bool multiline = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.showVirtualKeyboard, _godot_object, existing_text, multiline);
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
	The exit code passed to the OS when the main loop exits. By convention, an exit code of `0` indicates success whereas a non-zero exit code indicates an error. For portability reasons, the exit code should be set between 0 and 125 (inclusive).
	$(B Note:) This value will be ignored if using $(D SceneTree.quit) with an `exit_code` argument passed.
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
	If `true`, the engine tries to keep the screen on while the game is running. Useful on mobile.
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
	If `true`, the engine optimizes for low processor usage by only refreshing the screen if needed. Can improve battery consumption on mobile.
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
	The amount of sleeping between frames when the low-processor usage mode is enabled (in microseconds). Higher values will result in lower CPU usage.
	*/
	@property long lowProcessorUsageModeSleepUsec()
	{
		return getLowProcessorUsageModeSleepUsec();
	}
	/// ditto
	@property void lowProcessorUsageModeSleepUsec(long v)
	{
		setLowProcessorUsageModeSleepUsec(v);
	}
	/**
	The maximum size of the window (without counting window manager decorations). Does not affect fullscreen mode. Set to `(0, 0)` to reset to the system default value.
	*/
	@property Vector2 maxWindowSize()
	{
		return getMaxWindowSize();
	}
	/// ditto
	@property void maxWindowSize(Vector2 v)
	{
		setMaxWindowSize(v);
	}
	/**
	The minimum size of the window (without counting window manager decorations). Does not affect fullscreen mode. Set to `(0, 0)` to reset to the system default value.
	*/
	@property Vector2 minWindowSize()
	{
		return getMinWindowSize();
	}
	/// ditto
	@property void minWindowSize(Vector2 v)
	{
		setMinWindowSize(v);
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
	The current tablet driver in use.
	*/
	@property String tabletDriver()
	{
		return getCurrentTabletDriver();
	}
	/// ditto
	@property void tabletDriver(String v)
	{
		setCurrentTabletDriver(v);
	}
	/**
	If `true`, vertical synchronization (Vsync) is enabled.
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
	If `true` and `vsync_enabled` is true, the operating system's window compositor will be used for vsync when the compositor is enabled and the game is in windowed mode.
	$(B Note:) This option is experimental and meant to alleviate stutter experienced by some users. However, some users have experienced a Vsync framerate halving (e.g. from 60 FPS to 30 FPS) when using it.
	$(B Note:) This property is only implemented on Windows.
	*/
	@property bool vsyncViaCompositor()
	{
		return isVsyncViaCompositorEnabled();
	}
	/// ditto
	@property void vsyncViaCompositor(bool v)
	{
		setVsyncViaCompositor(v);
	}
	/**
	If `true`, removes the window frame.
	$(B Note:) Setting `window_borderless` to `false` disables per-pixel transparency.
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
	If `true`, the window background is transparent and window frame is removed.
	Use `get_tree().get_root().set_transparent_background(true)` to disable main viewport background rendering.
	$(B Note:) This property has no effect if $(B Project &gt; Project Settings &gt; Display &gt; Window &gt; Per-pixel transparency &gt; Allowed) setting is disabled.
	$(B Note:) This property is implemented on HTML5, Linux, macOS and Windows.
	*/
	@property bool windowPerPixelTransparencyEnabled()
	{
		return getWindowPerPixelTransparencyEnabled();
	}
	/// ditto
	@property void windowPerPixelTransparencyEnabled(bool v)
	{
		setWindowPerPixelTransparencyEnabled(v);
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
	checkClassBinding!OSSingleton();
	return OSSingleton(OSSingleton.GDNativeClassBinding._singleton);
}
