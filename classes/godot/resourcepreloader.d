/**
Resource Preloader Node.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourcepreloader;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node;
import godot.resource;
/**
Resource Preloader Node.

This node is used to preload sub-resources inside a scene, so when the scene is loaded all the resources are ready to use and be retrieved from here.
*/
@GodotBaseClass struct ResourcePreloader
{
	static immutable string _GODOT_internal_name = "ResourcePreloader";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ResourcePreloader other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ResourcePreloader opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ResourcePreloader _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ResourcePreloader");
		if(constructor is null) return typeof(this).init;
		return cast(ResourcePreloader)(constructor());
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_resources;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_resources") = _GODOT__set_resources;
	/**
	
	*/
	void _setResources(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_resources");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_resources;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_resources") = _GODOT__get_resources;
	/**
	
	*/
	Array _getResources() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_resources");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	package(godot) static GodotMethod!(void, String, Resource) _GODOT_add_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_resource") = _GODOT_add_resource;
	/**
	
	*/
	void addResource(StringArg0)(in StringArg0 name, Resource resource)
	{
		_GODOT_add_resource.bind("ResourcePreloader", "add_resource");
		ptrcall!(void)(_GODOT_add_resource, _godot_object, name, resource);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_resource") = _GODOT_remove_resource;
	/**
	Remove a resource from the preloader by text id.
	*/
	void removeResource(StringArg0)(in StringArg0 name)
	{
		_GODOT_remove_resource.bind("ResourcePreloader", "remove_resource");
		ptrcall!(void)(_GODOT_remove_resource, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_rename_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename_resource") = _GODOT_rename_resource;
	/**
	Rename a resource inside the preloader, from a text-id to a new text-id.
	*/
	void renameResource(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 newname)
	{
		_GODOT_rename_resource.bind("ResourcePreloader", "rename_resource");
		ptrcall!(void)(_GODOT_rename_resource, _godot_object, name, newname);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_resource") = _GODOT_has_resource;
	/**
	Return true if the preloader has a given resource.
	*/
	bool hasResource(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_resource.bind("ResourcePreloader", "has_resource");
		return ptrcall!(bool)(_GODOT_has_resource, _godot_object, name);
	}
	package(godot) static GodotMethod!(Resource, String) _GODOT_get_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resource") = _GODOT_get_resource;
	/**
	Return the resource given a text-id.
	*/
	Ref!Resource getResource(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_resource.bind("ResourcePreloader", "get_resource");
		return ptrcall!(Resource)(_GODOT_get_resource, _godot_object, name);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_resource_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resource_list") = _GODOT_get_resource_list;
	/**
	Return the list of resources inside the preloader.
	*/
	PoolStringArray getResourceList() const
	{
		_GODOT_get_resource_list.bind("ResourcePreloader", "get_resource_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_resource_list, _godot_object);
	}
	/**
	
	*/
	@property Array resources()
	{
		return _getResources();
	}
	/// ditto
	@property void resources(Array v)
	{
		_setResources(v);
	}
}
