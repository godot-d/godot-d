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
	static immutable string _GODOT_internal_name = "MainLoop";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__input_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input_event") = _GODOT__input_event;
	/**
	
	*/
	void _inputEvent(InputEvent ev)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(ev);
		String _GODOT_method_name = String("_input_event");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__input_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input_text") = _GODOT__input_text;
	/**
	
	*/
	void _inputText(StringArg0)(in StringArg0 text)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(text);
		String _GODOT_method_name = String("_input_text");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__initialize;
	package(godot) alias _GODOT_methodBindInfo(string name : "_initialize") = _GODOT__initialize;
	/**
	Called once during initialization.
	*/
	void _initialize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_initialize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__iteration;
	package(godot) alias _GODOT_methodBindInfo(string name : "_iteration") = _GODOT__iteration;
	/**
	
	*/
	void _iteration(in double delta)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_iteration");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__idle;
	package(godot) alias _GODOT_methodBindInfo(string name : "_idle") = _GODOT__idle;
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
	package(godot) static GodotMethod!(void, PoolStringArray, long) _GODOT__drop_files;
	package(godot) alias _GODOT_methodBindInfo(string name : "_drop_files") = _GODOT__drop_files;
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
	package(godot) static GodotMethod!(void) _GODOT__finalize;
	package(godot) alias _GODOT_methodBindInfo(string name : "_finalize") = _GODOT__finalize;
	/**
	Called before the program exits.
	*/
	void _finalize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_finalize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT_input_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "input_event") = _GODOT_input_event;
	/**
	
	*/
	void inputEvent(InputEvent ev)
	{
		_GODOT_input_event.bind("MainLoop", "input_event");
		ptrcall!(void)(_GODOT_input_event, _godot_object, ev);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_input_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "input_text") = _GODOT_input_text;
	/**
	
	*/
	void inputText(StringArg0)(in StringArg0 text)
	{
		_GODOT_input_text.bind("MainLoop", "input_text");
		ptrcall!(void)(_GODOT_input_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(void) _GODOT__init;
	package(godot) alias _GODOT_methodBindInfo(string name : "init") = _GODOT__init;
	/**
	
	*/
	void _init()
	{
		_GODOT__init.bind("MainLoop", "init");
		ptrcall!(void)(_GODOT__init, _godot_object);
	}
	package(godot) static GodotMethod!(bool, double) _GODOT_iteration;
	package(godot) alias _GODOT_methodBindInfo(string name : "iteration") = _GODOT_iteration;
	/**
	
	*/
	bool iteration(in double delta)
	{
		_GODOT_iteration.bind("MainLoop", "iteration");
		return ptrcall!(bool)(_GODOT_iteration, _godot_object, delta);
	}
	package(godot) static GodotMethod!(bool, double) _GODOT_idle;
	package(godot) alias _GODOT_methodBindInfo(string name : "idle") = _GODOT_idle;
	/**
	
	*/
	bool idle(in double delta)
	{
		_GODOT_idle.bind("MainLoop", "idle");
		return ptrcall!(bool)(_GODOT_idle, _godot_object, delta);
	}
	package(godot) static GodotMethod!(void) _GODOT_finish;
	package(godot) alias _GODOT_methodBindInfo(string name : "finish") = _GODOT_finish;
	/**
	
	*/
	void finish()
	{
		_GODOT_finish.bind("MainLoop", "finish");
		ptrcall!(void)(_GODOT_finish, _godot_object);
	}
}
