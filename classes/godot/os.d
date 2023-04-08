/**


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
		@GodotName("crash") GodotMethod!(void, String) crash;
		@GodotName("delay_msec") GodotMethod!(void, long) delayMsec;
		@GodotName("delay_usec") GodotMethod!(void, long) delayUsec;
		@GodotName("dump_memory_to_file") GodotMethod!(void, String) dumpMemoryToFile;
		@GodotName("dump_resources_to_file") GodotMethod!(void, String) dumpResourcesToFile;
		@GodotName("execute") GodotMethod!(long, String, PoolStringArray, bool, Array, bool, bool) execute;
		@GodotName("find_scancode_from_string") GodotMethod!(long, String) findScancodeFromString;
		@GodotName("get_audio_driver_count") GodotMethod!(long) getAudioDriverCount;
		@GodotName("get_audio_driver_name") GodotMethod!(String, long) getAudioDriverName;
		@GodotName("get_borderless_window") GodotMethod!(bool) getBorderlessWindow;
		@GodotName("get_cache_dir") GodotMethod!(String) getCacheDir;
		@GodotName("get_clipboard") GodotMethod!(String) getClipboard;
		@GodotName("get_cmdline_args") GodotMethod!(PoolStringArray) getCmdlineArgs;
		@GodotName("get_config_dir") GodotMethod!(String) getConfigDir;
		@GodotName("get_connected_midi_inputs") GodotMethod!(PoolStringArray) getConnectedMidiInputs;
		@GodotName("get_current_screen") GodotMethod!(long) getCurrentScreen;
		@GodotName("get_current_tablet_driver") GodotMethod!(String) getCurrentTabletDriver;
		@GodotName("get_current_video_driver") GodotMethod!(OS.VideoDriver) getCurrentVideoDriver;
		@GodotName("get_data_dir") GodotMethod!(String) getDataDir;
		@GodotName("get_date") GodotMethod!(Dictionary, bool) getDate;
		@GodotName("get_datetime") GodotMethod!(Dictionary, bool) getDatetime;
		@GodotName("get_datetime_from_unix_time") GodotMethod!(Dictionary, long) getDatetimeFromUnixTime;
		@GodotName("get_display_cutouts") GodotMethod!(Array) getDisplayCutouts;
		@GodotName("get_dynamic_memory_usage") GodotMethod!(long) getDynamicMemoryUsage;
		@GodotName("get_environment") GodotMethod!(String, String) getEnvironment;
		@GodotName("get_executable_path") GodotMethod!(String) getExecutablePath;
		@GodotName("get_exit_code") GodotMethod!(long) getExitCode;
		@GodotName("get_granted_permissions") GodotMethod!(PoolStringArray) getGrantedPermissions;
		@GodotName("get_ime_selection") GodotMethod!(Vector2) getImeSelection;
		@GodotName("get_ime_text") GodotMethod!(String) getImeText;
		@GodotName("get_latin_keyboard_variant") GodotMethod!(String) getLatinKeyboardVariant;
		@GodotName("get_locale") GodotMethod!(String) getLocale;
		@GodotName("get_locale_language") GodotMethod!(String) getLocaleLanguage;
		@GodotName("get_low_processor_usage_mode_sleep_usec") GodotMethod!(long) getLowProcessorUsageModeSleepUsec;
		@GodotName("get_main_thread_id") GodotMethod!(long) getMainThreadId;
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
		@GodotName("get_processor_name") GodotMethod!(String) getProcessorName;
		@GodotName("get_real_window_size") GodotMethod!(Vector2) getRealWindowSize;
		@GodotName("get_scancode_string") GodotMethod!(String, long) getScancodeString;
		@GodotName("get_screen_count") GodotMethod!(long) getScreenCount;
		@GodotName("get_screen_dpi") GodotMethod!(long, long) getScreenDpi;
		@GodotName("get_screen_max_scale") GodotMethod!(double) getScreenMaxScale;
		@GodotName("get_screen_orientation") GodotMethod!(OS.ScreenOrientation) getScreenOrientation;
		@GodotName("get_screen_position") GodotMethod!(Vector2, long) getScreenPosition;
		@GodotName("get_screen_refresh_rate") GodotMethod!(double, long) getScreenRefreshRate;
		@GodotName("get_screen_scale") GodotMethod!(double, long) getScreenScale;
		@GodotName("get_screen_size") GodotMethod!(Vector2, long) getScreenSize;
		@GodotName("get_splash_tick_msec") GodotMethod!(long) getSplashTickMsec;
		@GodotName("get_static_memory_peak_usage") GodotMethod!(long) getStaticMemoryPeakUsage;
		@GodotName("get_static_memory_usage") GodotMethod!(long) getStaticMemoryUsage;
		@GodotName("get_system_dir") GodotMethod!(String, long, bool) getSystemDir;
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
		@GodotName("has_clipboard") GodotMethod!(bool) hasClipboard;
		@GodotName("has_environment") GodotMethod!(bool, String) hasEnvironment;
		@GodotName("has_feature") GodotMethod!(bool, String) hasFeature;
		@GodotName("has_touchscreen_ui_hint") GodotMethod!(bool) hasTouchscreenUiHint;
		@GodotName("has_virtual_keyboard") GodotMethod!(bool) hasVirtualKeyboard;
		@GodotName("hide_virtual_keyboard") GodotMethod!(void) hideVirtualKeyboard;
		@GodotName("is_debug_build") GodotMethod!(bool) isDebugBuild;
		@GodotName("is_delta_smoothing_enabled") GodotMethod!(bool) isDeltaSmoothingEnabled;
		@GodotName("is_in_low_processor_usage_mode") GodotMethod!(bool) isInLowProcessorUsageMode;
		@GodotName("is_keep_screen_on") GodotMethod!(bool) isKeepScreenOn;
		@GodotName("is_ok_left_and_cancel_right") GodotMethod!(bool) isOkLeftAndCancelRight;
		@GodotName("is_process_running") GodotMethod!(bool, long) isProcessRunning;
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
		@GodotName("keyboard_get_scancode_from_physical") GodotMethod!(long, long) keyboardGetScancodeFromPhysical;
		@GodotName("keyboard_set_current_layout") GodotMethod!(void, long) keyboardSetCurrentLayout;
		@GodotName("kill") GodotMethod!(GodotError, long) kill;
		@GodotName("move_to_trash") GodotMethod!(GodotError, String) moveToTrash;
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
		@GodotName("set_delta_smoothing") GodotMethod!(void, bool) setDeltaSmoothing;
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
		/** */
		videoDriverGles3 = 0,
		/** */
		videoDriverGles2 = 1,
	}
	/// 
	enum SystemDir : int
	{
		/** */
		systemDirDesktop = 0,
		/** */
		systemDirDcim = 1,
		/** */
		systemDirDocuments = 2,
		/** */
		systemDirDownloads = 3,
		/** */
		systemDirMovies = 4,
		/** */
		systemDirMusic = 5,
		/** */
		systemDirPictures = 6,
		/** */
		systemDirRingtones = 7,
	}
	/// 
	enum ScreenOrientation : int
	{
		/** */
		screenOrientationLandscape = 0,
		/** */
		screenOrientationPortrait = 1,
		/** */
		screenOrientationReverseLandscape = 2,
		/** */
		screenOrientationReversePortrait = 3,
		/** */
		screenOrientationSensorLandscape = 4,
		/** */
		screenOrientationSensorPortrait = 5,
		/** */
		screenOrientationSensor = 6,
	}
	/// 
	enum PowerState : int
	{
		/** */
		powerstateUnknown = 0,
		/** */
		powerstateOnBattery = 1,
		/** */
		powerstateNoBattery = 2,
		/** */
		powerstateCharging = 3,
		/** */
		powerstateCharged = 4,
	}
	/// 
	enum HandleType : int
	{
		/** */
		applicationHandle = 0,
		/** */
		displayHandle = 1,
		/** */
		windowHandle = 2,
		/** */
		windowView = 3,
		/** */
		openglContext = 4,
	}
	/// 
	enum Month : int
	{
		/** */
		monthJanuary = 1,
		/** */
		monthFebruary = 2,
		/** */
		monthMarch = 3,
		/** */
		monthApril = 4,
		/** */
		monthMay = 5,
		/** */
		monthJune = 6,
		/** */
		monthJuly = 7,
		/** */
		monthAugust = 8,
		/** */
		monthSeptember = 9,
		/** */
		monthOctober = 10,
		/** */
		monthNovember = 11,
		/** */
		monthDecember = 12,
	}
	/// 
	enum Weekday : int
	{
		/** */
		daySunday = 0,
		/** */
		dayMonday = 1,
		/** */
		dayTuesday = 2,
		/** */
		dayWednesday = 3,
		/** */
		dayThursday = 4,
		/** */
		dayFriday = 5,
		/** */
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
	
	*/
	void alert(in String text, in String title = gs!"Alert!")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.alert, _godot_object, text, title);
	}
	/**
	
	*/
	bool canDraw() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canDraw, _godot_object);
	}
	/**
	
	*/
	bool canUseThreads() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canUseThreads, _godot_object);
	}
	/**
	
	*/
	void centerWindow()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.centerWindow, _godot_object);
	}
	/**
	
	*/
	void closeMidiInputs()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.closeMidiInputs, _godot_object);
	}
	/**
	
	*/
	void crash(in String message)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.crash, _godot_object, message);
	}
	/**
	
	*/
	void delayMsec(in long msec) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.delayMsec, _godot_object, msec);
	}
	/**
	
	*/
	void delayUsec(in long usec) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.delayUsec, _godot_object, usec);
	}
	/**
	
	*/
	void dumpMemoryToFile(in String file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.dumpMemoryToFile, _godot_object, file);
	}
	/**
	
	*/
	void dumpResourcesToFile(in String file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.dumpResourcesToFile, _godot_object, file);
	}
	/**
	
	*/
	long execute(in String path, in PoolStringArray arguments, in bool blocking = true, in Array output = Array.make(), in bool read_stderr = false, in bool open_console = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.execute, _godot_object, path, arguments, blocking, output, read_stderr, open_console);
	}
	/**
	
	*/
	long findScancodeFromString(in String string) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.findScancodeFromString, _godot_object, string);
	}
	/**
	
	*/
	long getAudioDriverCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAudioDriverCount, _godot_object);
	}
	/**
	
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
	String getCacheDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCacheDir, _godot_object);
	}
	/**
	
	*/
	String getClipboard() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getClipboard, _godot_object);
	}
	/**
	
	*/
	PoolStringArray getCmdlineArgs()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getCmdlineArgs, _godot_object);
	}
	/**
	
	*/
	String getConfigDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getConfigDir, _godot_object);
	}
	/**
	
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
	
	*/
	OS.VideoDriver getCurrentVideoDriver() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OS.VideoDriver)(GDNativeClassBinding.getCurrentVideoDriver, _godot_object);
	}
	/**
	
	*/
	String getDataDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDataDir, _godot_object);
	}
	/**
	
	*/
	Dictionary getDate(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDate, _godot_object, utc);
	}
	/**
	
	*/
	Dictionary getDatetime(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDatetime, _godot_object, utc);
	}
	/**
	
	*/
	Dictionary getDatetimeFromUnixTime(in long unix_time_val) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDatetimeFromUnixTime, _godot_object, unix_time_val);
	}
	/**
	
	*/
	Array getDisplayCutouts() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getDisplayCutouts, _godot_object);
	}
	/**
	
	*/
	long getDynamicMemoryUsage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDynamicMemoryUsage, _godot_object);
	}
	/**
	
	*/
	String getEnvironment(in String variable) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getEnvironment, _godot_object, variable);
	}
	/**
	
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
	
	*/
	PoolStringArray getGrantedPermissions() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getGrantedPermissions, _godot_object);
	}
	/**
	
	*/
	Vector2 getImeSelection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getImeSelection, _godot_object);
	}
	/**
	
	*/
	String getImeText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getImeText, _godot_object);
	}
	/**
	
	*/
	String getLatinKeyboardVariant() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLatinKeyboardVariant, _godot_object);
	}
	/**
	
	*/
	String getLocale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLocale, _godot_object);
	}
	/**
	
	*/
	String getLocaleLanguage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLocaleLanguage, _godot_object);
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
	long getMainThreadId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMainThreadId, _godot_object);
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
	
	*/
	String getModelName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getModelName, _godot_object);
	}
	/**
	
	*/
	String getName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getName, _godot_object);
	}
	/**
	
	*/
	long getNativeHandle(in long handle_type)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNativeHandle, _godot_object, handle_type);
	}
	/**
	
	*/
	long getPowerPercentLeft()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPowerPercentLeft, _godot_object);
	}
	/**
	
	*/
	long getPowerSecondsLeft()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPowerSecondsLeft, _godot_object);
	}
	/**
	
	*/
	OS.PowerState getPowerState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OS.PowerState)(GDNativeClassBinding.getPowerState, _godot_object);
	}
	/**
	
	*/
	long getProcessId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getProcessId, _godot_object);
	}
	/**
	
	*/
	long getProcessorCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getProcessorCount, _godot_object);
	}
	/**
	
	*/
	String getProcessorName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getProcessorName, _godot_object);
	}
	/**
	
	*/
	Vector2 getRealWindowSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getRealWindowSize, _godot_object);
	}
	/**
	
	*/
	String getScancodeString(in long code) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getScancodeString, _godot_object, code);
	}
	/**
	
	*/
	long getScreenCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getScreenCount, _godot_object);
	}
	/**
	
	*/
	long getScreenDpi(in long screen = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getScreenDpi, _godot_object, screen);
	}
	/**
	
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
	
	*/
	Vector2 getScreenPosition(in long screen = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getScreenPosition, _godot_object, screen);
	}
	/**
	
	*/
	double getScreenRefreshRate(in long screen = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getScreenRefreshRate, _godot_object, screen);
	}
	/**
	
	*/
	double getScreenScale(in long screen = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getScreenScale, _godot_object, screen);
	}
	/**
	
	*/
	Vector2 getScreenSize(in long screen = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getScreenSize, _godot_object, screen);
	}
	/**
	
	*/
	long getSplashTickMsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSplashTickMsec, _godot_object);
	}
	/**
	
	*/
	long getStaticMemoryPeakUsage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getStaticMemoryPeakUsage, _godot_object);
	}
	/**
	
	*/
	long getStaticMemoryUsage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getStaticMemoryUsage, _godot_object);
	}
	/**
	
	*/
	String getSystemDir(in long dir, in bool shared_storage = true) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSystemDir, _godot_object, dir, shared_storage);
	}
	/**
	
	*/
	long getSystemTimeMsecs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSystemTimeMsecs, _godot_object);
	}
	/**
	
	*/
	long getSystemTimeSecs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSystemTimeSecs, _godot_object);
	}
	/**
	
	*/
	long getTabletDriverCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTabletDriverCount, _godot_object);
	}
	/**
	
	*/
	String getTabletDriverName(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTabletDriverName, _godot_object, idx);
	}
	/**
	
	*/
	long getThreadCallerId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getThreadCallerId, _godot_object);
	}
	/**
	
	*/
	long getTicksMsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTicksMsec, _godot_object);
	}
	/**
	
	*/
	long getTicksUsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTicksUsec, _godot_object);
	}
	/**
	
	*/
	Dictionary getTime(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getTime, _godot_object, utc);
	}
	/**
	
	*/
	Dictionary getTimeZoneInfo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getTimeZoneInfo, _godot_object);
	}
	/**
	
	*/
	String getUniqueId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getUniqueId, _godot_object);
	}
	/**
	
	*/
	long getUnixTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getUnixTime, _godot_object);
	}
	/**
	
	*/
	long getUnixTimeFromDatetime(in Dictionary datetime) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getUnixTimeFromDatetime, _godot_object, datetime);
	}
	/**
	
	*/
	String getUserDataDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getUserDataDir, _godot_object);
	}
	/**
	
	*/
	long getVideoDriverCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVideoDriverCount, _godot_object);
	}
	/**
	
	*/
	String getVideoDriverName(in long driver) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getVideoDriverName, _godot_object, driver);
	}
	/**
	
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
	
	*/
	void globalMenuAddItem(VariantArg2, VariantArg3)(in String menu, in String label, in VariantArg2 id, in VariantArg3 meta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalMenuAddItem, _godot_object, menu, label, id, meta);
	}
	/**
	
	*/
	void globalMenuAddSeparator(in String menu)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalMenuAddSeparator, _godot_object, menu);
	}
	/**
	
	*/
	void globalMenuClear(in String menu)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalMenuClear, _godot_object, menu);
	}
	/**
	
	*/
	void globalMenuRemoveItem(in String menu, in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalMenuRemoveItem, _godot_object, menu, idx);
	}
	/**
	
	*/
	bool hasClipboard() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasClipboard, _godot_object);
	}
	/**
	
	*/
	bool hasEnvironment(in String variable) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasEnvironment, _godot_object, variable);
	}
	/**
	
	*/
	bool hasFeature(in String tag_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFeature, _godot_object, tag_name);
	}
	/**
	
	*/
	bool hasTouchscreenUiHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasTouchscreenUiHint, _godot_object);
	}
	/**
	
	*/
	bool hasVirtualKeyboard() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasVirtualKeyboard, _godot_object);
	}
	/**
	
	*/
	void hideVirtualKeyboard()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.hideVirtualKeyboard, _godot_object);
	}
	/**
	
	*/
	bool isDebugBuild() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDebugBuild, _godot_object);
	}
	/**
	
	*/
	bool isDeltaSmoothingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDeltaSmoothingEnabled, _godot_object);
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
	
	*/
	bool isOkLeftAndCancelRight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOkLeftAndCancelRight, _godot_object);
	}
	/**
	
	*/
	bool isProcessRunning(in long pid) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isProcessRunning, _godot_object, pid);
	}
	/**
	
	*/
	bool isScancodeUnicode(in long code) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isScancodeUnicode, _godot_object, code);
	}
	/**
	
	*/
	bool isStdoutVerbose() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isStdoutVerbose, _godot_object);
	}
	/**
	
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
	
	*/
	bool isWindowAlwaysOnTop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isWindowAlwaysOnTop, _godot_object);
	}
	/**
	
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
	
	*/
	long keyboardGetCurrentLayout() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.keyboardGetCurrentLayout, _godot_object);
	}
	/**
	
	*/
	long keyboardGetLayoutCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.keyboardGetLayoutCount, _godot_object);
	}
	/**
	
	*/
	String keyboardGetLayoutLanguage(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.keyboardGetLayoutLanguage, _godot_object, index);
	}
	/**
	
	*/
	String keyboardGetLayoutName(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.keyboardGetLayoutName, _godot_object, index);
	}
	/**
	
	*/
	long keyboardGetScancodeFromPhysical(in long scancode) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.keyboardGetScancodeFromPhysical, _godot_object, scancode);
	}
	/**
	
	*/
	void keyboardSetCurrentLayout(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.keyboardSetCurrentLayout, _godot_object, index);
	}
	/**
	
	*/
	GodotError kill(in long pid)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.kill, _godot_object, pid);
	}
	/**
	
	*/
	GodotError moveToTrash(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.moveToTrash, _godot_object, path);
	}
	/**
	
	*/
	void moveWindowToForeground()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.moveWindowToForeground, _godot_object);
	}
	/**
	
	*/
	bool nativeVideoIsPlaying()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.nativeVideoIsPlaying, _godot_object);
	}
	/**
	
	*/
	void nativeVideoPause()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.nativeVideoPause, _godot_object);
	}
	/**
	
	*/
	GodotError nativeVideoPlay(in String path, in double volume, in String audio_track, in String subtitle_track)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.nativeVideoPlay, _godot_object, path, volume, audio_track, subtitle_track);
	}
	/**
	
	*/
	void nativeVideoStop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.nativeVideoStop, _godot_object);
	}
	/**
	
	*/
	void nativeVideoUnpause()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.nativeVideoUnpause, _godot_object);
	}
	/**
	
	*/
	void openMidiInputs()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.openMidiInputs, _godot_object);
	}
	/**
	
	*/
	void printAllResources(in String tofile = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.printAllResources, _godot_object, tofile);
	}
	/**
	
	*/
	void printAllTexturesBySize()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.printAllTexturesBySize, _godot_object);
	}
	/**
	
	*/
	void printResourcesByType(in PoolStringArray types)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.printResourcesByType, _godot_object, types);
	}
	/**
	
	*/
	void printResourcesInUse(in bool _short = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.printResourcesInUse, _godot_object, _short);
	}
	/**
	
	*/
	void requestAttention()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.requestAttention, _godot_object);
	}
	/**
	
	*/
	bool requestPermission(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.requestPermission, _godot_object, name);
	}
	/**
	
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
	
	*/
	void setDeltaSmoothing(in bool delta_smoothing_enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDeltaSmoothing, _godot_object, delta_smoothing_enabled);
	}
	/**
	
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
	
	*/
	void setIcon(Image icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIcon, _godot_object, icon);
	}
	/**
	
	*/
	void setImeActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setImeActive, _godot_object, active);
	}
	/**
	
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
	
	*/
	GodotError setThreadName(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.setThreadName, _godot_object, name);
	}
	/**
	
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
	
	*/
	void setWindowTitle(in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWindowTitle, _godot_object, title);
	}
	/**
	
	*/
	GodotError shellOpen(in String uri)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.shellOpen, _godot_object, uri);
	}
	/**
	
	*/
	void showVirtualKeyboard(in String existing_text = gs!"", in bool multiline = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.showVirtualKeyboard, _godot_object, existing_text, multiline);
	}
	/**
	
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
	@property bool deltaSmoothing()
	{
		return isDeltaSmoothingEnabled();
	}
	/// ditto
	@property void deltaSmoothing(bool v)
	{
		setDeltaSmoothing(v);
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
