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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.configfile;
import godot.reference;
/**

*/
@GodotBaseClass struct GDNativeLibrary
{
	enum string _GODOT_internal_name = "GDNativeLibrary";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_config_file") GodotMethod!(ConfigFile) getConfigFile;
		@GodotName("set_config_file") GodotMethod!(void, ConfigFile) setConfigFile;
		@GodotName("get_current_library_path") GodotMethod!(String) getCurrentLibraryPath;
		@GodotName("get_current_dependencies") GodotMethod!(PoolStringArray) getCurrentDependencies;
		@GodotName("should_load_once") GodotMethod!(bool) shouldLoadOnce;
		@GodotName("is_singleton") GodotMethod!(bool) isSingleton;
		@GodotName("get_symbol_prefix") GodotMethod!(String) getSymbolPrefix;
		@GodotName("is_reloadable") GodotMethod!(bool) isReloadable;
		@GodotName("set_load_once") GodotMethod!(void, bool) setLoadOnce;
		@GodotName("set_singleton") GodotMethod!(void, bool) setSingleton;
		@GodotName("set_symbol_prefix") GodotMethod!(void, String) setSymbolPrefix;
		@GodotName("set_reloadable") GodotMethod!(void, bool) setReloadable;
	}
	bool opEquals(in GDNativeLibrary other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GDNativeLibrary opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		return ptrcall!(ConfigFile)(_classBinding.getConfigFile, _godot_object);
	}
	/**
	
	*/
	void setConfigFile(ConfigFile config_file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConfigFile, _godot_object, config_file);
	}
	/**
	
	*/
	String getCurrentLibraryPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getCurrentLibraryPath, _godot_object);
	}
	/**
	
	*/
	PoolStringArray getCurrentDependencies() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getCurrentDependencies, _godot_object);
	}
	/**
	
	*/
	bool shouldLoadOnce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.shouldLoadOnce, _godot_object);
	}
	/**
	
	*/
	bool isSingleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSingleton, _godot_object);
	}
	/**
	
	*/
	String getSymbolPrefix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSymbolPrefix, _godot_object);
	}
	/**
	
	*/
	bool isReloadable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isReloadable, _godot_object);
	}
	/**
	
	*/
	void setLoadOnce(in bool load_once)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLoadOnce, _godot_object, load_once);
	}
	/**
	
	*/
	void setSingleton(in bool singleton)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSingleton, _godot_object, singleton);
	}
	/**
	
	*/
	void setSymbolPrefix(in String symbol_prefix)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSymbolPrefix, _godot_object, symbol_prefix);
	}
	/**
	
	*/
	void setReloadable(in bool reloadable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setReloadable, _godot_object, reloadable);
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
}
