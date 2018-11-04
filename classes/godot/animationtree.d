/**


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
import godot.animationrootnode;
/**

*/
@GodotBaseClass struct AnimationTree
{
	enum string _GODOT_internal_name = "AnimationTree";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("is_active") GodotMethod!(bool) isActive;
		@GodotName("set_tree_root") GodotMethod!(void, AnimationNode) setTreeRoot;
		@GodotName("get_tree_root") GodotMethod!(AnimationNode) getTreeRoot;
		@GodotName("set_process_mode") GodotMethod!(void, long) setProcessMode;
		@GodotName("get_process_mode") GodotMethod!(AnimationTree.AnimationProcessMode) getProcessMode;
		@GodotName("set_animation_player") GodotMethod!(void, NodePath) setAnimationPlayer;
		@GodotName("get_animation_player") GodotMethod!(NodePath) getAnimationPlayer;
		@GodotName("set_root_motion_track") GodotMethod!(void, NodePath) setRootMotionTrack;
		@GodotName("get_root_motion_track") GodotMethod!(NodePath) getRootMotionTrack;
		@GodotName("get_root_motion_transform") GodotMethod!(Transform) getRootMotionTransform;
		@GodotName("_tree_changed") GodotMethod!(void) _treeChanged;
		@GodotName("_update_properties") GodotMethod!(void) _updateProperties;
		@GodotName("rename_parameter") GodotMethod!(void, String, String) renameParameter;
		@GodotName("advance") GodotMethod!(void, double) advance;
		@GodotName("_node_removed") GodotMethod!(void, GodotObject) _nodeRemoved;
		@GodotName("_clear_caches") GodotMethod!(void) _clearCaches;
	}
	bool opEquals(in AnimationTree other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationTree opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		
		*/
		animationProcessPhysics = 0,
		/**
		
		*/
		animationProcessIdle = 1,
		/**
		
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
	void setActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setActive, _godot_object, active);
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
	void setTreeRoot(AnimationNode root)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTreeRoot, _godot_object, root);
	}
	/**
	
	*/
	Ref!AnimationNode getTreeRoot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNode)(_classBinding.getTreeRoot, _godot_object);
	}
	/**
	
	*/
	void setProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	AnimationTree.AnimationProcessMode getProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationTree.AnimationProcessMode)(_classBinding.getProcessMode, _godot_object);
	}
	/**
	
	*/
	void setAnimationPlayer(NodePathArg0)(in NodePathArg0 root)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnimationPlayer, _godot_object, root);
	}
	/**
	
	*/
	NodePath getAnimationPlayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getAnimationPlayer, _godot_object);
	}
	/**
	
	*/
	void setRootMotionTrack(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRootMotionTrack, _godot_object, path);
	}
	/**
	
	*/
	NodePath getRootMotionTrack() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getRootMotionTrack, _godot_object);
	}
	/**
	
	*/
	Transform getRootMotionTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getRootMotionTransform, _godot_object);
	}
	/**
	
	*/
	void _treeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateProperties()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_properties");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void renameParameter(in String old_name, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameParameter, _godot_object, old_name, new_name);
	}
	/**
	
	*/
	void advance(in double delta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.advance, _godot_object, delta);
	}
	/**
	
	*/
	void _nodeRemoved(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _clearCaches()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_clear_caches");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
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
	/**
	
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
}
