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
import godot.multiplayerapi;
/**
Base class for all $(I scene) objects.

Nodes are Godot's building blocks. They can be assigned as the child of another node, resulting in a tree arrangement. A given node can contain any number of nodes as children with the requirement that all siblings (direct children of a node) should have unique names.
A tree of nodes is called a $(I scene). Scenes can be saved to the disk and then instanced into other scenes. This allows for very high flexibility in the architecture and data model of Godot projects.
$(B Scene tree:) The $(D SceneTree) contains the active tree of nodes. When a node is added to the scene tree, it receives the NOTIFICATION_ENTER_TREE notification and its $(D _enterTree) callback is triggered. Child nodes are always added $(I after) their parent node, i.e. the $(D _enterTree) callback of a parent node will be triggered before its child's.
Once all nodes have been added in the scene tree, they receive the NOTIFICATION_READY notification and their respective $(D _ready) callbacks are triggered. For groups of nodes, the $(D _ready) callback is called in reverse order, starting with the children and moving up to the parent nodes.
This means that when adding a node to the scene tree, the following order will be used for the callbacks: $(D _enterTree) of the parent, $(D _enterTree) of the children, $(D _ready) of the children and finally $(D _ready) of the parent (recursively for the entire scene tree).
$(B Processing:) Nodes can override the "process" state, so that they receive a callback on each frame requesting them to process (do something). Normal processing (callback $(D _process), toggled with $(D setProcess)) happens as fast as possible and is dependent on the frame rate, so the processing time $(I delta) is passed as an argument. Physics processing (callback $(D _physicsProcess), toggled with $(D setPhysicsProcess)) happens a fixed number of times per second (60 by default) and is useful for code related to the physics engine.
Nodes can also process input events. When present, the $(D _input) function will be called for each input that the program receives. In many cases, this can be overkill (unless used for simple projects), and the $(D _unhandledInput) function might be preferred; it is called when the input event was not handled by anyone else (typically, GUI $(D Control) nodes), ensuring that the node only receives the events that were meant for it.
To keep track of the scene hierarchy (especially when instancing scenes into other scenes), an "owner" can be set for the node with the $(D owner) property. This keeps track of who instanced what. This is mostly useful when writing editors and tools, though.
Finally, when a node is freed with $(D GodotObject.free) or $(D queueFree), it will also free all its children.
$(B Groups:) Nodes can be added to as many groups as you want to be easy to manage, you could create groups like "enemies" or "collectables" for example, depending on your game. See $(D addToGroup), $(D isInGroup) and $(D removeFromGroup). You can then retrieve all nodes in these groups, iterate them and even call methods on groups via the methods on $(D SceneTree).
$(B Networking with nodes:) After connecting to a server (or making one, see $(D NetworkedMultiplayerENet)) it is possible to use the built-in RPC (remote procedure call) system to communicate over the network. By calling $(D rpc) with a method name, it will be called locally and in all connected peers (peers = clients and the server that accepts connections). To identify which node receives the RPC call Godot will use its $(D NodePath) (make sure node names are the same on all peers). Also take a look at the high-level networking tutorial and corresponding demos.
*/
@GodotBaseClass struct Node
{
	enum string _GODOT_internal_name = "Node";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_process") GodotMethod!(void, double) _process;
		@GodotName("_physics_process") GodotMethod!(void, double) _physicsProcess;
		@GodotName("_enter_tree") GodotMethod!(void) _enterTree;
		@GodotName("_exit_tree") GodotMethod!(void) _exitTree;
		@GodotName("_ready") GodotMethod!(void) _ready;
		@GodotName("_input") GodotMethod!(void, InputEvent) _input;
		@GodotName("_unhandled_input") GodotMethod!(void, InputEvent) _unhandledInput;
		@GodotName("_unhandled_key_input") GodotMethod!(void, InputEventKey) _unhandledKeyInput;
		@GodotName("_get_configuration_warning") GodotMethod!(String) _getConfigurationWarning;
		@GodotName("add_child_below_node") GodotMethod!(void, Node, Node, bool) addChildBelowNode;
		@GodotName("set_name") GodotMethod!(void, String) setName;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("add_child") GodotMethod!(void, Node, bool) addChild;
		@GodotName("remove_child") GodotMethod!(void, Node) removeChild;
		@GodotName("get_child_count") GodotMethod!(long) getChildCount;
		@GodotName("get_children") GodotMethod!(Array) getChildren;
		@GodotName("get_child") GodotMethod!(Node, long) getChild;
		@GodotName("has_node") GodotMethod!(bool, NodePath) hasNode;
		@GodotName("get_node") GodotMethod!(Node, NodePath) getNode;
		@GodotName("get_node_or_null") GodotMethod!(Node, NodePath) getNodeOrNull;
		@GodotName("get_parent") GodotMethod!(Node) getParent;
		@GodotName("find_node") GodotMethod!(Node, String, bool, bool) findNode;
		@GodotName("find_parent") GodotMethod!(Node, String) findParent;
		@GodotName("has_node_and_resource") GodotMethod!(bool, NodePath) hasNodeAndResource;
		@GodotName("get_node_and_resource") GodotMethod!(Array, NodePath) getNodeAndResource;
		@GodotName("is_inside_tree") GodotMethod!(bool) isInsideTree;
		@GodotName("is_a_parent_of") GodotMethod!(bool, Node) isAParentOf;
		@GodotName("is_greater_than") GodotMethod!(bool, Node) isGreaterThan;
		@GodotName("get_path") GodotMethod!(NodePath) getPath;
		@GodotName("get_path_to") GodotMethod!(NodePath, Node) getPathTo;
		@GodotName("add_to_group") GodotMethod!(void, String, bool) addToGroup;
		@GodotName("remove_from_group") GodotMethod!(void, String) removeFromGroup;
		@GodotName("is_in_group") GodotMethod!(bool, String) isInGroup;
		@GodotName("move_child") GodotMethod!(void, Node, long) moveChild;
		@GodotName("get_groups") GodotMethod!(Array) getGroups;
		@GodotName("raise") GodotMethod!(void) raise;
		@GodotName("set_owner") GodotMethod!(void, Node) setOwner;
		@GodotName("get_owner") GodotMethod!(Node) getOwner;
		@GodotName("remove_and_skip") GodotMethod!(void) removeAndSkip;
		@GodotName("get_index") GodotMethod!(long) getIndex;
		@GodotName("print_tree") GodotMethod!(void) printTree;
		@GodotName("print_tree_pretty") GodotMethod!(void) printTreePretty;
		@GodotName("set_filename") GodotMethod!(void, String) setFilename;
		@GodotName("get_filename") GodotMethod!(String) getFilename;
		@GodotName("propagate_notification") GodotMethod!(void, long) propagateNotification;
		@GodotName("propagate_call") GodotMethod!(void, String, Array, bool) propagateCall;
		@GodotName("set_physics_process") GodotMethod!(void, bool) setPhysicsProcess;
		@GodotName("get_physics_process_delta_time") GodotMethod!(double) getPhysicsProcessDeltaTime;
		@GodotName("is_physics_processing") GodotMethod!(bool) isPhysicsProcessing;
		@GodotName("get_process_delta_time") GodotMethod!(double) getProcessDeltaTime;
		@GodotName("set_process") GodotMethod!(void, bool) setProcess;
		@GodotName("set_process_priority") GodotMethod!(void, long) setProcessPriority;
		@GodotName("is_processing") GodotMethod!(bool) isProcessing;
		@GodotName("set_process_input") GodotMethod!(void, bool) setProcessInput;
		@GodotName("is_processing_input") GodotMethod!(bool) isProcessingInput;
		@GodotName("set_process_unhandled_input") GodotMethod!(void, bool) setProcessUnhandledInput;
		@GodotName("is_processing_unhandled_input") GodotMethod!(bool) isProcessingUnhandledInput;
		@GodotName("set_process_unhandled_key_input") GodotMethod!(void, bool) setProcessUnhandledKeyInput;
		@GodotName("is_processing_unhandled_key_input") GodotMethod!(bool) isProcessingUnhandledKeyInput;
		@GodotName("set_pause_mode") GodotMethod!(void, long) setPauseMode;
		@GodotName("get_pause_mode") GodotMethod!(Node.PauseMode) getPauseMode;
		@GodotName("can_process") GodotMethod!(bool) canProcess;
		@GodotName("print_stray_nodes") GodotMethod!(void) printStrayNodes;
		@GodotName("get_position_in_parent") GodotMethod!(long) getPositionInParent;
		@GodotName("set_display_folded") GodotMethod!(void, bool) setDisplayFolded;
		@GodotName("is_displayed_folded") GodotMethod!(bool) isDisplayedFolded;
		@GodotName("set_process_internal") GodotMethod!(void, bool) setProcessInternal;
		@GodotName("is_processing_internal") GodotMethod!(bool) isProcessingInternal;
		@GodotName("set_physics_process_internal") GodotMethod!(void, bool) setPhysicsProcessInternal;
		@GodotName("is_physics_processing_internal") GodotMethod!(bool) isPhysicsProcessingInternal;
		@GodotName("get_tree") GodotMethod!(SceneTree) getTree;
		@GodotName("duplicate") GodotMethod!(Node, long) duplicate;
		@GodotName("replace_by") GodotMethod!(void, Node, bool) replaceBy;
		@GodotName("set_scene_instance_load_placeholder") GodotMethod!(void, bool) setSceneInstanceLoadPlaceholder;
		@GodotName("get_scene_instance_load_placeholder") GodotMethod!(bool) getSceneInstanceLoadPlaceholder;
		@GodotName("get_viewport") GodotMethod!(Viewport) getViewport;
		@GodotName("queue_free") GodotMethod!(void) queueFree;
		@GodotName("request_ready") GodotMethod!(void) requestReady;
		@GodotName("set_network_master") GodotMethod!(void, long, bool) setNetworkMaster;
		@GodotName("get_network_master") GodotMethod!(long) getNetworkMaster;
		@GodotName("is_network_master") GodotMethod!(bool) isNetworkMaster;
		@GodotName("get_multiplayer") GodotMethod!(MultiplayerAPI) getMultiplayer;
		@GodotName("get_custom_multiplayer") GodotMethod!(MultiplayerAPI) getCustomMultiplayer;
		@GodotName("set_custom_multiplayer") GodotMethod!(void, MultiplayerAPI) setCustomMultiplayer;
		@GodotName("rpc_config") GodotMethod!(void, String, long) rpcConfig;
		@GodotName("rset_config") GodotMethod!(void, String, long) rsetConfig;
		@GodotName("_set_import_path") GodotMethod!(void, NodePath) _setImportPath;
		@GodotName("_get_import_path") GodotMethod!(NodePath) _getImportPath;
		@GodotName("rpc") GodotMethod!(Variant, String, GodotVarArgs) rpc;
		@GodotName("rpc_unreliable") GodotMethod!(Variant, String, GodotVarArgs) rpcUnreliable;
		@GodotName("rpc_id") GodotMethod!(Variant, long, String, GodotVarArgs) rpcId;
		@GodotName("rpc_unreliable_id") GodotMethod!(Variant, long, String, GodotVarArgs) rpcUnreliableId;
		@GodotName("rset") GodotMethod!(void, String, Variant) rset;
		@GodotName("rset_id") GodotMethod!(void, long, String, Variant) rsetId;
		@GodotName("rset_unreliable") GodotMethod!(void, String, Variant) rsetUnreliable;
		@GodotName("rset_unreliable_id") GodotMethod!(void, long, String, Variant) rsetUnreliableId;
	}
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
	@disable new(size_t s);
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
	enum Constants : int
	{
		pauseModeInherit = 0,
		duplicateSignals = 1,
		pauseModeStop = 1,
		duplicateGroups = 2,
		pauseModeProcess = 2,
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
	/**
	Called when there is an input event. The input event propagates up through the node tree until a node consumes it.
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
	/**
	Called when an $(D InputEvent) hasn't been consumed by $(D _input) or any GUI. The input event propagates up through the node tree until a node consumes it.
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
	/**
	Called when an $(D InputEventKey) hasn't been consumed by $(D _input) or any GUI. The input event propagates up through the node tree until a node consumes it.
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
	/**
	The string returned from this method is displayed as a warning in the "Scene Dock" if the script that overrides it is a `tool` script.
	Returning an empty string produces no warning.
	*/
	String _getConfigurationWarning()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_configuration_warning");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Adds a child node. The child is placed below the given node in the list of children.
	Setting "legible_unique_name" `true` creates child nodes with human-readable names, based on the name of the node being instanced instead of its type.
	*/
	void addChildBelowNode(Node node, Node child_node, in bool legible_unique_name = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addChildBelowNode, _godot_object, node, child_node, legible_unique_name);
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
	String getName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getName, _godot_object);
	}
	/**
	Adds a child node. Nodes can have any number of children, but every child must have a unique name. Child nodes are automatically deleted when the parent node is deleted, so an entire scene can be removed by deleting its topmost node.
	Setting "legible_unique_name" `true` creates child nodes with human-readable names, based on the name of the node being instanced instead of its type.
	*/
	void addChild(Node node, in bool legible_unique_name = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addChild, _godot_object, node, legible_unique_name);
	}
	/**
	Removes a child node. The node is NOT deleted and must be deleted manually.
	*/
	void removeChild(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeChild, _godot_object, node);
	}
	/**
	Returns the number of child nodes.
	*/
	long getChildCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getChildCount, _godot_object);
	}
	/**
	Returns an array of references to node's children.
	*/
	Array getChildren() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getChildren, _godot_object);
	}
	/**
	Returns a child node by its index (see $(D getChildCount)). This method is often used for iterating all children of a node.
	To access a child node via its name, use $(D getNode).
	*/
	Node getChild(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getChild, _godot_object, idx);
	}
	/**
	Returns `true` if the node that the $(D NodePath) points to exists.
	*/
	bool hasNode(NodePathArg0)(in NodePathArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasNode, _godot_object, path);
	}
	/**
	Fetches a node. The $(D NodePath) can be either a relative path (from the current node) or an absolute path (in the scene tree) to a node. If the path does not exist, a `null instance` is returned and attempts to access it will result in an "Attempt to call &lt;method&gt; on a null instance." error.
	$(B Note:) Fetching absolute paths only works when the node is inside the scene tree (see $(D isInsideTree)).
	$(B Example:) Assume your current node is Character and the following tree:
	
	
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
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getNode, _godot_object, path);
	}
	/**
	Similar to $(D getNode), but does not raise an error when `path` does not point to a valid $(D Node).
	*/
	Node getNodeOrNull(NodePathArg0)(in NodePathArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getNodeOrNull, _godot_object, path);
	}
	/**
	Returns the parent node of the current node, or an empty $(D Node) if the node lacks a parent.
	*/
	Node getParent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getParent, _godot_object);
	}
	/**
	Finds a descendant of this node whose name matches `mask` as in $(D String.match) (i.e. case sensitive, but '*' matches zero or more characters and '?' matches any single character except '.'). Note that it does not match against the full path, just against individual node names.
	If `owned` is `true`, this method only finds nodes whose owner is this node. This is especially important for scenes instantiated through script, because those scenes don't have an owner.
	*/
	Node findNode(in String mask, in bool recursive = true, in bool owned = true) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.findNode, _godot_object, mask, recursive, owned);
	}
	/**
	Finds the first parent of the current node whose name matches `mask` as in $(D String.match) (i.e. case sensitive, but '*' matches zero or more characters and '?' matches any single character except '.'). Note that it does not match against the full path, just against individual node names.
	*/
	Node findParent(in String mask) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.findParent, _godot_object, mask);
	}
	/**
	
	*/
	bool hasNodeAndResource(NodePathArg0)(in NodePathArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasNodeAndResource, _godot_object, path);
	}
	/**
	
	*/
	Array getNodeAndResource(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getNodeAndResource, _godot_object, path);
	}
	/**
	Returns `true` if this node is currently inside a $(D SceneTree).
	*/
	bool isInsideTree() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInsideTree, _godot_object);
	}
	/**
	Returns `true` if the given node is a direct or indirect child of the current node.
	*/
	bool isAParentOf(Node node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAParentOf, _godot_object, node);
	}
	/**
	Returns `true` if the given node occurs later in the scene hierarchy than the current node.
	*/
	bool isGreaterThan(Node node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isGreaterThan, _godot_object, node);
	}
	/**
	Returns the absolute path of the current node. This only works if the current node is inside the scene tree (see $(D isInsideTree)).
	*/
	NodePath getPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getPath, _godot_object);
	}
	/**
	Returns the relative $(D NodePath) from this node to the specified `node`. Both nodes must be in the same scene or the function will fail.
	*/
	NodePath getPathTo(Node node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getPathTo, _godot_object, node);
	}
	/**
	Adds the node to a group. Groups are helpers to name and organize a subset of nodes, for example "enemies" or "collectables". A node can be in any number of groups. Nodes can be assigned a group at any time, but will not be added until they are inside the scene tree (see $(D isInsideTree)). See notes in the description, and the group methods in $(D SceneTree).
	`persistent` option is used when packing node to $(D PackedScene) and saving to file. Non-persistent groups aren't stored.
	*/
	void addToGroup(in String group, in bool persistent = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addToGroup, _godot_object, group, persistent);
	}
	/**
	Removes a node from a group. See notes in the description, and the group methods in $(D SceneTree).
	*/
	void removeFromGroup(in String group)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeFromGroup, _godot_object, group);
	}
	/**
	Returns `true` if this node is in the specified group. See notes in the description, and the group methods in $(D SceneTree).
	*/
	bool isInGroup(in String group) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInGroup, _godot_object, group);
	}
	/**
	Moves a child node to a different position (order) amongst the other children. Since calls, signals, etc are performed by tree order, changing the order of children nodes may be useful.
	*/
	void moveChild(Node child_node, in long to_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.moveChild, _godot_object, child_node, to_position);
	}
	/**
	Returns an array listing the groups that the node is a member of.
	*/
	Array getGroups() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getGroups, _godot_object);
	}
	/**
	Moves this node to the top of the array of nodes of the parent node. This is often useful in GUIs ($(D Control) nodes), because their order of drawing depends on their order in the tree.
	*/
	void raise()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.raise, _godot_object);
	}
	/**
	
	*/
	void setOwner(Node owner)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOwner, _godot_object, owner);
	}
	/**
	
	*/
	Node getOwner() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getOwner, _godot_object);
	}
	/**
	Removes a node and sets all its children as children of the parent node (if it exists). All event subscriptions that pass by the removed node will be unsubscribed.
	*/
	void removeAndSkip()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeAndSkip, _godot_object);
	}
	/**
	Returns the node's index, i.e. its position among the siblings of its parent.
	*/
	long getIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getIndex, _godot_object);
	}
	/**
	Prints the tree to stdout. Used mainly for debugging purposes. This version displays the path relative to the current node, and is good for copy/pasting into the $(D getNode) function. Example output:
	
	
	TheGame
	TheGame/Menu
	TheGame/Menu/Label
	TheGame/Menu/Camera2D
	TheGame/SplashScreen
	TheGame/SplashScreen/Camera2D
	
	
	*/
	void printTree()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.printTree, _godot_object);
	}
	/**
	Similar to $(D printTree), this prints the tree to stdout. This version displays a more graphical representation similar to what is displayed in the scene inspector. It is useful for inspecting larger trees. Example output:
	
	
	 ┖╴TheGame
	    ┠╴Menu
	    ┃  ┠╴Label
	    ┃  ┖╴Camera2D
	    ┖-SplashScreen
	       ┖╴Camera2D
	
	
	*/
	void printTreePretty()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.printTreePretty, _godot_object);
	}
	/**
	
	*/
	void setFilename(in String filename)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFilename, _godot_object, filename);
	}
	/**
	
	*/
	String getFilename() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getFilename, _godot_object);
	}
	/**
	Notifies the current node and all its children recursively by calling notification() on all of them.
	*/
	void propagateNotification(in long what)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.propagateNotification, _godot_object, what);
	}
	/**
	Calls the given method (if present) with the arguments given in `args` on this node and recursively on all its children. If the parent_first argument is `true` then the method will be called on the current node first, then on all children. If it is `false` then the children will be called first.
	*/
	void propagateCall(in String method, in Array args = Array.empty_array, in bool parent_first = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.propagateCall, _godot_object, method, args, parent_first);
	}
	/**
	Enables or disables physics (i.e. fixed framerate) processing. When a node is being processed, it will receive a NOTIFICATION_PHYSICS_PROCESS at a fixed (usually 60 fps, see $(D OS) to change) interval (and the $(D _physicsProcess) callback will be called if exists). Enabled automatically if $(D _physicsProcess) is overridden. Any calls to this before $(D _ready) will be ignored.
	*/
	void setPhysicsProcess(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPhysicsProcess, _godot_object, enable);
	}
	/**
	Returns the time elapsed since the last physics-bound frame (see $(D _physicsProcess)). This is always a constant value in physics processing unless the frames per second is changed in $(D OS).
	*/
	double getPhysicsProcessDeltaTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPhysicsProcessDeltaTime, _godot_object);
	}
	/**
	Returns `true` if physics processing is enabled (see $(D setPhysicsProcess)).
	*/
	bool isPhysicsProcessing() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPhysicsProcessing, _godot_object);
	}
	/**
	Returns the time elapsed (in seconds) since the last process callback. This value may vary from frame to frame.
	*/
	double getProcessDeltaTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getProcessDeltaTime, _godot_object);
	}
	/**
	Enables or disables processing. When a node is being processed, it will receive a NOTIFICATION_PROCESS on every drawn frame (and the $(D _process) callback will be called if exists). Enabled automatically if $(D _process) is overridden. Any calls to this before $(D _ready) will be ignored.
	*/
	void setProcess(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProcess, _godot_object, enable);
	}
	/**
	
	*/
	void setProcessPriority(in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProcessPriority, _godot_object, priority);
	}
	/**
	Returns `true` if processing is enabled (see $(D setProcess)).
	*/
	bool isProcessing() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isProcessing, _godot_object);
	}
	/**
	Enables or disables input processing. This is not required for GUI controls! Enabled automatically if $(D _input) is overridden. Any calls to this before $(D _ready) will be ignored.
	*/
	void setProcessInput(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProcessInput, _godot_object, enable);
	}
	/**
	Returns `true` if the node is processing input (see $(D setProcessInput)).
	*/
	bool isProcessingInput() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isProcessingInput, _godot_object);
	}
	/**
	Enables unhandled input processing. This is not required for GUI controls! It enables the node to receive all input that was not previously handled (usually by a $(D Control)). Enabled automatically if $(D _unhandledInput) is overridden. Any calls to this before $(D _ready) will be ignored.
	*/
	void setProcessUnhandledInput(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProcessUnhandledInput, _godot_object, enable);
	}
	/**
	Returns `true` if the node is processing unhandled input (see $(D setProcessUnhandledInput)).
	*/
	bool isProcessingUnhandledInput() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isProcessingUnhandledInput, _godot_object);
	}
	/**
	Enables unhandled key input processing. Enabled automatically if $(D _unhandledKeyInput) is overridden. Any calls to this before $(D _ready) will be ignored.
	*/
	void setProcessUnhandledKeyInput(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProcessUnhandledKeyInput, _godot_object, enable);
	}
	/**
	Returns `true` if the node is processing unhandled key input (see $(D setProcessUnhandledKeyInput)).
	*/
	bool isProcessingUnhandledKeyInput() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isProcessingUnhandledKeyInput, _godot_object);
	}
	/**
	
	*/
	void setPauseMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPauseMode, _godot_object, mode);
	}
	/**
	
	*/
	Node.PauseMode getPauseMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node.PauseMode)(_classBinding.getPauseMode, _godot_object);
	}
	/**
	Returns `true` if the node can process while the scene tree is paused (see $(D pauseMode)). Always returns `true` if the scene tree is not paused, and `false` if the node is not in the tree.
	*/
	bool canProcess() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.canProcess, _godot_object);
	}
	/**
	Prints all stray nodes (nodes outside the $(D SceneTree)). Used for debugging. Works only in debug builds.
	*/
	void printStrayNodes()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.printStrayNodes, _godot_object);
	}
	/**
	Returns the node's order in the scene tree branch. For example, if called on the first child node the position is `0`.
	*/
	long getPositionInParent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPositionInParent, _godot_object);
	}
	/**
	Sets the folded state of the node in the Scene dock.
	*/
	void setDisplayFolded(in bool fold)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisplayFolded, _godot_object, fold);
	}
	/**
	Returns `true` if the node is folded (collapsed) in the Scene dock.
	*/
	bool isDisplayedFolded() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDisplayedFolded, _godot_object);
	}
	/**
	Enables or disabled internal processing for this node. Internal processing happens in isolation from the normal $(D _process) calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or processing is disabled for scripting ($(D setProcess)). Only useful for advanced uses to manipulate built-in nodes behaviour.
	*/
	void setProcessInternal(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProcessInternal, _godot_object, enable);
	}
	/**
	Returns `true` if internal processing is enabled (see $(D setProcessInternal)).
	*/
	bool isProcessingInternal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isProcessingInternal, _godot_object);
	}
	/**
	Enables or disables internal physics for this node. Internal physics processing happens in isolation from the normal $(D _physicsProcess) calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or physics processing is disabled for scripting ($(D setPhysicsProcess)). Only useful for advanced uses to manipulate built-in nodes behaviour.
	*/
	void setPhysicsProcessInternal(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPhysicsProcessInternal, _godot_object, enable);
	}
	/**
	Returns `true` if internal physics processing is enabled (see $(D setPhysicsProcessInternal)).
	*/
	bool isPhysicsProcessingInternal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPhysicsProcessingInternal, _godot_object);
	}
	/**
	Returns the $(D SceneTree) that contains this node.
	*/
	SceneTree getTree() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTree)(_classBinding.getTree, _godot_object);
	}
	/**
	Duplicates the node, returning a new node.
	You can fine-tune the behavior using the `flags` (see $(D Node.duplicateflags)).
	*/
	Node duplicate(in long flags = 15) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.duplicate, _godot_object, flags);
	}
	/**
	Replaces a node in a scene by the given one. Subscriptions that pass through this node will be lost.
	*/
	void replaceBy(Node node, in bool keep_data = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.replaceBy, _godot_object, node, keep_data);
	}
	/**
	Sets whether this is an instance load placeholder. See $(D InstancePlaceholder).
	*/
	void setSceneInstanceLoadPlaceholder(in bool load_placeholder)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSceneInstanceLoadPlaceholder, _godot_object, load_placeholder);
	}
	/**
	Returns `true` if this is an instance load placeholder. See $(D InstancePlaceholder).
	*/
	bool getSceneInstanceLoadPlaceholder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getSceneInstanceLoadPlaceholder, _godot_object);
	}
	/**
	Returns the node's $(D Viewport).
	*/
	Viewport getViewport() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport)(_classBinding.getViewport, _godot_object);
	}
	/**
	Queues a node for deletion at the end of the current frame. When deleted, all of its child nodes will be deleted as well. This method ensures it's safe to delete the node, contrary to $(D GodotObject.free). Use $(D GodotObject.isQueuedForDeletion) to check whether a node will be deleted at the end of the frame.
	*/
	void queueFree()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.queueFree, _godot_object);
	}
	/**
	Requests that `_ready` be called again.
	*/
	void requestReady()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.requestReady, _godot_object);
	}
	/**
	Sets the node's network master to the peer with the given peer ID. The network master is the peer that has authority over the node on the network. Useful in conjunction with the `master` and `puppet` keywords. Inherited from the parent node by default, which ultimately defaults to peer ID 1 (the server). If `recursive`, the given peer is recursively set as the master for all children of this node.
	*/
	void setNetworkMaster(in long id, in bool recursive = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNetworkMaster, _godot_object, id, recursive);
	}
	/**
	Returns the peer ID of the network master for this node. See $(D setNetworkMaster).
	*/
	long getNetworkMaster() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getNetworkMaster, _godot_object);
	}
	/**
	Returns `true` if the local system is the master of this node.
	*/
	bool isNetworkMaster() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isNetworkMaster, _godot_object);
	}
	/**
	
	*/
	Ref!MultiplayerAPI getMultiplayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiplayerAPI)(_classBinding.getMultiplayer, _godot_object);
	}
	/**
	
	*/
	Ref!MultiplayerAPI getCustomMultiplayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiplayerAPI)(_classBinding.getCustomMultiplayer, _godot_object);
	}
	/**
	
	*/
	void setCustomMultiplayer(MultiplayerAPI api)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomMultiplayer, _godot_object, api);
	}
	/**
	Changes the RPC mode for the given `method` to the given `mode`. See $(D MultiplayerAPI.rpcmode). An alternative is annotating methods and properties with the corresponding keywords (`remote`, `master`, `puppet`, `remotesync`, `mastersync`, `puppetsync`). By default, methods are not exposed to networking (and RPCs). Also see $(D rset) and $(D rsetConfig) for properties.
	*/
	void rpcConfig(in String method, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.rpcConfig, _godot_object, method, mode);
	}
	/**
	Changes the RPC mode for the given `property` to the given `mode`. See $(D MultiplayerAPI.rpcmode). An alternative is annotating methods and properties with the corresponding keywords (`remote`, `master`, `puppet`, `remotesync`, `mastersync`, `puppetsync`). By default, properties are not exposed to networking (and RPCs). Also see $(D rpc) and $(D rpcConfig) for methods.
	*/
	void rsetConfig(in String property, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.rsetConfig, _godot_object, property, mode);
	}
	/**
	
	*/
	void _setImportPath(NodePathArg0)(in NodePathArg0 import_path)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(import_path);
		String _GODOT_method_name = String("_set_import_path");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	NodePath _getImportPath() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_import_path");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!NodePath);
	}
	/**
	Sends a remote procedure call request for the given `method` to peers on the network (and locally), optionally sending all additional arguments as arguments to the method called by the RPC. The call request will only be received by nodes with the same $(D NodePath), including the exact same node name. Behaviour depends on the RPC configuration for the given method, see $(D rpcConfig). Methods are not exposed to RPCs by default. Also see $(D rset) and $(D rsetConfig) for properties. Returns an empty $(D Variant). Note that you can only safely use RPCs on clients after you received the `connected_to_server` signal from the $(D SceneTree). You also need to keep track of the connection state, either by the $(D SceneTree) signals like `server_disconnected` or by checking `SceneTree.network_peer.get_connection_status() == CONNECTION_CONNECTED`.
	*/
	Variant rpc(VarArgs...)(in String method, VarArgs varArgs)
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
	/**
	Sends a $(D rpc) using an unreliable protocol. Returns an empty $(D Variant).
	*/
	Variant rpcUnreliable(VarArgs...)(in String method, VarArgs varArgs)
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
	/**
	Sends a $(D rpc) to a specific peer identified by `peer_id` (see $(D NetworkedMultiplayerPeer.setTargetPeer)). Returns an empty $(D Variant).
	*/
	Variant rpcId(VarArgs...)(in long peer_id, in String method, VarArgs varArgs)
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
	/**
	Sends a $(D rpc) to a specific peer identified by `peer_id` using an unreliable protocol (see $(D NetworkedMultiplayerPeer.setTargetPeer)). Returns an empty $(D Variant).
	*/
	Variant rpcUnreliableId(VarArgs...)(in long peer_id, in String method, VarArgs varArgs)
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
	/**
	Remotely changes a property's value on other peers (and locally). Behaviour depends on the RPC configuration for the given property, see $(D rsetConfig). Also see $(D rpc) for RPCs for methods, most information applies to this method as well.
	*/
	void rset(VariantArg1)(in String property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.rset, _godot_object, property, value);
	}
	/**
	Remotely changes the property's value on a specific peer identified by `peer_id` (see $(D NetworkedMultiplayerPeer.setTargetPeer)).
	*/
	void rsetId(VariantArg2)(in long peer_id, in String property, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.rsetId, _godot_object, peer_id, property, value);
	}
	/**
	Remotely changes the property's value on other peers (and locally) using an unreliable protocol.
	*/
	void rsetUnreliable(VariantArg1)(in String property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.rsetUnreliable, _godot_object, property, value);
	}
	/**
	Remotely changes property's value on a specific peer identified by `peer_id` using an unreliable protocol (see $(D NetworkedMultiplayerPeer.setTargetPeer)).
	*/
	void rsetUnreliableId(VariantArg2)(in long peer_id, in String property, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.rsetUnreliableId, _godot_object, peer_id, property, value);
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
	@property void owner(Node v)
	{
		setOwner(v);
	}
	/**
	The $(D MultiplayerAPI) instance associated with this node. Either the $(D customMultiplayer), or the default SceneTree one (if inside tree).
	*/
	@property MultiplayerAPI multiplayer()
	{
		return getMultiplayer();
	}
	/**
	The override to the default $(D MultiplayerAPI). Set to null to use the default SceneTree one.
	*/
	@property MultiplayerAPI customMultiplayer()
	{
		return getCustomMultiplayer();
	}
	/// ditto
	@property void customMultiplayer(MultiplayerAPI v)
	{
		setCustomMultiplayer(v);
	}
}
