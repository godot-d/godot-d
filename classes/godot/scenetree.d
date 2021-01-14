/**
Manages the game loop via a hierarchy of nodes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.scenetree;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.mainloop;
import godot.node;
import godot.packedscene;
import godot.scenetreetimer;
import godot.multiplayerapi;
import godot.networkedmultiplayerpeer;
import godot.viewport;
/**
Manages the game loop via a hierarchy of nodes.

As one of the most important classes, the $(D SceneTree) manages the hierarchy of nodes in a scene as well as scenes themselves. Nodes can be added, retrieved and removed. The whole scene tree (and thus the current scene) can be paused. Scenes can be loaded, switched and reloaded.
You can also use the $(D SceneTree) to organize your nodes into groups: every node can be assigned as many groups as you want to create, e.g. a "enemy" group. You can then iterate these groups or even call methods and set properties on all the group's members at once.
$(D SceneTree) is the default $(D MainLoop) implementation used by scenes, and is thus in charge of the game loop.
*/
@GodotBaseClass struct SceneTree
{
	package(godot) enum string _GODOT_internal_name = "SceneTree";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ MainLoop _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_change_scene") GodotMethod!(void, Node) _changeScene;
		@GodotName("_connected_to_server") GodotMethod!(void) _connectedToServer;
		@GodotName("_connection_failed") GodotMethod!(void) _connectionFailed;
		@GodotName("_network_peer_connected") GodotMethod!(void, long) _networkPeerConnected;
		@GodotName("_network_peer_disconnected") GodotMethod!(void, long) _networkPeerDisconnected;
		@GodotName("_server_disconnected") GodotMethod!(void) _serverDisconnected;
		@GodotName("call_group") GodotMethod!(Variant, String, String, GodotVarArgs) callGroup;
		@GodotName("call_group_flags") GodotMethod!(Variant, long, String, String, GodotVarArgs) callGroupFlags;
		@GodotName("change_scene") GodotMethod!(GodotError, String) changeScene;
		@GodotName("change_scene_to") GodotMethod!(GodotError, PackedScene) changeSceneTo;
		@GodotName("create_timer") GodotMethod!(SceneTreeTimer, double, bool) createTimer;
		@GodotName("get_current_scene") GodotMethod!(Node) getCurrentScene;
		@GodotName("get_edited_scene_root") GodotMethod!(Node) getEditedSceneRoot;
		@GodotName("get_frame") GodotMethod!(long) getFrame;
		@GodotName("get_multiplayer") GodotMethod!(MultiplayerAPI) getMultiplayer;
		@GodotName("get_network_connected_peers") GodotMethod!(PoolIntArray) getNetworkConnectedPeers;
		@GodotName("get_network_peer") GodotMethod!(NetworkedMultiplayerPeer) getNetworkPeer;
		@GodotName("get_network_unique_id") GodotMethod!(long) getNetworkUniqueId;
		@GodotName("get_node_count") GodotMethod!(long) getNodeCount;
		@GodotName("get_nodes_in_group") GodotMethod!(Array, String) getNodesInGroup;
		@GodotName("get_root") GodotMethod!(Viewport) getRoot;
		@GodotName("get_rpc_sender_id") GodotMethod!(long) getRpcSenderId;
		@GodotName("has_group") GodotMethod!(bool, String) hasGroup;
		@GodotName("has_network_peer") GodotMethod!(bool) hasNetworkPeer;
		@GodotName("is_debugging_collisions_hint") GodotMethod!(bool) isDebuggingCollisionsHint;
		@GodotName("is_debugging_navigation_hint") GodotMethod!(bool) isDebuggingNavigationHint;
		@GodotName("is_input_handled") GodotMethod!(bool) isInputHandled;
		@GodotName("is_multiplayer_poll_enabled") GodotMethod!(bool) isMultiplayerPollEnabled;
		@GodotName("is_network_server") GodotMethod!(bool) isNetworkServer;
		@GodotName("is_paused") GodotMethod!(bool) isPaused;
		@GodotName("is_refusing_new_network_connections") GodotMethod!(bool) isRefusingNewNetworkConnections;
		@GodotName("is_using_font_oversampling") GodotMethod!(bool) isUsingFontOversampling;
		@GodotName("notify_group") GodotMethod!(void, String, long) notifyGroup;
		@GodotName("notify_group_flags") GodotMethod!(void, long, String, long) notifyGroupFlags;
		@GodotName("queue_delete") GodotMethod!(void, GodotObject) queueDelete;
		@GodotName("quit") GodotMethod!(void, long) quit;
		@GodotName("reload_current_scene") GodotMethod!(GodotError) reloadCurrentScene;
		@GodotName("set_auto_accept_quit") GodotMethod!(void, bool) setAutoAcceptQuit;
		@GodotName("set_current_scene") GodotMethod!(void, Node) setCurrentScene;
		@GodotName("set_debug_collisions_hint") GodotMethod!(void, bool) setDebugCollisionsHint;
		@GodotName("set_debug_navigation_hint") GodotMethod!(void, bool) setDebugNavigationHint;
		@GodotName("set_edited_scene_root") GodotMethod!(void, Node) setEditedSceneRoot;
		@GodotName("set_group") GodotMethod!(void, String, String, Variant) setGroup;
		@GodotName("set_group_flags") GodotMethod!(void, long, String, String, Variant) setGroupFlags;
		@GodotName("set_input_as_handled") GodotMethod!(void) setInputAsHandled;
		@GodotName("set_multiplayer") GodotMethod!(void, MultiplayerAPI) setMultiplayer;
		@GodotName("set_multiplayer_poll_enabled") GodotMethod!(void, bool) setMultiplayerPollEnabled;
		@GodotName("set_network_peer") GodotMethod!(void, NetworkedMultiplayerPeer) setNetworkPeer;
		@GodotName("set_pause") GodotMethod!(void, bool) setPause;
		@GodotName("set_quit_on_go_back") GodotMethod!(void, bool) setQuitOnGoBack;
		@GodotName("set_refuse_new_network_connections") GodotMethod!(void, bool) setRefuseNewNetworkConnections;
		@GodotName("set_screen_stretch") GodotMethod!(void, long, long, Vector2, double) setScreenStretch;
		@GodotName("set_use_font_oversampling") GodotMethod!(void, bool) setUseFontOversampling;
	}
	/// 
	pragma(inline, true) bool opEquals(in SceneTree other) const
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
	/// Construct a new instance of SceneTree.
	/// Note: use `memnew!SceneTree` instead.
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
		Fill the window with the content stretched to cover excessive space. Content may appear stretched.
		*/
		stretchAspectIgnore = 0,
		/**
		Retain the same aspect ratio by padding with black bars on either axis. This prevents distortion.
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
		Expand in both directions, retaining the same aspect ratio. This prevents distortion while avoiding black bars.
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
	void _changeScene(Node arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_change_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _connectedToServer()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_connected_to_server");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _connectionFailed()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_connection_failed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _networkPeerConnected(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_network_peer_connected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _networkPeerDisconnected(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_network_peer_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _serverDisconnected()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_server_disconnected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Calls `method` on each member of the given group. You can pass arguments to `method` by specifying them at the end of the method call.
	$(B Note:) `method` may only have 5 arguments at most (7 arguments passed to this method in total).
	*/
	Variant callGroup(VarArgs...)(in String group, in String method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
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
	Calls `method` on each member of the given group, respecting the given $(D groupcallflags). You can pass arguments to `method` by specifying them at the end of the method call.
	$(B Note:) `method` may only have 5 arguments at most (8 arguments passed to this method in total).
	*/
	Variant callGroupFlags(VarArgs...)(in long flags, in String group, in String method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
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
	Changes the running scene to the one at the given `path`, after loading it into a $(D PackedScene) and creating a new instance.
	Returns $(D constant OK) on success, $(D constant ERR_CANT_OPEN) if the `path` cannot be loaded into a $(D PackedScene), or $(D constant ERR_CANT_CREATE) if that scene cannot be instantiated.
	$(B Note:) The scene change is deferred, which means that the new scene node is added on the next idle frame. You won't be able to access it immediately after the $(D changeScene) call.
	*/
	GodotError changeScene(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.changeScene, _godot_object, path);
	}
	/**
	Changes the running scene to a new instance of the given $(D PackedScene).
	Returns $(D constant OK) on success or $(D constant ERR_CANT_CREATE) if the scene cannot be instantiated.
	$(B Note:) The scene change is deferred, which means that the new scene node is added on the next idle frame. You won't be able to access it immediately after the $(D changeSceneTo) call.
	*/
	GodotError changeSceneTo(PackedScene packed_scene)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.changeSceneTo, _godot_object, packed_scene);
	}
	/**
	Returns a $(D SceneTreeTimer) which will $(D SceneTreeTimer.timeout) after the given time in seconds elapsed in this $(D SceneTree). If `pause_mode_process` is set to `false`, pausing the $(D SceneTree) will also pause the timer.
	Commonly used to create a one-shot delay timer as in the following example:
	
	
	func some_function():
	    print("start")
	    yield(get_tree().create_timer(1.0), "timeout")
	    print("end")
	
	
	*/
	Ref!SceneTreeTimer createTimer(in double time_sec, in bool pause_mode_process = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTimer)(GDNativeClassBinding.createTimer, _godot_object, time_sec, pause_mode_process);
	}
	/**
	
	*/
	Node getCurrentScene() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getCurrentScene, _godot_object);
	}
	/**
	
	*/
	Node getEditedSceneRoot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getEditedSceneRoot, _godot_object);
	}
	/**
	Returns the current frame number, i.e. the total frame count since the application started.
	*/
	long getFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFrame, _godot_object);
	}
	/**
	
	*/
	Ref!MultiplayerAPI getMultiplayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiplayerAPI)(GDNativeClassBinding.getMultiplayer, _godot_object);
	}
	/**
	Returns the peer IDs of all connected peers of this $(D SceneTree)'s $(D networkPeer).
	*/
	PoolIntArray getNetworkConnectedPeers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getNetworkConnectedPeers, _godot_object);
	}
	/**
	
	*/
	Ref!NetworkedMultiplayerPeer getNetworkPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NetworkedMultiplayerPeer)(GDNativeClassBinding.getNetworkPeer, _godot_object);
	}
	/**
	Returns the unique peer ID of this $(D SceneTree)'s $(D networkPeer).
	*/
	long getNetworkUniqueId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNetworkUniqueId, _godot_object);
	}
	/**
	Returns the number of nodes in this $(D SceneTree).
	*/
	long getNodeCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNodeCount, _godot_object);
	}
	/**
	Returns a list of all nodes assigned to the given group.
	*/
	Array getNodesInGroup(in String group)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getNodesInGroup, _godot_object, group);
	}
	/**
	
	*/
	Viewport getRoot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport)(GDNativeClassBinding.getRoot, _godot_object);
	}
	/**
	Returns the sender's peer ID for the most recently received RPC call.
	*/
	long getRpcSenderId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRpcSenderId, _godot_object);
	}
	/**
	Returns `true` if the given group exists.
	*/
	bool hasGroup(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasGroup, _godot_object, name);
	}
	/**
	Returns `true` if there is a $(D networkPeer) set.
	*/
	bool hasNetworkPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasNetworkPeer, _godot_object);
	}
	/**
	
	*/
	bool isDebuggingCollisionsHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDebuggingCollisionsHint, _godot_object);
	}
	/**
	
	*/
	bool isDebuggingNavigationHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDebuggingNavigationHint, _godot_object);
	}
	/**
	Returns `true` if the most recent $(D InputEvent) was marked as handled with $(D setInputAsHandled).
	*/
	bool isInputHandled()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInputHandled, _godot_object);
	}
	/**
	
	*/
	bool isMultiplayerPollEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isMultiplayerPollEnabled, _godot_object);
	}
	/**
	Returns `true` if this $(D SceneTree)'s $(D networkPeer) is in server mode (listening for connections).
	*/
	bool isNetworkServer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isNetworkServer, _godot_object);
	}
	/**
	
	*/
	bool isPaused() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPaused, _godot_object);
	}
	/**
	
	*/
	bool isRefusingNewNetworkConnections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRefusingNewNetworkConnections, _godot_object);
	}
	/**
	
	*/
	bool isUsingFontOversampling() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingFontOversampling, _godot_object);
	}
	/**
	Sends the given notification to all members of the `group`.
	*/
	void notifyGroup(in String group, in long notification)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.notifyGroup, _godot_object, group, notification);
	}
	/**
	Sends the given notification to all members of the `group`, respecting the given $(D groupcallflags).
	*/
	void notifyGroupFlags(in long call_flags, in String group, in long notification)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.notifyGroupFlags, _godot_object, call_flags, group, notification);
	}
	/**
	Queues the given object for deletion, delaying the call to $(D GodotObject.free) to after the current frame.
	*/
	void queueDelete(GodotObject obj)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.queueDelete, _godot_object, obj);
	}
	/**
	Quits the application at the end of the current iteration. A process `exit_code` can optionally be passed as an argument. If this argument is `0` or greater, it will override the $(D OS.exitCode) defined before quitting the application.
	*/
	void quit(in long exit_code = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.quit, _godot_object, exit_code);
	}
	/**
	Reloads the currently active scene.
	Returns $(D constant OK) on success, $(D constant ERR_UNCONFIGURED) if no $(D currentScene) was defined yet, $(D constant ERR_CANT_OPEN) if $(D currentScene) cannot be loaded into a $(D PackedScene), or $(D constant ERR_CANT_CREATE) if the scene cannot be instantiated.
	*/
	GodotError reloadCurrentScene()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.reloadCurrentScene, _godot_object);
	}
	/**
	If `true`, the application automatically accepts quitting. Enabled by default.
	For mobile platforms, see $(D setQuitOnGoBack).
	*/
	void setAutoAcceptQuit(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutoAcceptQuit, _godot_object, enabled);
	}
	/**
	
	*/
	void setCurrentScene(Node child_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrentScene, _godot_object, child_node);
	}
	/**
	
	*/
	void setDebugCollisionsHint(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDebugCollisionsHint, _godot_object, enable);
	}
	/**
	
	*/
	void setDebugNavigationHint(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDebugNavigationHint, _godot_object, enable);
	}
	/**
	
	*/
	void setEditedSceneRoot(Node scene)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEditedSceneRoot, _godot_object, scene);
	}
	/**
	Sets the given `property` to `value` on all members of the given group.
	*/
	void setGroup(VariantArg2)(in String group, in String property, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGroup, _godot_object, group, property, value);
	}
	/**
	Sets the given `property` to `value` on all members of the given group, respecting the given $(D groupcallflags).
	*/
	void setGroupFlags(VariantArg3)(in long call_flags, in String group, in String property, in VariantArg3 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGroupFlags, _godot_object, call_flags, group, property, value);
	}
	/**
	Marks the most recent $(D InputEvent) as handled.
	*/
	void setInputAsHandled()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputAsHandled, _godot_object);
	}
	/**
	
	*/
	void setMultiplayer(MultiplayerAPI multiplayer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMultiplayer, _godot_object, multiplayer);
	}
	/**
	
	*/
	void setMultiplayerPollEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMultiplayerPollEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setNetworkPeer(NetworkedMultiplayerPeer peer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNetworkPeer, _godot_object, peer);
	}
	/**
	
	*/
	void setPause(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPause, _godot_object, enable);
	}
	/**
	If `true`, the application quits automatically on going back (e.g. on Android). Enabled by default.
	To handle 'Go Back' button when this option is disabled, use $(D constant MainLoop.NOTIFICATION_WM_GO_BACK_REQUEST).
	*/
	void setQuitOnGoBack(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setQuitOnGoBack, _godot_object, enabled);
	}
	/**
	
	*/
	void setRefuseNewNetworkConnections(in bool refuse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRefuseNewNetworkConnections, _godot_object, refuse);
	}
	/**
	Configures screen stretching to the given $(D stretchmode), $(D stretchaspect), minimum size and `shrink` ratio.
	*/
	void setScreenStretch(in long mode, in long aspect, in Vector2 minsize, in double shrink = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScreenStretch, _godot_object, mode, aspect, minsize, shrink);
	}
	/**
	
	*/
	void setUseFontOversampling(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseFontOversampling, _godot_object, enable);
	}
	/**
	The current scene.
	*/
	@property Node currentScene()
	{
		return getCurrentScene();
	}
	/// ditto
	@property void currentScene(Node v)
	{
		setCurrentScene(v);
	}
	/**
	If `true`, collision shapes will be visible when running the game from the editor for debugging purposes.
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
	If `true`, navigation polygons will be visible when running the game from the editor for debugging purposes.
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
	The root of the edited scene.
	*/
	@property Node editedSceneRoot()
	{
		return getEditedSceneRoot();
	}
	/// ditto
	@property void editedSceneRoot(Node v)
	{
		setEditedSceneRoot(v);
	}
	/**
	The default $(D MultiplayerAPI) instance for this $(D SceneTree).
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
	If `true` (default value), enables automatic polling of the $(D MultiplayerAPI) for this SceneTree during $(D idleFrame).
	If `false`, you need to manually call $(D MultiplayerAPI.poll) to process network packets and deliver RPCs/RSETs. This allows running RPCs/RSETs in a different loop (e.g. physics, thread, specific time step) and for manual $(D Mutex) protection when accessing the $(D MultiplayerAPI) from threads.
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
	/**
	The peer object to handle the RPC system (effectively enabling networking when set). Depending on the peer itself, the $(D SceneTree) will become a network server (check with $(D isNetworkServer)) and will set the root node's network mode to master, or it will become a regular peer with the root node set to puppet. All child nodes are set to inherit the network mode by default. Handling of networking-related events (connection, disconnection, new clients) is done by connecting to $(D SceneTree)'s signals.
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
	If `true`, the $(D SceneTree) is paused. Doing so will have the following behavior:
	- 2D and 3D physics will be stopped.
	- $(D Node._process), $(D Node._physicsProcess) and $(D Node._input) will not be called anymore in nodes.
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
	If `true`, the $(D SceneTree)'s $(D networkPeer) refuses new incoming connections.
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
	The $(D SceneTree)'s root $(D Viewport).
	*/
	@property Viewport root()
	{
		return getRoot();
	}
	/**
	If `true`, font oversampling is used.
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
}
