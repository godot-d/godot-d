/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodescalarconstant;
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

*/
@GodotBaseClass struct VisualShaderNodeScalarConstant
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeScalarConstant";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_constant") GodotMethod!(double) getConstant;
		@GodotName("set_constant") GodotMethod!(void, double) setConstant;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeScalarConstant other) const
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
	/// Construct a new instance of VisualShaderNodeScalarConstant.
	/// Note: use `memnew!VisualShaderNodeScalarConstant` instead.
	static VisualShaderNodeScalarConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeScalarConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeScalarConstant)(constructor());
	}
	/**
	
	*/
	double getConstant() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getConstant, _godot_object);
	}
	/**
	
	*/
	void setConstant(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConstant, _godot_object, value);
	}
	/**
	
	*/
	@property double constant()
	{
		return getConstant();
	}
	/// ditto
	@property void constant(double v)
	{
		setConstant(v);
	}
}
