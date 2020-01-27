/**
One-shot timer.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.scenetreetimer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**
One-shot timer.

A one-shot timer managed by the scene tree, which emits $(D timeout) on completion. See also $(D SceneTree.createTimer).
As opposed to $(D Timer), it does not require the instantiation of a node. Commonly used to create a one-shot delay timer as in the following example:


func some_function():
    print("Timer started.")
    yield(get_tree().create_timer(1.0), "timeout")
    print("Timer ended.")


*/
@GodotBaseClass struct SceneTreeTimer
{
	enum string _GODOT_internal_name = "SceneTreeTimer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_time_left") GodotMethod!(double) getTimeLeft;
		@GodotName("set_time_left") GodotMethod!(void, double) setTimeLeft;
	}
	bool opEquals(in SceneTreeTimer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SceneTreeTimer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		return ptrcall!(double)(_classBinding.getTimeLeft, _godot_object);
	}
	/**
	
	*/
	void setTimeLeft(in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTimeLeft, _godot_object, time);
	}
	/**
	The time remaining.
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
