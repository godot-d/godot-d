/**
Binary choice user interface widget. See also $(D CheckButton).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.checkbox;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.button;
import godot.basebutton;
import godot.control;
/**
Binary choice user interface widget. See also $(D CheckButton).

A checkbox allows the user to make a binary choice (choosing only one of two possible options). It's similar to $(D CheckButton) in functionality, but it has a different appearance. To follow established UX patterns, it's recommended to use CheckBox when toggling it has $(B no) immediate effect on something. For instance, it should be used when toggling it will only do something once a confirmation button is pressed.
See also $(D BaseButton) which contains common properties and methods associated with this node.
*/
@GodotBaseClass struct CheckBox
{
	package(godot) enum string _GODOT_internal_name = "CheckBox";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Button _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in CheckBox other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of CheckBox.
	/// Note: use `memnew!CheckBox` instead.
	static CheckBox _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CheckBox");
		if(constructor is null) return typeof(this).init;
		return cast(CheckBox)(constructor());
	}
	@disable new(size_t s);
}
