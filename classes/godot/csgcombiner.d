/**
A CSG node that allows you to combine other CSG modifiers.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgcombiner;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.csgshape;
/**
A CSG node that allows you to combine other CSG modifiers.

For complex arrangements of shapes, it is sometimes needed to add structure to your CSG nodes. The CSGCombiner node allows you to create this structure. The node encapsulates the result of the CSG operations of its children. In this way, it is possible to do operations on one set of shapes that are children of one CSGCombiner node, and a set of separate operations on a second set of shapes that are children of a second CSGCombiner node, and then do an operation that takes the two end results as its input to create the final shape.
*/
@GodotBaseClass struct CSGCombiner
{
	package(godot) enum string _GODOT_internal_name = "CSGCombiner";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CSGShape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in CSGCombiner other) const
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
	/// Construct a new instance of CSGCombiner.
	/// Note: use `memnew!CSGCombiner` instead.
	static CSGCombiner _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CSGCombiner");
		if(constructor is null) return typeof(this).init;
		return cast(CSGCombiner)(constructor());
	}
	@disable new(size_t s);
}
