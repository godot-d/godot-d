/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.scenetreetimer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.reference;
/**

*/
@GodotBaseClass struct SceneTreeTimer
{
	package(godot) enum string _GODOT_internal_name = "SceneTreeTimer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_time_left") GodotMethod!(double) getTimeLeft;
		@GodotName("set_time_left") GodotMethod!(void, double) setTimeLeft;
	}
	/// 
	pragma(inline, true) bool opEquals(in SceneTreeTimer other) const
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
	/// Construct a new instance of SceneTreeTimer.
	/// Note: use `memnew!SceneTreeTimer` instead.
	static SceneTreeTimer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SceneTreeTimer");
		if(constructor is null) return typeof(this).init;
		return cast(SceneTreeTimer)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getTimeLeft() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTimeLeft, _godot_object);
	}
	/**
	
	*/
	void setTimeLeft(in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTimeLeft, _godot_object, time);
	}
	/**
	
	*/
	@property double timeLeft()
	{
		return getTimeLeft();
	}
	/// ditto
	@property void timeLeft(double v)
	{
		setTimeLeft(v);
	}
}
