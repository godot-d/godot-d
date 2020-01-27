/**
Abstract base class for the game's main loop.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.mainloop;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputevent;
/**
Abstract base class for the game's main loop.

$(D MainLoop) is the abstract base class for a Godot project's game loop. It is inherited by $(D SceneTree), which is the default game loop implementation used in Godot projects, though it is also possible to write and use one's own $(D MainLoop) subclass instead of the scene tree.
Upon the application start, a $(D MainLoop) implementation must be provided to the OS; otherwise, the application will exit. This happens automatically (and a $(D SceneTree) is created) unless a main $(D Script) is provided from the command line (with e.g. `godot -s my_loop.gd`, which should then be a $(D MainLoop) implementation.
Here is an example script implementing a simple $(D MainLoop):


extends MainLoop

var time_elapsed = 0
var keys_typed = []
var quit = false

func _initialize():
    print("Initialized:")
    print("  Starting time: %s" % str(time_elapsed))

func _idle(delta):
    time_elapsed += delta
    # Return true to end the main loop.
    return quit

func _input_event(event):
    # Record keys.
    if event is InputEventKey and event.pressed and !event.echo:
        keys_typed.append(OS.get_scancode_string(event.scancode))
        # Quit on Escape press.
        if event.scancode == KEY_ESCAPE:
            quit = true
    # Quit on any mouse click.
    if event is InputEventMouseButton:
        quit = true

func _finalize():
    print("Finalized:")
    print("  End time: %s" % str(time_elapsed))
    print("  Keys typed: %s" % var2str(keys_typed))


*/
@GodotBaseClass struct MainLoop
{
	enum string _GODOT_internal_name = "MainLoop";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_drop_files") GodotMethod!(void, PoolStringArray, long) _dropFiles;
		@GodotName("_finalize") GodotMethod!(void) _finalize;
		@GodotName("_global_menu_action") GodotMethod!(void, Variant, Variant) _globalMenuAction;
		@GodotName("_idle") GodotMethod!(bool, double) _idle;
		@GodotName("_initialize") GodotMethod!(void) _initialize;
		@GodotName("_input_event") GodotMethod!(void, InputEvent) _inputEvent;
		@GodotName("_input_text") GodotMethod!(void, String) _inputText;
		@GodotName("_iteration") GodotMethod!(bool, double) _iteration;
		@GodotName("finish") GodotMethod!(void) finish;
		@GodotName("idle") GodotMethod!(bool, double) idle;
		@GodotName("init") GodotMethod!(void) _init;
		@GodotName("input_event") GodotMethod!(void, InputEvent) inputEvent;
		@GodotName("input_text") GodotMethod!(void, String) inputText;
		@GodotName("iteration") GodotMethod!(bool, double) iteration;
	}
	bool opEquals(in MainLoop other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MainLoop opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MainLoop _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MainLoop");
		if(constructor is null) return typeof(this).init;
		return cast(MainLoop)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/**
		Notification received from the OS when the mouse enters the game window.
		Implemented on desktop and web platforms.
		*/
		notificationWmMouseEnter = 1002,
		/**
		Notification received from the OS when the mouse leaves the game window.
		Implemented on desktop and web platforms.
		*/
		notificationWmMouseExit = 1003,
		/**
		Notification received from the OS when the game window is focused.
		Implemented on all platforms.
		*/
		notificationWmFocusIn = 1004,
		/**
		Notification received from the OS when the game window is unfocused.
		Implemented on all platforms.
		*/
		notificationWmFocusOut = 1005,
		/**
		Notification received from the OS when a quit request is sent (e.g. closing the window with a "Close" button or Alt+F4).
		Implemented on desktop platforms.
		*/
		notificationWmQuitRequest = 1006,
		/**
		Notification received from the OS when a go back request is sent (e.g. pressing the "Back" button on Android).
		Specific to the Android platform.
		*/
		notificationWmGoBackRequest = 1007,
		/**
		Notification received from the OS when an unfocus request is sent (e.g. another OS window wants to take the focus).
		No supported platforms currently send this notification.
		*/
		notificationWmUnfocusRequest = 1008,
		/**
		Notification received from the OS when the application is exceeding its allocated memory.
		Specific to the iOS platform.
		*/
		notificationOsMemoryWarning = 1009,
		/**
		Notification received when translations may have changed. Can be triggered by the user changing the locale. Can be used to respond to language changes, for example to change the UI strings on the fly. Useful when working with the built-in translation support, like $(D GodotObject.tr).
		*/
		notificationTranslationChanged = 1010,
		/**
		Notification received from the OS when a request for "About" information is sent.
		Specific to the macOS platform.
		*/
		notificationWmAbout = 1011,
		/**
		Notification received from Godot's crash handler when the engine is about to crash.
		Implemented on desktop platforms if the crash handler is enabled.
		*/
		notificationCrash = 1012,
		/**
		Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).
		Specific to the macOS platform.
		*/
		notificationOsImeUpdate = 1013,
		/**
		Notification received from the OS when the app is resumed.
		Specific to the Android platform.
		*/
		notificationAppResumed = 1014,
		/**
		Notification received from the OS when the app is paused.
		Specific to the Android platform.
		*/
		notificationAppPaused = 1015,
	}
	/**
	Called when files are dragged from the OS file manager and dropped in the game window. The arguments are a list of file paths and the identifier of the screen where the drag originated.
	*/
	void _dropFiles(in PoolStringArray files, in long from_screen)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(files);
		_GODOT_args.append(from_screen);
		String _GODOT_method_name = String("_drop_files");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called before the program exits.
	*/
	void _finalize()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_finalize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called when the user performs an action in the system global menu (e.g. the Mac OS menu bar).
	*/
	void _globalMenuAction(VariantArg0, VariantArg1)(in VariantArg0 id, in VariantArg1 meta)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(id);
		_GODOT_args.append(meta);
		String _GODOT_method_name = String("_global_menu_action");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called each idle frame with the time since the last idle frame as argument (in seconds). Equivalent to $(D Node._process).
	If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next frame.
	*/
	bool _idle(in double delta)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_idle");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Called once during initialization.
	*/
	void _initialize()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_initialize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called whenever an $(D InputEvent) is received by the main loop.
	*/
	void _inputEvent(InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_input_event");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Deprecated callback, does not do anything. Use $(D _inputEvent) to parse text input. Will be removed in Godot 4.0.
	*/
	void _inputText(in String text)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(text);
		String _GODOT_method_name = String("_input_text");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called each physics frame with the time since the last physics frame as argument (in seconds). Equivalent to $(D Node._physicsProcess).
	If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next frame.
	*/
	bool _iteration(in double delta)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_iteration");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Should not be called manually, override $(D _finalize) instead. Will be removed in Godot 4.0.
	*/
	void finish()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.finish, _godot_object);
	}
	/**
	Should not be called manually, override $(D _idle) instead. Will be removed in Godot 4.0.
	*/
	bool idle(in double delta)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.idle, _godot_object, delta);
	}
	/**
	Should not be called manually, override $(D _initialize) instead. Will be removed in Godot 4.0.
	*/
	void _init()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding._init, _godot_object);
	}
	/**
	Should not be called manually, override $(D _inputEvent) instead. Will be removed in Godot 4.0.
	*/
	void inputEvent(InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.inputEvent, _godot_object, event);
	}
	/**
	Should not be called manually, override $(D _inputText) instead. Will be removed in Godot 4.0.
	*/
	void inputText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.inputText, _godot_object, text);
	}
	/**
	Should not be called manually, override $(D _iteration) instead. Will be removed in Godot 4.0.
	*/
	bool iteration(in double delta)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.iteration, _godot_object, delta);
	}
}
