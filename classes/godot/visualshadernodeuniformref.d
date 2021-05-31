/**
A reference to an existing $(D VisualShaderNodeUniform).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodeuniformref;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
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
A reference to an existing $(D VisualShaderNodeUniform).

Creating a reference to a $(D VisualShaderNodeUniform) allows you to reuse this uniform in different shaders or shader stages easily.
*/
@GodotBaseClass struct VisualShaderNodeUniformRef
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeUniformRef";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_uniform_name") GodotMethod!(String) getUniformName;
		@GodotName("set_uniform_name") GodotMethod!(void, String) setUniformName;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeUniformRef other) const
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
	/// Construct a new instance of VisualShaderNodeUniformRef.
	/// Note: use `memnew!VisualShaderNodeUniformRef` instead.
	static VisualShaderNodeUniformRef _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeUniformRef");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeUniformRef)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String getUniformName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getUniformName, _godot_object);
	}
	/**
	
	*/
	void setUniformName(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUniformName, _godot_object, name);
	}
	/**
	The name of the uniform which this reference points to.
	*/
	@property String uniformName()
	{
		return getUniformName();
	}
	/// ditto
	@property void uniformName(String v)
	{
		setUniformName(v);
	}
}
