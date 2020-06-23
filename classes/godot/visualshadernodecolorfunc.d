/**
A $(D Color) function to be used within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodecolorfunc;
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
A $(D Color) function to be used within the visual shader graph.

Accept a $(D Color) to the input port and transform it according to $(D _function).
*/
@GodotBaseClass struct VisualShaderNodeColorFunc
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeColorFunc";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_function") GodotMethod!(VisualShaderNodeColorFunc.Function) getFunction;
		@GodotName("set_function") GodotMethod!(void, long) setFunction;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeColorFunc other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualShaderNodeColorFunc opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualShaderNodeColorFunc.
	/// Note: use `memnew!VisualShaderNodeColorFunc` instead.
	static VisualShaderNodeColorFunc _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeColorFunc");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeColorFunc)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Function : int
	{
		/**
		Converts the color to grayscale using the following formula:
		
		
		vec3 c = input;
		float max1 = max(c.r, c.g);
		float max2 = max(max1, c.b);
		float max3 = max(max1, max2);
		return vec3(max3, max3, max3);
		
		
		*/
		funcGrayscale = 0,
		/**
		Applies sepia tone effect using the following formula:
		
		
		vec3 c = input;
		float r = (c.r * 0.393) + (c.g * 0.769) + (c.b * 0.189);
		float g = (c.r * 0.349) + (c.g * 0.686) + (c.b * 0.168);
		float b = (c.r * 0.272) + (c.g * 0.534) + (c.b * 0.131);
		return vec3(r, g, b);
		
		
		*/
		funcSepia = 1,
	}
	/// 
	enum Constants : int
	{
		funcGrayscale = 0,
		funcSepia = 1,
	}
	/**
	
	*/
	VisualShaderNodeColorFunc.Function getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeColorFunc.Function)(GDNativeClassBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	void setFunction(in long func)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFunction, _godot_object, func);
	}
	/**
	A function to be applied to the input color. See $(D _function) for options.
	*/
	@property VisualShaderNodeColorFunc.Function _function()
	{
		return getFunction();
	}
	/// ditto
	@property void _function(long v)
	{
		setFunction(v);
	}
}
