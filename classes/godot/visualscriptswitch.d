/**
Branches program flow based on a given input's value.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptswitch;
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
import godot.resource;
import godot.reference;
/**
Branches program flow based on a given input's value.

Branches the flow based on an input's value. Use $(B Case Count) in the Inspector to set the number of branches and each comparison's optional type.
$(B Input Ports:)
- Sequence: `'input' is`
- Data (variant): `=`
- Data (variant): `=` (optional)
- Data (variant): `input`
$(B Output Ports:)
- Sequence
- Sequence (optional)
- Sequence: `done`
*/
@GodotBaseClass struct VisualScriptSwitch
{
	enum string _GODOT_internal_name = "VisualScriptSwitch";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
	}
	bool opEquals(in VisualScriptSwitch other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptSwitch opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptSwitch _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptSwitch");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptSwitch)(constructor());
	}
	@disable new(size_t s);
}
