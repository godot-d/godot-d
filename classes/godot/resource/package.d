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

Resource is the base class for all Godot-specific resource types, serving primarily as data containers. They are reference counted and freed when no longer in use. They are also cached once loaded from disk, so that any further attempts to load a resource from a given path will return the same reference (all this in contrast to a $(D Node), which is not reference counted and can be instanced from disk as many times as desired). Resources can be saved externally on disk or bundled into another object, such as a $(D Node) or another resource.
*/
@GodotBaseClass struct Resource
{
	enum string _GODOT_internal_name = "Resource";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_setup_local_to_scene") GodotMethod!(void) _setupLocalToScene;
		@GodotName("duplicate") GodotMethod!(Resource, bool) duplicate;
		@GodotName("get_local_scene") GodotMethod!(Node) getLocalScene;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("get_path") GodotMethod!(String) getPath;
		@GodotName("get_rid") GodotMethod!(RID) getRid;
		@GodotName("is_local_to_scene") GodotMethod!(bool) isLocalToScene;
		@GodotName("set_local_to_scene") GodotMethod!(void, bool) setLocalToScene;
		@GodotName("set_name") GodotMethod!(void, String) setName;
		@GodotName("set_path") GodotMethod!(void, String) setPath;
		@GodotName("setup_local_to_scene") GodotMethod!(void) setupLocalToScene;
		@GodotName("take_over_path") GodotMethod!(void, String) takeOverPath;
	}
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
	@disable new(size_t s);
	/**
	Virtual function which can be overridden to customize the behavior value of $(D setupLocalToScene).
	*/
	void _setupLocalToScene()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_setup_local_to_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Duplicates the resource, returning a new resource. By default, sub-resources are shared between resource copies for efficiency, this can be changed by passing `true` to the `subresources` argument.
	*/
	Ref!Resource duplicate(in bool subresources = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(_classBinding.duplicate, _godot_object, subresources);
	}
	/**
	If $(D resourceLocalToScene) is enabled and the resource was loaded from a $(D PackedScene) instantiation, returns the local scene where this resource's unique copy is in use. Otherwise, returns `null`.
	*/
	Node getLocalScene() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getLocalScene, _godot_object);
	}
	/**
	
	*/
	String getName()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getName, _godot_object);
	}
	/**
	
	*/
	String getPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getPath, _godot_object);
	}
	/**
	Returns the RID of the resource (or an empty RID). Many resources (such as $(D Texture), $(D Mesh), etc) are high-level abstractions of resources stored in a server, so this function will return the original RID.
	*/
	RID getRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getRid, _godot_object);
	}
	/**
	
	*/
	bool isLocalToScene() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isLocalToScene, _godot_object);
	}
	/**
	
	*/
	void setLocalToScene(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLocalToScene, _godot_object, enable);
	}
	/**
	
	*/
	void setName(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setName, _godot_object, name);
	}
	/**
	
	*/
	void setPath(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPath, _godot_object, path);
	}
	/**
	This method is called when a resource with $(D resourceLocalToScene) enabled is loaded from a $(D PackedScene) instantiation. Its behavior can be customized by overriding $(D _setupLocalToScene) from script.
	For most resources, this method performs no base logic. $(D ViewportTexture) performs custom logic to properly set the proxy texture and flags in the local viewport.
	*/
	void setupLocalToScene()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setupLocalToScene, _godot_object);
	}
	/**
	Sets the path of the resource, potentially overriding an existing cache entry for this path. This differs from setting $(D resourcePath), as the latter would error out if another resource was already cached for the given path.
	*/
	void takeOverPath(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.takeOverPath, _godot_object, path);
	}
	/**
	If `true`, the resource will be made unique in each instance of its local scene. It can thus be modified in a scene instance without impacting other instances of that same scene.
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
	The name of the resource. This is an optional identifier.
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
	/**
	The path to the resource. In case it has its own file, it will return its filepath. If it's tied to the scene, it will return the scene's path, followed by the resource's index.
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
}
