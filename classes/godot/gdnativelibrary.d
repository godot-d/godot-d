/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.configfile;
/**

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
	/**
	
	*/
	Ref!ConfigFile getConfigFile()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ConfigFile)(GDNativeClassBinding.getConfigFile, _godot_object);
	}
	/**
	
	*/
	PoolStringArray getCurrentDependencies() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getCurrentDependencies, _godot_object);
	}
	/**
	
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
