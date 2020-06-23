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
	package(godot) enum string _GODOT_internal_name = "WeakRef";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_ref") GodotMethod!(Variant) getRef;
	}
	/// 
	pragma(inline, true) bool opEquals(in WeakRef other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) WeakRef opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of WeakRef.
	/// Note: use `memnew!WeakRef` instead.
	static WeakRef _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WeakRef");
		if(constructor is null) return typeof(this).init;
		return cast(WeakRef)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the $(D GodotObject) this weakref is referring to.
	*/
	Variant getRef() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getRef, _godot_object);
	}
}
