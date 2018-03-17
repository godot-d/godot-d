/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventmagnifygesture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputeventgesture;
/**

*/
@GodotBaseClass struct InputEventMagnifyGesture
{
	static immutable string _GODOT_internal_name = "InputEventMagnifyGesture";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEventGesture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InputEventMagnifyGesture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventMagnifyGesture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventMagnifyGesture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventMagnifyGesture");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventMagnifyGesture)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_factor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_factor") = _GODOT_set_factor;
	/**
	
	*/
	void setFactor(in double factor)
	{
		_GODOT_set_factor.bind("InputEventMagnifyGesture", "set_factor");
		ptrcall!(void)(_GODOT_set_factor, _godot_object, factor);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_factor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_factor") = _GODOT_get_factor;
	/**
	
	*/
	double getFactor() const
	{
		_GODOT_get_factor.bind("InputEventMagnifyGesture", "get_factor");
		return ptrcall!(double)(_GODOT_get_factor, _godot_object);
	}
	/**
	
	*/
	@property double factor()
	{
		return getFactor();
	}
	/// ditto
	@property void factor(double v)
	{
		setFactor(v);
	}
}
