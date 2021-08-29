/**
A Visual Script node which branches the flow.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptcondition;
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
import godot.visualscriptnode;
/**
A Visual Script node which branches the flow.

A Visual Script node that checks a $(D bool) input port. If `true`, it will exit via the "true" sequence port. If `false`, it will exit via the "false" sequence port. After exiting either, it exits via the "done" port. Sequence ports may be left disconnected.
$(B Input Ports:)
- Sequence: `if (cond) is`
- Data (boolean): `cond`
$(B Output Ports:)
- Sequence: `true`
- Sequence: `false`
- Sequence: `done`
*/
@GodotBaseClass struct VisualScriptCondition
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptCondition";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptCondition other) const
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
	/// Construct a new instance of VisualScriptCondition.
	/// Note: use `memnew!VisualScriptCondition` instead.
	static VisualScriptCondition _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptCondition");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptCondition)(constructor());
	}
	@disable new(size_t s);
}
