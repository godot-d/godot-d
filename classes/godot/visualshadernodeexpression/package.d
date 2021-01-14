/**
A custom visual shader graph expression written in Godot Shading Language.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodeexpression;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernodegroupbase;
/**
A custom visual shader graph expression written in Godot Shading Language.

Custom Godot Shading Language expression, with a custom amount of input and output ports.
The provided code is directly injected into the graph's matching shader function (`vertex`, `fragment`, or `light`), so it cannot be used to to declare functions, varyings, uniforms, or global constants. See $(D VisualShaderNodeGlobalExpression) for such global definitions.
*/
@GodotBaseClass struct VisualShaderNodeExpression
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeExpression";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNodeGroupBase _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_expression") GodotMethod!(String) getExpression;
		@GodotName("set_expression") GodotMethod!(void, String) setExpression;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeExpression other) const
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
	/// Construct a new instance of VisualShaderNodeExpression.
	/// Note: use `memnew!VisualShaderNodeExpression` instead.
	static VisualShaderNodeExpression _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeExpression");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeExpression)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String getExpression() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getExpression, _godot_object);
	}
	/**
	
	*/
	void setExpression(in String expression)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpression, _godot_object, expression);
	}
	/**
	An expression in Godot Shading Language, which will be injected at the start of the graph's matching shader function (`vertex`, `fragment`, or `light`), and thus cannot be used to declare functions, varyings, uniforms, or global constants.
	*/
	@property String expression()
	{
		return getExpression();
	}
	/// ditto
	@property void expression(String v)
	{
		setExpression(v);
	}
}
