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
/**

*/
@GodotBaseClass struct VisualScriptYield
{
	static immutable string _GODOT_internal_name = "VisualScriptYield";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, long) _GODOT_set_yield_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_yield_mode") = _GODOT_set_yield_mode;
	/**
	
	*/
	void setYieldMode(in long mode)
	{
		_GODOT_set_yield_mode.bind("VisualScriptYield", "set_yield_mode");
		ptrcall!(void)(_GODOT_set_yield_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(VisualScriptYield.YieldMode) _GODOT_get_yield_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_yield_mode") = _GODOT_get_yield_mode;
	/**
	
	*/
	VisualScriptYield.YieldMode getYieldMode()
	{
		_GODOT_get_yield_mode.bind("VisualScriptYield", "get_yield_mode");
		return ptrcall!(VisualScriptYield.YieldMode)(_GODOT_get_yield_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_wait_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_wait_time") = _GODOT_set_wait_time;
	/**
	
	*/
	void setWaitTime(in double sec)
	{
		_GODOT_set_wait_time.bind("VisualScriptYield", "set_wait_time");
		ptrcall!(void)(_GODOT_set_wait_time, _godot_object, sec);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_wait_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_wait_time") = _GODOT_get_wait_time;
	/**
	
	*/
	double getWaitTime()
	{
		_GODOT_get_wait_time.bind("VisualScriptYield", "get_wait_time");
		return ptrcall!(double)(_GODOT_get_wait_time, _godot_object);
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
