/**
An abstraction of a serialized scene.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packedscene;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.node;
import godot.scenestate;
/**
An abstraction of a serialized scene.

A simplified interface to a scene file. Provides access to operations and checks that can be performed on the scene resource itself.
TODO: explain ownership, and that node does not need to own itself
*/
@GodotBaseClass struct PackedScene
{
	static immutable string _GODOT_internal_name = "PackedScene";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PackedScene other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PackedScene opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PackedScene _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PackedScene");
		if(constructor is null) return typeof(this).init;
		return cast(PackedScene)(constructor());
	}
	/// 
	enum GenEditState : int
	{
		/**
		If passed to $(D instance), blocks edits to the scene state.
		*/
		genEditStateDisabled = 0,
		/**
		If passed to $(D instance), provides local scene resources to the local scene. Requires tools compiled.
		*/
		genEditStateInstance = 1,
		/**
		If passed to $(D instance), provides local scene resources to the local scene. Only the main scene should receive the main edit state. Requires tools compiled.
		*/
		genEditStateMain = 2,
	}
	/// 
	enum Constants : int
	{
		genEditStateDisabled = 0,
		genEditStateInstance = 1,
		genEditStateMain = 2,
	}
	package(godot) static GodotMethod!(GodotError, GodotObject) _GODOT_pack;
	package(godot) alias _GODOT_methodBindInfo(string name : "pack") = _GODOT_pack;
	/**
	Pack will ignore any sub-nodes not owned by given node. See $(D Node.setOwner).
	*/
	GodotError pack(GodotObject path)
	{
		_GODOT_pack.bind("PackedScene", "pack");
		return ptrcall!(GodotError)(_GODOT_pack, _godot_object, path);
	}
	package(godot) static GodotMethod!(Node, long) _GODOT_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance") = _GODOT_instance;
	/**
	Instantiates the scene's node hierarchy. Triggers child scene instantiation(s). Triggers the $(D GodotObject.notificationInstanced) notification on the root node.
	*/
	Node instance(in long edit_state = 0) const
	{
		_GODOT_instance.bind("PackedScene", "instance");
		return ptrcall!(Node)(_GODOT_instance, _godot_object, edit_state);
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_instance") = _GODOT_can_instance;
	/**
	Returns `true` if the scene file has nodes.
	*/
	bool canInstance() const
	{
		_GODOT_can_instance.bind("PackedScene", "can_instance");
		return ptrcall!(bool)(_GODOT_can_instance, _godot_object);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_bundled_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_bundled_scene") = _GODOT__set_bundled_scene;
	/**
	
	*/
	void _setBundledScene(in Dictionary arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_bundled_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_bundled_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_bundled_scene") = _GODOT__get_bundled_scene;
	/**
	
	*/
	Dictionary _getBundledScene() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_bundled_scene");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	package(godot) static GodotMethod!(SceneState) _GODOT_get_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_state") = _GODOT_get_state;
	/**
	Returns the `SceneState` representing the scene file contents.
	*/
	Ref!SceneState getState()
	{
		_GODOT_get_state.bind("PackedScene", "get_state");
		return ptrcall!(SceneState)(_GODOT_get_state, _godot_object);
	}
	/**
	A dictionary representation of the scene contents.
	Available keys include "rnames" and "variants" for resources, "node_count", "nodes", "node_paths" for nodes, "editable_instances" for base scene children overrides, "conn_count" and "conns" for signal connections, and "version" for the format style of the PackedScene.
	*/
	@property Dictionary _bundled()
	{
		return _getBundledScene();
	}
	/// ditto
	@property void _bundled(Dictionary v)
	{
		_setBundledScene(v);
	}
}
