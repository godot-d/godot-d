/**
Performs a uniform texture lookup with triplanar within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodetextureuniformtriplanar;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernodetextureuniform;
import godot.visualshadernodeuniform;
/**
Performs a uniform texture lookup with triplanar within the visual shader graph.

Performs a lookup operation on the texture provided as a uniform for the shader, with support for triplanar mapping.
*/
@GodotBaseClass struct VisualShaderNodeTextureUniformTriplanar
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeTextureUniformTriplanar";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNodeTextureUniform _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeTextureUniformTriplanar other) const
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
	/// Construct a new instance of VisualShaderNodeTextureUniformTriplanar.
	/// Note: use `memnew!VisualShaderNodeTextureUniformTriplanar` instead.
	static VisualShaderNodeTextureUniformTriplanar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeTextureUniformTriplanar");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeTextureUniformTriplanar)(constructor());
	}
	@disable new(size_t s);
}
