/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resource;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.node;
/**

*/
@GodotBaseClass struct Resource
{
	package(godot) enum string _GODOT_internal_name = "Resource";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_setup_local_to_scene") GodotMethod!(void) _setupLocalToScene;
		@GodotName("duplicate") GodotMethod!(Resource, bool) duplicate;
		@GodotName("emit_changed") GodotMethod!(void) emitChanged;
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
	/// 
	pragma(inline, true) bool opEquals(in Resource other) const
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
	/// Construct a new instance of Resource.
	/// Note: use `memnew!Resource` instead.
	static Resource _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Resource");
		if(constructor is null) return typeof(this).init;
		return cast(Resource)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _setupLocalToScene()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_setup_local_to_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Ref!Resource duplicate(in bool subresources = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(GDNativeClassBinding.duplicate, _godot_object, subresources);
	}
	/**
	
	*/
	void emitChanged()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.emitChanged, _godot_object);
	}
	/**
	
	*/
	Node getLocalScene() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getLocalScene, _godot_object);
	}
	/**
	
	*/
	String getName()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getName, _godot_object);
	}
	/**
	
	*/
	String getPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPath, _godot_object);
	}
	/**
	
	*/
	RID getRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getRid, _godot_object);
	}
	/**
	
	*/
	bool isLocalToScene() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isLocalToScene, _godot_object);
	}
	/**
	
	*/
	void setLocalToScene(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLocalToScene, _godot_object, enable);
	}
	/**
	
	*/
	void setName(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setName, _godot_object, name);
	}
	/**
	
	*/
	void setPath(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPath, _godot_object, path);
	}
	/**
	
	*/
	void setupLocalToScene()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setupLocalToScene, _godot_object);
	}
	/**
	
	*/
	void takeOverPath(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.takeOverPath, _godot_object, path);
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
