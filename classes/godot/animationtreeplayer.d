/**
$(I Deprecated.) Animation player that uses a node graph for blending animations. Superseded by $(D AnimationTree).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationtreeplayer;
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
import godot.node;
import godot.animation;
/**
$(I Deprecated.) Animation player that uses a node graph for blending animations. Superseded by $(D AnimationTree).

$(I Deprecated.) A node graph tool for blending multiple animations bound to an $(D AnimationPlayer). Especially useful for animating characters or other skeleton-based rigs. It can combine several animations to form a desired pose.
It takes $(D Animation)s from an $(D AnimationPlayer) node and mixes them depending on the graph.
See $(D AnimationTree) for a more full-featured replacement of this node.
*/
@GodotBaseClass struct AnimationTreePlayer
{
	package(godot) enum string _GODOT_internal_name = "AnimationTreePlayer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_node") GodotMethod!(void, long, String) addNode;
		@GodotName("advance") GodotMethod!(void, double) advance;
		@GodotName("animation_node_get_animation") GodotMethod!(Animation, String) animationNodeGetAnimation;
		@GodotName("animation_node_get_master_animation") GodotMethod!(String, String) animationNodeGetMasterAnimation;
		@GodotName("animation_node_get_position") GodotMethod!(double, String) animationNodeGetPosition;
		@GodotName("animation_node_set_animation") GodotMethod!(void, String, Animation) animationNodeSetAnimation;
		@GodotName("animation_node_set_filter_path") GodotMethod!(void, String, NodePath, bool) animationNodeSetFilterPath;
		@GodotName("animation_node_set_master_animation") GodotMethod!(void, String, String) animationNodeSetMasterAnimation;
		@GodotName("are_nodes_connected") GodotMethod!(bool, String, String, long) areNodesConnected;
		@GodotName("blend2_node_get_amount") GodotMethod!(double, String) blend2NodeGetAmount;
		@GodotName("blend2_node_set_amount") GodotMethod!(void, String, double) blend2NodeSetAmount;
		@GodotName("blend2_node_set_filter_path") GodotMethod!(void, String, NodePath, bool) blend2NodeSetFilterPath;
		@GodotName("blend3_node_get_amount") GodotMethod!(double, String) blend3NodeGetAmount;
		@GodotName("blend3_node_set_amount") GodotMethod!(void, String, double) blend3NodeSetAmount;
		@GodotName("blend4_node_get_amount") GodotMethod!(Vector2, String) blend4NodeGetAmount;
		@GodotName("blend4_node_set_amount") GodotMethod!(void, String, Vector2) blend4NodeSetAmount;
		@GodotName("connect_nodes") GodotMethod!(GodotError, String, String, long) connectNodes;
		@GodotName("disconnect_nodes") GodotMethod!(void, String, long) disconnectNodes;
		@GodotName("get_animation_process_mode") GodotMethod!(AnimationTreePlayer.AnimationProcessMode) getAnimationProcessMode;
		@GodotName("get_base_path") GodotMethod!(NodePath) getBasePath;
		@GodotName("get_master_player") GodotMethod!(NodePath) getMasterPlayer;
		@GodotName("get_node_list") GodotMethod!(PoolStringArray) getNodeList;
		@GodotName("is_active") GodotMethod!(bool) isActive;
		@GodotName("mix_node_get_amount") GodotMethod!(double, String) mixNodeGetAmount;
		@GodotName("mix_node_set_amount") GodotMethod!(void, String, double) mixNodeSetAmount;
		@GodotName("node_exists") GodotMethod!(bool, String) nodeExists;
		@GodotName("node_get_input_count") GodotMethod!(long, String) nodeGetInputCount;
		@GodotName("node_get_input_source") GodotMethod!(String, String, long) nodeGetInputSource;
		@GodotName("node_get_position") GodotMethod!(Vector2, String) nodeGetPosition;
		@GodotName("node_get_type") GodotMethod!(AnimationTreePlayer.NodeType, String) nodeGetType;
		@GodotName("node_rename") GodotMethod!(GodotError, String, String) nodeRename;
		@GodotName("node_set_position") GodotMethod!(void, String, Vector2) nodeSetPosition;
		@GodotName("oneshot_node_get_autorestart_delay") GodotMethod!(double, String) oneshotNodeGetAutorestartDelay;
		@GodotName("oneshot_node_get_autorestart_random_delay") GodotMethod!(double, String) oneshotNodeGetAutorestartRandomDelay;
		@GodotName("oneshot_node_get_fadein_time") GodotMethod!(double, String) oneshotNodeGetFadeinTime;
		@GodotName("oneshot_node_get_fadeout_time") GodotMethod!(double, String) oneshotNodeGetFadeoutTime;
		@GodotName("oneshot_node_has_autorestart") GodotMethod!(bool, String) oneshotNodeHasAutorestart;
		@GodotName("oneshot_node_is_active") GodotMethod!(bool, String) oneshotNodeIsActive;
		@GodotName("oneshot_node_set_autorestart") GodotMethod!(void, String, bool) oneshotNodeSetAutorestart;
		@GodotName("oneshot_node_set_autorestart_delay") GodotMethod!(void, String, double) oneshotNodeSetAutorestartDelay;
		@GodotName("oneshot_node_set_autorestart_random_delay") GodotMethod!(void, String, double) oneshotNodeSetAutorestartRandomDelay;
		@GodotName("oneshot_node_set_fadein_time") GodotMethod!(void, String, double) oneshotNodeSetFadeinTime;
		@GodotName("oneshot_node_set_fadeout_time") GodotMethod!(void, String, double) oneshotNodeSetFadeoutTime;
		@GodotName("oneshot_node_set_filter_path") GodotMethod!(void, String, NodePath, bool) oneshotNodeSetFilterPath;
		@GodotName("oneshot_node_start") GodotMethod!(void, String) oneshotNodeStart;
		@GodotName("oneshot_node_stop") GodotMethod!(void, String) oneshotNodeStop;
		@GodotName("recompute_caches") GodotMethod!(void) recomputeCaches;
		@GodotName("remove_node") GodotMethod!(void, String) removeNode;
		@GodotName("reset") GodotMethod!(void) reset;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("set_animation_process_mode") GodotMethod!(void, long) setAnimationProcessMode;
		@GodotName("set_base_path") GodotMethod!(void, NodePath) setBasePath;
		@GodotName("set_master_player") GodotMethod!(void, NodePath) setMasterPlayer;
		@GodotName("timescale_node_get_scale") GodotMethod!(double, String) timescaleNodeGetScale;
		@GodotName("timescale_node_set_scale") GodotMethod!(void, String, double) timescaleNodeSetScale;
		@GodotName("timeseek_node_seek") GodotMethod!(void, String, double) timeseekNodeSeek;
		@GodotName("transition_node_delete_input") GodotMethod!(void, String, long) transitionNodeDeleteInput;
		@GodotName("transition_node_get_current") GodotMethod!(long, String) transitionNodeGetCurrent;
		@GodotName("transition_node_get_input_count") GodotMethod!(long, String) transitionNodeGetInputCount;
		@GodotName("transition_node_get_xfade_time") GodotMethod!(double, String) transitionNodeGetXfadeTime;
		@GodotName("transition_node_has_input_auto_advance") GodotMethod!(bool, String, long) transitionNodeHasInputAutoAdvance;
		@GodotName("transition_node_set_current") GodotMethod!(void, String, long) transitionNodeSetCurrent;
		@GodotName("transition_node_set_input_auto_advance") GodotMethod!(void, String, long, bool) transitionNodeSetInputAutoAdvance;
		@GodotName("transition_node_set_input_count") GodotMethod!(void, String, long) transitionNodeSetInputCount;
		@GodotName("transition_node_set_xfade_time") GodotMethod!(void, String, double) transitionNodeSetXfadeTime;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationTreePlayer other) const
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
	/// Construct a new instance of AnimationTreePlayer.
	/// Note: use `memnew!AnimationTreePlayer` instead.
	static AnimationTreePlayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationTreePlayer");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationTreePlayer)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum AnimationProcessMode : int
	{
		/**
		Process animation during the physics process. This is especially useful when animating physics bodies.
		*/
		animationProcessPhysics = 0,
		/**
		Process animation during the idle process.
		*/
		animationProcessIdle = 1,
	}
	/// 
	enum NodeType : int
	{
		/**
		Output node.
		*/
		nodeOutput = 0,
		/**
		Animation node.
		*/
		nodeAnimation = 1,
		/**
		OneShot node.
		*/
		nodeOneshot = 2,
		/**
		Mix node.
		*/
		nodeMix = 3,
		/**
		Blend2 node.
		*/
		nodeBlend2 = 4,
		/**
		Blend3 node.
		*/
		nodeBlend3 = 5,
		/**
		Blend4 node.
		*/
		nodeBlend4 = 6,
		/**
		TimeScale node.
		*/
		nodeTimescale = 7,
		/**
		TimeSeek node.
		*/
		nodeTimeseek = 8,
		/**
		Transition node.
		*/
		nodeTransition = 9,
	}
	/// 
	enum Constants : int
	{
		nodeOutput = 0,
		animationProcessPhysics = 0,
		nodeAnimation = 1,
		animationProcessIdle = 1,
		nodeOneshot = 2,
		nodeMix = 3,
		nodeBlend2 = 4,
		nodeBlend3 = 5,
		nodeBlend4 = 6,
		nodeTimescale = 7,
		nodeTimeseek = 8,
		nodeTransition = 9,
	}
	/**
	Adds a `type` node to the graph with name `id`.
	*/
	void addNode(in long type, in String id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addNode, _godot_object, type, id);
	}
	/**
	Shifts position in the animation timeline. `delta` is the time in seconds to shift. Events between the current frame and `delta` are handled.
	*/
	void advance(in double delta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.advance, _godot_object, delta);
	}
	/**
	Returns the $(D AnimationPlayer)'s $(D Animation) bound to the $(D AnimationTreePlayer)'s animation node with name `id`.
	*/
	Ref!Animation animationNodeGetAnimation(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation)(GDNativeClassBinding.animationNodeGetAnimation, _godot_object, id);
	}
	/**
	Returns the name of the $(D masterPlayer)'s $(D Animation) bound to this animation node.
	*/
	String animationNodeGetMasterAnimation(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.animationNodeGetMasterAnimation, _godot_object, id);
	}
	/**
	Returns the absolute playback timestamp of the animation node with name `id`.
	*/
	double animationNodeGetPosition(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.animationNodeGetPosition, _godot_object, id);
	}
	/**
	Binds a new $(D Animation) from the $(D masterPlayer) to the $(D AnimationTreePlayer)'s animation node with name `id`.
	*/
	void animationNodeSetAnimation(in String id, Animation animation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.animationNodeSetAnimation, _godot_object, id, animation);
	}
	/**
	If `enable` is `true`, the animation node with ID `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	*/
	void animationNodeSetFilterPath(NodePathArg1)(in String id, in NodePathArg1 path, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.animationNodeSetFilterPath, _godot_object, id, path, enable);
	}
	/**
	Binds the $(D Animation) named `source` from $(D masterPlayer) to the animation node `id`. Recalculates caches.
	*/
	void animationNodeSetMasterAnimation(in String id, in String source)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.animationNodeSetMasterAnimation, _godot_object, id, source);
	}
	/**
	Returns whether node `id` and `dst_id` are connected at the specified slot.
	*/
	bool areNodesConnected(in String id, in String dst_id, in long dst_input_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.areNodesConnected, _godot_object, id, dst_id, dst_input_idx);
	}
	/**
	Returns the blend amount of a Blend2 node given its name.
	*/
	double blend2NodeGetAmount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.blend2NodeGetAmount, _godot_object, id);
	}
	/**
	Sets the blend amount of a Blend2 node given its name and value.
	A Blend2 node blends two animations (A and B) with the amount between 0 and 1.
	At 0, output is input A. Towards 1, the influence of A gets lessened, the influence of B gets raised. At 1, output is input B.
	*/
	void blend2NodeSetAmount(in String id, in double blend)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blend2NodeSetAmount, _godot_object, id, blend);
	}
	/**
	If `enable` is `true`, the Blend2 node with name `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	*/
	void blend2NodeSetFilterPath(NodePathArg1)(in String id, in NodePathArg1 path, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blend2NodeSetFilterPath, _godot_object, id, path, enable);
	}
	/**
	Returns the blend amount of a Blend3 node given its name.
	*/
	double blend3NodeGetAmount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.blend3NodeGetAmount, _godot_object, id);
	}
	/**
	Sets the blend amount of a Blend3 node given its name and value.
	A Blend3 Node blends three animations (A, B-, B+) with the amount between -1 and 1.
	At -1, output is input B-. From -1 to 0, the influence of B- gets lessened, the influence of A gets raised and the influence of B+ is 0. At 0, output is input A. From 0 to 1, the influence of A gets lessened, the influence of B+ gets raised and the influence of B+ is 0. At 1, output is input B+.
	*/
	void blend3NodeSetAmount(in String id, in double blend)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blend3NodeSetAmount, _godot_object, id, blend);
	}
	/**
	Returns the blend amount of a Blend4 node given its name.
	*/
	Vector2 blend4NodeGetAmount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.blend4NodeGetAmount, _godot_object, id);
	}
	/**
	Sets the blend amount of a Blend4 node given its name and value.
	A Blend4 Node blends two pairs of animations.
	The two pairs are blended like Blend2 and then added together.
	*/
	void blend4NodeSetAmount(in String id, in Vector2 blend)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blend4NodeSetAmount, _godot_object, id, blend);
	}
	/**
	Connects node `id` to `dst_id` at the specified input slot.
	*/
	GodotError connectNodes(in String id, in String dst_id, in long dst_input_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.connectNodes, _godot_object, id, dst_id, dst_input_idx);
	}
	/**
	Disconnects nodes connected to `id` at the specified input slot.
	*/
	void disconnectNodes(in String id, in long dst_input_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnectNodes, _godot_object, id, dst_input_idx);
	}
	/**
	
	*/
	AnimationTreePlayer.AnimationProcessMode getAnimationProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationTreePlayer.AnimationProcessMode)(GDNativeClassBinding.getAnimationProcessMode, _godot_object);
	}
	/**
	
	*/
	NodePath getBasePath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getBasePath, _godot_object);
	}
	/**
	
	*/
	NodePath getMasterPlayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getMasterPlayer, _godot_object);
	}
	/**
	Returns a $(D PoolStringArray) containing the name of all nodes.
	*/
	PoolStringArray getNodeList()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getNodeList, _godot_object);
	}
	/**
	
	*/
	bool isActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActive, _godot_object);
	}
	/**
	Returns the mix amount of a Mix node given its name.
	*/
	double mixNodeGetAmount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.mixNodeGetAmount, _godot_object, id);
	}
	/**
	Sets the mix amount of a Mix node given its name and value.
	A Mix node adds input b to input a by the amount given by ratio.
	*/
	void mixNodeSetAmount(in String id, in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.mixNodeSetAmount, _godot_object, id, ratio);
	}
	/**
	Check if a node exists (by name).
	*/
	bool nodeExists(in String node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.nodeExists, _godot_object, node);
	}
	/**
	Returns the input count for a given node. Different types of nodes have different amount of inputs.
	*/
	long nodeGetInputCount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.nodeGetInputCount, _godot_object, id);
	}
	/**
	Returns the input source for a given node input.
	*/
	String nodeGetInputSource(in String id, in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.nodeGetInputSource, _godot_object, id, idx);
	}
	/**
	Returns position of a node in the graph given its name.
	*/
	Vector2 nodeGetPosition(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.nodeGetPosition, _godot_object, id);
	}
	/**
	Gets the node type, will return from $(D nodetype) enum.
	*/
	AnimationTreePlayer.NodeType nodeGetType(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationTreePlayer.NodeType)(GDNativeClassBinding.nodeGetType, _godot_object, id);
	}
	/**
	Renames a node in the graph.
	*/
	GodotError nodeRename(in String node, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.nodeRename, _godot_object, node, new_name);
	}
	/**
	Sets the position of a node in the graph given its name and position.
	*/
	void nodeSetPosition(in String id, in Vector2 screen_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.nodeSetPosition, _godot_object, id, screen_position);
	}
	/**
	Returns the autostart delay of a OneShot node given its name.
	*/
	double oneshotNodeGetAutorestartDelay(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.oneshotNodeGetAutorestartDelay, _godot_object, id);
	}
	/**
	Returns the autostart random delay of a OneShot node given its name.
	*/
	double oneshotNodeGetAutorestartRandomDelay(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.oneshotNodeGetAutorestartRandomDelay, _godot_object, id);
	}
	/**
	Returns the fade in time of a OneShot node given its name.
	*/
	double oneshotNodeGetFadeinTime(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.oneshotNodeGetFadeinTime, _godot_object, id);
	}
	/**
	Returns the fade out time of a OneShot node given its name.
	*/
	double oneshotNodeGetFadeoutTime(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.oneshotNodeGetFadeoutTime, _godot_object, id);
	}
	/**
	Returns whether a OneShot node will auto restart given its name.
	*/
	bool oneshotNodeHasAutorestart(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.oneshotNodeHasAutorestart, _godot_object, id);
	}
	/**
	Returns whether a OneShot node is active given its name.
	*/
	bool oneshotNodeIsActive(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.oneshotNodeIsActive, _godot_object, id);
	}
	/**
	Sets the autorestart property of a OneShot node given its name and value.
	*/
	void oneshotNodeSetAutorestart(in String id, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.oneshotNodeSetAutorestart, _godot_object, id, enable);
	}
	/**
	Sets the autorestart delay of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetAutorestartDelay(in String id, in double delay_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.oneshotNodeSetAutorestartDelay, _godot_object, id, delay_sec);
	}
	/**
	Sets the autorestart random delay of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetAutorestartRandomDelay(in String id, in double rand_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.oneshotNodeSetAutorestartRandomDelay, _godot_object, id, rand_sec);
	}
	/**
	Sets the fade in time of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetFadeinTime(in String id, in double time_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.oneshotNodeSetFadeinTime, _godot_object, id, time_sec);
	}
	/**
	Sets the fade out time of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetFadeoutTime(in String id, in double time_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.oneshotNodeSetFadeoutTime, _godot_object, id, time_sec);
	}
	/**
	If `enable` is `true`, the OneShot node with ID `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	*/
	void oneshotNodeSetFilterPath(NodePathArg1)(in String id, in NodePathArg1 path, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.oneshotNodeSetFilterPath, _godot_object, id, path, enable);
	}
	/**
	Starts a OneShot node given its name.
	*/
	void oneshotNodeStart(in String id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.oneshotNodeStart, _godot_object, id);
	}
	/**
	Stops the OneShot node with name `id`.
	*/
	void oneshotNodeStop(in String id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.oneshotNodeStop, _godot_object, id);
	}
	/**
	Manually recalculates the cache of track information generated from animation nodes. Needed when external sources modify the animation nodes' state.
	*/
	void recomputeCaches()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.recomputeCaches, _godot_object);
	}
	/**
	Removes the animation node with name `id`.
	*/
	void removeNode(in String id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeNode, _godot_object, id);
	}
	/**
	Resets this $(D AnimationTreePlayer).
	*/
	void reset()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reset, _godot_object);
	}
	/**
	
	*/
	void setActive(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setActive, _godot_object, enabled);
	}
	/**
	
	*/
	void setAnimationProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnimationProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	void setBasePath(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBasePath, _godot_object, path);
	}
	/**
	
	*/
	void setMasterPlayer(NodePathArg0)(in NodePathArg0 nodepath)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMasterPlayer, _godot_object, nodepath);
	}
	/**
	Returns the time scale value of the TimeScale node with name `id`.
	*/
	double timescaleNodeGetScale(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.timescaleNodeGetScale, _godot_object, id);
	}
	/**
	Sets the time scale of the TimeScale node with name `id` to `scale`.
	The TimeScale node is used to speed $(D Animation)s up if the scale is above 1 or slow them down if it is below 1.
	If applied after a blend or mix, affects all input animations to that blend or mix.
	*/
	void timescaleNodeSetScale(in String id, in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.timescaleNodeSetScale, _godot_object, id, scale);
	}
	/**
	Sets the time seek value of the TimeSeek node with name `id` to `seconds`.
	This functions as a seek in the $(D Animation) or the blend or mix of $(D Animation)s input in it.
	*/
	void timeseekNodeSeek(in String id, in double seconds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.timeseekNodeSeek, _godot_object, id, seconds);
	}
	/**
	Deletes the input at `input_idx` for the transition node with name `id`.
	*/
	void transitionNodeDeleteInput(in String id, in long input_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.transitionNodeDeleteInput, _godot_object, id, input_idx);
	}
	/**
	Returns the index of the currently evaluated input for the transition node with name `id`.
	*/
	long transitionNodeGetCurrent(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.transitionNodeGetCurrent, _godot_object, id);
	}
	/**
	Returns the number of inputs for the transition node with name `id`. You can add inputs by right-clicking on the transition node.
	*/
	long transitionNodeGetInputCount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.transitionNodeGetInputCount, _godot_object, id);
	}
	/**
	Returns the cross fade time for the transition node with name `id`.
	*/
	double transitionNodeGetXfadeTime(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.transitionNodeGetXfadeTime, _godot_object, id);
	}
	/**
	Returns `true` if the input at `input_idx` on the transition node with name `id` is set to automatically advance to the next input upon completion.
	*/
	bool transitionNodeHasInputAutoAdvance(in String id, in long input_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.transitionNodeHasInputAutoAdvance, _godot_object, id, input_idx);
	}
	/**
	The transition node with name `id` sets its current input at `input_idx`.
	*/
	void transitionNodeSetCurrent(in String id, in long input_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.transitionNodeSetCurrent, _godot_object, id, input_idx);
	}
	/**
	The transition node with name `id` advances to its next input automatically when the input at `input_idx` completes.
	*/
	void transitionNodeSetInputAutoAdvance(in String id, in long input_idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.transitionNodeSetInputAutoAdvance, _godot_object, id, input_idx, enable);
	}
	/**
	Resizes the number of inputs available for the transition node with name `id`.
	*/
	void transitionNodeSetInputCount(in String id, in long count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.transitionNodeSetInputCount, _godot_object, id, count);
	}
	/**
	The transition node with name `id` sets its cross fade time to `time_sec`.
	*/
	void transitionNodeSetXfadeTime(in String id, in double time_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.transitionNodeSetXfadeTime, _godot_object, id, time_sec);
	}
	/**
	If `true`, the $(D AnimationTreePlayer) is able to play animations.
	*/
	@property bool active()
	{
		return isActive();
	}
	/// ditto
	@property void active(bool v)
	{
		setActive(v);
	}
	/**
	The node from which to relatively access other nodes.
	It accesses the bones, so it should point to the same node the $(D AnimationPlayer) would point its Root Node at.
	*/
	@property NodePath basePath()
	{
		return getBasePath();
	}
	/// ditto
	@property void basePath(NodePath v)
	{
		setBasePath(v);
	}
	/**
	The path to the $(D AnimationPlayer) from which this $(D AnimationTreePlayer) binds animations to animation nodes.
	Once set, $(D Animation) nodes can be added to the $(D AnimationTreePlayer).
	*/
	@property NodePath masterPlayer()
	{
		return getMasterPlayer();
	}
	/// ditto
	@property void masterPlayer(NodePath v)
	{
		setMasterPlayer(v);
	}
	/**
	The thread in which to update animations.
	*/
	@property AnimationTreePlayer.AnimationProcessMode playbackProcessMode()
	{
		return getAnimationProcessMode();
	}
	/// ditto
	@property void playbackProcessMode(long v)
	{
		setAnimationProcessMode(v);
	}
}
