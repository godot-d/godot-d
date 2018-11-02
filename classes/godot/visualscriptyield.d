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
	enum string _GODOT_internal_name = "VisualScriptYield";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_yield_mode") GodotMethod!(void, long) setYieldMode;
		@GodotName("get_yield_mode") GodotMethod!(VisualScriptYield.YieldMode) getYieldMode;
		@GodotName("set_wait_time") GodotMethod!(void, double) setWaitTime;
		@GodotName("get_wait_time") GodotMethod!(double) getWaitTime;
	}
	bool opEquals(in VisualScriptYield other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptYield opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setYieldMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setYieldMode, _godot_object, mode);
	}
	/**
	
	*/
	VisualScriptYield.YieldMode getYieldMode()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptYield.YieldMode)(_classBinding.getYieldMode, _godot_object);
	}
	/**
	
	*/
	void setWaitTime(in double sec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWaitTime, _godot_object, sec);
	}
	/**
	
	*/
	double getWaitTime()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getWaitTime, _godot_object);
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
