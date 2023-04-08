/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visibilityenabler2d;
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
import godot.visibilitynotifier2d;
import godot.node;
/**

*/
@GodotBaseClass struct VisibilityEnabler2D
{
	package(godot) enum string _GODOT_internal_name = "VisibilityEnabler2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisibilityNotifier2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_node_removed") GodotMethod!(void, Node) _nodeRemoved;
		@GodotName("is_enabler_enabled") GodotMethod!(bool, long) isEnablerEnabled;
		@GodotName("set_enabler") GodotMethod!(void, long, bool) setEnabler;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisibilityEnabler2D other) const
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
	/// Construct a new instance of VisibilityEnabler2D.
	/// Note: use `memnew!VisibilityEnabler2D` instead.
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
		/** */
		enablerPauseAnimations = 0,
		/** */
		enablerFreezeBodies = 1,
		/** */
		enablerPauseParticles = 2,
		/** */
		enablerParentProcess = 3,
		/** */
		enablerParentPhysicsProcess = 4,
		/** */
		enablerPauseAnimatedSprites = 5,
		/** */
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
	void _nodeRemoved(Node arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool isEnablerEnabled(in long enabler) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEnablerEnabled, _godot_object, enabler);
	}
	/**
	
	*/
	void setEnabler(in long enabler, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnabler, _godot_object, enabler, enabled);
	}
	/**
	
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
	/**
	
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
}
