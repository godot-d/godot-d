/**
Animation Player that uses a node graph for blending Animations.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationtreeplayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node;
import godot.animation;
/**
Animation Player that uses a node graph for blending Animations.

A node graph tool for blending multiple animations bound to an $(D AnimationPlayer). Especially useful for animating characters or other skeleton-based rigs. It can combine several animations to form a desired pose.
It takes $(D Animation)s from an $(D AnimationPlayer) node and mixes them depending on the graph.
*/
@GodotBaseClass struct AnimationTreePlayer
{
	enum string _GODOT_internal_name = "AnimationTreePlayer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_node") GodotMethod!(void, long, String) addNode;
		@GodotName("node_exists") GodotMethod!(bool, String) nodeExists;
		@GodotName("node_rename") GodotMethod!(GodotError, String, String) nodeRename;
		@GodotName("node_get_type") GodotMethod!(AnimationTreePlayer.NodeType, String) nodeGetType;
		@GodotName("node_get_input_count") GodotMethod!(long, String) nodeGetInputCount;
		@GodotName("node_get_input_source") GodotMethod!(String, String, long) nodeGetInputSource;
		@GodotName("animation_node_set_animation") GodotMethod!(void, String, Animation) animationNodeSetAnimation;
		@GodotName("animation_node_get_animation") GodotMethod!(Animation, String) animationNodeGetAnimation;
		@GodotName("animation_node_set_master_animation") GodotMethod!(void, String, String) animationNodeSetMasterAnimation;
		@GodotName("animation_node_get_master_animation") GodotMethod!(String, String) animationNodeGetMasterAnimation;
		@GodotName("animation_node_get_position") GodotMethod!(double, String) animationNodeGetPosition;
		@GodotName("animation_node_set_filter_path") GodotMethod!(void, String, NodePath, bool) animationNodeSetFilterPath;
		@GodotName("oneshot_node_set_fadein_time") GodotMethod!(void, String, double) oneshotNodeSetFadeinTime;
		@GodotName("oneshot_node_get_fadein_time") GodotMethod!(double, String) oneshotNodeGetFadeinTime;
		@GodotName("oneshot_node_set_fadeout_time") GodotMethod!(void, String, double) oneshotNodeSetFadeoutTime;
		@GodotName("oneshot_node_get_fadeout_time") GodotMethod!(double, String) oneshotNodeGetFadeoutTime;
		@GodotName("oneshot_node_set_autorestart") GodotMethod!(void, String, bool) oneshotNodeSetAutorestart;
		@GodotName("oneshot_node_set_autorestart_delay") GodotMethod!(void, String, double) oneshotNodeSetAutorestartDelay;
		@GodotName("oneshot_node_set_autorestart_random_delay") GodotMethod!(void, String, double) oneshotNodeSetAutorestartRandomDelay;
		@GodotName("oneshot_node_has_autorestart") GodotMethod!(bool, String) oneshotNodeHasAutorestart;
		@GodotName("oneshot_node_get_autorestart_delay") GodotMethod!(double, String) oneshotNodeGetAutorestartDelay;
		@GodotName("oneshot_node_get_autorestart_random_delay") GodotMethod!(double, String) oneshotNodeGetAutorestartRandomDelay;
		@GodotName("oneshot_node_start") GodotMethod!(void, String) oneshotNodeStart;
		@GodotName("oneshot_node_stop") GodotMethod!(void, String) oneshotNodeStop;
		@GodotName("oneshot_node_is_active") GodotMethod!(bool, String) oneshotNodeIsActive;
		@GodotName("oneshot_node_set_filter_path") GodotMethod!(void, String, NodePath, bool) oneshotNodeSetFilterPath;
		@GodotName("mix_node_set_amount") GodotMethod!(void, String, double) mixNodeSetAmount;
		@GodotName("mix_node_get_amount") GodotMethod!(double, String) mixNodeGetAmount;
		@GodotName("blend2_node_set_amount") GodotMethod!(void, String, double) blend2NodeSetAmount;
		@GodotName("blend2_node_get_amount") GodotMethod!(double, String) blend2NodeGetAmount;
		@GodotName("blend2_node_set_filter_path") GodotMethod!(void, String, NodePath, bool) blend2NodeSetFilterPath;
		@GodotName("blend3_node_set_amount") GodotMethod!(void, String, double) blend3NodeSetAmount;
		@GodotName("blend3_node_get_amount") GodotMethod!(double, String) blend3NodeGetAmount;
		@GodotName("blend4_node_set_amount") GodotMethod!(void, String, Vector2) blend4NodeSetAmount;
		@GodotName("blend4_node_get_amount") GodotMethod!(Vector2, String) blend4NodeGetAmount;
		@GodotName("timescale_node_set_scale") GodotMethod!(void, String, double) timescaleNodeSetScale;
		@GodotName("timescale_node_get_scale") GodotMethod!(double, String) timescaleNodeGetScale;
		@GodotName("timeseek_node_seek") GodotMethod!(void, String, double) timeseekNodeSeek;
		@GodotName("transition_node_set_input_count") GodotMethod!(void, String, long) transitionNodeSetInputCount;
		@GodotName("transition_node_get_input_count") GodotMethod!(long, String) transitionNodeGetInputCount;
		@GodotName("transition_node_delete_input") GodotMethod!(void, String, long) transitionNodeDeleteInput;
		@GodotName("transition_node_set_input_auto_advance") GodotMethod!(void, String, long, bool) transitionNodeSetInputAutoAdvance;
		@GodotName("transition_node_has_input_auto_advance") GodotMethod!(bool, String, long) transitionNodeHasInputAutoAdvance;
		@GodotName("transition_node_set_xfade_time") GodotMethod!(void, String, double) transitionNodeSetXfadeTime;
		@GodotName("transition_node_get_xfade_time") GodotMethod!(double, String) transitionNodeGetXfadeTime;
		@GodotName("transition_node_set_current") GodotMethod!(void, String, long) transitionNodeSetCurrent;
		@GodotName("transition_node_get_current") GodotMethod!(long, String) transitionNodeGetCurrent;
		@GodotName("node_set_position") GodotMethod!(void, String, Vector2) nodeSetPosition;
		@GodotName("node_get_position") GodotMethod!(Vector2, String) nodeGetPosition;
		@GodotName("remove_node") GodotMethod!(void, String) removeNode;
		@GodotName("connect_nodes") GodotMethod!(GodotError, String, String, long) connectNodes;
		@GodotName("are_nodes_connected") GodotMethod!(bool, String, String, long) areNodesConnected;
		@GodotName("disconnect_nodes") GodotMethod!(void, String, long) disconnectNodes;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("is_active") GodotMethod!(bool) isActive;
		@GodotName("set_base_path") GodotMethod!(void, NodePath) setBasePath;
		@GodotName("get_base_path") GodotMethod!(NodePath) getBasePath;
		@GodotName("set_master_player") GodotMethod!(void, NodePath) setMasterPlayer;
		@GodotName("get_master_player") GodotMethod!(NodePath) getMasterPlayer;
		@GodotName("get_node_list") GodotMethod!(PoolStringArray) getNodeList;
		@GodotName("set_animation_process_mode") GodotMethod!(void, long) setAnimationProcessMode;
		@GodotName("get_animation_process_mode") GodotMethod!(AnimationTreePlayer.AnimationProcessMode) getAnimationProcessMode;
		@GodotName("advance") GodotMethod!(void, double) advance;
		@GodotName("reset") GodotMethod!(void) reset;
		@GodotName("recompute_caches") GodotMethod!(void) recomputeCaches;
	}
	bool opEquals(in AnimationTreePlayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationTreePlayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		ptrcall!(void)(_classBinding.addNode, _godot_object, type, id);
	}
	/**
	Check if a node exists (by name).
	*/
	bool nodeExists(in String node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.nodeExists, _godot_object, node);
	}
	/**
	Rename a node in the graph.
	*/
	GodotError nodeRename(in String node, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.nodeRename, _godot_object, node, new_name);
	}
	/**
	Get the node type, will return from NODE_* enum.
	*/
	AnimationTreePlayer.NodeType nodeGetType(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationTreePlayer.NodeType)(_classBinding.nodeGetType, _godot_object, id);
	}
	/**
	Return the input count for a given node. Different types of nodes have different amount of inputs.
	*/
	long nodeGetInputCount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.nodeGetInputCount, _godot_object, id);
	}
	/**
	Return the input source for a given node input.
	*/
	String nodeGetInputSource(in String id, in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.nodeGetInputSource, _godot_object, id, idx);
	}
	/**
	Binds a new $(D Animation) from the $(D masterPlayer) to the `AnimationTreePlayer`'s animation node with name `id`.
	*/
	void animationNodeSetAnimation(in String id, Animation animation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.animationNodeSetAnimation, _godot_object, id, animation);
	}
	/**
	Returns the $(D AnimationPlayer)'s $(D Animation) bound to the `AnimationTreePlayer`'s animation node with name `id`.
	*/
	Ref!Animation animationNodeGetAnimation(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation)(_classBinding.animationNodeGetAnimation, _godot_object, id);
	}
	/**
	Binds the $(D Animation) named `source` from $(D masterPlayer) to the animation node `id`. Recalculates caches.
	*/
	void animationNodeSetMasterAnimation(in String id, in String source)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.animationNodeSetMasterAnimation, _godot_object, id, source);
	}
	/**
	Returns the name of the $(D masterPlayer)'s $(D Animation) bound to this animation node.
	*/
	String animationNodeGetMasterAnimation(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.animationNodeGetMasterAnimation, _godot_object, id);
	}
	/**
	
	*/
	double animationNodeGetPosition(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.animationNodeGetPosition, _godot_object, id);
	}
	/**
	If `enable` is `true`, the animation node with ID `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	*/
	void animationNodeSetFilterPath(NodePathArg1)(in String id, in NodePathArg1 path, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.animationNodeSetFilterPath, _godot_object, id, path, enable);
	}
	/**
	Sets fade in time of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetFadeinTime(in String id, in double time_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.oneshotNodeSetFadeinTime, _godot_object, id, time_sec);
	}
	/**
	Returns fade in time of a OneShot node given its name.
	*/
	double oneshotNodeGetFadeinTime(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.oneshotNodeGetFadeinTime, _godot_object, id);
	}
	/**
	Sets fade out time of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetFadeoutTime(in String id, in double time_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.oneshotNodeSetFadeoutTime, _godot_object, id, time_sec);
	}
	/**
	Returns fade out time of a OneShot node given its name.
	*/
	double oneshotNodeGetFadeoutTime(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.oneshotNodeGetFadeoutTime, _godot_object, id);
	}
	/**
	Sets autorestart property of a OneShot node given its name and value.
	*/
	void oneshotNodeSetAutorestart(in String id, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.oneshotNodeSetAutorestart, _godot_object, id, enable);
	}
	/**
	Sets autorestart delay of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetAutorestartDelay(in String id, in double delay_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.oneshotNodeSetAutorestartDelay, _godot_object, id, delay_sec);
	}
	/**
	Sets autorestart random delay of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetAutorestartRandomDelay(in String id, in double rand_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.oneshotNodeSetAutorestartRandomDelay, _godot_object, id, rand_sec);
	}
	/**
	Returns whether a OneShot node will auto restart given its name.
	*/
	bool oneshotNodeHasAutorestart(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.oneshotNodeHasAutorestart, _godot_object, id);
	}
	/**
	Returns autostart delay of a OneShot node given its name.
	*/
	double oneshotNodeGetAutorestartDelay(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.oneshotNodeGetAutorestartDelay, _godot_object, id);
	}
	/**
	Returns autostart random delay of a OneShot node given its name.
	*/
	double oneshotNodeGetAutorestartRandomDelay(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.oneshotNodeGetAutorestartRandomDelay, _godot_object, id);
	}
	/**
	Starts a OneShot node given its name.
	*/
	void oneshotNodeStart(in String id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.oneshotNodeStart, _godot_object, id);
	}
	/**
	Stops the OneShot node with name `id`.
	*/
	void oneshotNodeStop(in String id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.oneshotNodeStop, _godot_object, id);
	}
	/**
	Returns whether a OneShot node is active given its name.
	*/
	bool oneshotNodeIsActive(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.oneshotNodeIsActive, _godot_object, id);
	}
	/**
	If `enable` is `true`, the oneshot node with ID `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	*/
	void oneshotNodeSetFilterPath(NodePathArg1)(in String id, in NodePathArg1 path, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.oneshotNodeSetFilterPath, _godot_object, id, path, enable);
	}
	/**
	Sets mix amount of a Mix node given its name and value.
	A Mix node adds input b to input a by a the amount given by ratio.
	*/
	void mixNodeSetAmount(in String id, in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.mixNodeSetAmount, _godot_object, id, ratio);
	}
	/**
	Returns mix amount of a Mix node given its name.
	*/
	double mixNodeGetAmount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.mixNodeGetAmount, _godot_object, id);
	}
	/**
	Sets the blend amount of a Blend2 node given its name and value.
	A Blend2 Node blends two animations with the amount between 0 and 1.
	At 0, Output is input a.
	Towards 1, the influence of a gets lessened, the influence of b gets raised.
	At 1, Output is input b.
	*/
	void blend2NodeSetAmount(in String id, in double blend)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.blend2NodeSetAmount, _godot_object, id, blend);
	}
	/**
	Returns the blend amount of a Blend2 node given its name.
	*/
	double blend2NodeGetAmount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.blend2NodeGetAmount, _godot_object, id);
	}
	/**
	If `enable` is `true`, the blend2 node with ID `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	*/
	void blend2NodeSetFilterPath(NodePathArg1)(in String id, in NodePathArg1 path, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.blend2NodeSetFilterPath, _godot_object, id, path, enable);
	}
	/**
	Sets the blend amount of a Blend3 node given its name and value.
	A Blend3 Node blends three animations with the amount between -1 and 1.
	At -1, Output is input b-.
	From -1 to 0, the influence of b- gets lessened, the influence of a gets raised and the influence of b+ is 0.
	At 0, Output is input a.
	From 0 to 1, the influence of a gets lessened, the influence of b+ gets raised and the influence of b+ is 0.
	At 1, Output is input b+.
	*/
	void blend3NodeSetAmount(in String id, in double blend)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.blend3NodeSetAmount, _godot_object, id, blend);
	}
	/**
	Returns the blend amount of a Blend3 node given its name.
	*/
	double blend3NodeGetAmount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.blend3NodeGetAmount, _godot_object, id);
	}
	/**
	Sets the blend amount of a Blend4 node given its name and value.
	A Blend4 Node blends two pairs of animations.
	The two pairs are blended like blend2 and then added together.
	*/
	void blend4NodeSetAmount(in String id, in Vector2 blend)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.blend4NodeSetAmount, _godot_object, id, blend);
	}
	/**
	Returns the blend amount of a Blend4 node given its name.
	*/
	Vector2 blend4NodeGetAmount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.blend4NodeGetAmount, _godot_object, id);
	}
	/**
	Sets the time scale of the TimeScale node with name `id` to `scale`.
	The timescale node is used to speed $(D Animation)s up if the scale is above 1 or slow them down if it is below 1.
	If applied after a blend or mix, affects all input animations to that blend or mix.
	*/
	void timescaleNodeSetScale(in String id, in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.timescaleNodeSetScale, _godot_object, id, scale);
	}
	/**
	Returns time scale value of the TimeScale node with name `id`.
	*/
	double timescaleNodeGetScale(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.timescaleNodeGetScale, _godot_object, id);
	}
	/**
	Sets the time seek value of the TimeSeek node with name `id` to `seconds`
	This functions as a seek in the $(D Animation) or the blend or mix of $(D Animation)s input in it.
	*/
	void timeseekNodeSeek(in String id, in double seconds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.timeseekNodeSeek, _godot_object, id, seconds);
	}
	/**
	Resizes the number of inputs available for the transition node with name `id`.
	*/
	void transitionNodeSetInputCount(in String id, in long count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.transitionNodeSetInputCount, _godot_object, id, count);
	}
	/**
	Returns the number of inputs for the transition node with name `id`. You can add inputs by rightclicking on the transition node.
	*/
	long transitionNodeGetInputCount(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.transitionNodeGetInputCount, _godot_object, id);
	}
	/**
	Deletes the input at `input_idx` for the transition node with name `id`.
	*/
	void transitionNodeDeleteInput(in String id, in long input_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.transitionNodeDeleteInput, _godot_object, id, input_idx);
	}
	/**
	The transition node with name `id` advances to its next input automatically when the input at `input_idx` completes.
	*/
	void transitionNodeSetInputAutoAdvance(in String id, in long input_idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.transitionNodeSetInputAutoAdvance, _godot_object, id, input_idx, enable);
	}
	/**
	Returns `true` if the input at `input_idx` on transition node with name `id` is set to automatically advance to the next input upon completion.
	*/
	bool transitionNodeHasInputAutoAdvance(in String id, in long input_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.transitionNodeHasInputAutoAdvance, _godot_object, id, input_idx);
	}
	/**
	The transition node with name `id` sets its cross fade time to `time_sec`.
	*/
	void transitionNodeSetXfadeTime(in String id, in double time_sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.transitionNodeSetXfadeTime, _godot_object, id, time_sec);
	}
	/**
	Returns the cross fade time for the transition node with name `id`.
	*/
	double transitionNodeGetXfadeTime(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.transitionNodeGetXfadeTime, _godot_object, id);
	}
	/**
	The transition node with name `id` sets its current input at `input_idx`.
	*/
	void transitionNodeSetCurrent(in String id, in long input_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.transitionNodeSetCurrent, _godot_object, id, input_idx);
	}
	/**
	Returns the index of the currently evaluated input for the transition node with name `id`.
	*/
	long transitionNodeGetCurrent(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.transitionNodeGetCurrent, _godot_object, id);
	}
	/**
	Sets position of a node in the graph given its name and position.
	*/
	void nodeSetPosition(in String id, in Vector2 screen_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.nodeSetPosition, _godot_object, id, screen_position);
	}
	/**
	Returns position of a node in the graph given its name.
	*/
	Vector2 nodeGetPosition(in String id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.nodeGetPosition, _godot_object, id);
	}
	/**
	Removes the animation node with name `id`.
	*/
	void removeNode(in String id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeNode, _godot_object, id);
	}
	/**
	Connects node `id` to `dst_id` at the specified input slot.
	*/
	GodotError connectNodes(in String id, in String dst_id, in long dst_input_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.connectNodes, _godot_object, id, dst_id, dst_input_idx);
	}
	/**
	Returns whether node `id` and `dst_id` are connected at the specified slot.
	*/
	bool areNodesConnected(in String id, in String dst_id, in long dst_input_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.areNodesConnected, _godot_object, id, dst_id, dst_input_idx);
	}
	/**
	Disconnects nodes connected to `id` at the specified input slot.
	*/
	void disconnectNodes(in String id, in long dst_input_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectNodes, _godot_object, id, dst_input_idx);
	}
	/**
	
	*/
	void setActive(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setActive, _godot_object, enabled);
	}
	/**
	
	*/
	bool isActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isActive, _godot_object);
	}
	/**
	
	*/
	void setBasePath(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBasePath, _godot_object, path);
	}
	/**
	
	*/
	NodePath getBasePath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getBasePath, _godot_object);
	}
	/**
	
	*/
	void setMasterPlayer(NodePathArg0)(in NodePathArg0 nodepath)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMasterPlayer, _godot_object, nodepath);
	}
	/**
	
	*/
	NodePath getMasterPlayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getMasterPlayer, _godot_object);
	}
	/**
	Returns a $(D PoolStringArray) containing the name of all nodes.
	*/
	PoolStringArray getNodeList()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getNodeList, _godot_object);
	}
	/**
	
	*/
	void setAnimationProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnimationProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	AnimationTreePlayer.AnimationProcessMode getAnimationProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationTreePlayer.AnimationProcessMode)(_classBinding.getAnimationProcessMode, _godot_object);
	}
	/**
	Shifts position in the animation timeline. Delta is the time in seconds to shift.
	*/
	void advance(in double delta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.advance, _godot_object, delta);
	}
	/**
	Resets this `AnimationTreePlayer`.
	*/
	void reset()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reset, _godot_object);
	}
	/**
	Manually recalculates the cache of track information generated from animation nodes. Needed when external sources modify the animation nodes' state.
	*/
	void recomputeCaches()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.recomputeCaches, _godot_object);
	}
	/**
	The thread in which to update animations. Default value: `ANIMATION_PROCESS_IDLE`.
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
	/**
	The path to the $(D AnimationPlayer) from which this `AnimationTreePlayer` binds animations to animation nodes.
	Once set, Animation nodes can be added to the AnimationTreePlayer.
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
	The node from which to relatively access other nodes. Default value: `".."`.
	It accesses the Bones, so it should point to the same Node the AnimationPlayer would point its Root Node at.
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
	If `true` the `AnimationTreePlayer` is able to play animations. Default value: `false`.
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
}
