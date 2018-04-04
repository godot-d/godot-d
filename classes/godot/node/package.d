/**
Base class for all $(I scene) objects.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.node;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputevent;
import godot.inputeventkey;
import godot.scenetree;
import godot.viewport;
/**
Base class for all $(I scene) objects.

Nodes are Godot's building blocks. They can be assigned as the child of another node, resulting in a tree arrangement. A given node can contain any number of nodes as children with the requirement that all siblings (direct children of a node) should have unique names.
A tree of nodes is called a $(I scene). Scenes can be saved to the disk and then instanced into other scenes. This allows for very high flexibility in the architecture and data model of Godot projects.
$(B Scene tree:) The $(D SceneTree) contains the active tree of nodes. When a node is added to the scene tree, it receives the NOTIFICATION_ENTER_TREE notification and its $(D _enterTree) callback is triggered. Child nodes are always added $(I after) their parent node, i.e. the $(D _enterTree) callback of a parent node will be triggered before its child's.
Once all nodes have been added in the scene tree, they receive the NOTIFICATION_READY notification and their respective $(D _ready) callbacks are triggered. For groups of nodes, the $(D _ready) callback is called in reverse order, starting with the children and moving up to the parent nodes.
This means that when adding a node to the scene tree, the following order will be used for the callbacks: $(D _enterTree) of the parent, $(D _enterTree) of the children, $(D _ready) of the children and finally $(D _ready) of the parent (recursively for the entire scene tree).
$(B Processing:) Nodes can override the "process" state, so that they receive a callback on each frame requesting them to process (do something). Normal processing (callback $(D _process), toggled with $(D setProcess)) happens as fast as possible and is dependent on the frame rate, so the processing time $(I delta) is passed as an argument. Physics processing (callback $(D _physicsProcess), toggled with $(D setPhysicsProcess)) happens a fixed number of times per second (60 by default) and is useful for code related to the physics engine.
Nodes can also process input events. When present, the $(D _input) function will be called for each input that the program receives. In many cases, this can be overkill (unless used for simple projects), and the $(D _unhandledInput) function might be preferred; it is called when the input event was not handled by anyone else (typically, GUI $(D Control) nodes), ensuring that the node only receives the events that were meant for it.
To keep track of the scene hierarchy (especially when instancing scenes into other scenes), an "owner" can be set for the node with $(D setOwner). This keeps track of who instanced what. This is mostly useful when writing editors and tools, though.
Finally, when a node is freed with $(D free) or $(D queueFree), it will also free all its children.
$(B Groups:) Nodes can be added to as many groups as you want to be easy to manage, you could create groups like "enemies" or "collectables" for example, depending on your game. See $(D addToGroup), $(D isInGroup) and $(D removeFromGroup). You can then retrieve all nodes in these groups, iterate them and even call methods on groups via the methods on $(D SceneTree).
$(B Networking with nodes:) After connecting to a server (or making one, see $(D NetworkedMultiplayerENet)) it is possible to use the built-in RPC (remote procedure call) system to communicate over the network. By calling $(D rpc) with a method name, it will be called locally and in all connected peers (peers = clients and the server that accepts connections). To identify which node receives the RPC call Godot will use its $(D NodePath) (make sure node names are the same on all peers). Also take a look at the high-level networking tutorial and corresponding demos.
*/
@GodotBaseClass struct Node
{
	static immutable string _GODOT_internal_name = "Node";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Node other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Node opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Node _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Node");
		if(constructor is null) return typeof(this).init;
		return cast(Node)(constructor());
	}
	/// 
	enum PauseMode : int
	{
		/**
		Inherits pause mode from the node's parent. For the root node, it is equivalent to PAUSE_MODE_STOP. Default.
		*/
		pauseModeInherit = 0,
		/**
		Stop processing when the $(D SceneTree) is paused.
		*/
		pauseModeStop = 1,
		/**
		Continue to process regardless of the $(D SceneTree) pause state.
		*/
		pauseModeProcess = 2,
	}
	/// 
	enum DuplicateFlags : int
	{
		/**
		Duplicate the node's signals.
		*/
		duplicateSignals = 1,
		/**
		Duplicate the node's groups.
		*/
		duplicateGroups = 2,
		/**
		Duplicate the node's scripts.
		*/
		duplicateScripts = 4,
		/**
		Duplicate using instancing.
		*/
		duplicateUseInstancing = 8,
	}
	/// 
	enum RPCMode : int
	{
		/**
		Used with $(D rpcConfig) or $(D rsetConfig) to disable a method or property for all RPC calls, making it unavailable. Default for all methods.
		*/
		rpcModeDisabled = 0,
		/**
		Used with $(D rpcConfig) or $(D rsetConfig) to set a method to be called or a property to be changed only on the remote end, not locally. Analogous to the `remote` keyword.
		*/
		rpcModeRemote = 1,
		/**
		Used with $(D rpcConfig) or $(D rsetConfig) to set a method to be called or a property to be changed both on the remote end and locally. Analogous to the `sync` keyword.
		*/
		rpcModeSync = 2,
		/**
		Used with $(D rpcConfig) or $(D rsetConfig) to set a method to be called or a property to be changed only on the network master for this node. Analogous to the `master` keyword. See $(D setNetworkMaster).
		*/
		rpcModeMaster = 3,
		/**
		Used with $(D rpcConfig) or $(D rsetConfig) to set a method to be called or a property to be changed only on slaves for this node. Analogous to the `slave` keyword. See $(D setNetworkMaster).
		*/
		rpcModeSlave = 4,
	}
	/// 
	enum Constants : int
	{
		pauseModeInherit = 0,
		rpcModeDisabled = 0,
		pauseModeStop = 1,
		duplicateSignals = 1,
		rpcModeRemote = 1,
		duplicateGroups = 2,
		pauseModeProcess = 2,
		rpcModeSync = 2,
		rpcModeMaster = 3,
		rpcModeSlave = 4,
		duplicateScripts = 4,
		duplicateUseInstancing = 8,
		/**
		Notification received when the node enters a $(D SceneTree).
		*/
		notificationEnterTree = 10,
		/**
		Notification received when the node is about to exit a $(D SceneTree).
		*/
		notificationExitTree = 11,
		/**
		Notification received when the node is moved in the parent.
		*/
		notificationMovedInParent = 12,
		/**
		Notification received when the node is ready. See $(D _ready).
		*/
		notificationReady = 13,
		/**
		Notification received when the node is paused.
		*/
		notificationPaused = 14,
		/**
		Notification received when the node is unpaused.
		*/
		notificationUnpaused = 15,
		/**
		Notification received every frame when the physics process flag is set (see $(D setPhysicsProcess)).
		*/
		notificationPhysicsProcess = 16,
		/**
		Notification received every frame when the process flag is set (see $(D setProcess)).
		*/
		notificationProcess = 17,
		/**
		Notification received when a node is set as a child of another node. Note that this doesn't mean that a node entered the Scene Tree.
		*/
		notificationParented = 18,
		/**
		Notification received when a node is unparented (parent removed it from the list of children).
		*/
		notificationUnparented = 19,
		/**
		Notification received when the node is instanced.
		*/
		notificationInstanced = 20,
		/**
		Notification received when a drag begins.
		*/
		notificationDragBegin = 21,
		/**
		Notification received when a drag ends.
		*/
		notificationDragEnd = 22,
		/**
		Notification received when the node's $(D NodePath) changed.
		*/
		notificationPathChanged = 23,
		/**
		Notification received when translations may have changed. Can be triggered by the user changing the locale. Can be used to respond to language changes, for example to change the UI strings on the fly. Useful when working with the built-in translation support, like $(D GodotObject.tr).
		*/
		notificationTranslationChanged = 24,
		/**
		Notification received every frame when the internal process flag is set (see $(D setProcessInternal)).
		*/
		notificationInternalProcess = 25,
		/**
		Notification received every frame when the internal physics process flag is set (see $(D setPhysicsProcessInternal)).
		*/
		notificationInternalPhysicsProcess = 26,
	}
	package(godot) static GodotMethod!(void, double) _GODOT__process;
	package(godot) alias _GODOT_methodBindInfo(string name : "_process") = _GODOT__process;
	/**
	Called during the processing step of the main loop. Processing happens at every frame and as fast as possible, so the `delta` time since the previous frame is not constant.
	It is only called if processing is enabled, which is done automatically if this method is overridden, and can be toggled with $(D setProcess).
	Corresponds to the NOTIFICATION_PROCESS notification in $(D GodotObject._notification).
	*/
	void _process(in double delta)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_process");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__physics_process;
	package(godot) alias _GODOT_methodBindInfo(string name : "_physics_process") = _GODOT__physics_process;
	/**
	Called during the physics processing step of the main loop. Physics processing means that the frame rate is synced to the physics, i.e. the `delta` variable should be constant.
	It is only called if physics processing is enabled, which is done automatically if this method is overridden, and can be toggled with $(D setPhysicsProcess).
	Corresponds to the NOTIFICATION_PHYSICS_PROCESS notification in $(D GodotObject._notification).
	*/
	void _physicsProcess(in double delta)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_physics_process");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__enter_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_enter_tree") = _GODOT__enter_tree;
	/**
	Called when the node enters the $(D SceneTree) (e.g. upon instancing, scene changing, or after calling $(D addChild) in a script). If the node has children, its $(D _enterTree) callback will be called first, and then that of the children.
	Corresponds to the NOTIFICATION_ENTER_TREE notification in $(D GodotObject._notification).
	*/
	void _enterTree()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__exit_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_exit_tree") = _GODOT__exit_tree;
	/**
	Called when the node is about to leave the $(D SceneTree) (e.g. upon freeing, scene changing, or after calling $(D removeChild) in a script). If the node has children, its $(D _exitTree) callback will be called last, after all its children have left the tree.
	Corresponds to the NOTIFICATION_EXIT_TREE notification in $(D GodotObject._notification) and signal $(D treeExiting). To get notified when the node has already left the active tree, connect to the $(D treeExited)
	*/
	void _exitTree()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__ready;
	package(godot) alias _GODOT_methodBindInfo(string name : "_ready") = _GODOT__ready;
	/**
	Called when the node is "ready", i.e. when both the node and its children have entered the scene tree. If the node has children, their $(D _ready) callbacks get triggered first, and the parent node will receive the ready notification afterwards.
	Corresponds to the NOTIFICATION_READY notification in $(D GodotObject._notification). See also the `onready` keyword for variables.
	Usually used for initialization. For even earlier initialization, $(D GodotObject._init) may be used. Also see $(D _enterTree).
	*/
	void _ready()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_ready");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input") = _GODOT__input;
	/**
	Called when there is an input event. The input event propagates through the node tree until a node consumes it.
	It is only called if input processing is enabled, which is done automatically if this method is overridden, and can be toggled with $(D setProcessInput).
	To consume the input event and stop it propagating further to other nodes, $(D SceneTree.setInputAsHandled) can be called.
	For gameplay input, $(D _unhandledInput) and $(D _unhandledKeyInput) are usually a better fit as they allow the GUI to intercept the events first.
	*/
	void _input(InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_unhandled_input") = _GODOT__unhandled_input;
	/**
	Propagated to all nodes when the previous $(D InputEvent) is not consumed by any nodes.
	It is only called if unhandled input processing is enabled, which is done automatically if this method is overridden, and can be toggled with $(D setProcessUnhandledInput).
	To consume the input event and stop it propagating further to other nodes, $(D SceneTree.setInputAsHandled) can be called.
	For gameplay input, this and $(D _unhandledKeyInput) are usually a better fit than $(D _input) as they allow the GUI to intercept the events first.
	*/
	void _unhandledInput(InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEventKey) _GODOT__unhandled_key_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_unhandled_key_input") = _GODOT__unhandled_key_input;
	/**
	Propagated to all nodes when the previous $(D InputEventKey) is not consumed by any nodes.
	It is only called if unhandled key input processing is enabled, which is done automatically if this method is overridden, and can be toggled with $(D setProcessUnhandledKeyInput).
	To consume the input event and stop it propagating further to other nodes, $(D SceneTree.setInputAsHandled) can be called.
	For gameplay input, this and $(D _unhandledInput) are usually a better fit than $(D _input) as they allow the GUI to intercept the events first.
	*/
	void _unhandledKeyInput(InputEventKey event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_unhandled_key_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject, GodotObject, bool) _GODOT_add_child_below_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_child_below_node") = _GODOT_add_child_below_node;
	/**
	Adds a child node. The child is placed below the given node in the list of children.
	Setting "legible_unique_name" `true` creates child nodes with human-readable names, based on the name of the node being instanced instead of its type.
	*/
	void addChildBelowNode(GodotObject node, GodotObject child_node, in bool legible_unique_name = false)
	{
		_GODOT_add_child_below_node.bind("Node", "add_child_below_node");
		ptrcall!(void)(_GODOT_add_child_below_node, _godot_object, node, child_node, legible_unique_name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_name") = _GODOT_set_name;
	/**
	
	*/
	void setName(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_name.bind("Node", "set_name");
		ptrcall!(void)(_GODOT_set_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	/**
	
	*/
	String getName() const
	{
		_GODOT_get_name.bind("Node", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject, bool) _GODOT_add_child;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_child") = _GODOT_add_child;
	/**
	Adds a child node. Nodes can have any number of children, but every child must have a unique name. Child nodes are automatically deleted when the parent node is deleted, so an entire scene can be removed by deleting its topmost node.
	Setting "legible_unique_name" `true` creates child nodes with human-readable names, based on the name of the node being instanced instead of its type.
	*/
	void addChild(GodotObject node, in bool legible_unique_name = false)
	{
		_GODOT_add_child.bind("Node", "add_child");
		ptrcall!(void)(_GODOT_add_child, _godot_object, node, legible_unique_name);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_child;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_child") = _GODOT_remove_child;
	/**
	Removes a child node. The node is NOT deleted and must be deleted manually.
	*/
	void removeChild(GodotObject node)
	{
		_GODOT_remove_child.bind("Node", "remove_child");
		ptrcall!(void)(_GODOT_remove_child, _godot_object, node);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_child_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_child_count") = _GODOT_get_child_count;
	/**
	Returns the number of child nodes.
	*/
	long getChildCount() const
	{
		_GODOT_get_child_count.bind("Node", "get_child_count");
		return ptrcall!(long)(_GODOT_get_child_count, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_children;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_children") = _GODOT_get_children;
	/**
	Returns an array of references to node's children.
	*/
	Array getChildren() const
	{
		_GODOT_get_children.bind("Node", "get_children");
		return ptrcall!(Array)(_GODOT_get_children, _godot_object);
	}
	package(godot) static GodotMethod!(Node, long) _GODOT_get_child;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_child") = _GODOT_get_child;
	/**
	Returns a child node by its index (see $(D getChildCount)). This method is often used for iterating all children of a node.
	*/
	Node getChild(in long idx) const
	{
		_GODOT_get_child.bind("Node", "get_child");
		return ptrcall!(Node)(_GODOT_get_child, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, NodePath) _GODOT_has_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_node") = _GODOT_has_node;
	/**
	Returns `true` if the node that the $(D NodePath) points to exists.
	*/
	bool hasNode(NodePathArg0)(in NodePathArg0 path) const
	{
		_GODOT_has_node.bind("Node", "has_node");
		return ptrcall!(bool)(_GODOT_has_node, _godot_object, path);
	}
	package(godot) static GodotMethod!(Node, NodePath) _GODOT_get_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node") = _GODOT_get_node;
	/**
	Fetches a node. The $(D NodePath) can be either a relative path (from the current node) or an absolute path (in the scene tree) to a node. If the path does not exist, a `null instance` is returned and attempts to access it will result in an "Attempt to call &lt;method&gt; on a null instance." error.
	Note: fetching absolute paths only works when the node is inside the scene tree (see $(D isInsideTree)).
	$(I Example:) Assume your current node is Character and the following tree:
	
	
	/root
	/root/Character
	/root/Character/Sword
	/root/Character/Backpack/Dagger
	/root/MyGame
	/root/Swamp/Alligator
	/root/Swamp/Mosquito
	/root/Swamp/Goblin
	
	
	Possible paths are:
	
	
	get_node("Sword")
	get_node("Backpack/Dagger")
	get_node("../Swamp/Alligator")
	get_node("/root/MyGame")
	
	
	*/
	Node getNode(NodePathArg0)(in NodePathArg0 path) const
	{
		_GODOT_get_node.bind("Node", "get_node");
		return ptrcall!(Node)(_GODOT_get_node, _godot_object, path);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent") = _GODOT_get_parent;
	/**
	Returns the parent node of the current node, or an empty `Node` if the node lacks a parent.
	*/
	Node getParent() const
	{
		_GODOT_get_parent.bind("Node", "get_parent");
		return ptrcall!(Node)(_GODOT_get_parent, _godot_object);
	}
	package(godot) static GodotMethod!(Node, String, bool, bool) _GODOT_find_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_node") = _GODOT_find_node;
	/**
	Finds a descendant of this node whose name matches `mask` as in $(D String.match) (i.e. case sensitive, but '*' matches zero or more characters and '?' matches any single character except '.'). Note that it does not match against the full path, just against individual node names.
	*/
	Node findNode(StringArg0)(in StringArg0 mask, in bool recursive = true, in bool owned = true) const
	{
		_GODOT_find_node.bind("Node", "find_node");
		return ptrcall!(Node)(_GODOT_find_node, _godot_object, mask, recursive, owned);
	}
	package(godot) static GodotMethod!(bool, NodePath) _GODOT_has_node_and_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_node_and_resource") = _GODOT_has_node_and_resource;
	/**
	
	*/
	bool hasNodeAndResource(NodePathArg0)(in NodePathArg0 path) const
	{
		_GODOT_has_node_and_resource.bind("Node", "has_node_and_resource");
		return ptrcall!(bool)(_GODOT_has_node_and_resource, _godot_object, path);
	}
	package(godot) static GodotMethod!(Array, NodePath) _GODOT_get_node_and_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_and_resource") = _GODOT_get_node_and_resource;
	/**
	
	*/
	Array getNodeAndResource(NodePathArg0)(in NodePathArg0 path)
	{
		_GODOT_get_node_and_resource.bind("Node", "get_node_and_resource");
		return ptrcall!(Array)(_GODOT_get_node_and_resource, _godot_object, path);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_inside_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_inside_tree") = _GODOT_is_inside_tree;
	/**
	Returns `true` if this node is currently inside a $(D SceneTree).
	*/
	bool isInsideTree() const
	{
		_GODOT_is_inside_tree.bind("Node", "is_inside_tree");
		return ptrcall!(bool)(_GODOT_is_inside_tree, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_is_a_parent_of;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_a_parent_of") = _GODOT_is_a_parent_of;
	/**
	Returns `true` if the given node is a direct or indirect child of the current node.
	*/
	bool isAParentOf(GodotObject node) const
	{
		_GODOT_is_a_parent_of.bind("Node", "is_a_parent_of");
		return ptrcall!(bool)(_GODOT_is_a_parent_of, _godot_object, node);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_is_greater_than;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_greater_than") = _GODOT_is_greater_than;
	/**
	Returns `true` if the given node occurs later in the scene hierarchy than the current node.
	*/
	bool isGreaterThan(GodotObject node) const
	{
		_GODOT_is_greater_than.bind("Node", "is_greater_than");
		return ptrcall!(bool)(_GODOT_is_greater_than, _godot_object, node);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_path") = _GODOT_get_path;
	/**
	Returns the absolute path of the current node. This only works if the current node is inside the scene tree (see $(D isInsideTree)).
	*/
	NodePath getPath() const
	{
		_GODOT_get_path.bind("Node", "get_path");
		return ptrcall!(NodePath)(_GODOT_get_path, _godot_object);
	}
	package(godot) static GodotMethod!(NodePath, GodotObject) _GODOT_get_path_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_path_to") = _GODOT_get_path_to;
	/**
	Returns the relative $(D NodePath) from this node to the specified `node`. Both nodes must be in the same scene or the function will fail.
	*/
	NodePath getPathTo(GodotObject node) const
	{
		_GODOT_get_path_to.bind("Node", "get_path_to");
		return ptrcall!(NodePath)(_GODOT_get_path_to, _godot_object, node);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_add_to_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_to_group") = _GODOT_add_to_group;
	/**
	Adds the node to a group. Groups are helpers to name and organize a subset of nodes, for example "enemies" or "collectables". A node can be in any number of groups. Nodes can be assigned a group at any time, but will not be added until they are inside the scene tree (see $(D isInsideTree)). See notes in the description, and the group methods in $(D SceneTree).
	*/
	void addToGroup(StringArg0)(in StringArg0 group, in bool persistent = false)
	{
		_GODOT_add_to_group.bind("Node", "add_to_group");
		ptrcall!(void)(_GODOT_add_to_group, _godot_object, group, persistent);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_from_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_from_group") = _GODOT_remove_from_group;
	/**
	Removes a node from a group. See notes in the description, and the group methods in $(D SceneTree).
	*/
	void removeFromGroup(StringArg0)(in StringArg0 group)
	{
		_GODOT_remove_from_group.bind("Node", "remove_from_group");
		ptrcall!(void)(_GODOT_remove_from_group, _godot_object, group);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_in_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_in_group") = _GODOT_is_in_group;
	/**
	Returns `true` if this node is in the specified group. See notes in the description, and the group methods in $(D SceneTree).
	*/
	bool isInGroup(StringArg0)(in StringArg0 group) const
	{
		_GODOT_is_in_group.bind("Node", "is_in_group");
		return ptrcall!(bool)(_GODOT_is_in_group, _godot_object, group);
	}
	package(godot) static GodotMethod!(void, GodotObject, long) _GODOT_move_child;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_child") = _GODOT_move_child;
	/**
	Moves a child node to a different position (order) amongst the other children. Since calls, signals, etc are performed by tree order, changing the order of children nodes may be useful.
	*/
	void moveChild(GodotObject child_node, in long to_position)
	{
		_GODOT_move_child.bind("Node", "move_child");
		ptrcall!(void)(_GODOT_move_child, _godot_object, child_node, to_position);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_groups;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_groups") = _GODOT_get_groups;
	/**
	Returns an array listing the groups that the node is a member of.
	*/
	Array getGroups() const
	{
		_GODOT_get_groups.bind("Node", "get_groups");
		return ptrcall!(Array)(_GODOT_get_groups, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_raise;
	package(godot) alias _GODOT_methodBindInfo(string name : "raise") = _GODOT_raise;
	/**
	Moves this node to the top of the array of nodes of the parent node. This is often useful in GUIs ($(D Control) nodes), because their order of drawing depends on their order in the tree.
	*/
	void raise()
	{
		_GODOT_raise.bind("Node", "raise");
		ptrcall!(void)(_GODOT_raise, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_owner") = _GODOT_set_owner;
	/**
	
	*/
	void setOwner(GodotObject owner)
	{
		_GODOT_set_owner.bind("Node", "set_owner");
		ptrcall!(void)(_GODOT_set_owner, _godot_object, owner);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_owner") = _GODOT_get_owner;
	/**
	
	*/
	Node getOwner() const
	{
		_GODOT_get_owner.bind("Node", "get_owner");
		return ptrcall!(Node)(_GODOT_get_owner, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_remove_and_skip;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_and_skip") = _GODOT_remove_and_skip;
	/**
	Removes a node and sets all its children as children of the parent node (if it exists). All event subscriptions that pass by the removed node will be unsubscribed.
	*/
	void removeAndSkip()
	{
		_GODOT_remove_and_skip.bind("Node", "remove_and_skip");
		ptrcall!(void)(_GODOT_remove_and_skip, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_index") = _GODOT_get_index;
	/**
	Returns the node's index, i.e. its position among the siblings of its parent.
	*/
	long getIndex() const
	{
		_GODOT_get_index.bind("Node", "get_index");
		return ptrcall!(long)(_GODOT_get_index, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_print_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_tree") = _GODOT_print_tree;
	/**
	Prints the scene hierarchy of this node and all it's children to stdout. Used mainly for debugging purposes.
	*/
	void printTree()
	{
		_GODOT_print_tree.bind("Node", "print_tree");
		ptrcall!(void)(_GODOT_print_tree, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_filename;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_filename") = _GODOT_set_filename;
	/**
	
	*/
	void setFilename(StringArg0)(in StringArg0 filename)
	{
		_GODOT_set_filename.bind("Node", "set_filename");
		ptrcall!(void)(_GODOT_set_filename, _godot_object, filename);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_filename;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filename") = _GODOT_get_filename;
	/**
	
	*/
	String getFilename() const
	{
		_GODOT_get_filename.bind("Node", "get_filename");
		return ptrcall!(String)(_GODOT_get_filename, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_propagate_notification;
	package(godot) alias _GODOT_methodBindInfo(string name : "propagate_notification") = _GODOT_propagate_notification;
	/**
	Notifies the current node and all its children recursively by calling notification() on all of them.
	*/
	void propagateNotification(in long what)
	{
		_GODOT_propagate_notification.bind("Node", "propagate_notification");
		ptrcall!(void)(_GODOT_propagate_notification, _godot_object, what);
	}
	package(godot) static GodotMethod!(void, String, Array, bool) _GODOT_propagate_call;
	package(godot) alias _GODOT_methodBindInfo(string name : "propagate_call") = _GODOT_propagate_call;
	/**
	Calls the given method (if present) with the arguments given in `args` on this node and recursively on all its children. If the parent_first argument is `true` then the method will be called on the current node first, then on all children. If it is `false` then the children will be called first.
	*/
	void propagateCall(StringArg0)(in StringArg0 method, in Array args = Array.empty_array, in bool parent_first = false)
	{
		_GODOT_propagate_call.bind("Node", "propagate_call");
		ptrcall!(void)(_GODOT_propagate_call, _godot_object, method, args, parent_first);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_physics_process;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_physics_process") = _GODOT_set_physics_process;
	/**
	Enables or disables physics (i.e. fixed framerate) processing. When a node is being processed, it will receive a NOTIFICATION_PHYSICS_PROCESS at a fixed (usually 60 fps, see $(D OS) to change) interval (and the $(D _physicsProcess) callback will be called if exists). Enabled automatically if $(D _physicsProcess) is overridden. Any calls to this before $(D _ready) will be ignored.
	*/
	void setPhysicsProcess(in bool enable)
	{
		_GODOT_set_physics_process.bind("Node", "set_physics_process");
		ptrcall!(void)(_GODOT_set_physics_process, _godot_object, enable);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_physics_process_delta_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_physics_process_delta_time") = _GODOT_get_physics_process_delta_time;
	/**
	Returns the time elapsed since the last physics-bound frame (see $(D _physicsProcess)). This is always a constant value in physics processing unless the frames per second is changed in $(D OS).
	*/
	double getPhysicsProcessDeltaTime() const
	{
		_GODOT_get_physics_process_delta_time.bind("Node", "get_physics_process_delta_time");
		return ptrcall!(double)(_GODOT_get_physics_process_delta_time, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_physics_processing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_physics_processing") = _GODOT_is_physics_processing;
	/**
	Returns `true` if physics processing is enabled (see $(D setPhysicsProcess)).
	*/
	bool isPhysicsProcessing() const
	{
		_GODOT_is_physics_processing.bind("Node", "is_physics_processing");
		return ptrcall!(bool)(_GODOT_is_physics_processing, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_process_delta_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_process_delta_time") = _GODOT_get_process_delta_time;
	/**
	Returns the time elapsed (in seconds) since the last process callback. This value may vary from frame to frame.
	*/
	double getProcessDeltaTime() const
	{
		_GODOT_get_process_delta_time.bind("Node", "get_process_delta_time");
		return ptrcall!(double)(_GODOT_get_process_delta_time, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_process;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process") = _GODOT_set_process;
	/**
	Enables or disables processing. When a node is being processed, it will receive a NOTIFICATION_PROCESS on every drawn frame (and the $(D _process) callback will be called if exists). Enabled automatically if $(D _process) is overridden. Any calls to this before $(D _ready) will be ignored.
	*/
	void setProcess(in bool enable)
	{
		_GODOT_set_process.bind("Node", "set_process");
		ptrcall!(void)(_GODOT_set_process, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_processing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_processing") = _GODOT_is_processing;
	/**
	Returns `true` if processing is enabled (see $(D setProcess)).
	*/
	bool isProcessing() const
	{
		_GODOT_is_processing.bind("Node", "is_processing");
		return ptrcall!(bool)(_GODOT_is_processing, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_process_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process_input") = _GODOT_set_process_input;
	/**
	Enables or disables input processing. This is not required for GUI controls! Enabled automatically if $(D _input) is overridden. Any calls to this before $(D _ready) will be ignored.
	*/
	void setProcessInput(in bool enable)
	{
		_GODOT_set_process_input.bind("Node", "set_process_input");
		ptrcall!(void)(_GODOT_set_process_input, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_processing_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_processing_input") = _GODOT_is_processing_input;
	/**
	Returns `true` if the node is processing input (see $(D setProcessInput)).
	*/
	bool isProcessingInput() const
	{
		_GODOT_is_processing_input.bind("Node", "is_processing_input");
		return ptrcall!(bool)(_GODOT_is_processing_input, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_process_unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process_unhandled_input") = _GODOT_set_process_unhandled_input;
	/**
	Enables unhandled input processing. This is not required for GUI controls! It enables the node to receive all input that was not previously handled (usually by a $(D Control)). Enabled automatically if $(D _unhandledInput) is overridden. Any calls to this before $(D _ready) will be ignored.
	*/
	void setProcessUnhandledInput(in bool enable)
	{
		_GODOT_set_process_unhandled_input.bind("Node", "set_process_unhandled_input");
		ptrcall!(void)(_GODOT_set_process_unhandled_input, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_processing_unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_processing_unhandled_input") = _GODOT_is_processing_unhandled_input;
	/**
	Returns `true` if the node is processing unhandled input (see $(D setProcessUnhandledInput)).
	*/
	bool isProcessingUnhandledInput() const
	{
		_GODOT_is_processing_unhandled_input.bind("Node", "is_processing_unhandled_input");
		return ptrcall!(bool)(_GODOT_is_processing_unhandled_input, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_process_unhandled_key_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process_unhandled_key_input") = _GODOT_set_process_unhandled_key_input;
	/**
	Enables unhandled key input processing. Enabled automatically if $(D _unhandledKeyInput) is overridden. Any calls to this before $(D _ready) will be ignored.
	*/
	void setProcessUnhandledKeyInput(in bool enable)
	{
		_GODOT_set_process_unhandled_key_input.bind("Node", "set_process_unhandled_key_input");
		ptrcall!(void)(_GODOT_set_process_unhandled_key_input, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_processing_unhandled_key_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_processing_unhandled_key_input") = _GODOT_is_processing_unhandled_key_input;
	/**
	Returns `true` if the node is processing unhandled key input (see $(D setProcessUnhandledKeyInput)).
	*/
	bool isProcessingUnhandledKeyInput() const
	{
		_GODOT_is_processing_unhandled_key_input.bind("Node", "is_processing_unhandled_key_input");
		return ptrcall!(bool)(_GODOT_is_processing_unhandled_key_input, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_pause_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pause_mode") = _GODOT_set_pause_mode;
	/**
	
	*/
	void setPauseMode(in long mode)
	{
		_GODOT_set_pause_mode.bind("Node", "set_pause_mode");
		ptrcall!(void)(_GODOT_set_pause_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Node.PauseMode) _GODOT_get_pause_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pause_mode") = _GODOT_get_pause_mode;
	/**
	
	*/
	Node.PauseMode getPauseMode() const
	{
		_GODOT_get_pause_mode.bind("Node", "get_pause_mode");
		return ptrcall!(Node.PauseMode)(_GODOT_get_pause_mode, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_process;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_process") = _GODOT_can_process;
	/**
	Returns `true` if the node can process while the scene tree is paused (see $(D setPauseMode)). Always returns `true` if the scene tree is not paused, and `false` if the node is not in the tree. FIXME: Why FAIL_COND?
	*/
	bool canProcess() const
	{
		_GODOT_can_process.bind("Node", "can_process");
		return ptrcall!(bool)(_GODOT_can_process, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_print_stray_nodes;
	package(godot) alias _GODOT_methodBindInfo(string name : "print_stray_nodes") = _GODOT_print_stray_nodes;
	/**
	Prints all stray nodes (nodes outside the $(D SceneTree)). Used for debugging. Works only in debug builds.
	*/
	void printStrayNodes()
	{
		_GODOT_print_stray_nodes.bind("Node", "print_stray_nodes");
		ptrcall!(void)(_GODOT_print_stray_nodes, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_position_in_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position_in_parent") = _GODOT_get_position_in_parent;
	/**
	Returns the node's order in the scene tree branch. For example, if called on the first child node the position is `0`.
	*/
	long getPositionInParent() const
	{
		_GODOT_get_position_in_parent.bind("Node", "get_position_in_parent");
		return ptrcall!(long)(_GODOT_get_position_in_parent, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_display_folded;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_display_folded") = _GODOT_set_display_folded;
	/**
	Sets the folded state of the node in the Scene dock.
	*/
	void setDisplayFolded(in bool fold)
	{
		_GODOT_set_display_folded.bind("Node", "set_display_folded");
		ptrcall!(void)(_GODOT_set_display_folded, _godot_object, fold);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_displayed_folded;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_displayed_folded") = _GODOT_is_displayed_folded;
	/**
	Returns `true` if the node is folded (collapsed) in the Scene dock.
	*/
	bool isDisplayedFolded() const
	{
		_GODOT_is_displayed_folded.bind("Node", "is_displayed_folded");
		return ptrcall!(bool)(_GODOT_is_displayed_folded, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_process_internal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process_internal") = _GODOT_set_process_internal;
	/**
	Enables or disabled internal processing for this node. Internal processing happens in isolation from the normal $(D method)_process$(D /code) calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or processing is disabled for scripting ($(D setProcess)). Only useful for advanced uses to manipulate built-in nodes behaviour.
	*/
	void setProcessInternal(in bool enable)
	{
		_GODOT_set_process_internal.bind("Node", "set_process_internal");
		ptrcall!(void)(_GODOT_set_process_internal, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_processing_internal;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_processing_internal") = _GODOT_is_processing_internal;
	/**
	Returns `true` if internal processing is enabled (see $(D setProcessInternal)).
	*/
	bool isProcessingInternal() const
	{
		_GODOT_is_processing_internal.bind("Node", "is_processing_internal");
		return ptrcall!(bool)(_GODOT_is_processing_internal, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_physics_process_internal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_physics_process_internal") = _GODOT_set_physics_process_internal;
	/**
	Enables or disables internal physics for this node. Internal physics processing happens in isolation from the normal $(D method)_physics_process$(D /code) calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or physics processing is disabled for scripting ($(D setPhysicsProcess)). Only useful for advanced uses to manipulate built-in nodes behaviour.
	*/
	void setPhysicsProcessInternal(in bool enable)
	{
		_GODOT_set_physics_process_internal.bind("Node", "set_physics_process_internal");
		ptrcall!(void)(_GODOT_set_physics_process_internal, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_physics_processing_internal;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_physics_processing_internal") = _GODOT_is_physics_processing_internal;
	/**
	Returns `true` if internal physics processing is enabled (see $(D setPhysicsProcessInternal)).
	*/
	bool isPhysicsProcessingInternal() const
	{
		_GODOT_is_physics_processing_internal.bind("Node", "is_physics_processing_internal");
		return ptrcall!(bool)(_GODOT_is_physics_processing_internal, _godot_object);
	}
	package(godot) static GodotMethod!(SceneTree) _GODOT_get_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tree") = _GODOT_get_tree;
	/**
	Returns the $(D SceneTree) that contains this node.
	*/
	SceneTree getTree() const
	{
		_GODOT_get_tree.bind("Node", "get_tree");
		return ptrcall!(SceneTree)(_GODOT_get_tree, _godot_object);
	}
	package(godot) static GodotMethod!(Node, long) _GODOT_duplicate;
	package(godot) alias _GODOT_methodBindInfo(string name : "duplicate") = _GODOT_duplicate;
	/**
	Duplicates the node, returning a new node.
	You can fine-tune the behavior using the `flags`. See DUPLICATE_* constants.
	*/
	Node duplicate(in long flags = 15) const
	{
		_GODOT_duplicate.bind("Node", "duplicate");
		return ptrcall!(Node)(_GODOT_duplicate, _godot_object, flags);
	}
	package(godot) static GodotMethod!(void, GodotObject, bool) _GODOT_replace_by;
	package(godot) alias _GODOT_methodBindInfo(string name : "replace_by") = _GODOT_replace_by;
	/**
	Replaces a node in a scene by the given one. Subscriptions that pass through this node will be lost.
	*/
	void replaceBy(GodotObject node, in bool keep_data = false)
	{
		_GODOT_replace_by.bind("Node", "replace_by");
		ptrcall!(void)(_GODOT_replace_by, _godot_object, node, keep_data);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_scene_instance_load_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scene_instance_load_placeholder") = _GODOT_set_scene_instance_load_placeholder;
	/**
	Sets whether this is an instance load placeholder. See $(D InstancePlaceholder).
	*/
	void setSceneInstanceLoadPlaceholder(in bool load_placeholder)
	{
		_GODOT_set_scene_instance_load_placeholder.bind("Node", "set_scene_instance_load_placeholder");
		ptrcall!(void)(_GODOT_set_scene_instance_load_placeholder, _godot_object, load_placeholder);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_scene_instance_load_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scene_instance_load_placeholder") = _GODOT_get_scene_instance_load_placeholder;
	/**
	Returns `true` if this is an instance load placeholder. See $(D InstancePlaceholder).
	*/
	bool getSceneInstanceLoadPlaceholder() const
	{
		_GODOT_get_scene_instance_load_placeholder.bind("Node", "get_scene_instance_load_placeholder");
		return ptrcall!(bool)(_GODOT_get_scene_instance_load_placeholder, _godot_object);
	}
	package(godot) static GodotMethod!(Viewport) _GODOT_get_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_viewport") = _GODOT_get_viewport;
	/**
	Returns the node's $(D Viewport).
	*/
	Viewport getViewport() const
	{
		_GODOT_get_viewport.bind("Node", "get_viewport");
		return ptrcall!(Viewport)(_GODOT_get_viewport, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_queue_free;
	package(godot) alias _GODOT_methodBindInfo(string name : "queue_free") = _GODOT_queue_free;
	/**
	Queues a node for deletion at the end of the current frame. When deleted, all of its child nodes will be deleted as well. This method ensures it's safe to delete the node, contrary to $(D GodotObject.free). Use $(D GodotObject.isQueuedForDeletion) to check whether a node will be deleted at the end of the frame.
	*/
	void queueFree()
	{
		_GODOT_queue_free.bind("Node", "queue_free");
		ptrcall!(void)(_GODOT_queue_free, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_request_ready;
	package(godot) alias _GODOT_methodBindInfo(string name : "request_ready") = _GODOT_request_ready;
	/**
	Requests that `_ready` be called again.
	*/
	void requestReady()
	{
		_GODOT_request_ready.bind("Node", "request_ready");
		ptrcall!(void)(_GODOT_request_ready, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_network_master;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_network_master") = _GODOT_set_network_master;
	/**
	Sets the node's network master to the peer with the given peer ID. The network master is the peer that has authority over the node on the network. Useful in conjunction with the `master` and `slave` keywords. Inherited from the parent node by default, which ultimately defaults to peer ID 1 (the server). If `recursive`, the given peer is recursively set as the master for all children of this node.
	*/
	void setNetworkMaster(in long id, in bool recursive = true)
	{
		_GODOT_set_network_master.bind("Node", "set_network_master");
		ptrcall!(void)(_GODOT_set_network_master, _godot_object, id, recursive);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_network_master;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_network_master") = _GODOT_get_network_master;
	/**
	Returns the peer ID of the network master for this node. See $(D setNetworkMaster).
	*/
	long getNetworkMaster() const
	{
		_GODOT_get_network_master.bind("Node", "get_network_master");
		return ptrcall!(long)(_GODOT_get_network_master, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_network_master;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_network_master") = _GODOT_is_network_master;
	/**
	Returns `true` if the local system is the master of this node.
	*/
	bool isNetworkMaster() const
	{
		_GODOT_is_network_master.bind("Node", "is_network_master");
		return ptrcall!(bool)(_GODOT_is_network_master, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_rpc_config;
	package(godot) alias _GODOT_methodBindInfo(string name : "rpc_config") = _GODOT_rpc_config;
	/**
	Changes the RPC mode for the given `method` to the given `mode`. See $(D rpcmode). An alternative is annotating methods and properties with the corresponding keywords (`remote`, `sync`, `master`, `slave`). By default, methods are not exposed to networking (and RPCs). Also see $(D rset) and $(D rsetConfig) for properties.
	*/
	void rpcConfig(StringArg0)(in StringArg0 method, in long mode)
	{
		_GODOT_rpc_config.bind("Node", "rpc_config");
		ptrcall!(void)(_GODOT_rpc_config, _godot_object, method, mode);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_rset_config;
	package(godot) alias _GODOT_methodBindInfo(string name : "rset_config") = _GODOT_rset_config;
	/**
	Changes the RPC mode for the given `property` to the given `mode`. See $(D rpcmode). An alternative is annotating methods and properties with the corresponding keywords (`remote`, `sync`, `master`, `slave`). By default, properties are not exposed to networking (and RPCs). Also see $(D rpc) and $(D rpcConfig) for methods.
	*/
	void rsetConfig(StringArg0)(in StringArg0 property, in long mode)
	{
		_GODOT_rset_config.bind("Node", "rset_config");
		ptrcall!(void)(_GODOT_rset_config, _godot_object, property, mode);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT__set_import_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_import_path") = _GODOT__set_import_path;
	/**
	
	*/
	void _setImportPath(NodePathArg0)(in NodePathArg0 import_path)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(import_path);
		String _GODOT_method_name = String("_set_import_path");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT__get_import_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_import_path") = _GODOT__get_import_path;
	/**
	
	*/
	NodePath _getImportPath() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_import_path");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!NodePath);
	}
	package(godot) static GodotMethod!(Variant, String, GodotVarArgs) _GODOT_rpc;
	package(godot) alias _GODOT_methodBindInfo(string name : "rpc") = _GODOT_rpc;
	/**
	Sends a remote procedure call request for the given `method` to peers on the network (and locally), optionally sending all additional arguments as arguments to the method called by the RPC. The call request will only be received by nodes with the same $(D NodePath), including the exact same node name. Behaviour depends on the RPC configuration for the given method, see $(D rpcConfig). Methods are not exposed to RPCs by default. Also see $(D rset) and $(D rsetConfig) for properties. Returns an empty $(D Variant). Note that you can only safely use RPCs on clients after you received the `connected_to_server` signal from the $(D SceneTree). You also need to keep track of the connection state, either by the $(D SceneTree) signals like `server_disconnected` or by checking `SceneTree.network_peer.get_connection_status() == CONNECTION_CONNECTED`.
	*/
	Variant rpc(StringArg0, VarArgs...)(in StringArg0 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("rpc");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, String, GodotVarArgs) _GODOT_rpc_unreliable;
	package(godot) alias _GODOT_methodBindInfo(string name : "rpc_unreliable") = _GODOT_rpc_unreliable;
	/**
	Sends a $(D rpc) using an unreliable protocol. Returns an empty $(D Variant).
	*/
	Variant rpcUnreliable(StringArg0, VarArgs...)(in StringArg0 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("rpc_unreliable");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, long, String, GodotVarArgs) _GODOT_rpc_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "rpc_id") = _GODOT_rpc_id;
	/**
	Sends a $(D rpc) to a specific peer identified by `peer_id`. Returns an empty $(D Variant).
	*/
	Variant rpcId(StringArg1, VarArgs...)(in long peer_id, in StringArg1 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(peer_id);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("rpc_id");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, long, String, GodotVarArgs) _GODOT_rpc_unreliable_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "rpc_unreliable_id") = _GODOT_rpc_unreliable_id;
	/**
	Sends a $(D rpc) to a specific peer identified by `peer_id` using an unreliable protocol. Returns an empty $(D Variant).
	*/
	Variant rpcUnreliableId(StringArg1, VarArgs...)(in long peer_id, in StringArg1 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(peer_id);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("rpc_unreliable_id");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_rset;
	package(godot) alias _GODOT_methodBindInfo(string name : "rset") = _GODOT_rset;
	/**
	Remotely changes a property's value on other peers (and locally). Behaviour depends on the RPC configuration for the given property, see $(D rsetConfig). Also see $(D rpc) for RPCs for methods, most information applies to this method as well.
	*/
	void rset(StringArg0, VariantArg1)(in StringArg0 property, in VariantArg1 value)
	{
		_GODOT_rset.bind("Node", "rset");
		ptrcall!(void)(_GODOT_rset, _godot_object, property, value);
	}
	package(godot) static GodotMethod!(void, long, String, Variant) _GODOT_rset_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "rset_id") = _GODOT_rset_id;
	/**
	Remotely changes the property's value on a specific peer identified by `peer_id`.
	*/
	void rsetId(StringArg1, VariantArg2)(in long peer_id, in StringArg1 property, in VariantArg2 value)
	{
		_GODOT_rset_id.bind("Node", "rset_id");
		ptrcall!(void)(_GODOT_rset_id, _godot_object, peer_id, property, value);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_rset_unreliable;
	package(godot) alias _GODOT_methodBindInfo(string name : "rset_unreliable") = _GODOT_rset_unreliable;
	/**
	Remotely changes the property's value on other peers (and locally) using an unreliable protocol.
	*/
	void rsetUnreliable(StringArg0, VariantArg1)(in StringArg0 property, in VariantArg1 value)
	{
		_GODOT_rset_unreliable.bind("Node", "rset_unreliable");
		ptrcall!(void)(_GODOT_rset_unreliable, _godot_object, property, value);
	}
	package(godot) static GodotMethod!(void, long, String, Variant) _GODOT_rset_unreliable_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "rset_unreliable_id") = _GODOT_rset_unreliable_id;
	/**
	Remotely changes property's value on a specific peer identified by `peer_id` using an unreliable protocol.
	*/
	void rsetUnreliableId(StringArg1, VariantArg2)(in long peer_id, in StringArg1 property, in VariantArg2 value)
	{
		_GODOT_rset_unreliable_id.bind("Node", "rset_unreliable_id");
		ptrcall!(void)(_GODOT_rset_unreliable_id, _godot_object, peer_id, property, value);
	}
	/**
	
	*/
	@property NodePath _importPath()
	{
		return _getImportPath();
	}
	/// ditto
	@property void _importPath(NodePath v)
	{
		_setImportPath(v);
	}
	/**
	Pause mode. How the node will behave if the $(D SceneTree) is paused.
	*/
	@property Node.PauseMode pauseMode()
	{
		return getPauseMode();
	}
	/// ditto
	@property void pauseMode(long v)
	{
		setPauseMode(v);
	}
	/**
	
	*/
	@property bool editorDisplayFolded()
	{
		return isDisplayedFolded();
	}
	/// ditto
	@property void editorDisplayFolded(bool v)
	{
		setDisplayFolded(v);
	}
	/**
	The name of the node. This name is unique among the siblings (other child nodes from the same parent). When set to an existing name, the node will be automatically renamed
	*/
	@property String name()
	{
		return getName();
	}
	/// ditto
	@property void name(String v)
	{
		setName(v);
	}
	/**
	When a scene is instanced from a file, its topmost node contains the filename from which it was loaded.
	*/
	@property String filename()
	{
		return getFilename();
	}
	/// ditto
	@property void filename(String v)
	{
		setFilename(v);
	}
	/**
	The node owner. A node can have any other node as owner (as long as it is a valid parent, grandparent, etc. ascending in the tree). When saving a node (using $(D PackedScene)) all the nodes it owns will be saved with it. This allows for the creation of complex $(D SceneTree)s, with instancing and subinstancing.
	*/
	@property Node owner()
	{
		return getOwner();
	}
	/// ditto
	@property void owner(GodotObject v)
	{
		setOwner(v);
	}
}
