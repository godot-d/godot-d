/**
Flat button helper class.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.toolbutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.button;
/**
Flat button helper class.

This is a helper class to generate a flat $(D Button) (see $(D Button.setFlat)), creating a ToolButton is equivalent to:

---
var btn = Button.new()
btn.set_flat(true)
---
*/
@GodotBaseClass struct ToolButton
{
	static immutable string _GODOT_internal_name = "ToolButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Button _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ToolButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ToolButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ToolButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ToolButton");
		if(constructor is null) return typeof(this).init;
		return cast(ToolButton)(constructor());
	}
}
