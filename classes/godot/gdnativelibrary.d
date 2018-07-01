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
/**

*/
@GodotBaseClass struct GDNativeLibrary
{
	static immutable string _GODOT_internal_name = "GDNativeLibrary";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(ConfigFile) _GODOT_get_config_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_config_file") = _GODOT_get_config_file;
	/**
	
	*/
	Ref!ConfigFile getConfigFile()
	{
		_GODOT_get_config_file.bind("GDNativeLibrary", "get_config_file");
		return ptrcall!(ConfigFile)(_GODOT_get_config_file, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_library_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_library_path") = _GODOT_get_current_library_path;
	/**
	
	*/
	String getCurrentLibraryPath() const
	{
		_GODOT_get_current_library_path.bind("GDNativeLibrary", "get_current_library_path");
		return ptrcall!(String)(_GODOT_get_current_library_path, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_current_dependencies;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_dependencies") = _GODOT_get_current_dependencies;
	/**
	
	*/
	PoolStringArray getCurrentDependencies() const
	{
		_GODOT_get_current_dependencies.bind("GDNativeLibrary", "get_current_dependencies");
		return ptrcall!(PoolStringArray)(_GODOT_get_current_dependencies, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_should_load_once;
	package(godot) alias _GODOT_methodBindInfo(string name : "should_load_once") = _GODOT_should_load_once;
	/**
	
	*/
	bool shouldLoadOnce() const
	{
		_GODOT_should_load_once.bind("GDNativeLibrary", "should_load_once");
		return ptrcall!(bool)(_GODOT_should_load_once, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_singleton") = _GODOT_is_singleton;
	/**
	
	*/
	bool isSingleton() const
	{
		_GODOT_is_singleton.bind("GDNativeLibrary", "is_singleton");
		return ptrcall!(bool)(_GODOT_is_singleton, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_symbol_prefix;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_symbol_prefix") = _GODOT_get_symbol_prefix;
	/**
	
	*/
	String getSymbolPrefix() const
	{
		_GODOT_get_symbol_prefix.bind("GDNativeLibrary", "get_symbol_prefix");
		return ptrcall!(String)(_GODOT_get_symbol_prefix, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_reloadable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_reloadable") = _GODOT_is_reloadable;
	/**
	
	*/
	bool isReloadable() const
	{
		_GODOT_is_reloadable.bind("GDNativeLibrary", "is_reloadable");
		return ptrcall!(bool)(_GODOT_is_reloadable, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_load_once;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_load_once") = _GODOT_set_load_once;
	/**
	
	*/
	void setLoadOnce(in bool load_once)
	{
		_GODOT_set_load_once.bind("GDNativeLibrary", "set_load_once");
		ptrcall!(void)(_GODOT_set_load_once, _godot_object, load_once);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_singleton") = _GODOT_set_singleton;
	/**
	
	*/
	void setSingleton(in bool singleton)
	{
		_GODOT_set_singleton.bind("GDNativeLibrary", "set_singleton");
		ptrcall!(void)(_GODOT_set_singleton, _godot_object, singleton);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_symbol_prefix;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_symbol_prefix") = _GODOT_set_symbol_prefix;
	/**
	
	*/
	void setSymbolPrefix(StringArg0)(in StringArg0 symbol_prefix)
	{
		_GODOT_set_symbol_prefix.bind("GDNativeLibrary", "set_symbol_prefix");
		ptrcall!(void)(_GODOT_set_symbol_prefix, _godot_object, symbol_prefix);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_reloadable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_reloadable") = _GODOT_set_reloadable;
	/**
	
	*/
	void setReloadable(in bool reloadable)
	{
		_GODOT_set_reloadable.bind("GDNativeLibrary", "set_reloadable");
		ptrcall!(void)(_GODOT_set_reloadable, _godot_object, reloadable);
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
