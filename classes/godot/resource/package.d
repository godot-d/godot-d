/**
Base class for all resources.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resource;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.node;
/**
Base class for all resources.

Resource is the base class for all resource types. Resources are primarily data containers. They are reference counted and freed when no longer in use. They are also loaded only once from disk, and further attempts to load the resource will return the same reference (all this in contrast to a $(D Node), which is not reference counted and can be instanced from disk as many times as desired). Resources can be saved externally on disk or bundled into another object, such as a $(D Node) or another resource.
*/
@GodotBaseClass struct Resource
{
	static immutable string _GODOT_internal_name = "Resource";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Resource other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Resource opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Resource _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Resource");
		if(constructor is null) return typeof(this).init;
		return cast(Resource)(constructor());
	}
	package(godot) static GodotMethod!(void) _GODOT__setup_local_to_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "_setup_local_to_scene") = _GODOT__setup_local_to_scene;
	/**
	
	*/
	void _setupLocalToScene()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_setup_local_to_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_path") = _GODOT_set_path;
	/**
	
	*/
	void setPath(StringArg0)(in StringArg0 path)
	{
		_GODOT_set_path.bind("Resource", "set_path");
		ptrcall!(void)(_GODOT_set_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_take_over_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "take_over_path") = _GODOT_take_over_path;
	/**
	Set the path of the resource. Differs from set_path(), if another `Resource` exists with "path" it over-takes it, instead of failing.
	*/
	void takeOverPath(StringArg0)(in StringArg0 path)
	{
		_GODOT_take_over_path.bind("Resource", "take_over_path");
		ptrcall!(void)(_GODOT_take_over_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_path") = _GODOT_get_path;
	/**
	
	*/
	String getPath() const
	{
		_GODOT_get_path.bind("Resource", "get_path");
		return ptrcall!(String)(_GODOT_get_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_name") = _GODOT_set_name;
	/**
	
	*/
	void setName(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_name.bind("Resource", "set_name");
		ptrcall!(void)(_GODOT_set_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	/**
	
	*/
	String getName() const
	{
		_GODOT_get_name.bind("Resource", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rid") = _GODOT_get_rid;
	/**
	Return the RID of the resource (or an empty RID). Many resources (such as $(D Texture), $(D Mesh), etc) are high level abstractions of resources stored in a server, so this function will return the original RID.
	*/
	RID getRid() const
	{
		_GODOT_get_rid.bind("Resource", "get_rid");
		return ptrcall!(RID)(_GODOT_get_rid, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_local_to_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_local_to_scene") = _GODOT_set_local_to_scene;
	/**
	
	*/
	void setLocalToScene(in bool enable)
	{
		_GODOT_set_local_to_scene.bind("Resource", "set_local_to_scene");
		ptrcall!(void)(_GODOT_set_local_to_scene, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_local_to_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_local_to_scene") = _GODOT_is_local_to_scene;
	/**
	
	*/
	bool isLocalToScene() const
	{
		_GODOT_is_local_to_scene.bind("Resource", "is_local_to_scene");
		return ptrcall!(bool)(_GODOT_is_local_to_scene, _godot_object);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_local_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_local_scene") = _GODOT_get_local_scene;
	/**
	
	*/
	Node getLocalScene() const
	{
		_GODOT_get_local_scene.bind("Resource", "get_local_scene");
		return ptrcall!(Node)(_GODOT_get_local_scene, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_setup_local_to_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "setup_local_to_scene") = _GODOT_setup_local_to_scene;
	/**
	
	*/
	void setupLocalToScene()
	{
		_GODOT_setup_local_to_scene.bind("Resource", "setup_local_to_scene");
		ptrcall!(void)(_GODOT_setup_local_to_scene, _godot_object);
	}
	package(godot) static GodotMethod!(Resource, bool) _GODOT_duplicate;
	package(godot) alias _GODOT_methodBindInfo(string name : "duplicate") = _GODOT_duplicate;
	/**
	
	*/
	Ref!Resource duplicate(in bool subresources = false) const
	{
		_GODOT_duplicate.bind("Resource", "duplicate");
		return ptrcall!(Resource)(_GODOT_duplicate, _godot_object, subresources);
	}
	/**
	
	*/
	@property bool resourceLocalToScene()
	{
		return isLocalToScene();
	}
	/// ditto
	@property void resourceLocalToScene(bool v)
	{
		setLocalToScene(v);
	}
	/**
	
	*/
	@property String resourcePath()
	{
		return getPath();
	}
	/// ditto
	@property void resourcePath(String v)
	{
		setPath(v);
	}
	/**
	
	*/
	@property String resourceName()
	{
		return getName();
	}
	/// ditto
	@property void resourceName(String v)
	{
		setName(v);
	}
}
