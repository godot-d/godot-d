/**
A boolean uniform to be used within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodebooleanuniform;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernodeuniform;
/**
A boolean uniform to be used within the visual shader graph.

Translated to `uniform bool` in the shader language.
*/
@GodotBaseClass struct VisualShaderNodeBooleanUniform
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeBooleanUniform";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNodeUniform _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeBooleanUniform other) const
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
	/// Construct a new instance of VisualShaderNodeBooleanUniform.
	/// Note: use `memnew!VisualShaderNodeBooleanUniform` instead.
	static VisualShaderNodeBooleanUniform _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeBooleanUniform");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeBooleanUniform)(constructor());
	}
	@disable new(size_t s);
}
