/**
Calculates an outer product of two vectors within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodeouterproduct;
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
Calculates an outer product of two vectors within the visual shader graph.

`OuterProduct` treats the first parameter `c` as a column vector (matrix with one column) and the second parameter `r` as a row vector (matrix with one row) and does a linear algebraic matrix multiply `c * r`, yielding a matrix whose number of rows is the number of components in `c` and whose number of columns is the number of components in `r`.
*/
@GodotBaseClass struct VisualShaderNodeOuterProduct
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeOuterProduct";
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
	pragma(inline, true) bool opEquals(in VisualShaderNodeOuterProduct other) const
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
	/// Construct a new instance of VisualShaderNodeOuterProduct.
	/// Note: use `memnew!VisualShaderNodeOuterProduct` instead.
	static VisualShaderNodeOuterProduct _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeOuterProduct");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeOuterProduct)(constructor());
	}
	@disable new(size_t s);
}
