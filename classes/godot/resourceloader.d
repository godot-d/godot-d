/**
Singleton used to load resource files.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourceloader;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
import godot.resourceinteractiveloader;
/**
Singleton used to load resource files.

Singleton used to load resource files from the filesystem.
It uses the many $(D ResourceFormatLoader) classes registered in the engine (either built-in or from a plugin) to load files into memory and convert them to a format that can be used by the engine.
*/
@GodotBaseClass struct ResourceLoaderSingleton
{
	package(godot) enum string _GODOT_internal_name = "_ResourceLoader";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "ResourceLoader";
		@GodotName("exists") GodotMethod!(bool, String, String) exists;
		@GodotName("get_dependencies") GodotMethod!(PoolStringArray, String) getDependencies;
		@GodotName("get_recognized_extensions_for_type") GodotMethod!(PoolStringArray, String) getRecognizedExtensionsForType;
		@GodotName("has") GodotMethod!(bool, String) has;
		@GodotName("has_cached") GodotMethod!(bool, String) hasCached;
		@GodotName("load") GodotMethod!(Resource, String, String, bool) load;
		@GodotName("load_interactive") GodotMethod!(ResourceInteractiveLoader, String, String) loadInteractive;
		@GodotName("set_abort_on_missing_resources") GodotMethod!(void, bool) setAbortOnMissingResources;
	}
	/// 
	pragma(inline, true) bool opEquals(in ResourceLoaderSingleton other) const
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
	/// Construct a new instance of ResourceLoaderSingleton.
	/// Note: use `memnew!ResourceLoaderSingleton` instead.
	static ResourceLoaderSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_ResourceLoader");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceLoaderSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns whether a recognized resource exists for the given `path`.
	An optional `type_hint` can be used to further specify the $(D Resource) type that should be handled by the $(D ResourceFormatLoader).
	*/
	bool exists(in String path, in String type_hint = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.exists, _godot_object, path, type_hint);
	}
	/**
	Returns the dependencies for the resource at the given `path`.
	*/
	PoolStringArray getDependencies(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getDependencies, _godot_object, path);
	}
	/**
	Returns the list of recognized extensions for a resource type.
	*/
	PoolStringArray getRecognizedExtensionsForType(in String type)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getRecognizedExtensionsForType, _godot_object, type);
	}
	/**
	$(I Deprecated method.) Use $(D hasCached) or $(D exists) instead.
	*/
	bool has(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.has, _godot_object, path);
	}
	/**
	Returns whether a cached resource is available for the given `path`.
	Once a resource has been loaded by the engine, it is cached in memory for faster access, and future calls to the $(D load) or $(D loadInteractive) methods will use the cached version. The cached resource can be overridden by using $(D Resource.takeOverPath) on a new resource for that same path.
	*/
	bool hasCached(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasCached, _godot_object, path);
	}
	/**
	Loads a resource at the given `path`, caching the result for further access.
	The registered $(D ResourceFormatLoader)s are queried sequentially to find the first one which can handle the file's extension, and then attempt loading. If loading fails, the remaining ResourceFormatLoaders are also attempted.
	An optional `type_hint` can be used to further specify the $(D Resource) type that should be handled by the $(D ResourceFormatLoader). Anything that inherits from $(D Resource) can be used as a type hint, for example $(D Image).
	If `no_cache` is `true`, the resource cache will be bypassed and the resource will be loaded anew. Otherwise, the cached resource will be returned if it exists.
	Returns an empty resource if no $(D ResourceFormatLoader) could handle the file.
	GDScript has a simplified $(D @GDScript.load) built-in method which can be used in most situations, leaving the use of $(D ResourceLoader) for more advanced scenarios.
	*/
	Ref!Resource load(in String path, in String type_hint = gs!"", in bool no_cache = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(GDNativeClassBinding.load, _godot_object, path, type_hint, no_cache);
	}
	/**
	Starts loading a resource interactively. The returned $(D ResourceInteractiveLoader) object allows to load with high granularity, calling its $(D ResourceInteractiveLoader.poll) method successively to load chunks.
	An optional `type_hint` can be used to further specify the $(D Resource) type that should be handled by the $(D ResourceFormatLoader). Anything that inherits from $(D Resource) can be used as a type hint, for example $(D Image).
	*/
	Ref!ResourceInteractiveLoader loadInteractive(in String path, in String type_hint = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ResourceInteractiveLoader)(GDNativeClassBinding.loadInteractive, _godot_object, path, type_hint);
	}
	/**
	Changes the behavior on missing sub-resources. The default behavior is to abort loading.
	*/
	void setAbortOnMissingResources(in bool abort)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAbortOnMissingResources, _godot_object, abort);
	}
}
/// Returns: the ResourceLoaderSingleton
@property @nogc nothrow pragma(inline, true)
ResourceLoaderSingleton ResourceLoader()
{
	checkClassBinding!ResourceLoaderSingleton();
	return ResourceLoaderSingleton(ResourceLoaderSingleton.GDNativeClassBinding._singleton);
}
