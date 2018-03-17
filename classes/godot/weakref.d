/**
Holds an $(D GodotObject), but does not contribute to the reference count if the object is a reference.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.weakref;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
Holds an $(D GodotObject), but does not contribute to the reference count if the object is a reference.

A weakref can hold a $(D Reference), without contributing to the reference counter. A weakref can be created from an $(D GodotObject) using $(D @GDScript.weakref). If this object is not a reference, weakref still works, however, it does not have any effect on the object. Weakrefs are useful in cases where multiple classes have variables that refer to each other. Without weakrefs, using these classes could lead to memory leaks, since both references keep each other from being released. Making part of the variables a weakref can prevent this cyclic dependency, and allows the references to be released.
*/
@GodotBaseClass struct WeakRef
{
	static immutable string _GODOT_internal_name = "WeakRef";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in WeakRef other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WeakRef opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WeakRef _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WeakRef");
		if(constructor is null) return typeof(this).init;
		return cast(WeakRef)(constructor());
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_ref;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ref") = _GODOT_get_ref;
	/**
	Returns the $(D GodotObject) this weakref is referring to.
	*/
	Variant getRef() const
	{
		_GODOT_get_ref.bind("WeakRef", "get_ref");
		return ptrcall!(Variant)(_GODOT_get_ref, _godot_object);
	}
}
