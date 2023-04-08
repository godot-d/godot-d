/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.mainloop;
import godot.node;
import godot.packedscene;
import godot.scenetreetimer;
import godot.scenetreetween;
import godot.multiplayerapi;
import godot.networkedmultiplayerpeer;
import godot.viewport;
/**

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
		@GodotName("create_tween") GodotMethod!(SceneTreeTween) createTween;
		@GodotName("get_current_scene") GodotMethod!(Node) getCurrentScene;
		@GodotName("get_edited_scene_root") GodotMethod!(Node) getEditedSceneRoot;
		@GodotName("get_frame") GodotMethod!(long) getFrame;
		@GodotName("get_multiplayer") GodotMethod!(MultiplayerAPI) getMultiplayer;
		@GodotName("get_network_connected_peers") GodotMethod!(PoolIntArray) getNetworkConnectedPeers;
		@GodotName("get_network_peer") GodotMethod!(NetworkedMultiplayerPeer) getNetworkPeer;
		@GodotName("get_network_unique_id") GodotMethod!(long) getNetworkUniqueId;
		@GodotName("get_node_count") GodotMethod!(long) getNodeCount;
		@GodotName("get_nodes_in_group") GodotMethod!(Array, String) getNodesInGroup;
		@GodotName("get_processed_tweens") GodotMethod!(Array) getProcessedTweens;
		@GodotName("get_root") GodotMethod!(Viewport) getRoot;
		@GodotName("get_rpc_sender_id") GodotMethod!(long) getRpcSenderId;
		@GodotName("has_group") GodotMethod!(bool, String) hasGroup;
		@GodotName("has_network_peer") GodotMethod!(bool) hasNetworkPeer;
		@GodotName("is_auto_accept_quit") GodotMethod!(bool) isAutoAcceptQuit;
		@GodotName("is_debugging_collisions_hint") GodotMethod!(bool) isDebuggingCollisionsHint;
		@GodotName("is_debugging_navigation_hint") GodotMethod!(bool) isDebuggingNavigationHint;
		@GodotName("is_input_handled") GodotMethod!(bool) isInputHandled;
		@GodotName("is_multiplayer_poll_enabled") GodotMethod!(bool) isMultiplayerPollEnabled;
		@GodotName("is_network_server") GodotMethod!(bool) isNetworkServer;
		@GodotName("is_paused") GodotMethod!(bool) isPaused;
		@GodotName("is_physics_interpolation_enabled") GodotMethod!(bool) isPhysicsInterpolationEnabled;
		@GodotName("is_quit_on_go_back") GodotMethod!(bool) isQuitOnGoBack;
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
		@GodotName("set_physics_interpolation_enabled") GodotMethod!(void, bool) setPhysicsInterpolationEnabled;
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
		/** */
		stretchAspectIgnore = 0,
		/** */
		stretchAspectKeep = 1,
		/** */
		stretchAspectKeepWidth = 2,
		/** */
		stretchAspectKeepHeight = 3,
		/** */
		stretchAspectExpand = 4,
	}
	/// 
	enum GroupCallFlags : int
	{
		/** */
		groupCallDefault = 0,
		/** */
		groupCallReverse = 1,
		/** */
		groupCallRealtime = 2,
		/** */
		groupCallUnique = 4,
	}
	/// 
	enum StretchMode : int
	{
		/** */
		stretchModeDisabled = 0,
		/** */
		stretchMode2d = 1,
		/** */
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
	
	*/
	GodotError changeScene(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.changeScene, _godot_object, path);
	}
	/**
	
	*/
	GodotError changeSceneTo(PackedScene packed_scene)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.changeSceneTo, _godot_object, packed_scene);
	}
	/**
	
	*/
	Ref!SceneTreeTimer createTimer(in double time_sec, in bool pause_mode_process = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneTreeTimer)(GDNativeClassBinding.createTimer, _godot_object, time_sec, pause_mode_process);
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
	
	*/
	long getNetworkUniqueId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNetworkUniqueId, _godot_object);
	}
	/**
	
	*/
	long getNodeCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNodeCount, _godot_object);
	}
	/**
	
	*/
	Array getNodesInGroup(in String group)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getNodesInGroup, _godot_object, group);
	}
	/**
	
	*/
	Array getProcessedTweens()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getProcessedTweens, _godot_object);
	}
	/**
	
	*/
	Viewport getRoot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport)(GDNativeClassBinding.getRoot, _godot_object);
	}
	/**
	
	*/
	long getRpcSenderId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRpcSenderId, _godot_object);
	}
	/**
	
	*/
	bool hasGroup(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasGroup, _godot_object, name);
	}
	/**
	
	*/
	bool hasNetworkPeer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasNetworkPeer, _godot_object);
	}
	/**
	
	*/
	bool isAutoAcceptQuit() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAutoAcceptQuit, _godot_object);
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
	bool isPhysicsInterpolationEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPhysicsInterpolationEnabled, _godot_object);
	}
	/**
	
	*/
	bool isQuitOnGoBack() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isQuitOnGoBack, _godot_object);
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
	
	*/
	void notifyGroup(in String group, in long notification)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.notifyGroup, _godot_object, group, notification);
	}
	/**
	
	*/
	void notifyGroupFlags(in long call_flags, in String group, in long notification)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.notifyGroupFlags, _godot_object, call_flags, group, notification);
	}
	/**
	
	*/
	void queueDelete(GodotObject obj)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.queueDelete, _godot_object, obj);
	}
	/**
	
	*/
	void quit(in long exit_code = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.quit, _godot_object, exit_code);
	}
	/**
	
	*/
	GodotError reloadCurrentScene()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.reloadCurrentScene, _godot_object);
	}
	/**
	
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
	
	*/
	void setGroup(VariantArg2)(in String group, in String property, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGroup, _godot_object, group, property, value);
	}
	/**
	
	*/
	void setGroupFlags(VariantArg3)(in long call_flags, in String group, in String property, in VariantArg3 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGroupFlags, _godot_object, call_flags, group, property, value);
	}
	/**
	
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
	
	*/
	void setPhysicsInterpolationEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicsInterpolationEnabled, _godot_object, enabled);
	}
	/**
	
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
	
	*/
	void setScreenStretch(in long mode, in long aspect, in Vector2 minsize, in double scale = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScreenStretch, _godot_object, mode, aspect, minsize, scale);
	}
	/**
	
	*/
	void setUseFontOversampling(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseFontOversampling, _godot_object, enable);
	}
	/**
	
	*/
	@property bool autoAcceptQuit()
	{
		return isAutoAcceptQuit();
	}
	/// ditto
	@property void autoAcceptQuit(bool v)
	{
		setAutoAcceptQuit(v);
	}
	/**
	
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
	
	*/
	@property bool physicsInterpolation()
	{
		return isPhysicsInterpolationEnabled();
	}
	/// ditto
	@property void physicsInterpolation(bool v)
	{
		setPhysicsInterpolationEnabled(v);
	}
	/**
	
	*/
	@property bool quitOnGoBack()
	{
		return isQuitOnGoBack();
	}
	/// ditto
	@property void quitOnGoBack(bool v)
	{
		setQuitOnGoBack(v);
	}
	/**
	
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
	
	*/
	@property Viewport root()
	{
		return getRoot();
	}
	/**
	
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
