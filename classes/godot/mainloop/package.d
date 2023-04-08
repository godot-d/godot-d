/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.mainloop;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.inputevent;
/**

*/
@GodotBaseClass struct MainLoop
{
	package(godot) enum string _GODOT_internal_name = "MainLoop";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in MainLoop other) const
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
	/// Construct a new instance of MainLoop.
	/// Note: use `memnew!MainLoop` instead.
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
		/** */
		notificationWmMouseEnter = 1002,
		/** */
		notificationWmMouseExit = 1003,
		/** */
		notificationWmFocusIn = 1004,
		/** */
		notificationWmFocusOut = 1005,
		/** */
		notificationWmQuitRequest = 1006,
		/** */
		notificationWmGoBackRequest = 1007,
		/** */
		notificationWmUnfocusRequest = 1008,
		/** */
		notificationOsMemoryWarning = 1009,
		/** */
		notificationTranslationChanged = 1010,
		/** */
		notificationWmAbout = 1011,
		/** */
		notificationCrash = 1012,
		/** */
		notificationOsImeUpdate = 1013,
		/** */
		notificationAppResumed = 1014,
		/** */
		notificationAppPaused = 1015,
	}
	/**
	
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
	
	*/
	void _finalize()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_finalize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
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
	
	*/
	bool _idle(in double delta)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_idle");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _initialize()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_initialize");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _inputEvent(InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_input_event");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _inputText(in String text)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(text);
		String _GODOT_method_name = String("_input_text");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool _iteration(in double delta)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_iteration");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void finish()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.finish, _godot_object);
	}
	/**
	
	*/
	bool idle(in double delta)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.idle, _godot_object, delta);
	}
	/**
	
	*/
	void _init()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding._init, _godot_object);
	}
	/**
	
	*/
	void inputEvent(InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.inputEvent, _godot_object, event);
	}
	/**
	
	*/
	void inputText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.inputText, _godot_object, text);
	}
	/**
	
	*/
	bool iteration(in double delta)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.iteration, _godot_object, delta);
	}
}
