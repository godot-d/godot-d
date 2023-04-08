/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visibilityenabler;
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
import godot.visibilitynotifier;
import godot.node;
/**

*/
@GodotBaseClass struct VisibilityEnabler
{
	package(godot) enum string _GODOT_internal_name = "VisibilityEnabler";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisibilityNotifier _GODOT_base; }
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
	pragma(inline, true) bool opEquals(in VisibilityEnabler other) const
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
	/// Construct a new instance of VisibilityEnabler.
	/// Note: use `memnew!VisibilityEnabler` instead.
	static VisibilityEnabler _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisibilityEnabler");
		if(constructor is null) return typeof(this).init;
		return cast(VisibilityEnabler)(constructor());
	}
	/// 
	enum Enabler : int
	{
		/** */
		enablerPauseAnimations = 0,
		/** */
		enablerFreezeBodies = 1,
		/** */
		enablerMax = 2,
	}
	/// 
	enum Constants : int
	{
		enablerPauseAnimations = 0,
		enablerFreezeBodies = 1,
		enablerMax = 2,
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
	@property bool pauseAnimations()
	{
		return isEnablerEnabled(0);
	}
	/// ditto
	@property void pauseAnimations(bool v)
	{
		setEnabler(0, v);
	}
}
