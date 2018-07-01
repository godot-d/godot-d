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
	static immutable string _GODOT_internal_name = "AnimationTreePlayer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		animationProcessIdle = 1,
		nodeAnimation = 1,
		nodeOneshot = 2,
		nodeMix = 3,
		nodeBlend2 = 4,
		nodeBlend3 = 5,
		nodeBlend4 = 6,
		nodeTimescale = 7,
		nodeTimeseek = 8,
		nodeTransition = 9,
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_add_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_node") = _GODOT_add_node;
	/**
	Adds a `type` node to the graph with name `id`.
	*/
	void addNode(StringArg1)(in long type, in StringArg1 id)
	{
		_GODOT_add_node.bind("AnimationTreePlayer", "add_node");
		ptrcall!(void)(_GODOT_add_node, _godot_object, type, id);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_node_exists;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_exists") = _GODOT_node_exists;
	/**
	Check if a node exists (by name).
	*/
	bool nodeExists(StringArg0)(in StringArg0 node) const
	{
		_GODOT_node_exists.bind("AnimationTreePlayer", "node_exists");
		return ptrcall!(bool)(_GODOT_node_exists, _godot_object, node);
	}
	package(godot) static GodotMethod!(GodotError, String, String) _GODOT_node_rename;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_rename") = _GODOT_node_rename;
	/**
	Rename a node in the graph.
	*/
	GodotError nodeRename(StringArg0, StringArg1)(in StringArg0 node, in StringArg1 new_name)
	{
		_GODOT_node_rename.bind("AnimationTreePlayer", "node_rename");
		return ptrcall!(GodotError)(_GODOT_node_rename, _godot_object, node, new_name);
	}
	package(godot) static GodotMethod!(AnimationTreePlayer.NodeType, String) _GODOT_node_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_get_type") = _GODOT_node_get_type;
	/**
	Get the node type, will return from NODE_* enum.
	*/
	AnimationTreePlayer.NodeType nodeGetType(StringArg0)(in StringArg0 id) const
	{
		_GODOT_node_get_type.bind("AnimationTreePlayer", "node_get_type");
		return ptrcall!(AnimationTreePlayer.NodeType)(_GODOT_node_get_type, _godot_object, id);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_node_get_input_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_get_input_count") = _GODOT_node_get_input_count;
	/**
	Return the input count for a given node. Different types of nodes have different amount of inputs.
	*/
	long nodeGetInputCount(StringArg0)(in StringArg0 id) const
	{
		_GODOT_node_get_input_count.bind("AnimationTreePlayer", "node_get_input_count");
		return ptrcall!(long)(_GODOT_node_get_input_count, _godot_object, id);
	}
	package(godot) static GodotMethod!(String, String, long) _GODOT_node_get_input_source;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_get_input_source") = _GODOT_node_get_input_source;
	/**
	Return the input source for a given node input.
	*/
	String nodeGetInputSource(StringArg0)(in StringArg0 id, in long idx) const
	{
		_GODOT_node_get_input_source.bind("AnimationTreePlayer", "node_get_input_source");
		return ptrcall!(String)(_GODOT_node_get_input_source, _godot_object, id, idx);
	}
	package(godot) static GodotMethod!(void, String, Animation) _GODOT_animation_node_set_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_node_set_animation") = _GODOT_animation_node_set_animation;
	/**
	Binds a new $(D Animation) from the $(D masterPlayer) to the `AnimationTreePlayer`'s animation node with name `id`.
	*/
	void animationNodeSetAnimation(StringArg0)(in StringArg0 id, Animation animation)
	{
		_GODOT_animation_node_set_animation.bind("AnimationTreePlayer", "animation_node_set_animation");
		ptrcall!(void)(_GODOT_animation_node_set_animation, _godot_object, id, animation);
	}
	package(godot) static GodotMethod!(Animation, String) _GODOT_animation_node_get_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_node_get_animation") = _GODOT_animation_node_get_animation;
	/**
	Returns the $(D AnimationPlayer)'s $(D Animation) bound to the `AnimationTreePlayer`'s animation node with name `id`.
	*/
	Ref!Animation animationNodeGetAnimation(StringArg0)(in StringArg0 id) const
	{
		_GODOT_animation_node_get_animation.bind("AnimationTreePlayer", "animation_node_get_animation");
		return ptrcall!(Animation)(_GODOT_animation_node_get_animation, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_animation_node_set_master_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_node_set_master_animation") = _GODOT_animation_node_set_master_animation;
	/**
	Binds the $(D Animation) named `source` from $(D masterPlayer) to the animation node `id`. Recalculates caches.
	*/
	void animationNodeSetMasterAnimation(StringArg0, StringArg1)(in StringArg0 id, in StringArg1 source)
	{
		_GODOT_animation_node_set_master_animation.bind("AnimationTreePlayer", "animation_node_set_master_animation");
		ptrcall!(void)(_GODOT_animation_node_set_master_animation, _godot_object, id, source);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_animation_node_get_master_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_node_get_master_animation") = _GODOT_animation_node_get_master_animation;
	/**
	Returns the name of the $(D masterPlayer)'s $(D Animation) bound to this animation node.
	*/
	String animationNodeGetMasterAnimation(StringArg0)(in StringArg0 id) const
	{
		_GODOT_animation_node_get_master_animation.bind("AnimationTreePlayer", "animation_node_get_master_animation");
		return ptrcall!(String)(_GODOT_animation_node_get_master_animation, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, NodePath, bool) _GODOT_animation_node_set_filter_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "animation_node_set_filter_path") = _GODOT_animation_node_set_filter_path;
	/**
	If `enable` is `true`, the animation node with ID `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	*/
	void animationNodeSetFilterPath(StringArg0, NodePathArg1)(in StringArg0 id, in NodePathArg1 path, in bool enable)
	{
		_GODOT_animation_node_set_filter_path.bind("AnimationTreePlayer", "animation_node_set_filter_path");
		ptrcall!(void)(_GODOT_animation_node_set_filter_path, _godot_object, id, path, enable);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_oneshot_node_set_fadein_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_fadein_time") = _GODOT_oneshot_node_set_fadein_time;
	/**
	Sets fade in time of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetFadeinTime(StringArg0)(in StringArg0 id, in double time_sec)
	{
		_GODOT_oneshot_node_set_fadein_time.bind("AnimationTreePlayer", "oneshot_node_set_fadein_time");
		ptrcall!(void)(_GODOT_oneshot_node_set_fadein_time, _godot_object, id, time_sec);
	}
	package(godot) static GodotMethod!(double, String) _GODOT_oneshot_node_get_fadein_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_get_fadein_time") = _GODOT_oneshot_node_get_fadein_time;
	/**
	Returns fade in time of a OneShot node given its name.
	*/
	double oneshotNodeGetFadeinTime(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_get_fadein_time.bind("AnimationTreePlayer", "oneshot_node_get_fadein_time");
		return ptrcall!(double)(_GODOT_oneshot_node_get_fadein_time, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_oneshot_node_set_fadeout_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_fadeout_time") = _GODOT_oneshot_node_set_fadeout_time;
	/**
	Sets fade out time of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetFadeoutTime(StringArg0)(in StringArg0 id, in double time_sec)
	{
		_GODOT_oneshot_node_set_fadeout_time.bind("AnimationTreePlayer", "oneshot_node_set_fadeout_time");
		ptrcall!(void)(_GODOT_oneshot_node_set_fadeout_time, _godot_object, id, time_sec);
	}
	package(godot) static GodotMethod!(double, String) _GODOT_oneshot_node_get_fadeout_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_get_fadeout_time") = _GODOT_oneshot_node_get_fadeout_time;
	/**
	Returns fade out time of a OneShot node given its name.
	*/
	double oneshotNodeGetFadeoutTime(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_get_fadeout_time.bind("AnimationTreePlayer", "oneshot_node_get_fadeout_time");
		return ptrcall!(double)(_GODOT_oneshot_node_get_fadeout_time, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_oneshot_node_set_autorestart;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_autorestart") = _GODOT_oneshot_node_set_autorestart;
	/**
	Sets autorestart property of a OneShot node given its name and value.
	*/
	void oneshotNodeSetAutorestart(StringArg0)(in StringArg0 id, in bool enable)
	{
		_GODOT_oneshot_node_set_autorestart.bind("AnimationTreePlayer", "oneshot_node_set_autorestart");
		ptrcall!(void)(_GODOT_oneshot_node_set_autorestart, _godot_object, id, enable);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_oneshot_node_set_autorestart_delay;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_autorestart_delay") = _GODOT_oneshot_node_set_autorestart_delay;
	/**
	Sets autorestart delay of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetAutorestartDelay(StringArg0)(in StringArg0 id, in double delay_sec)
	{
		_GODOT_oneshot_node_set_autorestart_delay.bind("AnimationTreePlayer", "oneshot_node_set_autorestart_delay");
		ptrcall!(void)(_GODOT_oneshot_node_set_autorestart_delay, _godot_object, id, delay_sec);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_oneshot_node_set_autorestart_random_delay;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_autorestart_random_delay") = _GODOT_oneshot_node_set_autorestart_random_delay;
	/**
	Sets autorestart random delay of a OneShot node given its name and value in seconds.
	*/
	void oneshotNodeSetAutorestartRandomDelay(StringArg0)(in StringArg0 id, in double rand_sec)
	{
		_GODOT_oneshot_node_set_autorestart_random_delay.bind("AnimationTreePlayer", "oneshot_node_set_autorestart_random_delay");
		ptrcall!(void)(_GODOT_oneshot_node_set_autorestart_random_delay, _godot_object, id, rand_sec);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_oneshot_node_has_autorestart;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_has_autorestart") = _GODOT_oneshot_node_has_autorestart;
	/**
	Returns whether a OneShot node will auto restart given its name.
	*/
	bool oneshotNodeHasAutorestart(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_has_autorestart.bind("AnimationTreePlayer", "oneshot_node_has_autorestart");
		return ptrcall!(bool)(_GODOT_oneshot_node_has_autorestart, _godot_object, id);
	}
	package(godot) static GodotMethod!(double, String) _GODOT_oneshot_node_get_autorestart_delay;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_get_autorestart_delay") = _GODOT_oneshot_node_get_autorestart_delay;
	/**
	Returns autostart delay of a OneShot node given its name.
	*/
	double oneshotNodeGetAutorestartDelay(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_get_autorestart_delay.bind("AnimationTreePlayer", "oneshot_node_get_autorestart_delay");
		return ptrcall!(double)(_GODOT_oneshot_node_get_autorestart_delay, _godot_object, id);
	}
	package(godot) static GodotMethod!(double, String) _GODOT_oneshot_node_get_autorestart_random_delay;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_get_autorestart_random_delay") = _GODOT_oneshot_node_get_autorestart_random_delay;
	/**
	Returns autostart random delay of a OneShot node given its name.
	*/
	double oneshotNodeGetAutorestartRandomDelay(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_get_autorestart_random_delay.bind("AnimationTreePlayer", "oneshot_node_get_autorestart_random_delay");
		return ptrcall!(double)(_GODOT_oneshot_node_get_autorestart_random_delay, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_oneshot_node_start;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_start") = _GODOT_oneshot_node_start;
	/**
	Starts a OneShot node given its name.
	*/
	void oneshotNodeStart(StringArg0)(in StringArg0 id)
	{
		_GODOT_oneshot_node_start.bind("AnimationTreePlayer", "oneshot_node_start");
		ptrcall!(void)(_GODOT_oneshot_node_start, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_oneshot_node_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_stop") = _GODOT_oneshot_node_stop;
	/**
	Stops the OneShot node with name `id`.
	*/
	void oneshotNodeStop(StringArg0)(in StringArg0 id)
	{
		_GODOT_oneshot_node_stop.bind("AnimationTreePlayer", "oneshot_node_stop");
		ptrcall!(void)(_GODOT_oneshot_node_stop, _godot_object, id);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_oneshot_node_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_is_active") = _GODOT_oneshot_node_is_active;
	/**
	Returns whether a OneShot node is active given its name.
	*/
	bool oneshotNodeIsActive(StringArg0)(in StringArg0 id) const
	{
		_GODOT_oneshot_node_is_active.bind("AnimationTreePlayer", "oneshot_node_is_active");
		return ptrcall!(bool)(_GODOT_oneshot_node_is_active, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, NodePath, bool) _GODOT_oneshot_node_set_filter_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "oneshot_node_set_filter_path") = _GODOT_oneshot_node_set_filter_path;
	/**
	If `enable` is `true`, the oneshot node with ID `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	*/
	void oneshotNodeSetFilterPath(StringArg0, NodePathArg1)(in StringArg0 id, in NodePathArg1 path, in bool enable)
	{
		_GODOT_oneshot_node_set_filter_path.bind("AnimationTreePlayer", "oneshot_node_set_filter_path");
		ptrcall!(void)(_GODOT_oneshot_node_set_filter_path, _godot_object, id, path, enable);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_mix_node_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "mix_node_set_amount") = _GODOT_mix_node_set_amount;
	/**
	Sets mix amount of a Mix node given its name and value.
	A Mix node adds input b to input a by a the amount given by ratio.
	*/
	void mixNodeSetAmount(StringArg0)(in StringArg0 id, in double ratio)
	{
		_GODOT_mix_node_set_amount.bind("AnimationTreePlayer", "mix_node_set_amount");
		ptrcall!(void)(_GODOT_mix_node_set_amount, _godot_object, id, ratio);
	}
	package(godot) static GodotMethod!(double, String) _GODOT_mix_node_get_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "mix_node_get_amount") = _GODOT_mix_node_get_amount;
	/**
	Returns mix amount of a Mix node given its name.
	*/
	double mixNodeGetAmount(StringArg0)(in StringArg0 id) const
	{
		_GODOT_mix_node_get_amount.bind("AnimationTreePlayer", "mix_node_get_amount");
		return ptrcall!(double)(_GODOT_mix_node_get_amount, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_blend2_node_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend2_node_set_amount") = _GODOT_blend2_node_set_amount;
	/**
	Sets the blend amount of a Blend2 node given its name and value.
	A Blend2 Node blends two animations with the amount between 0 and 1.
	At 0, Output is input a.
	Towards 1, the influence of a gets lessened, the influence of b gets raised.
	At 1, Output is input b.
	*/
	void blend2NodeSetAmount(StringArg0)(in StringArg0 id, in double blend)
	{
		_GODOT_blend2_node_set_amount.bind("AnimationTreePlayer", "blend2_node_set_amount");
		ptrcall!(void)(_GODOT_blend2_node_set_amount, _godot_object, id, blend);
	}
	package(godot) static GodotMethod!(double, String) _GODOT_blend2_node_get_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend2_node_get_amount") = _GODOT_blend2_node_get_amount;
	/**
	Returns the blend amount of a Blend2 node given its name.
	*/
	double blend2NodeGetAmount(StringArg0)(in StringArg0 id) const
	{
		_GODOT_blend2_node_get_amount.bind("AnimationTreePlayer", "blend2_node_get_amount");
		return ptrcall!(double)(_GODOT_blend2_node_get_amount, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, NodePath, bool) _GODOT_blend2_node_set_filter_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend2_node_set_filter_path") = _GODOT_blend2_node_set_filter_path;
	/**
	If `enable` is `true`, the blend2 node with ID `id` turns off the track modifying the property at `path`. The modified node's children continue to animate.
	*/
	void blend2NodeSetFilterPath(StringArg0, NodePathArg1)(in StringArg0 id, in NodePathArg1 path, in bool enable)
	{
		_GODOT_blend2_node_set_filter_path.bind("AnimationTreePlayer", "blend2_node_set_filter_path");
		ptrcall!(void)(_GODOT_blend2_node_set_filter_path, _godot_object, id, path, enable);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_blend3_node_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend3_node_set_amount") = _GODOT_blend3_node_set_amount;
	/**
	Sets the blend amount of a Blend3 node given its name and value.
	A Blend3 Node blends three animations with the amount between -1 and 1.
	At -1, Output is input b-.
	From -1 to 0, the influence of b- gets lessened, the influence of a gets raised and the influence of b+ is 0.
	At 0, Output is input a.
	From 0 to 1, the influence of a gets lessened, the influence of b+ gets raised and the influence of b+ is 0.
	At 1, Output is input b+.
	*/
	void blend3NodeSetAmount(StringArg0)(in StringArg0 id, in double blend)
	{
		_GODOT_blend3_node_set_amount.bind("AnimationTreePlayer", "blend3_node_set_amount");
		ptrcall!(void)(_GODOT_blend3_node_set_amount, _godot_object, id, blend);
	}
	package(godot) static GodotMethod!(double, String) _GODOT_blend3_node_get_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend3_node_get_amount") = _GODOT_blend3_node_get_amount;
	/**
	Returns the blend amount of a Blend3 node given its name.
	*/
	double blend3NodeGetAmount(StringArg0)(in StringArg0 id) const
	{
		_GODOT_blend3_node_get_amount.bind("AnimationTreePlayer", "blend3_node_get_amount");
		return ptrcall!(double)(_GODOT_blend3_node_get_amount, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, Vector2) _GODOT_blend4_node_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend4_node_set_amount") = _GODOT_blend4_node_set_amount;
	/**
	Sets the blend amount of a Blend4 node given its name and value.
	A Blend4 Node blends two pairs of animations.
	The two pairs are blended like blend2 and then added together.
	*/
	void blend4NodeSetAmount(StringArg0)(in StringArg0 id, in Vector2 blend)
	{
		_GODOT_blend4_node_set_amount.bind("AnimationTreePlayer", "blend4_node_set_amount");
		ptrcall!(void)(_GODOT_blend4_node_set_amount, _godot_object, id, blend);
	}
	package(godot) static GodotMethod!(Vector2, String) _GODOT_blend4_node_get_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend4_node_get_amount") = _GODOT_blend4_node_get_amount;
	/**
	Returns the blend amount of a Blend4 node given its name.
	*/
	Vector2 blend4NodeGetAmount(StringArg0)(in StringArg0 id) const
	{
		_GODOT_blend4_node_get_amount.bind("AnimationTreePlayer", "blend4_node_get_amount");
		return ptrcall!(Vector2)(_GODOT_blend4_node_get_amount, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_timescale_node_set_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "timescale_node_set_scale") = _GODOT_timescale_node_set_scale;
	/**
	Sets the time scale of the TimeScale node with name `id` to `scale`.
	The timescale node is used to speed $(D Animation)s up if the scale is above 1 or slow them down if it is below 1.
	If applied after a blend or mix, affects all input animations to that blend or mix.
	*/
	void timescaleNodeSetScale(StringArg0)(in StringArg0 id, in double scale)
	{
		_GODOT_timescale_node_set_scale.bind("AnimationTreePlayer", "timescale_node_set_scale");
		ptrcall!(void)(_GODOT_timescale_node_set_scale, _godot_object, id, scale);
	}
	package(godot) static GodotMethod!(double, String) _GODOT_timescale_node_get_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "timescale_node_get_scale") = _GODOT_timescale_node_get_scale;
	/**
	Returns time scale value of the TimeScale node with name `id`.
	*/
	double timescaleNodeGetScale(StringArg0)(in StringArg0 id) const
	{
		_GODOT_timescale_node_get_scale.bind("AnimationTreePlayer", "timescale_node_get_scale");
		return ptrcall!(double)(_GODOT_timescale_node_get_scale, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_timeseek_node_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "timeseek_node_seek") = _GODOT_timeseek_node_seek;
	/**
	Sets the time seek value of the TimeSeek node with name `id` to `seconds`
	This functions as a seek in the $(D Animation) or the blend or mix of $(D Animation)s input in it.
	*/
	void timeseekNodeSeek(StringArg0)(in StringArg0 id, in double seconds)
	{
		_GODOT_timeseek_node_seek.bind("AnimationTreePlayer", "timeseek_node_seek");
		ptrcall!(void)(_GODOT_timeseek_node_seek, _godot_object, id, seconds);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_transition_node_set_input_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_set_input_count") = _GODOT_transition_node_set_input_count;
	/**
	Resizes the number of inputs available for the transition node with name `id`.
	*/
	void transitionNodeSetInputCount(StringArg0)(in StringArg0 id, in long count)
	{
		_GODOT_transition_node_set_input_count.bind("AnimationTreePlayer", "transition_node_set_input_count");
		ptrcall!(void)(_GODOT_transition_node_set_input_count, _godot_object, id, count);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_transition_node_get_input_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_get_input_count") = _GODOT_transition_node_get_input_count;
	/**
	Returns the number of inputs for the transition node with name `id`. You can add inputs by rightclicking on the transition node.
	*/
	long transitionNodeGetInputCount(StringArg0)(in StringArg0 id) const
	{
		_GODOT_transition_node_get_input_count.bind("AnimationTreePlayer", "transition_node_get_input_count");
		return ptrcall!(long)(_GODOT_transition_node_get_input_count, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_transition_node_delete_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_delete_input") = _GODOT_transition_node_delete_input;
	/**
	Deletes the input at `input_idx` for the transition node with name `id`.
	*/
	void transitionNodeDeleteInput(StringArg0)(in StringArg0 id, in long input_idx)
	{
		_GODOT_transition_node_delete_input.bind("AnimationTreePlayer", "transition_node_delete_input");
		ptrcall!(void)(_GODOT_transition_node_delete_input, _godot_object, id, input_idx);
	}
	package(godot) static GodotMethod!(void, String, long, bool) _GODOT_transition_node_set_input_auto_advance;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_set_input_auto_advance") = _GODOT_transition_node_set_input_auto_advance;
	/**
	The transition node with name `id` advances to its next input automatically when the input at `input_idx` completes.
	*/
	void transitionNodeSetInputAutoAdvance(StringArg0)(in StringArg0 id, in long input_idx, in bool enable)
	{
		_GODOT_transition_node_set_input_auto_advance.bind("AnimationTreePlayer", "transition_node_set_input_auto_advance");
		ptrcall!(void)(_GODOT_transition_node_set_input_auto_advance, _godot_object, id, input_idx, enable);
	}
	package(godot) static GodotMethod!(bool, String, long) _GODOT_transition_node_has_input_auto_advance;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_has_input_auto_advance") = _GODOT_transition_node_has_input_auto_advance;
	/**
	Returns `true` if the input at `input_idx` on transition node with name `id` is set to automatically advance to the next input upon completion.
	*/
	bool transitionNodeHasInputAutoAdvance(StringArg0)(in StringArg0 id, in long input_idx) const
	{
		_GODOT_transition_node_has_input_auto_advance.bind("AnimationTreePlayer", "transition_node_has_input_auto_advance");
		return ptrcall!(bool)(_GODOT_transition_node_has_input_auto_advance, _godot_object, id, input_idx);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_transition_node_set_xfade_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_set_xfade_time") = _GODOT_transition_node_set_xfade_time;
	/**
	The transition node with name `id` sets its cross fade time to `time_sec`.
	*/
	void transitionNodeSetXfadeTime(StringArg0)(in StringArg0 id, in double time_sec)
	{
		_GODOT_transition_node_set_xfade_time.bind("AnimationTreePlayer", "transition_node_set_xfade_time");
		ptrcall!(void)(_GODOT_transition_node_set_xfade_time, _godot_object, id, time_sec);
	}
	package(godot) static GodotMethod!(double, String) _GODOT_transition_node_get_xfade_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_get_xfade_time") = _GODOT_transition_node_get_xfade_time;
	/**
	Returns the cross fade time for the transition node with name `id`.
	*/
	double transitionNodeGetXfadeTime(StringArg0)(in StringArg0 id) const
	{
		_GODOT_transition_node_get_xfade_time.bind("AnimationTreePlayer", "transition_node_get_xfade_time");
		return ptrcall!(double)(_GODOT_transition_node_get_xfade_time, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_transition_node_set_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_set_current") = _GODOT_transition_node_set_current;
	/**
	The transition node with name `id` sets its current input at `input_idx`.
	*/
	void transitionNodeSetCurrent(StringArg0)(in StringArg0 id, in long input_idx)
	{
		_GODOT_transition_node_set_current.bind("AnimationTreePlayer", "transition_node_set_current");
		ptrcall!(void)(_GODOT_transition_node_set_current, _godot_object, id, input_idx);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_transition_node_get_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "transition_node_get_current") = _GODOT_transition_node_get_current;
	/**
	Returns the index of the currently evaluated input for the transition node with name `id`.
	*/
	long transitionNodeGetCurrent(StringArg0)(in StringArg0 id) const
	{
		_GODOT_transition_node_get_current.bind("AnimationTreePlayer", "transition_node_get_current");
		return ptrcall!(long)(_GODOT_transition_node_get_current, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String, Vector2) _GODOT_node_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_set_position") = _GODOT_node_set_position;
	/**
	Sets position of a node in the graph given its name and position.
	*/
	void nodeSetPosition(StringArg0)(in StringArg0 id, in Vector2 screen_position)
	{
		_GODOT_node_set_position.bind("AnimationTreePlayer", "node_set_position");
		ptrcall!(void)(_GODOT_node_set_position, _godot_object, id, screen_position);
	}
	package(godot) static GodotMethod!(Vector2, String) _GODOT_node_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "node_get_position") = _GODOT_node_get_position;
	/**
	Returns position of a node in the graph given its name.
	*/
	Vector2 nodeGetPosition(StringArg0)(in StringArg0 id) const
	{
		_GODOT_node_get_position.bind("AnimationTreePlayer", "node_get_position");
		return ptrcall!(Vector2)(_GODOT_node_get_position, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_node") = _GODOT_remove_node;
	/**
	Removes the animation node with name `id`.
	*/
	void removeNode(StringArg0)(in StringArg0 id)
	{
		_GODOT_remove_node.bind("AnimationTreePlayer", "remove_node");
		ptrcall!(void)(_GODOT_remove_node, _godot_object, id);
	}
	package(godot) static GodotMethod!(GodotError, String, String, long) _GODOT_connect_nodes;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_nodes") = _GODOT_connect_nodes;
	/**
	Connects node `id` to `dst_id` at the specified input slot.
	*/
	GodotError connectNodes(StringArg0, StringArg1)(in StringArg0 id, in StringArg1 dst_id, in long dst_input_idx)
	{
		_GODOT_connect_nodes.bind("AnimationTreePlayer", "connect_nodes");
		return ptrcall!(GodotError)(_GODOT_connect_nodes, _godot_object, id, dst_id, dst_input_idx);
	}
	package(godot) static GodotMethod!(bool, String, String, long) _GODOT_are_nodes_connected;
	package(godot) alias _GODOT_methodBindInfo(string name : "are_nodes_connected") = _GODOT_are_nodes_connected;
	/**
	Returns whether node `id` and `dst_id` are connected at the specified slot.
	*/
	bool areNodesConnected(StringArg0, StringArg1)(in StringArg0 id, in StringArg1 dst_id, in long dst_input_idx) const
	{
		_GODOT_are_nodes_connected.bind("AnimationTreePlayer", "are_nodes_connected");
		return ptrcall!(bool)(_GODOT_are_nodes_connected, _godot_object, id, dst_id, dst_input_idx);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_disconnect_nodes;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_nodes") = _GODOT_disconnect_nodes;
	/**
	Disconnects nodes connected to `id` at the specified input slot.
	*/
	void disconnectNodes(StringArg0)(in StringArg0 id, in long dst_input_idx)
	{
		_GODOT_disconnect_nodes.bind("AnimationTreePlayer", "disconnect_nodes");
		ptrcall!(void)(_GODOT_disconnect_nodes, _godot_object, id, dst_input_idx);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_active") = _GODOT_set_active;
	/**
	
	*/
	void setActive(in bool enabled)
	{
		_GODOT_set_active.bind("AnimationTreePlayer", "set_active");
		ptrcall!(void)(_GODOT_set_active, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_active") = _GODOT_is_active;
	/**
	
	*/
	bool isActive() const
	{
		_GODOT_is_active.bind("AnimationTreePlayer", "is_active");
		return ptrcall!(bool)(_GODOT_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_path") = _GODOT_set_base_path;
	/**
	
	*/
	void setBasePath(NodePathArg0)(in NodePathArg0 path)
	{
		_GODOT_set_base_path.bind("AnimationTreePlayer", "set_base_path");
		ptrcall!(void)(_GODOT_set_base_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_path") = _GODOT_get_base_path;
	/**
	
	*/
	NodePath getBasePath() const
	{
		_GODOT_get_base_path.bind("AnimationTreePlayer", "get_base_path");
		return ptrcall!(NodePath)(_GODOT_get_base_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_master_player;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_master_player") = _GODOT_set_master_player;
	/**
	
	*/
	void setMasterPlayer(NodePathArg0)(in NodePathArg0 nodepath)
	{
		_GODOT_set_master_player.bind("AnimationTreePlayer", "set_master_player");
		ptrcall!(void)(_GODOT_set_master_player, _godot_object, nodepath);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_master_player;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_master_player") = _GODOT_get_master_player;
	/**
	
	*/
	NodePath getMasterPlayer() const
	{
		_GODOT_get_master_player.bind("AnimationTreePlayer", "get_master_player");
		return ptrcall!(NodePath)(_GODOT_get_master_player, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_node_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_list") = _GODOT_get_node_list;
	/**
	Returns a $(D PoolStringArray) containing the name of all nodes.
	*/
	PoolStringArray getNodeList()
	{
		_GODOT_get_node_list.bind("AnimationTreePlayer", "get_node_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_node_list, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_animation_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_animation_process_mode") = _GODOT_set_animation_process_mode;
	/**
	
	*/
	void setAnimationProcessMode(in long mode)
	{
		_GODOT_set_animation_process_mode.bind("AnimationTreePlayer", "set_animation_process_mode");
		ptrcall!(void)(_GODOT_set_animation_process_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(AnimationTreePlayer.AnimationProcessMode) _GODOT_get_animation_process_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation_process_mode") = _GODOT_get_animation_process_mode;
	/**
	
	*/
	AnimationTreePlayer.AnimationProcessMode getAnimationProcessMode() const
	{
		_GODOT_get_animation_process_mode.bind("AnimationTreePlayer", "get_animation_process_mode");
		return ptrcall!(AnimationTreePlayer.AnimationProcessMode)(_GODOT_get_animation_process_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_advance;
	package(godot) alias _GODOT_methodBindInfo(string name : "advance") = _GODOT_advance;
	/**
	Shifts position in the animation timeline. Delta is the time in seconds to shift.
	*/
	void advance(in double delta)
	{
		_GODOT_advance.bind("AnimationTreePlayer", "advance");
		ptrcall!(void)(_GODOT_advance, _godot_object, delta);
	}
	package(godot) static GodotMethod!(void) _GODOT_reset;
	package(godot) alias _GODOT_methodBindInfo(string name : "reset") = _GODOT_reset;
	/**
	Resets this `AnimationTreePlayer`.
	*/
	void reset()
	{
		_GODOT_reset.bind("AnimationTreePlayer", "reset");
		ptrcall!(void)(_GODOT_reset, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_recompute_caches;
	package(godot) alias _GODOT_methodBindInfo(string name : "recompute_caches") = _GODOT_recompute_caches;
	/**
	Manually recalculates the cache of track information generated from animation nodes. Needed when external sources modify the animation nodes' state.
	*/
	void recomputeCaches()
	{
		_GODOT_recompute_caches.bind("AnimationTreePlayer", "recompute_caches");
		ptrcall!(void)(_GODOT_recompute_caches, _godot_object);
	}
	/**
	The thread in which to update animations. Default value: $(D animationProcessIdle).
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
