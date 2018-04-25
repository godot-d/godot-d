/**
Outputs a reference to the current instance.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptself;
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
Outputs a reference to the current instance.

Provides a reference to the node running the visual script.
$(B Input Ports:)
none
$(B Output Ports:)
- Data (object): `instance`
*/
@GodotBaseClass struct VisualScriptSelf
{
	static immutable string _GODOT_internal_name = "VisualScriptSelf";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptSelf other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptSelf opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptSelf _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptSelf");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptSelf)(constructor());
	}
	@disable new(size_t s);
}
