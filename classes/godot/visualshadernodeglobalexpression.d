/**
A custom global visual shader graph expression written in Godot Shading Language.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodeglobalexpression;
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
import godot.visualshadernodeexpression;
import godot.visualshadernodegroupbase;
/**
A custom global visual shader graph expression written in Godot Shading Language.

Custom Godot Shader Language expression, which is placed on top of the generated shader. You can place various function definitions inside to call later in $(D VisualShaderNodeExpression)s (which are injected in the main shader functions). You can also declare varyings, uniforms and global constants.
*/
@GodotBaseClass struct VisualShaderNodeGlobalExpression
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeGlobalExpression";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNodeExpression _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeGlobalExpression other) const
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
	/// Construct a new instance of VisualShaderNodeGlobalExpression.
	/// Note: use `memnew!VisualShaderNodeGlobalExpression` instead.
	static VisualShaderNodeGlobalExpression _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeGlobalExpression");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeGlobalExpression)(constructor());
	}
	@disable new(size_t s);
}
