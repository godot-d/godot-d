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

This node is used to preload sub-resources inside a scene, so when the scene is loaded, all the resources are ready to use and can be retrieved from the preloader.
GDScript has a simplified $(D @GDScript.preload) built-in method which can be used in most situations, leaving the use of $(D ResourcePreloader) for more advanced scenarios.
*/
@GodotBaseClass struct ResourcePreloader
{
	enum string _GODOT_internal_name = "ResourcePreloader";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_get_resources") GodotMethod!(Array) _getResources;
		@GodotName("_set_resources") GodotMethod!(void, Array) _setResources;
		@GodotName("add_resource") GodotMethod!(void, String, Resource) addResource;
		@GodotName("get_resource") GodotMethod!(Resource, String) getResource;
		@GodotName("get_resource_list") GodotMethod!(PoolStringArray) getResourceList;
		@GodotName("has_resource") GodotMethod!(bool, String) hasResource;
		@GodotName("remove_resource") GodotMethod!(void, String) removeResource;
		@GodotName("rename_resource") GodotMethod!(void, String, String) renameResource;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	Array _getResources() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_resources");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setResources(in Array arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_resources");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a resource to the preloader with the given `name`. If a resource with the given `name` already exists, the new resource will be renamed to "`name` N" where N is an incrementing number starting from 2.
	*/
	void addResource(in String name, Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addResource, _godot_object, name, resource);
	}
	/**
	Returns the resource associated to `name`.
	*/
	Ref!Resource getResource(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(_classBinding.getResource, _godot_object, name);
	}
	/**
	Returns the list of resources inside the preloader.
	*/
	PoolStringArray getResourceList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getResourceList, _godot_object);
	}
	/**
	Returns `true` if the preloader contains a resource associated to `name`.
	*/
	bool hasResource(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasResource, _godot_object, name);
	}
	/**
	Removes the resource associated to `name` from the preloader.
	*/
	void removeResource(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeResource, _godot_object, name);
	}
	/**
	Renames a resource inside the preloader from `name` to `newname`.
	*/
	void renameResource(in String name, in String newname)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameResource, _godot_object, name, newname);
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
