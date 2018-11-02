/**
Resource saving interface.

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
Resource saving interface.

Resource saving interface, used for saving resources to disk.
*/
@GodotBaseClass struct ResourceSaverSingleton
{
	enum string _GODOT_internal_name = "_ResourceSaver";
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
		immutable char* _singletonName = "ResourceSaver";
		@GodotName("save") GodotMethod!(GodotError, String, Resource, long) save;
		@GodotName("get_recognized_extensions") GodotMethod!(PoolStringArray, Resource) getRecognizedExtensions;
	}
	bool opEquals(in ResourceSaverSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ResourceSaverSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		
		*/
		flagRelativePaths = 1,
		/**
		
		*/
		flagBundleResources = 2,
		/**
		
		*/
		flagChangePath = 4,
		/**
		
		*/
		flagOmitEditorProperties = 8,
		/**
		
		*/
		flagSaveBigEndian = 16,
		/**
		
		*/
		flagCompress = 32,
		/**
		
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
	Saves a resource to disk.
	*/
	GodotError save(StringArg0)(in StringArg0 path, Resource resource, in long flags = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.save, _godot_object, path, resource, flags);
	}
	/**
	Returns the list of extensions available for saving a resource of a given type.
	*/
	PoolStringArray getRecognizedExtensions(Resource type)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getRecognizedExtensions, _godot_object, type);
	}
}
/// Returns: the ResourceSaverSingleton
@property @nogc nothrow pragma(inline, true)
ResourceSaverSingleton ResourceSaver()
{
	checkClassBinding!ResourceSaverSingleton();
	return ResourceSaverSingleton(ResourceSaverSingleton._classBinding._singleton);
}
