/**
A $(D Transform) constant for use within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodetransformconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**
A $(D Transform) constant for use within the visual shader graph.

A constant $(D Transform), which can be used as an input node.
*/
@GodotBaseClass struct VisualShaderNodeTransformConstant
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeTransformConstant";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_constant") GodotMethod!(Transform) getConstant;
		@GodotName("set_constant") GodotMethod!(void, Transform) setConstant;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeTransformConstant other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualShaderNodeTransformConstant opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualShaderNodeTransformConstant.
	/// Note: use `memnew!VisualShaderNodeTransformConstant` instead.
	static VisualShaderNodeTransformConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeTransformConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeTransformConstant)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Transform getConstant() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getConstant, _godot_object);
	}
	/**
	
	*/
	void setConstant(in Transform value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConstant, _godot_object, value);
	}
	/**
	A $(D Transform) constant which represents the state of this node.
	*/
	@property Transform constant()
	{
		return getConstant();
	}
	/// ditto
	@property void constant(Transform v)
	{
		setConstant(v);
	}
}