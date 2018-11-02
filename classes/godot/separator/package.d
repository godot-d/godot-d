/**
Base class for separators.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.separator;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Base class for separators.

Separator is a $(D Control) used for separating other controls. It's purely a visual decoration. Horizontal ($(D HSeparator)) and Vertical ($(D VSeparator)) versions are available.
*/
@GodotBaseClass struct Separator
{
	enum string _GODOT_internal_name = "Separator";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
	}
	bool opEquals(in Separator other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Separator opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Separator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Separator");
		if(constructor is null) return typeof(this).init;
		return cast(Separator)(constructor());
	}
	@disable new(size_t s);
}
