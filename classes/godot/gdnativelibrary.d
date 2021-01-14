/**
An external library containing functions or script classes to use in Godot.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gdnativelibrary;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.configfile;
/**
An external library containing functions or script classes to use in Godot.

A GDNative library can implement $(D NativeScript)s, global functions to call with the $(D GDNative) class, or low-level engine extensions through interfaces such as $(D ARVRInterfaceGDNative). The library must be compiled for each platform and architecture that the project will run on.
*/
@GodotBaseClass struct GDNativeLibrary
{
	package(godot) enum string _GODOT_internal_name = "GDNativeLibrary";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_config_file") GodotMethod!(ConfigFile) getConfigFile;
		@GodotName("get_current_dependencies") GodotMethod!(PoolStringArray) getCurrentDependencies;
		@GodotName("get_current_library_path") GodotMethod!(String) getCurrentLibraryPath;
		@GodotName("get_symbol_prefix") GodotMethod!(String) getSymbolPrefix;
		@GodotName("is_reloadable") GodotMethod!(bool) isReloadable;
		@GodotName("is_singleton") GodotMethod!(bool) isSingleton;
		@GodotName("set_config_file") GodotMethod!(void, ConfigFile) setConfigFile;
		@GodotName("set_load_once") GodotMethod!(void, bool) setLoadOnce;
		@GodotName("set_reloadable") GodotMethod!(void, bool) setReloadable;
		@GodotName("set_singleton") GodotMethod!(void, bool) setSingleton;
		@GodotName("set_symbol_prefix") GodotMethod!(void, String) setSymbolPrefix;
		@GodotName("should_load_once") GodotMethod!(bool) shouldLoadOnce;
	}
	/// 
	pragma(inline, true) bool opEquals(in GDNativeLibrary other) const
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
	/// Construct a new instance of GDNativeLibrary.
	/// Note: use `memnew!GDNativeLibrary` instead.
	static GDNativeLibrary _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GDNativeLibrary");
		if(constructor is null) return typeof(this).init;
		return cast(GDNativeLibrary)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!ConfigFile getConfigFile()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ConfigFile)(GDNativeClassBinding.getConfigFile, _godot_object);
	}
	/**
	Returns paths to all dependency libraries for the current platform and architecture.
	*/
	PoolStringArray getCurrentDependencies() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getCurrentDependencies, _godot_object);
	}
	/**
	Returns the path to the dynamic library file for the current platform and architecture.
	*/
	String getCurrentLibraryPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCurrentLibraryPath, _godot_object);
	}
	/**
	
	*/
	String getSymbolPrefix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSymbolPrefix, _godot_object);
	}
	/**
	
	*/
	bool isReloadable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isReloadable, _godot_object);
	}
	/**
	
	*/
	bool isSingleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSingleton, _godot_object);
	}
	/**
	
	*/
	void setConfigFile(ConfigFile config_file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConfigFile, _godot_object, config_file);
	}
	/**
	
	*/
	void setLoadOnce(in bool load_once)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLoadOnce, _godot_object, load_once);
	}
	/**
	
	*/
	void setReloadable(in bool reloadable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setReloadable, _godot_object, reloadable);
	}
	/**
	
	*/
	void setSingleton(in bool singleton)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSingleton, _godot_object, singleton);
	}
	/**
	
	*/
	void setSymbolPrefix(in String symbol_prefix)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSymbolPrefix, _godot_object, symbol_prefix);
	}
	/**
	
	*/
	bool shouldLoadOnce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.shouldLoadOnce, _godot_object);
	}
	/**
	This resource in INI-style $(D ConfigFile) format, as in `.gdnlib` files.
	*/
	@property ConfigFile configFile()
	{
		return getConfigFile();
	}
	/// ditto
	@property void configFile(ConfigFile v)
	{
		setConfigFile(v);
	}
	/**
	If `true`, Godot loads only one copy of the library and each script that references the library will share static data like static or global variables.
	If `false`, Godot loads a separate copy of the library into memory for each script that references it.
	*/
	@property bool loadOnce()
	{
		return shouldLoadOnce();
	}
	/// ditto
	@property void loadOnce(bool v)
	{
		setLoadOnce(v);
	}
	/**
	If `true`, the editor will temporarily unload the library whenever the user switches away from the editor window, allowing the user to recompile the library without restarting Godot.
	$(B Note:) If the library defines tool scripts that run inside the editor, `reloadable` must be `false`. Otherwise, the editor will attempt to unload the tool scripts while they're in use and crash.
	*/
	@property bool reloadable()
	{
		return isReloadable();
	}
	/// ditto
	@property void reloadable(bool v)
	{
		setReloadable(v);
	}
	/**
	If `true`, Godot loads the library at startup rather than the first time a script uses the library, calling `{prefix}gdnative_singleton` after initializing the library (where `{prefix}` is the value of $(D symbolPrefix)). The library remains loaded as long as Godot is running.
	$(B Note:) A singleton library cannot be $(D reloadable).
	*/
	@property bool singleton()
	{
		return isSingleton();
	}
	/// ditto
	@property void singleton(bool v)
	{
		setSingleton(v);
	}
	/**
	The prefix this library's entry point functions begin with. For example, a GDNativeLibrary would declare its `gdnative_init` function as `godot_gdnative_init` by default.
	On platforms that require statically linking libraries (currently only iOS), each library must have a different `symbol_prefix`.
	*/
	@property String symbolPrefix()
	{
		return getSymbolPrefix();
	}
	/// ditto
	@property void symbolPrefix(String v)
	{
		setSymbolPrefix(v);
	}
}
