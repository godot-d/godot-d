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
import godot.reference;
/**
An abstraction of a serialized scene.

A simplified interface to a scene file. Provides access to operations and checks that can be performed on the scene resource itself.
Can be used to save a node to a file. When saving, the node as well as all the node it owns get saved (see `owner` property on $(D Node)). Note that the node doesn't need to own itself.
Example of saving a node with different owners: The following example creates 3 objects: `Node2D` (`node`), `RigidBody2D` (`rigid`) and `CollisionObject2D` (`collision`). `collision` is a child of `rigid` which is a child of `node`. Only `rigid` is owned by `node` and `pack` will therefore only save those two nodes, but not `collision`.


# create the objects
var node = Node2D.new()
var rigid = RigidBody2D.new()
var collision = CollisionShape2D.new()

# create the object hierarchy
rigid.add_child(collision)
node.add_child(rigid)

# change owner of rigid, but not of collision
rigid.owner = node

var scene = PackedScene.new()
# only node and rigid are now packed
var result = scene.pack(node)
if result == OK:
    ResourceSaver.save("res://path/name.scn", scene) # or user://...


*/
@GodotBaseClass struct PackedScene
{
	enum string _GODOT_internal_name = "PackedScene";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("pack") GodotMethod!(GodotError, Node) pack;
		@GodotName("instance") GodotMethod!(Node, long) instance;
		@GodotName("can_instance") GodotMethod!(bool) canInstance;
		@GodotName("_set_bundled_scene") GodotMethod!(void, Dictionary) _setBundledScene;
		@GodotName("_get_bundled_scene") GodotMethod!(Dictionary) _getBundledScene;
		@GodotName("get_state") GodotMethod!(SceneState) getState;
	}
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
	@disable new(size_t s);
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
	/**
	Pack will ignore any sub-nodes not owned by given node. See $(D Node.owner).
	*/
	GodotError pack(Node path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.pack, _godot_object, path);
	}
	/**
	Instantiates the scene's node hierarchy. Triggers child scene instantiation(s). Triggers $(D Node)'s `NOTIFICATION_INSTANCED` notification on the root node.
	*/
	Node instance(in long edit_state = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.instance, _godot_object, edit_state);
	}
	/**
	Returns `true` if the scene file has nodes.
	*/
	bool canInstance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.canInstance, _godot_object);
	}
	/**
	
	*/
	void _setBundledScene(in Dictionary arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_bundled_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Dictionary _getBundledScene() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_bundled_scene");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	Returns the `SceneState` representing the scene file contents.
	*/
	Ref!SceneState getState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneState)(_classBinding.getState, _godot_object);
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
