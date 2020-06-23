/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptyield;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct VisualScriptYield
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptYield";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_wait_time") GodotMethod!(double) getWaitTime;
		@GodotName("get_yield_mode") GodotMethod!(VisualScriptYield.YieldMode) getYieldMode;
		@GodotName("set_wait_time") GodotMethod!(void, double) setWaitTime;
		@GodotName("set_yield_mode") GodotMethod!(void, long) setYieldMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptYield other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualScriptYield opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualScriptYield.
	/// Note: use `memnew!VisualScriptYield` instead.
	static VisualScriptYield _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptYield");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptYield)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum YieldMode : int
	{
		/**
		
		*/
		yieldFrame = 1,
		/**
		
		*/
		yieldPhysicsFrame = 2,
		/**
		
		*/
		yieldWait = 3,
	}
	/// 
	enum Constants : int
	{
		yieldFrame = 1,
		yieldPhysicsFrame = 2,
		yieldWait = 3,
	}
	/**
	
	*/
	double getWaitTime()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getWaitTime, _godot_object);
	}
	/**
	
	*/
	VisualScriptYield.YieldMode getYieldMode()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptYield.YieldMode)(GDNativeClassBinding.getYieldMode, _godot_object);
	}
	/**
	
	*/
	void setWaitTime(in double sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWaitTime, _godot_object, sec);
	}
	/**
	
	*/
	void setYieldMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setYieldMode, _godot_object, mode);
	}
	/**
	
	*/
	@property VisualScriptYield.YieldMode mode()
	{
		return getYieldMode();
	}
	/// ditto
	@property void mode(long v)
	{
		setYieldMode(v);
	}
	/**
	
	*/
	@property double waitTime()
	{
		return getWaitTime();
	}
	/// ditto
	@property void waitTime(double v)
	{
		setWaitTime(v);
	}
}
