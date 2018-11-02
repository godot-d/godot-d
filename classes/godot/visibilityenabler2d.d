/**
Enable certain nodes only when visible.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visibilityenabler2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visibilitynotifier2d;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**
Enable certain nodes only when visible.

The VisibilityEnabler2D will disable $(D RigidBody2D), $(D AnimationPlayer), and other nodes when they are not visible. It will only affect other nodes within the same scene as the VisibilityEnabler2D itself.
*/
@GodotBaseClass struct VisibilityEnabler2D
{
	enum string _GODOT_internal_name = "VisibilityEnabler2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisibilityNotifier2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_enabler") GodotMethod!(void, long, bool) setEnabler;
		@GodotName("is_enabler_enabled") GodotMethod!(bool, long) isEnablerEnabled;
		@GodotName("_node_removed") GodotMethod!(void, GodotObject) _nodeRemoved;
	}
	bool opEquals(in VisibilityEnabler2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisibilityEnabler2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisibilityEnabler2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisibilityEnabler2D");
		if(constructor is null) return typeof(this).init;
		return cast(VisibilityEnabler2D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Enabler : int
	{
		/**
		This enabler will pause $(D AnimationPlayer) nodes.
		*/
		enablerPauseAnimations = 0,
		/**
		This enabler will freeze $(D RigidBody2D) nodes.
		*/
		enablerFreezeBodies = 1,
		/**
		This enabler will stop $(D Particles2D) nodes.
		*/
		enablerPauseParticles = 2,
		/**
		This enabler will stop the parent's _process function.
		*/
		enablerParentProcess = 3,
		/**
		This enabler will stop the parent's _physics_process function.
		*/
		enablerParentPhysicsProcess = 4,
		/**
		
		*/
		enablerPauseAnimatedSprites = 5,
		/**
		
		*/
		enablerMax = 6,
	}
	/// 
	enum Constants : int
	{
		enablerPauseAnimations = 0,
		enablerFreezeBodies = 1,
		enablerPauseParticles = 2,
		enablerParentProcess = 3,
		enablerParentPhysicsProcess = 4,
		enablerPauseAnimatedSprites = 5,
		enablerMax = 6,
	}
	/**
	
	*/
	void setEnabler(in long enabler, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnabler, _godot_object, enabler, enabled);
	}
	/**
	
	*/
	bool isEnablerEnabled(in long enabler) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEnablerEnabled, _godot_object, enabler);
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
	If `true` $(D AnimationPlayer) nodes will be paused.
	*/
	@property bool pauseAnimations()
	{
		return isEnablerEnabled(0);
	}
	/// ditto
	@property void pauseAnimations(bool v)
	{
		setEnabler(0, v);
	}
	/**
	If `true` $(D RigidBody2D) nodes will be paused.
	*/
	@property bool freezeBodies()
	{
		return isEnablerEnabled(1);
	}
	/// ditto
	@property void freezeBodies(bool v)
	{
		setEnabler(1, v);
	}
	/**
	If `true` $(D Particles2D) nodes will be paused.
	*/
	@property bool pauseParticles()
	{
		return isEnablerEnabled(2);
	}
	/// ditto
	@property void pauseParticles(bool v)
	{
		setEnabler(2, v);
	}
	/**
	If `true` $(D AnimatedSprite) nodes will be paused.
	*/
	@property bool pauseAnimatedSprites()
	{
		return isEnablerEnabled(5);
	}
	/// ditto
	@property void pauseAnimatedSprites(bool v)
	{
		setEnabler(5, v);
	}
	/**
	If `true` the parent's $(D Node._process) will be stopped.
	*/
	@property bool processParent()
	{
		return isEnablerEnabled(3);
	}
	/// ditto
	@property void processParent(bool v)
	{
		setEnabler(3, v);
	}
	/**
	If `true` the parent's $(D Node._physicsProcess) will be stopped.
	*/
	@property bool physicsProcessParent()
	{
		return isEnablerEnabled(4);
	}
	/// ditto
	@property void physicsProcessParent(bool v)
	{
		setEnabler(4, v);
	}
}
