/**
Class for displaying popups with a panel background.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.popuppanel;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.popup;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Class for displaying popups with a panel background.

In some cases it might be simpler to use than $(D Popup), since it provides a configurable background. If you are making windows, better check $(D WindowDialog).
*/
@GodotBaseClass struct PopupPanel
{
	package(godot) enum string _GODOT_internal_name = "PopupPanel";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Popup _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in PopupPanel other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) PopupPanel opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of PopupPanel.
	/// Note: use `memnew!PopupPanel` instead.
	static PopupPanel _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PopupPanel");
		if(constructor is null) return typeof(this).init;
		return cast(PopupPanel)(constructor());
	}
	@disable new(size_t s);
}