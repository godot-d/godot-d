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
	enum string _GODOT_internal_name = "SceneTree";
public:
@nogc nothrow:
	union { godot_object _godot_object; MainLoop _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_root") GodotMethod!(Viewport) getRoot;
		@GodotName("has_group") GodotMethod!(bool, String) hasGroup;
		@GodotName("set_auto_accept_quit") GodotMethod!(void, bool) setAutoAcceptQuit;
		@GodotName("set_quit_on_go_back") GodotMethod!(void, bool) setQuitOnGoBack;
		@GodotName("set_debug_collisions_hint") GodotMethod!(void, bool) setDebugCollisionsHint;
		@GodotName("is_debugging_collisions_hint") GodotMethod!(bool) isDebuggingCollisionsHint;
		@GodotName("set_debug_navigation_hint") GodotMethod!(void, bool) setDebugNavigationHint;
		@GodotName("is_debugging_navigation_hint") GodotMethod!(bool) isDebuggingNavigationHint;
		@GodotName("set_edited_scene_root") GodotMethod!(void, GodotObject) setEditedSceneRoot;
		@GodotName("get_edited_scene_root") GodotMethod!(Node) getEditedSceneRoot;
		@GodotName("set_pause") GodotMethod!(void, bool) setPause;
		@GodotName("is_paused") GodotMethod!(bool) isPaused;
		@GodotName("set_input_as_handled") GodotMethod!(void) setInputAsHandled;
		@GodotName("is_input_handled") GodotMethod!(bool) isInputHandled;
		@GodotName("create_timer") GodotMethod!(SceneTreeTimer, double, bool) createTimer;
		@GodotName("get_node_count") GodotMethod!(long) getNodeCount;
		@GodotName("get_frame") GodotMethod!(long) getFrame;
		@GodotName("quit") GodotMethod!(void) quit;
		@GodotName("set_screen_stretch") GodotMethod!(void, long, long, Vector2, double) setScreenStretch;
		@GodotName("queue_delete") GodotMethod!(void, GodotObject) queueDelete;
		@GodotName("call_group_flags") GodotMethod!(Variant, long, String, String, GodotVarArgs) callGroupFlags;
		@GodotName("notify_group_flags") GodotMethod!(void, long, String, long) notifyGroupFlags;
		@GodotName("set_group_flags") GodotMethod!(void, long, String, String, Variant) setGroupFlags;
		@GodotName("call_group") GodotMethod!(Variant, String, String, GodotVarArgs) callGroup;
		@GodotName("notify_group") GodotMethod!(void, String, long) notifyGroup;
		@GodotName("set_group") GodotMethod!(void, String, String, Variant) setGroup;
		@GodotName("get_nodes_in_group") GodotMethod!(Array, String) getNodesInGroup;
		@GodotName("set_current_scene") GodotMethod!(void, GodotObject) setCurrentScene;
		@GodotName("get_current_scene") GodotMethod!(Node) getCurrentScene;
		@GodotName("change_scene") GodotMethod!(GodotError, String) changeScene;
		@GodotName("change_scene_to") GodotMethod!(GodotError, PackedScene) changeSceneTo;
		@GodotName("reload_current_scene") GodotMethod!(GodotError) reloadCurrentScene;
		@GodotName("_change_scene") GodotMethod!(void, GodotObject) _changeScene;
		@GodotName("set_multiplayer") GodotMethod!(void, MultiplayerAPI) setMultiplayer;
		@GodotName("get_multiplayer") GodotMethod!(MultiplayerAPI) getMultiplayer;
		@GodotName("set_multiplayer_poll_enabled") GodotMethod!(void, bool) setMultiplayerPollEnabled;
		@GodotName("is_multiplayer_poll_enabled") GodotMethod!(bool) isMultiplayerPollEnabled;
		@GodotName("set_network_peer") GodotMethod!(void, NetworkedMultiplayerPeer) setNetworkPeer;
		@GodotName("get_network_peer") GodotMethod!(NetworkedMultiplayerPeer) getNetworkPeer;
		@GodotName("is_network_server") GodotMethod!(bool) isNetworkServer;
		@GodotName("has_network_peer") GodotMethod!(bool) hasNetworkPeer;
		@GodotName("get_network_connected_peers") GodotMethod!(PoolIntArray) getNetworkConnectedPeers;
		@GodotName("get_network_unique_id") GodotMethod!(long) getNetworkUniqueId;
		@GodotName("get_rpc_sender_id") GodotMethod!(long) getRpcSenderId;
		@GodotName("set_refuse_new_network_connections") GodotMethod!(void, bool) setRefuseNewNetworkConnections;
		@GodotName("is_refusing_new_network_connections") GodotMethod!(bool) isRefusingNewNetworkConnections;
		@GodotName("_network_peer_connected") GodotMethod!(void, long) _networkPeerConnected;
		@GodotName("_network_peer_disconnected") GodotMethod!(void, long) _networkPeerDisconnected;
		@GodotName("_connected_to_server") GodotMethod!(void) _connectedToServer;
		@GodotName("_connection_failed") GodotMethod!(void) _connectionFailed;
		@GodotName("_server_disconnected") GodotMethod!(void) _serverDisconnected;
		@GodotName("set_use_font_oversampling") GodotMethod!(void, bool) setUseFontOversampling;
		@GodotName("is_using_font_oversampling") GodotMethod!(bool) isUsingFontOversampling;
	}
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
		Fill the window with the content stretched to cover excessive space. Content may appear elongated.
		*/
		stretchAspectIgnore = 0,
		/**
		Retain the same aspect ratio by padding with black bars in either axes. No expansion of content.
		*/
		stretchAspectKeep = 1,
		/**
		Expand vertically. Left/right black bars may appear if the window is too wide.
		*/
		stretchAspectKeepWidth = 2,
		/**
		Expand horizontally. Top/bottom black bars may appear if the window is too tall.
		*/
		stretchAspectKeepHeight = 3,
		/**
		Expand in both directions, retaining the same aspect ratio. No black bars.
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
		No stretching.
		*/
		stretchModeDisabled = 0,
		/**
		Render stretching in higher resolution (interpolated).
		*/
		stretchMode2d = 1,
		/**
		Keep the specified display resolution. No interpolation. Content may appear pixelated.
		*/
		stretchModeViewport = 2,
	}
	/// 
	enum Constants : int
	{
		groupCallDefault = 0,
		stretchModeDisabled = 0,
		stretchAspectIgnore = 0,
		stretchMode2d = 1,
		stretchAspectKeep = 1,
		groupCallReverse = 1,
		stretchModeViewport = 2,
		groupCallRealtime = 2,
		stretchAspectKeepWidth = 2,
		stretchAspectKeepHeight = 3,
		groupCallUnique = 4,
		stretchAspectExpand = 4,
	}
	/**
	
	*/
	Viewport getRoot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport)(_classBinding.getRoot, _godot_object);
	}
	/**
	Returns `true` if the given group exists.
	*/
	bool hasGroup(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasGroup, _godot_object, name);
	}
	/**
	If `true` the application automatically accepts quitting.
	*/
	void setAutoAcceptQuit(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutoAcceptQuit, _godot_object, enabled);
	}
	/**
	If `true` the application quits automatically on going back (e.g. on Android).
	*/
	void setQuitOnGoBack(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setQuitOnGoBack, _godot_object, enabled);
	}
	/**
	
	*/
	void setDebugCollisionsHint(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDebugCollisionsHint, _godot_object, enable);
	}
	/**
	
	*/
	bool isDebuggingCollisionsHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDebuggingCollisionsHint, _godot_object);
	}
	/**
	
	*/
	void setDebugNavigationHint(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDebugNavigationHint, _godot_object, enable);
	}
	/**
	
	*/
	bool isDebuggingNavigationHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDebuggingNavigationHint, _godot_object);
	}
	/**
	
	*/
	void setEditedSceneRoot(GodotObject scene)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEditedSceneRoot, _godot_object, scene);
	}
	/**
	
	*/
	Node getEditedSceneRoot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getEditedSceneRoot, _godot_object);
	}
	/**
	
	*/
	void setPause(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPause, _godot_object, enable);
	}
	/**
	
	*/
	bool isPaused() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPaused, _godot_object);
	}
	/**
	Marks the most recent input event as handled.
	*/
	void setInputAsHandled()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInputAsHandled, _godot_object);
	}
	/**
	Returns `true` if the most recent InputEvent was marked as handled with $(D setInputAsHandled).
	*/
	bool isInputHandled()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInputHandled, _godot_object);
	}
	/**
	Returns a $(D SceneTreeTimer) which will $(D SceneTreeTimer.timeout) after the given time in seconds elapsed in this SceneTree. If `pause_mode_process` is set to false, pausing the SceneTree will also pause the timer.
	*/
	Ref!SceneTreeTimer createTimer(in double time_sec, in bool pause_mode_process = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTimer)(_classBinding.createTimer, _godot_object, time_sec, pause_mode_process);
	}
	/**
	Returns the number of nodes in this SceneTree.
	*/
	long getNodeCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getNodeCount, _godot_object);
	}
	/**
	
	*/
	long getFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFrame, _godot_object);
	}
	/**
	Quits the application.
	*/
	void quit()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.quit, _godot_object);
	}
	/**
	Configures screen stretching to the given $(D stretchmode), $(D stretchaspect), minimum size and `shrink`.
	*/
	void setScreenStretch(in long mode, in long aspect, in Vector2 minsize, in double shrink = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScreenStretch, _godot_object, mode, aspect, minsize, shrink);
	}
	/**
	Queues the given object for deletion, delaying the call to $(D GodotObject.free) to after the current frame.
	*/
	void queueDelete(GodotObject obj)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.queueDelete, _godot_object, obj);
	}
	/**
	Calls `method` on each member of the given group, respecting the given $(D groupcallflags).
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
	/**
	Sends the given notification to all members of the `group`, respecting the given $(D groupcallflags).
	*/
	void notifyGroupFlags(StringArg1)(in long call_flags, in StringArg1 group, in long notification)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.notifyGroupFlags, _godot_object, call_flags, group, notification);
	}
	/**
	Sets the given `property` to `value` on all members of the given group, respecting the given $(D groupcallflags).
	*/
	void setGroupFlags(StringArg1, StringArg2, VariantArg3)(in long call_flags, in StringArg1 group, in StringArg2 property, in VariantArg3 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGroupFlags, _godot_object, call_flags, group, property, value);
	}
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
	/**
	Sends the given notification to all members of the `group`.
	*/
	void notifyGroup(StringArg0)(in StringArg0 group, in long notification)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.notifyGroup, _godot_object, group, notification);
	}
	/**
	Sets the given `property` to `value` on all members of the given group.
	*/
	void setGroup(StringArg0, StringArg1, VariantArg2)(in StringArg0 group, in StringArg1 property, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGroup, _godot_object, group, property, value);
	}
	/**
	Returns all nodes assigned to the given group.
	*/
	Array getNodesInGroup(StringArg0)(in StringArg0 group)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getNodesInGroup, _godot_object, group);
	}
	/**
	
	*/
	void setCurrentScene(GodotObject child_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCurrentScene, _godot_object, child_node);
	}
	/**
	
	*/
	Node getCurrentScene() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getCurrentScene, _godot_object);
	}
	/**
	Changes to the scene at the given `path`.
	*/
	GodotError changeScene(StringArg0)(in StringArg0 path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.changeScene, _godot_object, path);
	}
	/**
	Changes to the given $(D PackedScene).
	*/
	GodotError changeSceneTo(PackedScene packed_scene)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.changeSceneTo, _godot_object, packed_scene);
	}
	/**
	Reloads the currently active scene.
	*/
	GodotError reloadCurrentScene()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.reloadCurrentScene, _godot_object);
	}
	/**
	
	*/
	void _changeScene(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_change_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setMultiplayer(MultiplayerAPI multiplayer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMultiplayer, _godot_object, multiplayer);
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
	void setMultiplayerPollEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMultiplayerPollEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isMultiplayerPollEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isMultiplayerPollEnabled, _godot_object);
	}
	/**
	
	*/
	void setNetworkPeer(NetworkedMultiplayerPeer peer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNetworkPeer, _godot_object, peer);
	}
	/**
	
	*/
	Ref!NetworkedMultiplayerPeer getNetworkPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NetworkedMultiplayerPeer)(_classBinding.getNetworkPeer, _godot_object);
	}
	/**
	Returns `true` if this SceneTree's $(D networkPeer) is in server mode (listening for connections).
	*/
	bool isNetworkServer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isNetworkServer, _godot_object);
	}
	/**
	Returns `true` if there is a $(D networkPeer) set.
	*/
	bool hasNetworkPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasNetworkPeer, _godot_object);
	}
	/**
	Returns the peer IDs of all connected peers of this SceneTree's $(D networkPeer).
	*/
	PoolIntArray getNetworkConnectedPeers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getNetworkConnectedPeers, _godot_object);
	}
	/**
	Returns the unique peer ID of this SceneTree's $(D networkPeer).
	*/
	long getNetworkUniqueId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getNetworkUniqueId, _godot_object);
	}
	/**
	Returns the sender's peer ID for the most recently received RPC call.
	*/
	long getRpcSenderId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRpcSenderId, _godot_object);
	}
	/**
	
	*/
	void setRefuseNewNetworkConnections(in bool refuse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRefuseNewNetworkConnections, _godot_object, refuse);
	}
	/**
	
	*/
	bool isRefusingNewNetworkConnections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRefusingNewNetworkConnections, _godot_object);
	}
	/**
	
	*/
	void _networkPeerConnected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_network_peer_connected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _networkPeerDisconnected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_network_peer_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _connectedToServer()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connected_to_server");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _connectionFailed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connection_failed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _serverDisconnected()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_server_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setUseFontOversampling(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseFontOversampling, _godot_object, enable);
	}
	/**
	
	*/
	bool isUsingFontOversampling() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingFontOversampling, _godot_object);
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
	Doing so will have the following behavior:
	* 2D and 3D physics will be stopped.
	* _process and _physics_process will not be called anymore in nodes.
	* _input and _input_event will not be called anymore either.
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
	The peer object to handle the RPC system (effectively enabling networking when set). Depending on the peer itself, the SceneTree will become a network server (check with $(D isNetworkServer())) and will set root node's network mode to master (see NETWORK_MODE_* constants in $(D Node)), or it will become a regular peer with root node set to puppet. All child nodes are set to inherit the network mode by default. Handling of networking-related events (connection, disconnection, new clients) is done by connecting to SceneTree's signals.
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
	The default $(D MultiplayerAPI) instance for this SceneTree.
	*/
	@property MultiplayerAPI multiplayer()
	{
		return getMultiplayer();
	}
	/// ditto
	@property void multiplayer(MultiplayerAPI v)
	{
		setMultiplayer(v);
	}
	/**
	If `true` (default) enable the automatic polling of the $(D MultiplayerAPI) for this SceneTree during $(D idleFrame).
	When `false` you need to manually call $(D MultiplayerAPI.poll) for processing network packets and delivering RPCs/RSETs. This allows to run RPCs/RSETs in a different loop (e.g. physics, thread, specific time step) and for manual $(D Mutex) protection when accessing the $(D MultiplayerAPI) from threads.
	*/
	@property bool multiplayerPoll()
	{
		return isMultiplayerPollEnabled();
	}
	/// ditto
	@property void multiplayerPoll(bool v)
	{
		setMultiplayerPollEnabled(v);
	}
}
