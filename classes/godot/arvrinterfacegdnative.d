/**
GDNative wrapper for an ARVR interface

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvrinterfacegdnative;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.arvrinterface;
import godot.reference;
/**
GDNative wrapper for an ARVR interface

This is a wrapper class for GDNative implementations of the ARVR interface. To use a GDNative ARVR interface simply instantiate this object and set your GDNative library containing the ARVR interface implementation.
*/
@GodotBaseClass struct ARVRInterfaceGDNative
{
	enum string _GODOT_internal_name = "ARVRInterfaceGDNative";
public:
@nogc nothrow:
	union { godot_object _godot_object; ARVRInterface _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
	}
	bool opEquals(in ARVRInterfaceGDNative other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRInterfaceGDNative opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRInterfaceGDNative _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ARVRInterfaceGDNative");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRInterfaceGDNative)(constructor());
	}
	@disable new(size_t s);
}
