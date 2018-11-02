/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodevectorfunc;
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

*/
@GodotBaseClass struct VisualShaderNodeVectorFunc
{
	enum string _GODOT_internal_name = "VisualShaderNodeVectorFunc";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_function") GodotMethod!(void, long) setFunction;
		@GodotName("get_function") GodotMethod!(VisualShaderNodeVectorFunc.Function) getFunction;
	}
	bool opEquals(in VisualShaderNodeVectorFunc other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeVectorFunc opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualShaderNodeVectorFunc _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeVectorFunc");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeVectorFunc)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Function : int
	{
		/**
		
		*/
		funcNormalize = 0,
		/**
		
		*/
		funcSaturate = 1,
		/**
		
		*/
		funcNegate = 2,
		/**
		
		*/
		funcReciprocal = 3,
		/**
		
		*/
		funcRgb2hsv = 4,
		/**
		
		*/
		funcHsv2rgb = 5,
	}
	/// 
	enum Constants : int
	{
		funcNormalize = 0,
		funcSaturate = 1,
		funcNegate = 2,
		funcReciprocal = 3,
		funcRgb2hsv = 4,
		funcHsv2rgb = 5,
	}
	/**
	
	*/
	void setFunction(in long func)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFunction, _godot_object, func);
	}
	/**
	
	*/
	VisualShaderNodeVectorFunc.Function getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeVectorFunc.Function)(_classBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	@property VisualShaderNodeVectorFunc.Function _function()
	{
		return getFunction();
	}
	/// ditto
	@property void _function(long v)
	{
		setFunction(v);
	}
}
