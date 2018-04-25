/**
SceneTree manages a hierarchy of nodes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.scenetree;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.mainloop;
import godot.viewport;
import godot.node;
import godot.scenetreetimer;
import godot.packedscene;
import godot.multiplayerapi;
import godot.networkedmultiplayerpeer;
/**
SceneTree manages a hierarchy of nodes.

As one of the most important classes, the `SceneTree` manages the hierarchy of nodes in a scene as well as scenes themselves. Nodes can be added, retrieved and removed. The whole scene tree (and thus the current scene) can be paused. Scenes can be loaded, switched and reloaded. You can also use the SceneTree to organize your nodes into groups: every node can be assigned as many groups as you want to create, e.g. a "enemy" group. You can then iterate these groups or even call methods and set properties on all the group's members at once.
*/
@GodotBaseClass struct SceneTree
{
	static immutable string _GODOT_internal_name = "SceneTree";
public:
@nogc nothrow:
	union { godot_object _godot_object; MainLoop _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in SceneTree other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SceneTree opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SceneTree _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SceneTree");
		if(constructor is null) return typeof(this).init;
		return cast(SceneTree)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum StretchAspect : int
	{
		/**
		
		*/
		stretchAspectIgnore = 0,
		/**
		
		*/
		stretchAspectKeep = 1,
		/**
		
		*/
		stretchAspectKeepWidth = 2,
		/**
		
		*/
		stretchAspectKeepHeight = 3,
		/**
		
		*/
		stretchAspectExpand = 4,
	}
	/// 
	enum GroupCallFlags : int
	{
		/**
		Call a group with no flags (default).
		*/
		groupCallDefault = 0,
		/**
		Call a group in reverse scene order.
		*/
		groupCallReverse = 1,
		/**
		Call a group immediately (calls are normally made on idle).
		*/
		groupCallRealtime = 2,
		/**
		Call a group only once even if the call is executed many times.
		*/
		groupCallUnique = 4,
	}
	/// 
	enum StretchMode : int
	{
		/**
		
		*/
		stretchModeDisabled = 0,
		/**
		
		*/
		stretchMode2d = 1,
		/**
		
		*/
		stretchModeViewport = 2,
	}
	/// 
	enum Constants : int
	{
		stretchModeDisabled = 0,
		groupCallDefault = 0,
		stretchAspectIgnore = 0,
		stretchMode2d = 1,
		stretchAspectKeep = 1,
		groupCallReverse = 1,
		stretchAspectKeepWidth = 2,
		groupCallRealtime = 2,
		stretchModeViewport = 2,
		stretchAspectKeepHeight = 3,
		groupCallUnique = 4,
		stretchAspectExpand = 4,
	}
	package(godot) static GodotMethod!(Viewport) _GODOT_get_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_root") = _GODOT_get_root;
	/**
	
	*/
	Viewport getRoot() const
	{
		_GODOT_get_root.bind("SceneTree", "get_root");
		return ptrcall!(Viewport)(_GODOT_get_root, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_group") = _GODOT_has_group;
	/**
	Returns `true` if the given group exists.
	*/
	bool hasGroup(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_group.bind("SceneTree", "has_group");
		return ptrcall!(bool)(_GODOT_has_group, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_auto_accept_quit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_auto_accept_quit") = _GODOT_set_auto_accept_quit;
	/**
	If `true` the application automatically accepts quitting.
	*/
	void setAutoAcceptQuit(in bool enabled)
	{
		_GODOT_set_auto_accept_quit.bind("SceneTree", "set_auto_accept_quit");
		ptrcall!(void)(_GODOT_set_auto_accept_quit, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_quit_on_go_back;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_quit_on_go_back") = _GODOT_set_quit_on_go_back;
	/**
	If `true` the application quits automatically on going back (e.g. on Android).
	*/
	void setQuitOnGoBack(in bool enabled)
	{
		_GODOT_set_quit_on_go_back.bind("SceneTree", "set_quit_on_go_back");
		ptrcall!(void)(_GODOT_set_quit_on_go_back, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_debug_collisions_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_debug_collisions_hint") = _GODOT_set_debug_collisions_hint;
	/**
	
	*/
	void setDebugCollisionsHint(in bool enable)
	{
		_GODOT_set_debug_collisions_hint.bind("SceneTree", "set_debug_collisions_hint");
		ptrcall!(void)(_GODOT_set_debug_collisions_hint, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_debugging_collisions_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_debugging_collisions_hint") = _GODOT_is_debugging_collisions_hint;
	/**
	
	*/
	bool isDebuggingCollisionsHint() const
	{
		_GODOT_is_debugging_collisions_hint.bind("SceneTree", "is_debugging_collisions_hint");
		return ptrcall!(bool)(_GODOT_is_debugging_collisions_hint, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_debug_navigation_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_debug_navigation_hint") = _GODOT_set_debug_navigation_hint;
	/**
	
	*/
	void setDebugNavigationHint(in bool enable)
	{
		_GODOT_set_debug_navigation_hint.bind("SceneTree", "set_debug_navigation_hint");
		ptrcall!(void)(_GODOT_set_debug_navigation_hint, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_debugging_navigation_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_debugging_navigation_hint") = _GODOT_is_debugging_navigation_hint;
	/**
	
	*/
	bool isDebuggingNavigationHint() const
	{
		_GODOT_is_debugging_navigation_hint.bind("SceneTree", "is_debugging_navigation_hint");
		return ptrcall!(bool)(_GODOT_is_debugging_navigation_hint, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_edited_scene_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_edited_scene_root") = _GODOT_set_edited_scene_root;
	/**
	
	*/
	void setEditedSceneRoot(GodotObject scene)
	{
		_GODOT_set_edited_scene_root.bind("SceneTree", "set_edited_scene_root");
		ptrcall!(void)(_GODOT_set_edited_scene_root, _godot_object, scene);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_edited_scene_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edited_scene_root") = _GODOT_get_edited_scene_root;
	/**
	
	*/
	Node getEditedSceneRoot() const
	{
		_GODOT_get_edited_scene_root.bind("SceneTree", "get_edited_scene_root");
		return ptrcall!(Node)(_GODOT_get_edited_scene_root, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pause;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pause") = _GODOT_set_pause;
	/**
	
	*/
	void setPause(in bool enable)
	{
		_GODOT_set_pause.bind("SceneTree", "set_pause");
		ptrcall!(void)(_GODOT_set_pause, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_paused;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_paused") = _GODOT_is_paused;
	/**
	
	*/
	bool isPaused() const
	{
		_GODOT_is_paused.bind("SceneTree", "is_paused");
		return ptrcall!(bool)(_GODOT_is_paused, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_set_input_as_handled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_input_as_handled") = _GODOT_set_input_as_handled;
	/**
	Marks the most recent input event as handled.
	*/
	void setInputAsHandled()
	{
		_GODOT_set_input_as_handled.bind("SceneTree", "set_input_as_handled");
		ptrcall!(void)(_GODOT_set_input_as_handled, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_input_handled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_input_handled") = _GODOT_is_input_handled;
	/**
	Returns `true` if the most recent InputEvent was marked as handled with $(D setInputAsHandled).
	*/
	bool isInputHandled()
	{
		_GODOT_is_input_handled.bind("SceneTree", "is_input_handled");
		return ptrcall!(bool)(_GODOT_is_input_handled, _godot_object);
	}
	package(godot) static GodotMethod!(SceneTreeTimer, double, bool) _GODOT_create_timer;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_timer") = _GODOT_create_timer;
	/**
	Returns a $(D SceneTreeTimer) which will $(D SceneTreeTimer.timeout) after the given time in seconds elapsed in this SceneTree. If `pause_mode_process` is set to false, pausing the SceneTree will also pause the timer.
	*/
	Ref!SceneTreeTimer createTimer(in double time_sec, in bool pause_mode_process = true)
	{
		_GODOT_create_timer.bind("SceneTree", "create_timer");
		return ptrcall!(SceneTreeTimer)(_GODOT_create_timer, _godot_object, time_sec, pause_mode_process);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_node_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_count") = _GODOT_get_node_count;
	/**
	Returns the number of nodes in this SceneTree.
	*/
	long getNodeCount() const
	{
		_GODOT_get_node_count.bind("SceneTree", "get_node_count");
		return ptrcall!(long)(_GODOT_get_node_count, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame") = _GODOT_get_frame;
	/**
	
	*/
	long getFrame() const
	{
		_GODOT_get_frame.bind("SceneTree", "get_frame");
		return ptrcall!(long)(_GODOT_get_frame, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_quit;
	package(godot) alias _GODOT_methodBindInfo(string name : "quit") = _GODOT_quit;
	/**
	Quits the application.
	*/
	void quit()
	{
		_GODOT_quit.bind("SceneTree", "quit");
		ptrcall!(void)(_GODOT_quit, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long, Vector2, double) _GODOT_set_screen_stretch;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_screen_stretch") = _GODOT_set_screen_stretch;
	/**
	Configures screen stretching to the given $(D stretchmode), $(D stretchaspect), minimum size and `shrink`.
	*/
	void setScreenStretch(in long mode, in long aspect, in Vector2 minsize, in double shrink = 1)
	{
		_GODOT_set_screen_stretch.bind("SceneTree", "set_screen_stretch");
		ptrcall!(void)(_GODOT_set_screen_stretch, _godot_object, mode, aspect, minsize, shrink);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_queue_delete;
	package(godot) alias _GODOT_methodBindInfo(string name : "queue_delete") = _GODOT_queue_delete;
	/**
	Queues the given object for deletion, delaying the call to $(D GodotObject.free) to after the current frame.
	*/
	void queueDelete(GodotObject obj)
	{
		_GODOT_queue_delete.bind("SceneTree", "queue_delete");
		ptrcall!(void)(_GODOT_queue_delete, _godot_object, obj);
	}
	package(godot) static GodotMethod!(Variant, long, String, String, GodotVarArgs) _GODOT_call_group_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "call_group_flags") = _GODOT_call_group_flags;
	/**
	Calls `method` on each member of the given group, respecting the given $(D groupCall) flags.
	*/
	Variant callGroupFlags(StringArg1, StringArg2, VarArgs...)(in long flags, in StringArg1 group, in StringArg2 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(flags);
		_GODOT_args.append(group);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call_group_flags");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long, String, long) _GODOT_notify_group_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "notify_group_flags") = _GODOT_notify_group_flags;
	/**
	Sends the given notification to all members of the `group`, respecting the given $(D groupCall) flags.
	*/
	void notifyGroupFlags(StringArg1)(in long call_flags, in StringArg1 group, in long notification)
	{
		_GODOT_notify_group_flags.bind("SceneTree", "notify_group_flags");
		ptrcall!(void)(_GODOT_notify_group_flags, _godot_object, call_flags, group, notification);
	}
	package(godot) static GodotMethod!(void, long, String, String, Variant) _GODOT_set_group_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_group_flags") = _GODOT_set_group_flags;
	/**
	Sets the given `property` to `value` on all members of the given group, respecting the given $(D groupCall) flags.
	*/
	void setGroupFlags(StringArg1, StringArg2, VariantArg3)(in long call_flags, in StringArg1 group, in StringArg2 property, in VariantArg3 value)
	{
		_GODOT_set_group_flags.bind("SceneTree", "set_group_flags");
		ptrcall!(void)(_GODOT_set_group_flags, _godot_object, call_flags, group, property, value);
	}
	package(godot) static GodotMethod!(Variant, String, String, GodotVarArgs) _GODOT_call_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "call_group") = _GODOT_call_group;
	/**
	Calls `method` on each member of the given group.
	*/
	Variant callGroup(StringArg0, StringArg1, VarArgs...)(in StringArg0 group, in StringArg1 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(group);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call_group");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_notify_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "notify_group") = _GODOT_notify_group;
	/**
	Sends the given notification to all members of the `group`.
	*/
	void notifyGroup(StringArg0)(in StringArg0 group, in long notification)
	{
		_GODOT_notify_group.bind("SceneTree", "notify_group");
		ptrcall!(void)(_GODOT_notify_group, _godot_object, group, notification);
	}
	package(godot) static GodotMethod!(void, String, String, Variant) _GODOT_set_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_group") = _GODOT_set_group;
	/**
	Sets the given `property` to `value` on all members of the given group.
	*/
	void setGroup(StringArg0, StringArg1, VariantArg2)(in StringArg0 group, in StringArg1 property, in VariantArg2 value)
	{
		_GODOT_set_group.bind("SceneTree", "set_group");
		ptrcall!(void)(_GODOT_set_group, _godot_object, group, property, value);
	}
	package(godot) static GodotMethod!(Array, String) _GODOT_get_nodes_in_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_nodes_in_group") = _GODOT_get_nodes_in_group;
	/**
	Returns all nodes assigned to the given group.
	*/
	Array getNodesInGroup(StringArg0)(in StringArg0 group)
	{
		_GODOT_get_nodes_in_group.bind("SceneTree", "get_nodes_in_group");
		return ptrcall!(Array)(_GODOT_get_nodes_in_group, _godot_object, group);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_current_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_scene") = _GODOT_set_current_scene;
	/**
	
	*/
	void setCurrentScene(GodotObject child_node)
	{
		_GODOT_set_current_scene.bind("SceneTree", "set_current_scene");
		ptrcall!(void)(_GODOT_set_current_scene, _godot_object, child_node);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_current_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_scene") = _GODOT_get_current_scene;
	/**
	
	*/
	Node getCurrentScene() const
	{
		_GODOT_get_current_scene.bind("SceneTree", "get_current_scene");
		return ptrcall!(Node)(_GODOT_get_current_scene, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_change_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "change_scene") = _GODOT_change_scene;
	/**
	Changes to the scene at the given `path`.
	*/
	GodotError changeScene(StringArg0)(in StringArg0 path)
	{
		_GODOT_change_scene.bind("SceneTree", "change_scene");
		return ptrcall!(GodotError)(_GODOT_change_scene, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError, PackedScene) _GODOT_change_scene_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "change_scene_to") = _GODOT_change_scene_to;
	/**
	Changes to the given $(D PackedScene).
	*/
	GodotError changeSceneTo(PackedScene packed_scene)
	{
		_GODOT_change_scene_to.bind("SceneTree", "change_scene_to");
		return ptrcall!(GodotError)(_GODOT_change_scene_to, _godot_object, packed_scene);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_reload_current_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "reload_current_scene") = _GODOT_reload_current_scene;
	/**
	Reloads the currently active scene.
	*/
	GodotError reloadCurrentScene()
	{
		_GODOT_reload_current_scene.bind("SceneTree", "reload_current_scene");
		return ptrcall!(GodotError)(_GODOT_reload_current_scene, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__change_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "_change_scene") = _GODOT__change_scene;
	/**
	
	*/
	void _changeScene(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_change_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, MultiplayerAPI) _GODOT_set_multiplayer_api;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_multiplayer_api") = _GODOT_set_multiplayer_api;
	/**
	
	*/
	void setMultiplayerApi(MultiplayerAPI multiplayer_api)
	{
		_GODOT_set_multiplayer_api.bind("SceneTree", "set_multiplayer_api");
		ptrcall!(void)(_GODOT_set_multiplayer_api, _godot_object, multiplayer_api);
	}
	package(godot) static GodotMethod!(MultiplayerAPI) _GODOT_get_multiplayer_api;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_multiplayer_api") = _GODOT_get_multiplayer_api;
	/**
	
	*/
	Ref!MultiplayerAPI getMultiplayerApi() const
	{
		_GODOT_get_multiplayer_api.bind("SceneTree", "get_multiplayer_api");
		return ptrcall!(MultiplayerAPI)(_GODOT_get_multiplayer_api, _godot_object);
	}
	package(godot) static GodotMethod!(void, NetworkedMultiplayerPeer) _GODOT_set_network_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_network_peer") = _GODOT_set_network_peer;
	/**
	
	*/
	void setNetworkPeer(NetworkedMultiplayerPeer peer)
	{
		_GODOT_set_network_peer.bind("SceneTree", "set_network_peer");
		ptrcall!(void)(_GODOT_set_network_peer, _godot_object, peer);
	}
	package(godot) static GodotMethod!(NetworkedMultiplayerPeer) _GODOT_get_network_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_network_peer") = _GODOT_get_network_peer;
	/**
	
	*/
	Ref!NetworkedMultiplayerPeer getNetworkPeer() const
	{
		_GODOT_get_network_peer.bind("SceneTree", "get_network_peer");
		return ptrcall!(NetworkedMultiplayerPeer)(_GODOT_get_network_peer, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_network_server;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_network_server") = _GODOT_is_network_server;
	/**
	Returns `true` if this SceneTree's $(D networkPeer) is in server mode (listening for connections).
	*/
	bool isNetworkServer() const
	{
		_GODOT_is_network_server.bind("SceneTree", "is_network_server");
		return ptrcall!(bool)(_GODOT_is_network_server, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_network_peer;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_network_peer") = _GODOT_has_network_peer;
	/**
	Returns `true` if there is a $(D networkPeer) set.
	*/
	bool hasNetworkPeer() const
	{
		_GODOT_has_network_peer.bind("SceneTree", "has_network_peer");
		return ptrcall!(bool)(_GODOT_has_network_peer, _godot_object);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT_get_network_connected_peers;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_network_connected_peers") = _GODOT_get_network_connected_peers;
	/**
	Returns the peer IDs of all connected peers of this SceneTree's $(D networkPeer).
	*/
	PoolIntArray getNetworkConnectedPeers() const
	{
		_GODOT_get_network_connected_peers.bind("SceneTree", "get_network_connected_peers");
		return ptrcall!(PoolIntArray)(_GODOT_get_network_connected_peers, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_network_unique_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_network_unique_id") = _GODOT_get_network_unique_id;
	/**
	Returns the unique peer ID of this SceneTree's $(D networkPeer).
	*/
	long getNetworkUniqueId() const
	{
		_GODOT_get_network_unique_id.bind("SceneTree", "get_network_unique_id");
		return ptrcall!(long)(_GODOT_get_network_unique_id, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_rpc_sender_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rpc_sender_id") = _GODOT_get_rpc_sender_id;
	/**
	Returns the sender's peer ID for the most recently received RPC call.
	*/
	long getRpcSenderId() const
	{
		_GODOT_get_rpc_sender_id.bind("SceneTree", "get_rpc_sender_id");
		return ptrcall!(long)(_GODOT_get_rpc_sender_id, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_refuse_new_network_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_refuse_new_network_connections") = _GODOT_set_refuse_new_network_connections;
	/**
	
	*/
	void setRefuseNewNetworkConnections(in bool refuse)
	{
		_GODOT_set_refuse_new_network_connections.bind("SceneTree", "set_refuse_new_network_connections");
		ptrcall!(void)(_GODOT_set_refuse_new_network_connections, _godot_object, refuse);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_refusing_new_network_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_refusing_new_network_connections") = _GODOT_is_refusing_new_network_connections;
	/**
	
	*/
	bool isRefusingNewNetworkConnections() const
	{
		_GODOT_is_refusing_new_network_connections.bind("SceneTree", "is_refusing_new_network_connections");
		return ptrcall!(bool)(_GODOT_is_refusing_new_network_connections, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__network_peer_connected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_network_peer_connected") = _GODOT__network_peer_connected;
	/**
	
	*/
	void _networkPeerConnected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_network_peer_connected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__network_peer_disconnected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_network_peer_disconnected") = _GODOT__network_peer_disconnected;
	/**
	
	*/
	void _networkPeerDisconnected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_network_peer_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__connected_to_server;
	package(godot) alias _GODOT_methodBindInfo(string name : "_connected_to_server") = _GODOT__connected_to_server;
	/**
	
	*/
	void _connectedToServer()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connected_to_server");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__connection_failed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_connection_failed") = _GODOT__connection_failed;
	/**
	
	*/
	void _connectionFailed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connection_failed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__server_disconnected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_server_disconnected") = _GODOT__server_disconnected;
	/**
	
	*/
	void _serverDisconnected()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_server_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_font_oversampling;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_font_oversampling") = _GODOT_set_use_font_oversampling;
	/**
	
	*/
	void setUseFontOversampling(in bool enable)
	{
		_GODOT_set_use_font_oversampling.bind("SceneTree", "set_use_font_oversampling");
		ptrcall!(void)(_GODOT_set_use_font_oversampling, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_font_oversampling;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_font_oversampling") = _GODOT_is_using_font_oversampling;
	/**
	
	*/
	bool isUsingFontOversampling() const
	{
		_GODOT_is_using_font_oversampling.bind("SceneTree", "is_using_font_oversampling");
		return ptrcall!(bool)(_GODOT_is_using_font_oversampling, _godot_object);
	}
	/**
	
	*/
	@property bool debugCollisionsHint()
	{
		return isDebuggingCollisionsHint();
	}
	/// ditto
	@property void debugCollisionsHint(bool v)
	{
		setDebugCollisionsHint(v);
	}
	/**
	
	*/
	@property bool debugNavigationHint()
	{
		return isDebuggingNavigationHint();
	}
	/// ditto
	@property void debugNavigationHint(bool v)
	{
		setDebugNavigationHint(v);
	}
	/**
	If `true` the SceneTree is paused.
	*/
	@property bool paused()
	{
		return isPaused();
	}
	/// ditto
	@property void paused(bool v)
	{
		setPause(v);
	}
	/**
	If `true` the SceneTree's $(D networkPeer) refuses new incoming connections.
	*/
	@property bool refuseNewNetworkConnections()
	{
		return isRefusingNewNetworkConnections();
	}
	/// ditto
	@property void refuseNewNetworkConnections(bool v)
	{
		setRefuseNewNetworkConnections(v);
	}
	/**
	If `true` font oversampling is used.
	*/
	@property bool useFontOversampling()
	{
		return isUsingFontOversampling();
	}
	/// ditto
	@property void useFontOversampling(bool v)
	{
		setUseFontOversampling(v);
	}
	/**
	The root of the edited scene.
	*/
	@property Node editedSceneRoot()
	{
		return getEditedSceneRoot();
	}
	/// ditto
	@property void editedSceneRoot(GodotObject v)
	{
		setEditedSceneRoot(v);
	}
	/**
	The current scene.
	*/
	@property Node currentScene()
	{
		return getCurrentScene();
	}
	/// ditto
	@property void currentScene(GodotObject v)
	{
		setCurrentScene(v);
	}
	/**
	The peer object to handle the RPC system (effectively enabling networking when set). Depending on the peer itself, the SceneTree will become a network server (check with $(D isNetworkServer())) and will set root node's network mode to master (see NETWORK_MODE_* constants in $(D Node)), or it will become a regular peer with root node set to slave. All child nodes are set to inherit the network mode by default. Handling of networking-related events (connection, disconnection, new clients) is done by connecting to SceneTree's signals.
	*/
	@property NetworkedMultiplayerPeer networkPeer()
	{
		return getNetworkPeer();
	}
	/// ditto
	@property void networkPeer(NetworkedMultiplayerPeer v)
	{
		setNetworkPeer(v);
	}
	/**
	The SceneTree's $(D Viewport).
	*/
	@property Viewport root()
	{
		return getRoot();
	}
	/**
	
	*/
	@property MultiplayerAPI multiplayerApi()
	{
		return getMultiplayerApi();
	}
	/// ditto
	@property void multiplayerApi(MultiplayerAPI v)
	{
		setMultiplayerApi(v);
	}
}
