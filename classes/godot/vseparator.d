/**
Vertical version of $(D Separator).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.vseparator;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.separator;
/**
Vertical version of $(D Separator).

It is used to separate objects horizontally, though (but it looks vertical!).
*/
@GodotBaseClass struct VSeparator
{
	static immutable string _GODOT_internal_name = "VSeparator";
public:
@nogc nothrow:
	union { godot_object _godot_object; Separator _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VSeparator other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VSeparator opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VSeparator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VSeparator");
		if(constructor is null) return typeof(this).init;
		return cast(VSeparator)(constructor());
	}
}
