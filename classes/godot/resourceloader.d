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
	enum string _GODOT_internal_name = "_ResourceLoader";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "ResourceLoader";
		@GodotName("load_interactive") GodotMethod!(ResourceInteractiveLoader, String, String) loadInteractive;
		@GodotName("load") GodotMethod!(Resource, String, String, bool) load;
		@GodotName("get_recognized_extensions_for_type") GodotMethod!(PoolStringArray, String) getRecognizedExtensionsForType;
		@GodotName("set_abort_on_missing_resources") GodotMethod!(void, bool) setAbortOnMissingResources;
		@GodotName("get_dependencies") GodotMethod!(PoolStringArray, String) getDependencies;
		@GodotName("has_cached") GodotMethod!(bool, String) hasCached;
		@GodotName("exists") GodotMethod!(bool, String, String) exists;
		@GodotName("has") GodotMethod!(bool, String) has;
	}
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
	/**
	Load a resource interactively, the returned object allows to load with high granularity.
	*/
	Ref!ResourceInteractiveLoader loadInteractive(in String path, in String type_hint = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ResourceInteractiveLoader)(_classBinding.loadInteractive, _godot_object, path, type_hint);
	}
	/**
	
	*/
	Ref!Resource load(in String path, in String type_hint = gs!"", in bool p_no_cache = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(_classBinding.load, _godot_object, path, type_hint, p_no_cache);
	}
	/**
	Return the list of recognized extensions for a resource type.
	*/
	PoolStringArray getRecognizedExtensionsForType(in String type)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getRecognizedExtensionsForType, _godot_object, type);
	}
	/**
	Change the behavior on missing sub-resources. Default is to abort load.
	*/
	void setAbortOnMissingResources(in bool abort)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAbortOnMissingResources, _godot_object, abort);
	}
	/**
	
	*/
	PoolStringArray getDependencies(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getDependencies, _godot_object, path);
	}
	/**
	
	*/
	bool hasCached(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasCached, _godot_object, path);
	}
	/**
	
	*/
	bool exists(in String path, in String type_hint = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.exists, _godot_object, path, type_hint);
	}
	/**
	
	*/
	bool has(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.has, _godot_object, path);
	}
}
/// Returns: the ResourceLoaderSingleton
@property @nogc nothrow pragma(inline, true)
ResourceLoaderSingleton ResourceLoader()
{
	checkClassBinding!ResourceLoaderSingleton();
	return ResourceLoaderSingleton(ResourceLoaderSingleton._classBinding._singleton);
}
