/**
Main loop is the abstract main loop base class.

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
Main loop is the abstract main loop base class.

All other main loop classes are derived from it. Upon application start, a `MainLoop` has to be provided to OS, else the application will exit. This happens automatically (and a $(D SceneTree) is created), unless a main $(D Script) is supplied, which may or not create and return a `MainLoop`.
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
		@GodotName("_input_event") GodotMethod!(void, InputEvent) _inputEvent;
		@GodotName("_input_text") GodotMethod!(void, String) _inputText;
		@GodotName("_initialize") GodotMethod!(void) _initialize;
		@GodotName("_iteration") GodotMethod!(void, double) _iteration;
		@GodotName("_idle") GodotMethod!(void, double) _idle;
		@GodotName("_drop_files") GodotMethod!(void, PoolStringArray, long) _dropFiles;
		@GodotName("_finalize") GodotMethod!(void) _finalize;
		@GodotName("input_event") GodotMethod!(void, InputEvent) inputEvent;
		@GodotName("input_text") GodotMethod!(void, String) inputText;
		@GodotName("init") GodotMethod!(void) _init;
		@GodotName("iteration") GodotMethod!(bool, double) iteration;
		@GodotName("idle") GodotMethod!(bool, double) idle;
		@GodotName("finish") GodotMethod!(void) finish;
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
		
		*/
		notificationWmMouseEnter = 2,
		/**
		
		*/
		notificationWmMouseExit = 3,
		/**
		
		*/
		notificationWmFocusIn = 4,
		/**
		
		*/
		notificationWmFocusOut = 5,
		/**
		
		*/
		notificationWmQuitRequest = 6,
		/**
		
		*/
		notificationWmGoBackRequest = 7,
		/**
		
		*/
		notificationWmUnfocusRequest = 8,
		/**
		
		*/
		notificationOsMemoryWarning = 9,
		/**
		
		*/
		notificationTranslationChanged = 90,
		/**
		
		*/
		notificationWmAbout = 91,
		/**
		
		*/
		notificationCrash = 92,
	}
	/**
	
	*/
	void _inputEvent(InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_input_event");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _inputText(StringArg0)(in StringArg0 text)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(text);
		String _GODOT_method_name = String("_input_text");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called once during initialization.
	*/
	void _initialize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_initialize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _iteration(in double delta)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_iteration");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called each idle frame with time since last call as an only argument.
	*/
	void _idle(in double delta)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_idle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _dropFiles(in PoolStringArray files, in long screen)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(files);
		_GODOT_args.append(screen);
		String _GODOT_method_name = String("_drop_files");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called before the program exits.
	*/
	void _finalize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_finalize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void inputEvent(InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.inputEvent, _godot_object, event);
	}
	/**
	
	*/
	void inputText(StringArg0)(in StringArg0 text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.inputText, _godot_object, text);
	}
	/**
	
	*/
	void _init()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding._init, _godot_object);
	}
	/**
	
	*/
	bool iteration(in double delta)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.iteration, _godot_object, delta);
	}
	/**
	
	*/
	bool idle(in double delta)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.idle, _godot_object, delta);
	}
	/**
	
	*/
	void finish()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.finish, _godot_object);
	}
}
