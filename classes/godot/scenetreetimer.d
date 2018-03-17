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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**

*/
@GodotBaseClass struct SceneTreeTimer
{
	static immutable string _GODOT_internal_name = "SceneTreeTimer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, double) _GODOT_set_time_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_time_left") = _GODOT_set_time_left;
	/**
	
	*/
	void setTimeLeft(in double time)
	{
		_GODOT_set_time_left.bind("SceneTreeTimer", "set_time_left");
		ptrcall!(void)(_GODOT_set_time_left, _godot_object, time);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_time_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time_left") = _GODOT_get_time_left;
	/**
	
	*/
	double getTimeLeft() const
	{
		_GODOT_get_time_left.bind("SceneTreeTimer", "get_time_left");
		return ptrcall!(double)(_GODOT_get_time_left, _godot_object);
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
