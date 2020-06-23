/**
Vertical scroll bar.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.vscrollbar;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.scrollbar;
import godot.range;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Vertical scroll bar.

Vertical version of $(D ScrollBar), which goes from top (min) to bottom (max).
*/
@GodotBaseClass struct VScrollBar
{
	package(godot) enum string _GODOT_internal_name = "VScrollBar";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ ScrollBar _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in VScrollBar other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VScrollBar opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VScrollBar.
	/// Note: use `memnew!VScrollBar` instead.
	static VScrollBar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VScrollBar");
		if(constructor is null) return typeof(this).init;
		return cast(VScrollBar)(constructor());
	}
	@disable new(size_t s);
}