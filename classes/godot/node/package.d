/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.node;
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
import godot.inputevent;
import godot.inputeventkey;
import godot.scenetreetween;
import godot.multiplayerapi;
import godot.scenetree;
import godot.viewport;
/**

*/
@GodotBaseClass struct Node
{
	package(godot) enum string _GODOT_internal_name = "Node";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_enter_tree") GodotMethod!(void) _enterTree;
		@GodotName("_exit_tree") GodotMethod!(void) _exitTree;
		@GodotName("_get_configuration_warning") GodotMethod!(String) _getConfigurationWarning;
		@GodotName("_get_editor_description") GodotMethod!(String) _getEditorDescription;
		@GodotName("_get_import_path") GodotMethod!(NodePath) _getImportPath;
		@GodotName("_input") GodotMethod!(void, InputEvent) _input;
		@GodotName("_physics_process") GodotMethod!(void, double) _physicsProcess;
		@GodotName("_process") GodotMethod!(void, double) _process;
		@GodotName("_ready") GodotMethod!(void) _ready;
		@GodotName("_set_editor_description") GodotMethod!(void, String) _setEditorDescription;
		@GodotName("_set_import_path") GodotMethod!(void, NodePath) _setImportPath;
		@GodotName("_set_property_pinned") GodotMethod!(void, String, bool) _setPropertyPinned;
		@GodotName("_unhandled_input") GodotMethod!(void, InputEvent) _unhandledInput;
		@GodotName("_unhandled_key_input") GodotMethod!(void, InputEventKey) _unhandledKeyInput;
		@GodotName("add_child") GodotMethod!(void, Node, bool) addChild;
		@GodotName("add_child_below_node") GodotMethod!(void, Node, Node, bool) addChildBelowNode;
		@GodotName("add_to_group") GodotMethod!(void, String, bool) addToGroup;
		@GodotName("can_process") GodotMethod!(bool) canProcess;
		@GodotName("create_tween") GodotMethod!(SceneTreeTween) createTween;
		@GodotName("duplicate") GodotMethod!(Node, long) duplicate;
		@GodotName("find_node") GodotMethod!(Node, String, bool, bool) findNode;
		@GodotName("find_parent") GodotMethod!(Node, String) findParent;
		@GodotName("get_child") GodotMethod!(Node, long) getChild;
		@GodotName("get_child_count") GodotMethod!(long) getChildCount;
		@GodotName("get_children") GodotMethod!(Array) getChildren;
		@GodotName("get_custom_multiplayer") GodotMethod!(MultiplayerAPI) getCustomMultiplayer;
		@GodotName("get_filename") GodotMethod!(String) getFilename;
		@GodotName("get_groups") GodotMethod!(Array) getGroups;
		@GodotName("get_index") GodotMethod!(long) getIndex;
		@GodotName("get_multiplayer") GodotMethod!(MultiplayerAPI) getMultiplayer;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("get_network_master") GodotMethod!(long) getNetworkMaster;
		@GodotName("get_node") GodotMethod!(Node, NodePath) getNode;
		@GodotName("get_node_and_resource") GodotMethod!(Array, NodePath) getNodeAndResource;
		@GodotName("get_node_or_null") GodotMethod!(Node, NodePath) getNodeOrNull;
		@GodotName("get_owner") GodotMethod!(Node) getOwner;
		@GodotName("get_parent") GodotMethod!(Node) getParent;
		@GodotName("get_path") GodotMethod!(NodePath) getPath;
		@GodotName("get_path_to") GodotMethod!(NodePath, Node) getPathTo;
		@GodotName("get_pause_mode") GodotMethod!(Node.PauseMode) getPauseMode;
		@GodotName("get_physics_interpolation_mode") GodotMethod!(Node.PhysicsInterpolationMode) getPhysicsInterpolationMode;
		@GodotName("get_physics_process_delta_time") GodotMethod!(double) getPhysicsProcessDeltaTime;
		@GodotName("get_position_in_parent") GodotMethod!(long) getPositionInParent;
		@GodotName("get_process_delta_time") GodotMethod!(double) getProcessDeltaTime;
		@GodotName("get_process_priority") GodotMethod!(long) getProcessPriority;
		@GodotName("get_scene_instance_load_placeholder") GodotMethod!(bool) getSceneInstanceLoadPlaceholder;
		@GodotName("get_tree") GodotMethod!(SceneTree) getTree;
		@GodotName("get_viewport") GodotMethod!(Viewport) getViewport;
		@GodotName("has_node") GodotMethod!(bool, NodePath) hasNode;
		@GodotName("has_node_and_resource") GodotMethod!(bool, NodePath) hasNodeAndResource;
		@GodotName("is_a_parent_of") GodotMethod!(bool, Node) isAParentOf;
		@GodotName("is_displayed_folded") GodotMethod!(bool) isDisplayedFolded;
		@GodotName("is_greater_than") GodotMethod!(bool, Node) isGreaterThan;
		@GodotName("is_in_group") GodotMethod!(bool, String) isInGroup;
		@GodotName("is_inside_tree") GodotMethod!(bool) isInsideTree;
		@GodotName("is_network_master") GodotMethod!(bool) isNetworkMaster;
		@GodotName("is_physics_interpolated") GodotMethod!(bool) isPhysicsInterpolated;
		@GodotName("is_physics_interpolated_and_enabled") GodotMethod!(bool) isPhysicsInterpolatedAndEnabled;
		@GodotName("is_physics_processing") GodotMethod!(bool) isPhysicsProcessing;
		@GodotName("is_physics_processing_internal") GodotMethod!(bool) isPhysicsProcessingInternal;
		@GodotName("is_processing") GodotMethod!(bool) isProcessing;
		@GodotName("is_processing_input") GodotMethod!(bool) isProcessingInput;
		@GodotName("is_processing_internal") GodotMethod!(bool) isProcessingInternal;
		@GodotName("is_processing_unhandled_input") GodotMethod!(bool) isProcessingUnhandledInput;
		@GodotName("is_processing_unhandled_key_input") GodotMethod!(bool) isProcessingUnhandledKeyInput;
		@GodotName("is_unique_name_in_owner") GodotMethod!(bool) isUniqueNameInOwner;
		@GodotName("move_child") GodotMethod!(void, Node, long) moveChild;
		@GodotName("print_stray_nodes") GodotMethod!(void) printStrayNodes;
		@GodotName("print_tree") GodotMethod!(void) printTree;
		@GodotName("print_tree_pretty") GodotMethod!(void) printTreePretty;
		@GodotName("propagate_call") GodotMethod!(void, String, Array, bool) propagateCall;
		@GodotName("propagate_notification") GodotMethod!(void, long) propagateNotification;
		@GodotName("queue_free") GodotMethod!(void) queueFree;
		@GodotName("raise") GodotMethod!(void) raise;
		@GodotName("remove_and_skip") GodotMethod!(void) removeAndSkip;
		@GodotName("remove_child") GodotMethod!(void, Node) removeChild;
		@GodotName("remove_from_group") GodotMethod!(void, String) removeFromGroup;
		@GodotName("replace_by") GodotMethod!(void, Node, bool) replaceBy;
		@GodotName("request_ready") GodotMethod!(void) requestReady;
		@GodotName("reset_physics_interpolation") GodotMethod!(void) resetPhysicsInterpolation;
		@GodotName("rpc") GodotMethod!(Variant, String, GodotVarArgs) rpc;
		@GodotName("rpc_config") GodotMethod!(void, String, long) rpcConfig;
		@GodotName("rpc_id") GodotMethod!(Variant, long, String, GodotVarArgs) rpcId;
		@GodotName("rpc_unreliable") GodotMethod!(Variant, String, GodotVarArgs) rpcUnreliable;
		@GodotName("rpc_unreliable_id") GodotMethod!(Variant, long, String, GodotVarArgs) rpcUnreliableId;
		@GodotName("rset") GodotMethod!(void, String, Variant) rset;
		@GodotName("rset_config") GodotMethod!(void, String, long) rsetConfig;
		@GodotName("rset_id") GodotMethod!(void, long, String, Variant) rsetId;
		@GodotName("rset_unreliable") GodotMethod!(void, String, Variant) rsetUnreliable;
		@GodotName("rset_unreliable_id") GodotMethod!(void, long, String, Variant) rsetUnreliableId;
		@GodotName("set_custom_multiplayer") GodotMethod!(void, MultiplayerAPI) setCustomMultiplayer;
		@GodotName("set_display_folded") GodotMethod!(void, bool) setDisplayFolded;
		@GodotName("set_filename") GodotMethod!(void, String) setFilename;
		@GodotName("set_name") GodotMethod!(void, String) setName;
		@GodotName("set_network_master") GodotMethod!(void, long, bool) setNetworkMaster;
		@GodotName("set_owner") GodotMethod!(void, Node) setOwner;
		@GodotName("set_pause_mode") GodotMethod!(void, long) setPauseMode;
		@GodotName("set_physics_interpolation_mode") GodotMethod!(void, long) setPhysicsInterpolationMode;
		@GodotName("set_physics_process") GodotMethod!(void, bool) setPhysicsProcess;
		@GodotName("set_physics_process_internal") GodotMethod!(void, bool) setPhysicsProcessInternal;
		@GodotName("set_process") GodotMethod!(void, bool) setProcess;
		@GodotName("set_process_input") GodotMethod!(void, bool) setProcessInput;
		@GodotName("set_process_internal") GodotMethod!(void, bool) setProcessInternal;
		@GodotName("set_process_priority") GodotMethod!(void, long) setProcessPriority;
		@GodotName("set_process_unhandled_input") GodotMethod!(void, bool) setProcessUnhandledInput;
		@GodotName("set_process_unhandled_key_input") GodotMethod!(void, bool) setProcessUnhandledKeyInput;
		@GodotName("set_scene_instance_load_placeholder") GodotMethod!(void, bool) setSceneInstanceLoadPlaceholder;
		@GodotName("set_unique_name_in_owner") GodotMethod!(void, bool) setUniqueNameInOwner;
		@GodotName("update_configuration_warning") GodotMethod!(void) updateConfigurationWarning;
	}
	/// 
	pragma(inline, true) bool opEquals(in Node other) const
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
	/// Construct a new instance of Node.
	/// Note: use `memnew!Node` instead.
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
		/** */
		pauseModeInherit = 0,
		/** */
		pauseModeStop = 1,
		/** */
		pauseModeProcess = 2,
	}
	/// 
	enum DuplicateFlags : int
	{
		/** */
		duplicateSignals = 1,
		/** */
		duplicateGroups = 2,
		/** */
		duplicateScripts = 4,
		/** */
		duplicateUseInstancing = 8,
	}
	/// 
	enum PhysicsInterpolationMode : int
	{
		/** */
		physicsInterpolationModeInherit = 0,
		/** */
		physicsInterpolationModeOff = 1,
		/** */
		physicsInterpolationModeOn = 2,
	}
	/// 
	enum Constants : int
	{
		pauseModeInherit = 0,
		physicsInterpolationModeInherit = 0,
		pauseModeStop = 1,
		duplicateSignals = 1,
		physicsInterpolationModeOff = 1,
		duplicateGroups = 2,
		physicsInterpolationModeOn = 2,
		pauseModeProcess = 2,
		duplicateScripts = 4,
		duplicateUseInstancing = 8,
		/** */
		notificationEnterTree = 10,
		/** */
		notificationExitTree = 11,
		/** */
		notificationMovedInParent = 12,
		/** */
		notificationReady = 13,
		/** */
		notificationPaused = 14,
		/** */
		notificationUnpaused = 15,
		/** */
		notificationPhysicsProcess = 16,
		/** */
		notificationProcess = 17,
		/** */
		notificationParented = 18,
		/** */
		notificationUnparented = 19,
		/** */
		notificationInstanced = 20,
		/** */
		notificationDragBegin = 21,
		/** */
		notificationDragEnd = 22,
		/** */
		notificationPathChanged = 23,
		/** */
		notificationInternalProcess = 25,
		/** */
		notificationInternalPhysicsProcess = 26,
		/** */
		notificationPostEnterTree = 27,
		/** */
		notificationResetPhysicsInterpolation = 28,
		/** */
		notificationWmMouseEnter = 1002,
		/** */
		notificationWmMouseExit = 1003,
		/** */
		notificationWmFocusIn = 1004,
		/** */
		notificationWmFocusOut = 1005,
		/** */
		notificationWmQuitRequest = 1006,
		/** */
		notificationWmGoBackRequest = 1007,
		/** */
		notificationWmUnfocusRequest = 1008,
		/** */
		notificationOsMemoryWarning = 1009,
		/** */
		notificationTranslationChanged = 1010,
		/** */
		notificationWmAbout = 1011,
		/** */
		notificationCrash = 1012,
		/** */
		notificationOsImeUpdate = 1013,
		/** */
		notificationAppResumed = 1014,
		/** */
		notificationAppPaused = 1015,
	}
	/**
	
	*/
	void _enterTree()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _exitTree()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	String _getConfigurationWarning()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_configuration_warning");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	String _getEditorDescription() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_editor_description");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	NodePath _getImportPath() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_import_path");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!NodePath);
	}
	/**
	
	*/
	void _input(InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _physicsProcess(in double delta)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_physics_process");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _process(in double delta)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(delta);
		String _GODOT_method_name = String("_process");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _ready()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_ready");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setEditorDescription(in String editor_description)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(editor_description);
		String _GODOT_method_name = String("_set_editor_description");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setImportPath(NodePathArg0)(in NodePathArg0 import_path)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(import_path);
		String _GODOT_method_name = String("_set_import_path");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setPropertyPinned(in String property, in bool pinned)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(property);
		_GODOT_args.append(pinned);
		String _GODOT_method_name = String("_set_property_pinned");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _unhandledInput(InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _unhandledKeyInput(InputEventKey event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_unhandled_key_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addChild(Node node, in bool legible_unique_name = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addChild, _godot_object, node, legible_unique_name);
	}
	/**
	
	*/
	void addChildBelowNode(Node node, Node child_node, in bool legible_unique_name = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addChildBelowNode, _godot_object, node, child_node, legible_unique_name);
	}
	/**
	
	*/
	void addToGroup(in String group, in bool persistent = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addToGroup, _godot_object, group, persistent);
	}
	/**
	
	*/
	bool canProcess() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canProcess, _godot_object);
	}
	/**
	
	*/
	Ref!SceneTreeTween createTween()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTween)(GDNativeClassBinding.createTween, _godot_object);
	}
	/**
	
	*/
	Node duplicate(in long flags = 15) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.duplicate, _godot_object, flags);
	}
	/**
	
	*/
	Node findNode(in String mask, in bool recursive = true, in bool owned = true) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.findNode, _godot_object, mask, recursive, owned);
	}
	/**
	
	*/
	Node findParent(in String mask) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.findParent, _godot_object, mask);
	}
	/**
	
	*/
	Node getChild(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getChild, _godot_object, idx);
	}
	/**
	
	*/
	long getChildCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getChildCount, _godot_object);
	}
	/**
	
	*/
	Array getChildren() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getChildren, _godot_object);
	}
	/**
	
	*/
	Ref!MultiplayerAPI getCustomMultiplayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiplayerAPI)(GDNativeClassBinding.getCustomMultiplayer, _godot_object);
	}
	/**
	
	*/
	String getFilename() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getFilename, _godot_object);
	}
	/**
	
	*/
	Array getGroups() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getGroups, _godot_object);
	}
	/**
	
	*/
	long getIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getIndex, _godot_object);
	}
	/**
	
	*/
	Ref!MultiplayerAPI getMultiplayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiplayerAPI)(GDNativeClassBinding.getMultiplayer, _godot_object);
	}
	/**
	
	*/
	String getName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getName, _godot_object);
	}
	/**
	
	*/
	long getNetworkMaster() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNetworkMaster, _godot_object);
	}
	/**
	
	*/
	Node getNode(NodePathArg0)(in NodePathArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getNode, _godot_object, path);
	}
	/**
	
	*/
	Array getNodeAndResource(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getNodeAndResource, _godot_object, path);
	}
	/**
	
	*/
	Node getNodeOrNull(NodePathArg0)(in NodePathArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getNodeOrNull, _godot_object, path);
	}
	/**
	
	*/
	Node getOwner() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getOwner, _godot_object);
	}
	/**
	
	*/
	Node getParent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getParent, _godot_object);
	}
	/**
	
	*/
	NodePath getPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getPath, _godot_object);
	}
	/**
	
	*/
	NodePath getPathTo(Node node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getPathTo, _godot_object, node);
	}
	/**
	
	*/
	Node.PauseMode getPauseMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node.PauseMode)(GDNativeClassBinding.getPauseMode, _godot_object);
	}
	/**
	
	*/
	Node.PhysicsInterpolationMode getPhysicsInterpolationMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node.PhysicsInterpolationMode)(GDNativeClassBinding.getPhysicsInterpolationMode, _godot_object);
	}
	/**
	
	*/
	double getPhysicsProcessDeltaTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPhysicsProcessDeltaTime, _godot_object);
	}
	/**
	
	*/
	long getPositionInParent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPositionInParent, _godot_object);
	}
	/**
	
	*/
	double getProcessDeltaTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getProcessDeltaTime, _godot_object);
	}
	/**
	
	*/
	long getProcessPriority() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getProcessPriority, _godot_object);
	}
	/**
	
	*/
	bool getSceneInstanceLoadPlaceholder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getSceneInstanceLoadPlaceholder, _godot_object);
	}
	/**
	
	*/
	SceneTree getTree() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTree)(GDNativeClassBinding.getTree, _godot_object);
	}
	/**
	
	*/
	Viewport getViewport() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport)(GDNativeClassBinding.getViewport, _godot_object);
	}
	/**
	
	*/
	bool hasNode(NodePathArg0)(in NodePathArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasNode, _godot_object, path);
	}
	/**
	
	*/
	bool hasNodeAndResource(NodePathArg0)(in NodePathArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasNodeAndResource, _godot_object, path);
	}
	/**
	
	*/
	bool isAParentOf(Node node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAParentOf, _godot_object, node);
	}
	/**
	
	*/
	bool isDisplayedFolded() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDisplayedFolded, _godot_object);
	}
	/**
	
	*/
	bool isGreaterThan(Node node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isGreaterThan, _godot_object, node);
	}
	/**
	
	*/
	bool isInGroup(in String group) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInGroup, _godot_object, group);
	}
	/**
	
	*/
	bool isInsideTree() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInsideTree, _godot_object);
	}
	/**
	
	*/
	bool isNetworkMaster() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isNetworkMaster, _godot_object);
	}
	/**
	
	*/
	bool isPhysicsInterpolated() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPhysicsInterpolated, _godot_object);
	}
	/**
	
	*/
	bool isPhysicsInterpolatedAndEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPhysicsInterpolatedAndEnabled, _godot_object);
	}
	/**
	
	*/
	bool isPhysicsProcessing() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPhysicsProcessing, _godot_object);
	}
	/**
	
	*/
	bool isPhysicsProcessingInternal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPhysicsProcessingInternal, _godot_object);
	}
	/**
	
	*/
	bool isProcessing() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isProcessing, _godot_object);
	}
	/**
	
	*/
	bool isProcessingInput() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isProcessingInput, _godot_object);
	}
	/**
	
	*/
	bool isProcessingInternal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isProcessingInternal, _godot_object);
	}
	/**
	
	*/
	bool isProcessingUnhandledInput() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isProcessingUnhandledInput, _godot_object);
	}
	/**
	
	*/
	bool isProcessingUnhandledKeyInput() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isProcessingUnhandledKeyInput, _godot_object);
	}
	/**
	
	*/
	bool isUniqueNameInOwner() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUniqueNameInOwner, _godot_object);
	}
	/**
	
	*/
	void moveChild(Node child_node, in long to_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.moveChild, _godot_object, child_node, to_position);
	}
	/**
	
	*/
	void printStrayNodes()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.printStrayNodes, _godot_object);
	}
	/**
	
	*/
	void printTree()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.printTree, _godot_object);
	}
	/**
	
	*/
	void printTreePretty()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.printTreePretty, _godot_object);
	}
	/**
	
	*/
	void propagateCall(in String method, in Array args = Array.make(), in bool parent_first = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.propagateCall, _godot_object, method, args, parent_first);
	}
	/**
	
	*/
	void propagateNotification(in long what)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.propagateNotification, _godot_object, what);
	}
	/**
	
	*/
	void queueFree()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.queueFree, _godot_object);
	}
	/**
	
	*/
	void raise()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.raise, _godot_object);
	}
	/**
	
	*/
	void removeAndSkip()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeAndSkip, _godot_object);
	}
	/**
	
	*/
	void removeChild(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeChild, _godot_object, node);
	}
	/**
	
	*/
	void removeFromGroup(in String group)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeFromGroup, _godot_object, group);
	}
	/**
	
	*/
	void replaceBy(Node node, in bool keep_data = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.replaceBy, _godot_object, node, keep_data);
	}
	/**
	
	*/
	void requestReady()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.requestReady, _godot_object);
	}
	/**
	
	*/
	void resetPhysicsInterpolation()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resetPhysicsInterpolation, _godot_object);
	}
	/**
	
	*/
	Variant rpc(VarArgs...)(in String method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("rpc");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void rpcConfig(in String method, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rpcConfig, _godot_object, method, mode);
	}
	/**
	
	*/
	Variant rpcId(VarArgs...)(in long peer_id, in String method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
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
	
	*/
	Variant rpcUnreliable(VarArgs...)(in String method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("rpc_unreliable");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Variant rpcUnreliableId(VarArgs...)(in long peer_id, in String method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
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
	
	*/
	void rset(VariantArg1)(in String property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rset, _godot_object, property, value);
	}
	/**
	
	*/
	void rsetConfig(in String property, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rsetConfig, _godot_object, property, mode);
	}
	/**
	
	*/
	void rsetId(VariantArg2)(in long peer_id, in String property, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rsetId, _godot_object, peer_id, property, value);
	}
	/**
	
	*/
	void rsetUnreliable(VariantArg1)(in String property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rsetUnreliable, _godot_object, property, value);
	}
	/**
	
	*/
	void rsetUnreliableId(VariantArg2)(in long peer_id, in String property, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rsetUnreliableId, _godot_object, peer_id, property, value);
	}
	/**
	
	*/
	void setCustomMultiplayer(MultiplayerAPI api)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomMultiplayer, _godot_object, api);
	}
	/**
	
	*/
	void setDisplayFolded(in bool fold)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisplayFolded, _godot_object, fold);
	}
	/**
	
	*/
	void setFilename(in String filename)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFilename, _godot_object, filename);
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
	void setNetworkMaster(in long id, in bool recursive = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNetworkMaster, _godot_object, id, recursive);
	}
	/**
	
	*/
	void setOwner(Node owner)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOwner, _godot_object, owner);
	}
	/**
	
	*/
	void setPauseMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPauseMode, _godot_object, mode);
	}
	/**
	
	*/
	void setPhysicsInterpolationMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicsInterpolationMode, _godot_object, mode);
	}
	/**
	
	*/
	void setPhysicsProcess(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicsProcess, _godot_object, enable);
	}
	/**
	
	*/
	void setPhysicsProcessInternal(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicsProcessInternal, _godot_object, enable);
	}
	/**
	
	*/
	void setProcess(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProcess, _godot_object, enable);
	}
	/**
	
	*/
	void setProcessInput(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProcessInput, _godot_object, enable);
	}
	/**
	
	*/
	void setProcessInternal(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProcessInternal, _godot_object, enable);
	}
	/**
	
	*/
	void setProcessPriority(in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProcessPriority, _godot_object, priority);
	}
	/**
	
	*/
	void setProcessUnhandledInput(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProcessUnhandledInput, _godot_object, enable);
	}
	/**
	
	*/
	void setProcessUnhandledKeyInput(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProcessUnhandledKeyInput, _godot_object, enable);
	}
	/**
	
	*/
	void setSceneInstanceLoadPlaceholder(in bool load_placeholder)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSceneInstanceLoadPlaceholder, _godot_object, load_placeholder);
	}
	/**
	
	*/
	void setUniqueNameInOwner(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUniqueNameInOwner, _godot_object, enable);
	}
	/**
	
	*/
	void updateConfigurationWarning()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateConfigurationWarning, _godot_object);
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
	/**
	
	*/
	@property String editorDescription()
	{
		return _getEditorDescription();
	}
	/// ditto
	@property void editorDescription(String v)
	{
		_setEditorDescription(v);
	}
	/**
	
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
	
	*/
	@property MultiplayerAPI multiplayer()
	{
		return getMultiplayer();
	}
	/**
	
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
	@property Node.PhysicsInterpolationMode physicsInterpolationMode()
	{
		return getPhysicsInterpolationMode();
	}
	/// ditto
	@property void physicsInterpolationMode(long v)
	{
		setPhysicsInterpolationMode(v);
	}
	/**
	
	*/
	@property long processPriority()
	{
		return getProcessPriority();
	}
	/// ditto
	@property void processPriority(long v)
	{
		setProcessPriority(v);
	}
	/**
	
	*/
	@property bool uniqueNameInOwner()
	{
		return isUniqueNameInOwner();
	}
	/// ditto
	@property void uniqueNameInOwner(bool v)
	{
		setUniqueNameInOwner(v);
	}
}
