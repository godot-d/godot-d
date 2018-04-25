/**
Base class for anything that keeps a reference count.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.reference;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
/**
Base class for anything that keeps a reference count.

Resource and many other helper objects inherit this. References keep an internal reference counter so they are only released when no longer in use.
*/
@GodotBaseClass struct Reference
{
	static immutable string _GODOT_internal_name = "Reference";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Reference other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Reference opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Reference _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Reference");
		if(constructor is null) return typeof(this).init;
		return cast(Reference)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(bool) _GODOT_init_ref;
	package(godot) alias _GODOT_methodBindInfo(string name : "init_ref") = _GODOT_init_ref;
	/**
	
	*/
	bool initRef()
	{
		_GODOT_init_ref.bind("Reference", "init_ref");
		return ptrcall!(bool)(_GODOT_init_ref, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_reference;
	package(godot) alias _GODOT_methodBindInfo(string name : "reference") = _GODOT_reference;
	/**
	Increase the internal reference counter. Use this only if you really know what you are doing.
	*/
	bool reference()
	{
		_GODOT_reference.bind("Reference", "reference");
		return ptrcall!(bool)(_GODOT_reference, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_unreference;
	package(godot) alias _GODOT_methodBindInfo(string name : "unreference") = _GODOT_unreference;
	/**
	Decrease the internal reference counter. Use this only if you really know what you are doing.
	*/
	bool unreference()
	{
		_GODOT_unreference.bind("Reference", "unreference");
		return ptrcall!(bool)(_GODOT_unreference, _godot_object);
	}
}
