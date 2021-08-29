/**
Calculates a scalar SmoothStep function within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodescalarsmoothstep;
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
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**
Calculates a scalar SmoothStep function within the visual shader graph.

Translates to `smoothstep(edge0, edge1, x)` in the shader language.
Returns `0.0` if `x` is smaller than `edge0` and `1.0` if `x` is larger than `edge1`. Otherwise the return value is interpolated between `0.0` and `1.0` using Hermite polynomials.
*/
@GodotBaseClass struct VisualShaderNodeScalarSmoothStep
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeScalarSmoothStep";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeScalarSmoothStep other) const
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
	/// Construct a new instance of VisualShaderNodeScalarSmoothStep.
	/// Note: use `memnew!VisualShaderNodeScalarSmoothStep` instead.
	static VisualShaderNodeScalarSmoothStep _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeScalarSmoothStep");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeScalarSmoothStep)(constructor());
	}
	@disable new(size_t s);
}
