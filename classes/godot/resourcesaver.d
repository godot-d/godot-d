/**
Singleton for saving Godot-specific resource types.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourcesaver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
/**
Singleton for saving Godot-specific resource types.

Singleton for saving Godot-specific resource types to the filesystem.
It uses the many $(D ResourceFormatSaver) classes registered in the engine (either built-in or from a plugin) to save engine-specific resource data to text-based (e.g. `.tres` or `.tscn`) or binary files (e.g. `.res` or `.scn`).
*/
@GodotBaseClass struct ResourceSaverSingleton
{
	package(godot) enum string _GODOT_internal_name = "_ResourceSaver";
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
		immutable char* _singletonName = "ResourceSaver";
		@GodotName("get_recognized_extensions") GodotMethod!(PoolStringArray, Resource) getRecognizedExtensions;
		@GodotName("save") GodotMethod!(GodotError, String, Resource, long) save;
	}
	/// 
	pragma(inline, true) bool opEquals(in ResourceSaverSingleton other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) ResourceSaverSingleton opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of ResourceSaverSingleton.
	/// Note: use `memnew!ResourceSaverSingleton` instead.
	static ResourceSaverSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_ResourceSaver");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceSaverSingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum SaverFlags : int
	{
		/**
		Save the resource with a path relative to the scene which uses it.
		*/
		flagRelativePaths = 1,
		/**
		Bundles external resources.
		*/
		flagBundleResources = 2,
		/**
		Changes the $(D Resource.resourcePath) of the saved resource to match its new location.
		*/
		flagChangePath = 4,
		/**
		Do not save editor-specific metadata (identified by their `__editor` prefix).
		*/
		flagOmitEditorProperties = 8,
		/**
		Save as big endian (see $(D File.endianSwap)).
		*/
		flagSaveBigEndian = 16,
		/**
		Compress the resource on save using $(D constant File.COMPRESSION_ZSTD). Only available for binary resource types.
		*/
		flagCompress = 32,
		/**
		Take over the paths of the saved subresources (see $(D Resource.takeOverPath)).
		*/
		flagReplaceSubresourcePaths = 64,
	}
	/// 
	enum Constants : int
	{
		flagRelativePaths = 1,
		flagBundleResources = 2,
		flagChangePath = 4,
		flagOmitEditorProperties = 8,
		flagSaveBigEndian = 16,
		flagCompress = 32,
		flagReplaceSubresourcePaths = 64,
	}
	/**
	Returns the list of extensions available for saving a resource of a given type.
	*/
	PoolStringArray getRecognizedExtensions(Resource type)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getRecognizedExtensions, _godot_object, type);
	}
	/**
	Saves a resource to disk to the given path, using a $(D ResourceFormatSaver) that recognizes the resource object.
	The `flags` bitmask can be specified to customize the save behavior.
	Returns $(D constant OK) on success.
	*/
	GodotError save(in String path, Resource resource, in long flags = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.save, _godot_object, path, resource, flags);
	}
}
/// Returns: the ResourceSaverSingleton
@property @nogc nothrow pragma(inline, true)
ResourceSaverSingleton ResourceSaver()
{
	checkClassBinding!ResourceSaverSingleton();
	return ResourceSaverSingleton(ResourceSaverSingleton.GDNativeClassBinding._singleton);
}
