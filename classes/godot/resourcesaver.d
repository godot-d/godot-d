/**
Resource Saving Interface.

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
Resource Saving Interface.

This interface is used for saving resources to disk.
*/
@GodotBaseClass struct ResourceSaverSingleton
{
	static immutable string _GODOT_internal_name = "_ResourceSaver";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "ResourceSaver";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	}
	package(godot) static GodotMethod!(GodotError, String, Resource, long) _GODOT_save;
	package(godot) alias _GODOT_methodBindInfo(string name : "save") = _GODOT_save;
	/**
	Save a resource to disk, to a given path.
	*/
	GodotError save(StringArg0)(in StringArg0 path, Resource resource, in long flags = 0)
	{
		_GODOT_save.bind("_ResourceSaver", "save");
		return ptrcall!(GodotError)(_GODOT_save, _godot_object, path, resource, flags);
	}
	package(godot) static GodotMethod!(PoolStringArray, Resource) _GODOT_get_recognized_extensions;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_recognized_extensions") = _GODOT_get_recognized_extensions;
	/**
	Return the list of extensions available for saving a resource of a given type.
	*/
	PoolStringArray getRecognizedExtensions(Resource type)
	{
		_GODOT_get_recognized_extensions.bind("_ResourceSaver", "get_recognized_extensions");
		return ptrcall!(PoolStringArray)(_GODOT_get_recognized_extensions, _godot_object, type);
	}
}
/// Returns: the ResourceSaverSingleton
@property @nogc nothrow pragma(inline, true)
ResourceSaverSingleton ResourceSaver()
{
	return ResourceSaverSingleton._GODOT_singleton();
}
