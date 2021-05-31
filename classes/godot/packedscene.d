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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.scenestate;
import godot.node;
/**
An abstraction of a serialized scene.

A simplified interface to a scene file. Provides access to operations and checks that can be performed on the scene resource itself.
Can be used to save a node to a file. When saving, the node as well as all the nodes it owns get saved (see `owner` property on $(D Node)).
$(B Note:) The node doesn't need to own itself.
$(B Example of loading a saved scene:)


# Use `load()` instead of `preload()` if the path isn't known at compile-time.
var scene = preload("res://scene.tscn").instance()
# Add the node as a child of the node the script is attached to.
add_child(scene)


$(B Example of saving a node with different owners:) The following example creates 3 objects: `Node2D` (`node`), `RigidBody2D` (`rigid`) and `CollisionObject2D` (`collision`). `collision` is a child of `rigid` which is a child of `node`. Only `rigid` is owned by `node` and `pack` will therefore only save those two nodes, but not `collision`.


# Create the objects.
var node = Node2D.new()
var rigid = RigidBody2D.new()
var collision = CollisionShape2D.new()

# Create the object hierarchy.
rigid.add_child(collision)
node.add_child(rigid)

# Change owner of `rigid`, but not of `collision`.
rigid.owner = node

var scene = PackedScene.new()
# Only `node` and `rigid` are now packed.
var result = scene.pack(node)
if result == OK:
    var error = ResourceSaver.save("res://path/name.scn", scene)  # Or "user://..."
    if error != OK:
        push_error("An error occurred while saving the scene to disk.")


*/
@GodotBaseClass struct PackedScene
{
	package(godot) enum string _GODOT_internal_name = "PackedScene";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_bundled_scene") GodotMethod!(Dictionary) _getBundledScene;
		@GodotName("_set_bundled_scene") GodotMethod!(void, Dictionary) _setBundledScene;
		@GodotName("can_instance") GodotMethod!(bool) canInstance;
		@GodotName("get_state") GodotMethod!(SceneState) getState;
		@GodotName("instance") GodotMethod!(Node, long) instance;
		@GodotName("pack") GodotMethod!(GodotError, Node) pack;
	}
	/// 
	pragma(inline, true) bool opEquals(in PackedScene other) const
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
	/// Construct a new instance of PackedScene.
	/// Note: use `memnew!PackedScene` instead.
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
		If passed to $(D instance), provides local scene resources to the local scene.
		$(B Note:) Only available in editor builds.
		*/
		genEditStateInstance = 1,
		/**
		If passed to $(D instance), provides local scene resources to the local scene. Only the main scene should receive the main edit state.
		$(B Note:) Only available in editor builds.
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
	
	*/
	Dictionary _getBundledScene() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_bundled_scene");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	void _setBundledScene(in Dictionary arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_bundled_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns `true` if the scene file has nodes.
	*/
	bool canInstance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canInstance, _godot_object);
	}
	/**
	Returns the `SceneState` representing the scene file contents.
	*/
	Ref!SceneState getState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneState)(GDNativeClassBinding.getState, _godot_object);
	}
	/**
	Instantiates the scene's node hierarchy. Triggers child scene instantiation(s). Triggers a $(D constant Node.NOTIFICATION_INSTANCED) notification on the root node.
	*/
	Node instance(in long edit_state = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.instance, _godot_object, edit_state);
	}
	/**
	Pack will ignore any sub-nodes not owned by given node. See $(D Node.owner).
	*/
	GodotError pack(Node path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.pack, _godot_object, path);
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
