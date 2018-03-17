/**
Executes a series of Sequence ports.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptsequence;
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
Executes a series of Sequence ports.

Steps through a series of one or more output Sequence ports. The `current` data port outputs the currently executing item.
$(B Input Ports:)
- Sequence: `in order`
$(B Output Ports:)
- Sequence: `1`
- Sequence: `2 - n` (optional)
- Data (int): `current`
*/
@GodotBaseClass struct VisualScriptSequence
{
	static immutable string _GODOT_internal_name = "VisualScriptSequence";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptSequence other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptSequence opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptSequence _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptSequence");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptSequence)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_steps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_steps") = _GODOT_set_steps;
	/**
	
	*/
	void setSteps(in long steps)
	{
		_GODOT_set_steps.bind("VisualScriptSequence", "set_steps");
		ptrcall!(void)(_GODOT_set_steps, _godot_object, steps);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_steps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_steps") = _GODOT_get_steps;
	/**
	
	*/
	long getSteps() const
	{
		_GODOT_get_steps.bind("VisualScriptSequence", "get_steps");
		return ptrcall!(long)(_GODOT_get_steps, _godot_object);
	}
	/**
	The number of steps in the sequence.
	*/
	@property long steps()
	{
		return getSteps();
	}
	/// ditto
	@property void steps(long v)
	{
		setSteps(v);
	}
}
