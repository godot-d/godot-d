/**
Simple margin container.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.margincontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.container;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Simple margin container.

Adds a top, left, bottom, and right margin to all $(D Control) nodes that are direct children of the container. To control the $(D MarginContainer)'s margin, use the `margin_*` theme properties listed below.
$(B Note:) Be careful, $(D Control) margin values are different than the constant margin values. If you want to change the custom margin values of the $(D MarginContainer) by code, you should use the following examples:


var margin_value = 100
set("custom_constants/margin_top", margin_value)
set("custom_constants/margin_left", margin_value)
set("custom_constants/margin_bottom", margin_value)
set("custom_constants/margin_right", margin_value)


*/
@GodotBaseClass struct MarginContainer
{
	package(godot) enum string _GODOT_internal_name = "MarginContainer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in MarginContainer other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) MarginContainer opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of MarginContainer.
	/// Note: use `memnew!MarginContainer` instead.
	static MarginContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MarginContainer");
		if(constructor is null) return typeof(this).init;
		return cast(MarginContainer)(constructor());
	}
	@disable new(size_t s);
}
