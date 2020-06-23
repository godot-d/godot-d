/**
A node to be used for advanced animation transitions in an $(D AnimationPlayer).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationtree;
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
import godot.animationnode;
/**
A node to be used for advanced animation transitions in an $(D AnimationPlayer).

Note: When linked with an $(D AnimationPlayer), several properties and methods of the corresponding $(D AnimationPlayer) will not function as expected. Playback and transitions should be handled using only the $(D AnimationTree) and its constituent $(D AnimationNode)(s). The $(D AnimationPlayer) node should be used solely for adding, deleting, and editing animations.
*/
@GodotBaseClass struct AnimationTree
{
	package(godot) enum string _GODOT_internal_name = "AnimationTree";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_clear_caches") GodotMethod!(void) _clearCaches;
		@GodotName("_node_removed") GodotMethod!(void, Node) _nodeRemoved;
		@GodotName("_tree_changed") GodotMethod!(void) _treeChanged;
		@GodotName("_update_properties") GodotMethod!(void) _updateProperties;
		@GodotName("advance") GodotMethod!(void, double) advance;
		@GodotName("get_animation_player") GodotMethod!(NodePath) getAnimationPlayer;
		@GodotName("get_process_mode") GodotMethod!(AnimationTree.AnimationProcessMode) getProcessMode;
		@GodotName("get_root_motion_track") GodotMethod!(NodePath) getRootMotionTrack;
		@GodotName("get_root_motion_transform") GodotMethod!(Transform) getRootMotionTransform;
		@GodotName("get_tree_root") GodotMethod!(AnimationNode) getTreeRoot;
		@GodotName("is_active") GodotMethod!(bool) isActive;
		@GodotName("rename_parameter") GodotMethod!(void, String, String) renameParameter;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("set_animation_player") GodotMethod!(void, NodePath) setAnimationPlayer;
		@GodotName("set_process_mode") GodotMethod!(void, long) setProcessMode;
		@GodotName("set_root_motion_track") GodotMethod!(void, NodePath) setRootMotionTrack;
		@GodotName("set_tree_root") GodotMethod!(void, AnimationNode) setTreeRoot;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationTree other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) AnimationTree opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of AnimationTree.
	/// Note: use `memnew!AnimationTree` instead.
	static AnimationTree _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationTree");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationTree)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum AnimationProcessMode : int
	{
		/**
		The animations will progress during the physics frame (i.e. $(D Node._physicsProcess)).
		*/
		animationProcessPhysics = 0,
		/**
		The animations will progress during the idle frame (i.e. $(D Node._process)).
		*/
		animationProcessIdle = 1,
		/**
		The animations will only progress manually (see $(D advance)).
		*/
		animationProcessManual = 2,
	}
	/// 
	enum Constants : int
	{
		animationProcessPhysics = 0,
		animationProcessIdle = 1,
		animationProcessManual = 2,
	}
	/**
	
	*/
	void _clearCaches()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_clear_caches");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _nodeRemoved(Node arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_tree_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateProperties()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_properties");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Manually advance the animations by the specified time (in seconds).
	*/
	void advance(in double delta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.advance, _godot_object, delta);
	}
	/**
	
	*/
	NodePath getAnimationPlayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getAnimationPlayer, _godot_object);
	}
	/**
	
	*/
	AnimationTree.AnimationProcessMode getProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationTree.AnimationProcessMode)(GDNativeClassBinding.getProcessMode, _godot_object);
	}
	/**
	
	*/
	NodePath getRootMotionTrack() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getRootMotionTrack, _godot_object);
	}
	/**
	Retrieve the motion of the $(D rootMotionTrack) as a $(D Transform) that can be used elsewhere. If $(D rootMotionTrack) is not a path to a track of type $(D constant Animation.TYPE_TRANSFORM), returns an identity transformation.
	*/
	Transform getRootMotionTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getRootMotionTransform, _godot_object);
	}
	/**
	
	*/
	Ref!AnimationNode getTreeRoot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNode)(GDNativeClassBinding.getTreeRoot, _godot_object);
	}
	/**
	
	*/
	bool isActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActive, _godot_object);
	}
	/**
	
	*/
	void renameParameter(in String old_name, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameParameter, _godot_object, old_name, new_name);
	}
	/**
	
	*/
	void setActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setActive, _godot_object, active);
	}
	/**
	
	*/
	void setAnimationPlayer(NodePathArg0)(in NodePathArg0 root)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnimationPlayer, _godot_object, root);
	}
	/**
	
	*/
	void setProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	void setRootMotionTrack(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRootMotionTrack, _godot_object, path);
	}
	/**
	
	*/
	void setTreeRoot(AnimationNode root)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTreeRoot, _godot_object, root);
	}
	/**
	If `true`, the $(D AnimationTree) will be processing.
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
	The path to the $(D AnimationPlayer) used for animating.
	*/
	@property NodePath animPlayer()
	{
		return getAnimationPlayer();
	}
	/// ditto
	@property void animPlayer(NodePath v)
	{
		setAnimationPlayer(v);
	}
	/**
	The process mode of this $(D AnimationTree). See $(D animationprocessmode) for available modes.
	*/
	@property AnimationTree.AnimationProcessMode processMode()
	{
		return getProcessMode();
	}
	/// ditto
	@property void processMode(long v)
	{
		setProcessMode(v);
	}
	/**
	The path to the Animation track used for root motion. Paths must be valid scene-tree paths to a node, and must be specified starting from the parent node of the node that will reproduce the animation. To specify a track that controls properties or bones, append its name after the path, separated by `":"`. For example, `"character/skeleton:ankle"` or `"character/mesh:transform/local"`.
	If the track has type $(D constant Animation.TYPE_TRANSFORM), the transformation will be cancelled visually, and the animation will appear to stay in place.
	*/
	@property NodePath rootMotionTrack()
	{
		return getRootMotionTrack();
	}
	/// ditto
	@property void rootMotionTrack(NodePath v)
	{
		setRootMotionTrack(v);
	}
	/**
	The root animation node of this $(D AnimationTree). See $(D AnimationNode).
	*/
	@property AnimationNode treeRoot()
	{
		return getTreeRoot();
	}
	/// ditto
	@property void treeRoot(AnimationNode v)
	{
		setTreeRoot(v);
	}
}
