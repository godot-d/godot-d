/**
Resource Loader.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourceloader;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resourceinteractiveloader;
import godot.resource;
/**
Resource Loader.

This is a static object accessible as `ResourceLoader`. GDScript has a simplified load() function, though.
*/
@GodotBaseClass struct ResourceLoaderSingleton
{
	static immutable string _GODOT_internal_name = "_ResourceLoader";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "ResourceLoader";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ResourceLoaderSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ResourceLoaderSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ResourceLoaderSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_ResourceLoader");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceLoaderSingleton)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(ResourceInteractiveLoader, String, String) _GODOT_load_interactive;
	package(godot) alias _GODOT_methodBindInfo(string name : "load_interactive") = _GODOT_load_interactive;
	/**
	Load a resource interactively, the returned object allows to load with high granularity.
	*/
	Ref!ResourceInteractiveLoader loadInteractive(StringArg0, StringArg1)(in StringArg0 path, in StringArg1 type_hint = "")
	{
		_GODOT_load_interactive.bind("_ResourceLoader", "load_interactive");
		return ptrcall!(ResourceInteractiveLoader)(_GODOT_load_interactive, _godot_object, path, type_hint);
	}
	package(godot) static GodotMethod!(Resource, String, String, bool) _GODOT_load;
	package(godot) alias _GODOT_methodBindInfo(string name : "load") = _GODOT_load;
	/**
	
	*/
	Ref!Resource load(StringArg0, StringArg1)(in StringArg0 path, in StringArg1 type_hint = "", in bool p_no_cache = false)
	{
		_GODOT_load.bind("_ResourceLoader", "load");
		return ptrcall!(Resource)(_GODOT_load, _godot_object, path, type_hint, p_no_cache);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_recognized_extensions_for_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_recognized_extensions_for_type") = _GODOT_get_recognized_extensions_for_type;
	/**
	Return the list of recognized extensions for a resource type.
	*/
	PoolStringArray getRecognizedExtensionsForType(StringArg0)(in StringArg0 type)
	{
		_GODOT_get_recognized_extensions_for_type.bind("_ResourceLoader", "get_recognized_extensions_for_type");
		return ptrcall!(PoolStringArray)(_GODOT_get_recognized_extensions_for_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_abort_on_missing_resources;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_abort_on_missing_resources") = _GODOT_set_abort_on_missing_resources;
	/**
	Change the behavior on missing sub-resources. Default is to abort load.
	*/
	void setAbortOnMissingResources(in bool abort)
	{
		_GODOT_set_abort_on_missing_resources.bind("_ResourceLoader", "set_abort_on_missing_resources");
		ptrcall!(void)(_GODOT_set_abort_on_missing_resources, _godot_object, abort);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_dependencies;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dependencies") = _GODOT_get_dependencies;
	/**
	
	*/
	PoolStringArray getDependencies(StringArg0)(in StringArg0 path)
	{
		_GODOT_get_dependencies.bind("_ResourceLoader", "get_dependencies");
		return ptrcall!(PoolStringArray)(_GODOT_get_dependencies, _godot_object, path);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has;
	package(godot) alias _GODOT_methodBindInfo(string name : "has") = _GODOT_has;
	/**
	
	*/
	bool has(StringArg0)(in StringArg0 path)
	{
		_GODOT_has.bind("_ResourceLoader", "has");
		return ptrcall!(bool)(_GODOT_has, _godot_object, path);
	}
}
/// Returns: the ResourceLoaderSingleton
@property @nogc nothrow pragma(inline, true)
ResourceLoaderSingleton ResourceLoader()
{
	return ResourceLoaderSingleton._GODOT_singleton();
}
