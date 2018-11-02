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
	enum string _GODOT_internal_name = "_OS";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "OS";
		@GodotName("set_clipboard") GodotMethod!(void, String) setClipboard;
		@GodotName("get_clipboard") GodotMethod!(String) getClipboard;
		@GodotName("get_video_driver_count") GodotMethod!(long) getVideoDriverCount;
		@GodotName("get_video_driver_name") GodotMethod!(String, long) getVideoDriverName;
		@GodotName("get_audio_driver_count") GodotMethod!(long) getAudioDriverCount;
		@GodotName("get_audio_driver_name") GodotMethod!(String, long) getAudioDriverName;
		@GodotName("get_connected_midi_inputs") GodotMethod!(PoolStringArray) getConnectedMidiInputs;
		@GodotName("open_midi_inputs") GodotMethod!(void) openMidiInputs;
		@GodotName("close_midi_inputs") GodotMethod!(void) closeMidiInputs;
		@GodotName("get_screen_count") GodotMethod!(long) getScreenCount;
		@GodotName("get_current_screen") GodotMethod!(long) getCurrentScreen;
		@GodotName("set_current_screen") GodotMethod!(void, long) setCurrentScreen;
		@GodotName("get_screen_position") GodotMethod!(Vector2, long) getScreenPosition;
		@GodotName("get_screen_size") GodotMethod!(Vector2, long) getScreenSize;
		@GodotName("get_screen_dpi") GodotMethod!(long, long) getScreenDpi;
		@GodotName("get_window_position") GodotMethod!(Vector2) getWindowPosition;
		@GodotName("set_window_position") GodotMethod!(void, Vector2) setWindowPosition;
		@GodotName("get_window_size") GodotMethod!(Vector2) getWindowSize;
		@GodotName("set_window_size") GodotMethod!(void, Vector2) setWindowSize;
		@GodotName("get_window_safe_area") GodotMethod!(Rect2) getWindowSafeArea;
		@GodotName("set_window_fullscreen") GodotMethod!(void, bool) setWindowFullscreen;
		@GodotName("is_window_fullscreen") GodotMethod!(bool) isWindowFullscreen;
		@GodotName("set_window_resizable") GodotMethod!(void, bool) setWindowResizable;
		@GodotName("is_window_resizable") GodotMethod!(bool) isWindowResizable;
		@GodotName("set_window_minimized") GodotMethod!(void, bool) setWindowMinimized;
		@GodotName("is_window_minimized") GodotMethod!(bool) isWindowMinimized;
		@GodotName("set_window_maximized") GodotMethod!(void, bool) setWindowMaximized;
		@GodotName("is_window_maximized") GodotMethod!(bool) isWindowMaximized;
		@GodotName("set_window_always_on_top") GodotMethod!(void, bool) setWindowAlwaysOnTop;
		@GodotName("is_window_always_on_top") GodotMethod!(bool) isWindowAlwaysOnTop;
		@GodotName("request_attention") GodotMethod!(void) requestAttention;
		@GodotName("get_real_window_size") GodotMethod!(Vector2) getRealWindowSize;
		@GodotName("center_window") GodotMethod!(void) centerWindow;
		@GodotName("set_borderless_window") GodotMethod!(void, bool) setBorderlessWindow;
		@GodotName("get_borderless_window") GodotMethod!(bool) getBorderlessWindow;
		@GodotName("get_window_per_pixel_transparency_enabled") GodotMethod!(bool) getWindowPerPixelTransparencyEnabled;
		@GodotName("set_window_per_pixel_transparency_enabled") GodotMethod!(void, bool) setWindowPerPixelTransparencyEnabled;
		@GodotName("set_ime_position") GodotMethod!(void, Vector2) setImePosition;
		@GodotName("set_screen_orientation") GodotMethod!(void, long) setScreenOrientation;
		@GodotName("get_screen_orientation") GodotMethod!(OS.ScreenOrientation) getScreenOrientation;
		@GodotName("set_keep_screen_on") GodotMethod!(void, bool) setKeepScreenOn;
		@GodotName("is_keep_screen_on") GodotMethod!(bool) isKeepScreenOn;
		@GodotName("has_touchscreen_ui_hint") GodotMethod!(bool) hasTouchscreenUiHint;
		@GodotName("set_window_title") GodotMethod!(void, String) setWindowTitle;
		@GodotName("set_low_processor_usage_mode") GodotMethod!(void, bool) setLowProcessorUsageMode;
		@GodotName("is_in_low_processor_usage_mode") GodotMethod!(bool) isInLowProcessorUsageMode;
		@GodotName("get_processor_count") GodotMethod!(long) getProcessorCount;
		@GodotName("get_executable_path") GodotMethod!(String) getExecutablePath;
		@GodotName("execute") GodotMethod!(long, String, PoolStringArray, bool, Array) execute;
		@GodotName("kill") GodotMethod!(GodotError, long) kill;
		@GodotName("shell_open") GodotMethod!(GodotError, String) shellOpen;
		@GodotName("get_process_id") GodotMethod!(long) getProcessId;
		@GodotName("get_environment") GodotMethod!(String, String) getEnvironment;
		@GodotName("has_environment") GodotMethod!(bool, String) hasEnvironment;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("get_cmdline_args") GodotMethod!(PoolStringArray) getCmdlineArgs;
		@GodotName("get_datetime") GodotMethod!(Dictionary, bool) getDatetime;
		@GodotName("get_date") GodotMethod!(Dictionary, bool) getDate;
		@GodotName("get_time") GodotMethod!(Dictionary, bool) getTime;
		@GodotName("get_time_zone_info") GodotMethod!(Dictionary) getTimeZoneInfo;
		@GodotName("get_unix_time") GodotMethod!(long) getUnixTime;
		@GodotName("get_datetime_from_unix_time") GodotMethod!(Dictionary, long) getDatetimeFromUnixTime;
		@GodotName("get_unix_time_from_datetime") GodotMethod!(long, Dictionary) getUnixTimeFromDatetime;
		@GodotName("get_system_time_secs") GodotMethod!(long) getSystemTimeSecs;
		@GodotName("set_icon") GodotMethod!(void, Image) setIcon;
		@GodotName("get_exit_code") GodotMethod!(long) getExitCode;
		@GodotName("set_exit_code") GodotMethod!(void, long) setExitCode;
		@GodotName("delay_usec") GodotMethod!(void, long) delayUsec;
		@GodotName("delay_msec") GodotMethod!(void, long) delayMsec;
		@GodotName("get_ticks_msec") GodotMethod!(long) getTicksMsec;
		@GodotName("get_ticks_usec") GodotMethod!(long) getTicksUsec;
		@GodotName("get_splash_tick_msec") GodotMethod!(long) getSplashTickMsec;
		@GodotName("get_locale") GodotMethod!(String) getLocale;
		@GodotName("get_latin_keyboard_variant") GodotMethod!(String) getLatinKeyboardVariant;
		@GodotName("get_model_name") GodotMethod!(String) getModelName;
		@GodotName("can_draw") GodotMethod!(bool) canDraw;
		@GodotName("is_userfs_persistent") GodotMethod!(bool) isUserfsPersistent;
		@GodotName("is_stdout_verbose") GodotMethod!(bool) isStdoutVerbose;
		@GodotName("can_use_threads") GodotMethod!(bool) canUseThreads;
		@GodotName("is_debug_build") GodotMethod!(bool) isDebugBuild;
		@GodotName("dump_memory_to_file") GodotMethod!(void, String) dumpMemoryToFile;
		@GodotName("dump_resources_to_file") GodotMethod!(void, String) dumpResourcesToFile;
		@GodotName("has_virtual_keyboard") GodotMethod!(bool) hasVirtualKeyboard;
		@GodotName("show_virtual_keyboard") GodotMethod!(void, String) showVirtualKeyboard;
		@GodotName("hide_virtual_keyboard") GodotMethod!(void) hideVirtualKeyboard;
		@GodotName("get_virtual_keyboard_height") GodotMethod!(long) getVirtualKeyboardHeight;
		@GodotName("print_resources_in_use") GodotMethod!(void, bool) printResourcesInUse;
		@GodotName("print_all_resources") GodotMethod!(void, String) printAllResources;
		@GodotName("get_static_memory_usage") GodotMethod!(long) getStaticMemoryUsage;
		@GodotName("get_static_memory_peak_usage") GodotMethod!(long) getStaticMemoryPeakUsage;
		@GodotName("get_dynamic_memory_usage") GodotMethod!(long) getDynamicMemoryUsage;
		@GodotName("get_user_data_dir") GodotMethod!(String) getUserDataDir;
		@GodotName("get_system_dir") GodotMethod!(String, long) getSystemDir;
		@GodotName("get_unique_id") GodotMethod!(String) getUniqueId;
		@GodotName("is_ok_left_and_cancel_right") GodotMethod!(bool) isOkLeftAndCancelRight;
		@GodotName("print_all_textures_by_size") GodotMethod!(void) printAllTexturesBySize;
		@GodotName("print_resources_by_type") GodotMethod!(void, PoolStringArray) printResourcesByType;
		@GodotName("native_video_play") GodotMethod!(GodotError, String, double, String, String) nativeVideoPlay;
		@GodotName("native_video_is_playing") GodotMethod!(bool) nativeVideoIsPlaying;
		@GodotName("native_video_stop") GodotMethod!(void) nativeVideoStop;
		@GodotName("native_video_pause") GodotMethod!(void) nativeVideoPause;
		@GodotName("native_video_unpause") GodotMethod!(void) nativeVideoUnpause;
		@GodotName("get_scancode_string") GodotMethod!(String, long) getScancodeString;
		@GodotName("is_scancode_unicode") GodotMethod!(bool, long) isScancodeUnicode;
		@GodotName("find_scancode_from_string") GodotMethod!(long, String) findScancodeFromString;
		@GodotName("set_use_file_access_save_and_swap") GodotMethod!(void, bool) setUseFileAccessSaveAndSwap;
		@GodotName("alert") GodotMethod!(void, String, String) alert;
		@GodotName("set_thread_name") GodotMethod!(GodotError, String) setThreadName;
		@GodotName("set_use_vsync") GodotMethod!(void, bool) setUseVsync;
		@GodotName("is_vsync_enabled") GodotMethod!(bool) isVsyncEnabled;
		@GodotName("has_feature") GodotMethod!(bool, String) hasFeature;
		@GodotName("get_power_state") GodotMethod!(OS.PowerState) getPowerState;
		@GodotName("get_power_seconds_left") GodotMethod!(long) getPowerSecondsLeft;
		@GodotName("get_power_percent_left") GodotMethod!(long) getPowerPercentLeft;
	}
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
	@disable new(size_t s);
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
		powerstateUnknown = 0,
		screenOrientationLandscape = 0,
		systemDirDesktop = 0,
		daySunday = 0,
		screenOrientationPortrait = 1,
		systemDirDcim = 1,
		monthJanuary = 1,
		dayMonday = 1,
		powerstateOnBattery = 1,
		powerstateNoBattery = 2,
		monthFebruary = 2,
		dayTuesday = 2,
		screenOrientationReverseLandscape = 2,
		systemDirDocuments = 2,
		screenOrientationReversePortrait = 3,
		monthMarch = 3,
		powerstateCharging = 3,
		systemDirDownloads = 3,
		dayWednesday = 3,
		screenOrientationSensorLandscape = 4,
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
	
	*/
	void setClipboard(StringArg0)(in StringArg0 clipboard)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClipboard, _godot_object, clipboard);
	}
	/**
	
	*/
	String getClipboard() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getClipboard, _godot_object);
	}
	/**
	
	*/
	long getVideoDriverCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVideoDriverCount, _godot_object);
	}
	/**
	
	*/
	String getVideoDriverName(in long driver) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getVideoDriverName, _godot_object, driver);
	}
	/**
	Returns the total number of available audio drivers.
	*/
	long getAudioDriverCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAudioDriverCount, _godot_object);
	}
	/**
	Returns the audio driver name for the given index.
	*/
	String getAudioDriverName(in long driver) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getAudioDriverName, _godot_object, driver);
	}
	/**
	
	*/
	PoolStringArray getConnectedMidiInputs()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getConnectedMidiInputs, _godot_object);
	}
	/**
	
	*/
	void openMidiInputs()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.openMidiInputs, _godot_object);
	}
	/**
	
	*/
	void closeMidiInputs()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.closeMidiInputs, _godot_object);
	}
	/**
	Returns the number of displays attached to the host machine.
	*/
	long getScreenCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getScreenCount, _godot_object);
	}
	/**
	
	*/
	long getCurrentScreen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCurrentScreen, _godot_object);
	}
	/**
	
	*/
	void setCurrentScreen(in long screen)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCurrentScreen, _godot_object, screen);
	}
	/**
	Returns the position of the specified screen by index. If no screen index is provided, the current screen will be used.
	*/
	Vector2 getScreenPosition(in long screen = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getScreenPosition, _godot_object, screen);
	}
	/**
	Returns the dimensions in pixels of the specified screen.
	*/
	Vector2 getScreenSize(in long screen = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getScreenSize, _godot_object, screen);
	}
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
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getScreenDpi, _godot_object, screen);
	}
	/**
	
	*/
	Vector2 getWindowPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getWindowPosition, _godot_object);
	}
	/**
	
	*/
	void setWindowPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWindowPosition, _godot_object, position);
	}
	/**
	
	*/
	Vector2 getWindowSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getWindowSize, _godot_object);
	}
	/**
	
	*/
	void setWindowSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWindowSize, _godot_object, size);
	}
	/**
	
	*/
	Rect2 getWindowSafeArea() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getWindowSafeArea, _godot_object);
	}
	/**
	
	*/
	void setWindowFullscreen(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWindowFullscreen, _godot_object, enabled);
	}
	/**
	
	*/
	bool isWindowFullscreen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isWindowFullscreen, _godot_object);
	}
	/**
	
	*/
	void setWindowResizable(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWindowResizable, _godot_object, enabled);
	}
	/**
	
	*/
	bool isWindowResizable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isWindowResizable, _godot_object);
	}
	/**
	
	*/
	void setWindowMinimized(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWindowMinimized, _godot_object, enabled);
	}
	/**
	
	*/
	bool isWindowMinimized() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isWindowMinimized, _godot_object);
	}
	/**
	
	*/
	void setWindowMaximized(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWindowMaximized, _godot_object, enabled);
	}
	/**
	
	*/
	bool isWindowMaximized() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isWindowMaximized, _godot_object);
	}
	/**
	Sets whether the window should always be on top.
	*/
	void setWindowAlwaysOnTop(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWindowAlwaysOnTop, _godot_object, enabled);
	}
	/**
	Returns `true` if the window should always be on top of other windows.
	*/
	bool isWindowAlwaysOnTop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isWindowAlwaysOnTop, _godot_object);
	}
	/**
	Request the user attention to the window. It'll flash the taskbar button on Windows or bounce the dock icon on OSX.
	*/
	void requestAttention()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.requestAttention, _godot_object);
	}
	/**
	Returns the window size including decorations like window borders.
	*/
	Vector2 getRealWindowSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getRealWindowSize, _godot_object);
	}
	/**
	Centers the window on the screen if in windowed mode.
	*/
	void centerWindow()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.centerWindow, _godot_object);
	}
	/**
	
	*/
	void setBorderlessWindow(in bool borderless)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBorderlessWindow, _godot_object, borderless);
	}
	/**
	
	*/
	bool getBorderlessWindow() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getBorderlessWindow, _godot_object);
	}
	/**
	
	*/
	bool getWindowPerPixelTransparencyEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getWindowPerPixelTransparencyEnabled, _godot_object);
	}
	/**
	
	*/
	void setWindowPerPixelTransparencyEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWindowPerPixelTransparencyEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setImePosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setImePosition, _godot_object, position);
	}
	/**
	
	*/
	void setScreenOrientation(in long orientation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScreenOrientation, _godot_object, orientation);
	}
	/**
	
	*/
	OS.ScreenOrientation getScreenOrientation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OS.ScreenOrientation)(_classBinding.getScreenOrientation, _godot_object);
	}
	/**
	
	*/
	void setKeepScreenOn(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setKeepScreenOn, _godot_object, enabled);
	}
	/**
	
	*/
	bool isKeepScreenOn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isKeepScreenOn, _godot_object);
	}
	/**
	Returns `true` if the device has a touchscreen or emulates one.
	*/
	bool hasTouchscreenUiHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasTouchscreenUiHint, _godot_object);
	}
	/**
	Sets the window title to the specified string.
	*/
	void setWindowTitle(StringArg0)(in StringArg0 title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWindowTitle, _godot_object, title);
	}
	/**
	
	*/
	void setLowProcessorUsageMode(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLowProcessorUsageMode, _godot_object, enable);
	}
	/**
	
	*/
	bool isInLowProcessorUsageMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInLowProcessorUsageMode, _godot_object);
	}
	/**
	Returns the number of cores available in the host machine.
	*/
	long getProcessorCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getProcessorCount, _godot_object);
	}
	/**
	Returns the path to the current engine executable.
	*/
	String getExecutablePath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getExecutablePath, _godot_object);
	}
	/**
	Execute the file at the given path with the arguments passed as an array of strings. Platform path resolution will take place. The resolved file must exist and be executable.
	The arguments are used in the given order and separated by a space, so `OS.execute('ping', $(D '-w', '3', 'godotengine.org'), false)` will resolve to `ping -w 3 godotengine.org` in the system's shell.
	This method has slightly different behaviour based on whether the `blocking` mode is enabled.
	When `blocking` is enabled, the Godot thread will pause its execution while waiting for the process to terminate. The shell output of the process will be written to the `output` array as a single string. When the process terminates, the Godot thread will resume execution.
	When `blocking` is disabled, the Godot thread will continue while the new process runs. It is not possible to retrieve the shell output in non-blocking mode, so `output` will be empty.
	The return value also depends on the blocking mode. When blocking, the method will return -2 (no process ID information is available in blocking mode). When non-blocking, the method returns a process ID, which you can use to monitor the process (and potentially terminate it with $(D kill)). If the process forking (non-blocking) or opening (blocking) fails, the method will return -1.
	Example of blocking mode and retrieving the shell output:
	
	
	var output = []
	OS.execute('ls', $(D '-l', '/tmp'), true, output)
	
	
	Example of non-blocking mode, running another instance of the project and storing its process ID:
	
	
	var pid = OS.execute(OS.get_executable_path(), [], false)
	
	
	If you wish to access a shell built-in or perform a composite command, a platform-specific shell can be invoked. For example:
	
	
	OS.execute('CMD.exe', $(D '/C', 'cd %TEMP% &amp;&amp; dir'), true, output)
	
	
	*/
	long execute(StringArg0)(in StringArg0 path, in PoolStringArray arguments, in bool blocking, in Array output = Array.empty_array)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.execute, _godot_object, path, arguments, blocking, output);
	}
	/**
	Kill (terminate) the process identified by the given process ID (`pid`), e.g. the one returned by $(D execute) in non-blocking mode.
	Note that this method can also be used to kill processes that were not spawned by the game.
	*/
	GodotError kill(in long pid)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.kill, _godot_object, pid);
	}
	/**
	Requests the OS to open a resource with the most appropriate program. For example.
		`OS.shell_open("C:\\Users\name\Downloads")` on Windows opens the file explorer at the downloads folders of the user.
		`OS.shell_open("http://godotengine.org")` opens the default web browser on the official Godot website.
	*/
	GodotError shellOpen(StringArg0)(in StringArg0 uri)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.shellOpen, _godot_object, uri);
	}
	/**
	Returns the game process ID
	*/
	long getProcessId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getProcessId, _godot_object);
	}
	/**
	Returns an environment variable.
	*/
	String getEnvironment(StringArg0)(in StringArg0 environment) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getEnvironment, _godot_object, environment);
	}
	/**
	Returns `true` if an environment variable exists.
	*/
	bool hasEnvironment(StringArg0)(in StringArg0 environment) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasEnvironment, _godot_object, environment);
	}
	/**
	Returns the name of the host OS. Possible values are: "Android", "Haiku", "iOS", "HTML5", "OSX", "Server", "Windows", "UWP", "X11".
	*/
	String getName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getName, _godot_object);
	}
	/**
	Returns the command line arguments passed to the engine.
	*/
	PoolStringArray getCmdlineArgs()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getCmdlineArgs, _godot_object);
	}
	/**
	Returns current datetime as a dictionary of keys: year, month, day, weekday, dst (daylight savings time), hour, minute, second.
	*/
	Dictionary getDatetime(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getDatetime, _godot_object, utc);
	}
	/**
	Returns current date as a dictionary of keys: year, month, day, weekday, dst (daylight savings time).
	*/
	Dictionary getDate(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getDate, _godot_object, utc);
	}
	/**
	Returns current time as a dictionary of keys: hour, minute, second.
	*/
	Dictionary getTime(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getTime, _godot_object, utc);
	}
	/**
	Returns the current time zone as a dictionary with the keys: bias and name.
	*/
	Dictionary getTimeZoneInfo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getTimeZoneInfo, _godot_object);
	}
	/**
	Returns the current unix epoch timestamp.
	*/
	long getUnixTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getUnixTime, _godot_object);
	}
	/**
	Get a dictionary of time values when given epoch time.
	Dictionary Time values will be a union of values from $(D getTime) and $(D getDate) dictionaries (with the exception of dst = day light standard time, as it cannot be determined from epoch).
	*/
	Dictionary getDatetimeFromUnixTime(in long unix_time_val) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getDatetimeFromUnixTime, _godot_object, unix_time_val);
	}
	/**
	Get an epoch time value from a dictionary of time values.
	`datetime` must be populated with the following keys: year, month, day, hour, minute, second.
	You can pass the output from $(D getDatetimeFromUnixTime) directly into this function. Daylight savings time (dst), if present, is ignored.
	*/
	long getUnixTimeFromDatetime(in Dictionary datetime) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getUnixTimeFromDatetime, _godot_object, datetime);
	}
	/**
	Returns the epoch time of the operating system in seconds.
	*/
	long getSystemTimeSecs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSystemTimeSecs, _godot_object);
	}
	/**
	Sets the game's icon.
	*/
	void setIcon(Image icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIcon, _godot_object, icon);
	}
	/**
	
	*/
	long getExitCode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getExitCode, _godot_object);
	}
	/**
	
	*/
	void setExitCode(in long code)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExitCode, _godot_object, code);
	}
	/**
	Delay execution of the current thread by given microseconds.
	*/
	void delayUsec(in long usec) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.delayUsec, _godot_object, usec);
	}
	/**
	Delay execution of the current thread by given milliseconds.
	*/
	void delayMsec(in long msec) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.delayMsec, _godot_object, msec);
	}
	/**
	Returns the amount of time passed in milliseconds since the engine started.
	*/
	long getTicksMsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTicksMsec, _godot_object);
	}
	/**
	Returns the amount of time passed in microseconds since the engine started.
	*/
	long getTicksUsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTicksUsec, _godot_object);
	}
	/**
	
	*/
	long getSplashTickMsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSplashTickMsec, _godot_object);
	}
	/**
	Returns the host OS locale.
	*/
	String getLocale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getLocale, _godot_object);
	}
	/**
	Returns the current latin keyboard variant as a String.
	Possible return values are: "QWERTY", "AZERTY", "QZERTY", "DVORAK", "NEO", "COLEMAK" or "ERROR".
	*/
	String getLatinKeyboardVariant() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getLatinKeyboardVariant, _godot_object);
	}
	/**
	Returns the model name of the current device.
	*/
	String getModelName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getModelName, _godot_object);
	}
	/**
	Returns `true` if the host OS allows drawing.
	*/
	bool canDraw() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.canDraw, _godot_object);
	}
	/**
	If `true`, the `user://` file system is persistent, so that its state is the same after a player quits and starts the game again. Relevant to the HTML5 platform, where this persistence may be unavailable.
	*/
	bool isUserfsPersistent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUserfsPersistent, _godot_object);
	}
	/**
	Returns `true` if the engine was executed with -v (verbose stdout).
	*/
	bool isStdoutVerbose() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isStdoutVerbose, _godot_object);
	}
	/**
	Returns `true` if the current host platform is using multiple threads.
	*/
	bool canUseThreads() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.canUseThreads, _godot_object);
	}
	/**
	Returns `true` if the build is a debug build.
	Returns `true` when running in the editor.
	Returns `false` if the build is a release build.
	*/
	bool isDebugBuild() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDebugBuild, _godot_object);
	}
	/**
	Dumps the memory allocation ringlist to a file (only works in debug).
	Entry format per line: "Address - Size - Description".
	*/
	void dumpMemoryToFile(StringArg0)(in StringArg0 file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.dumpMemoryToFile, _godot_object, file);
	}
	/**
	Dumps all used resources to file (only works in debug).
	Entry format per line: "Resource Type : Resource Location".
	At the end of the file is a statistic of all used Resource Types.
	*/
	void dumpResourcesToFile(StringArg0)(in StringArg0 file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.dumpResourcesToFile, _godot_object, file);
	}
	/**
	Returns `true` if the platform has a virtual keyboard, `false` otherwise.
	*/
	bool hasVirtualKeyboard() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasVirtualKeyboard, _godot_object);
	}
	/**
	Shows the virtual keyboard if the platform has one. The $(I existing_text) parameter is useful for implementing your own LineEdit, as it tells the virtual keyboard what text has already been typed (the virtual keyboard uses it for auto-correct and predictions).
	*/
	void showVirtualKeyboard(StringArg0)(in StringArg0 existing_text = "")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.showVirtualKeyboard, _godot_object, existing_text);
	}
	/**
	Hides the virtual keyboard if it is shown, does nothing otherwise.
	*/
	void hideVirtualKeyboard()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.hideVirtualKeyboard, _godot_object);
	}
	/**
	Returns the on-screen keyboard's height in pixels. Returns 0 if there is no keyboard or it is currently hidden.
	*/
	long getVirtualKeyboardHeight()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVirtualKeyboardHeight, _godot_object);
	}
	/**
	Shows all resources currently used by the game.
	*/
	void printResourcesInUse(in bool _short = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.printResourcesInUse, _godot_object, _short);
	}
	/**
	Shows all resources in the game. Optionally the list can be written to a file.
	*/
	void printAllResources(StringArg0)(in StringArg0 tofile = "")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.printAllResources, _godot_object, tofile);
	}
	/**
	Returns the amount of static memory being used by the program in bytes.
	*/
	long getStaticMemoryUsage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getStaticMemoryUsage, _godot_object);
	}
	/**
	Returns the max amount of static memory used (only works in debug).
	*/
	long getStaticMemoryPeakUsage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getStaticMemoryPeakUsage, _godot_object);
	}
	/**
	Returns the total amount of dynamic memory used (only works in debug).
	*/
	long getDynamicMemoryUsage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDynamicMemoryUsage, _godot_object);
	}
	/**
	Returns the absolute directory path where user data is written (`user://`).
	On Linux, this is `~/.local/share/godot/app_userdata/$(D project_name)`, or `~/.local/share/$(D custom_name)` if `use_custom_user_dir` is set.
	On macOS, this is `~/Library/Application Support/Godot/app_userdata/$(D project_name)`, or `~/Library/Application Support/$(D custom_name)` if `use_custom_user_dir` is set.
	On Windows, this is `%APPDATA%/Godot/app_userdata/$(D project_name)`, or `%APPDATA%/$(D custom_name)` if `use_custom_user_dir` is set.
	If the project name is empty, `user://` falls back to `res://`.
	*/
	String getUserDataDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getUserDataDir, _godot_object);
	}
	/**
	Returns the actual path to commonly used folders across different platforms. Available locations are specified in $(D OS.SystemDir).
	*/
	String getSystemDir(in long dir) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSystemDir, _godot_object, dir);
	}
	/**
	Returns a string that is unique to the device.
	Returns empty string on HTML5 and UWP which are not supported yet.
	*/
	String getUniqueId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getUniqueId, _godot_object);
	}
	/**
	Returns `true` if the "Okay" button should appear on the left and "Cancel" on the right.
	*/
	bool isOkLeftAndCancelRight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isOkLeftAndCancelRight, _godot_object);
	}
	/**
	Shows the list of loaded textures sorted by size in memory.
	*/
	void printAllTexturesBySize()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.printAllTexturesBySize, _godot_object);
	}
	/**
	Shows the number of resources loaded by the game of the given types.
	*/
	void printResourcesByType(in PoolStringArray types)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.printResourcesByType, _godot_object, types);
	}
	/**
	Plays native video from the specified path, at the given volume and with audio and subtitle tracks.
	Note: This method is only implemented on Android and iOS, and the current Android implementation does not support the `volume`, `audio_track` and `subtitle_track` options.
	*/
	GodotError nativeVideoPlay(StringArg0, StringArg2, StringArg3)(in StringArg0 path, in double volume, in StringArg2 audio_track, in StringArg3 subtitle_track)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.nativeVideoPlay, _godot_object, path, volume, audio_track, subtitle_track);
	}
	/**
	Returns `true` if native video is playing.
	*/
	bool nativeVideoIsPlaying()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.nativeVideoIsPlaying, _godot_object);
	}
	/**
	Stops native video playback.
	*/
	void nativeVideoStop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.nativeVideoStop, _godot_object);
	}
	/**
	Pauses native video playback.
	*/
	void nativeVideoPause()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.nativeVideoPause, _godot_object);
	}
	/**
	Resumes native video playback.
	*/
	void nativeVideoUnpause()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.nativeVideoUnpause, _godot_object);
	}
	/**
	Returns the given scancode as a string (e.g. Return values: "Escape", "Shift+Escape").
	*/
	String getScancodeString(in long code) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getScancodeString, _godot_object, code);
	}
	/**
	Returns `true` if the input code has a unicode character.
	*/
	bool isScancodeUnicode(in long code) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isScancodeUnicode, _godot_object, code);
	}
	/**
	Returns the scancode of the given string (e.g. "Escape")
	*/
	long findScancodeFromString(StringArg0)(in StringArg0 string) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.findScancodeFromString, _godot_object, string);
	}
	/**
	Enables backup saves if `enabled` is `true`.
	*/
	void setUseFileAccessSaveAndSwap(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseFileAccessSaveAndSwap, _godot_object, enabled);
	}
	/**
	Displays a modal dialog box utilizing the host OS.
	*/
	void alert(StringArg0, StringArg1)(in StringArg0 text, in StringArg1 title = "Alert!")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.alert, _godot_object, text, title);
	}
	/**
	Sets the name of the current thread.
	*/
	GodotError setThreadName(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.setThreadName, _godot_object, name);
	}
	/**
	
	*/
	void setUseVsync(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseVsync, _godot_object, enable);
	}
	/**
	
	*/
	bool isVsyncEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isVsyncEnabled, _godot_object);
	}
	/**
	Returns `true` if the feature for the given feature tag is supported in the currently running instance, depending on platform, build etc. Can be used to check whether you're currently running a debug build, on a certain platform or arch, etc. See feature tags documentation.
	*/
	bool hasFeature(StringArg0)(in StringArg0 tag_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasFeature, _godot_object, tag_name);
	}
	/**
	Returns the current state of the device regarding battery and power. See `POWERSTATE_*` constants.
	*/
	OS.PowerState getPowerState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OS.PowerState)(_classBinding.getPowerState, _godot_object);
	}
	/**
	Returns the time in seconds before the device runs out of battery.
	*/
	long getPowerSecondsLeft()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPowerSecondsLeft, _godot_object);
	}
	/**
	Returns the amount of battery left in the device as a percentage.
	*/
	long getPowerPercentLeft()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPowerPercentLeft, _godot_object);
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
	The exit code passed to the OS when the main loop exits.
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
	If `true` vertical synchronization (Vsync) is enabled.
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
	If `true` the engine optimizes for low processor usage by only refreshing the screen if needed. Can improve battery consumption on mobile.
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
	If `true` the engine tries to keep the screen on while the game is running. Useful on mobile.
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
	If `true` removes the window frame.
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
	If `true` the window is fullscreen.
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
	If `true` the window is maximized.
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
	If `true` the window is minimized.
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
	checkClassBinding!OSSingleton();
	return OSSingleton(OSSingleton._classBinding._singleton);
}
