/**
A $(D Color) operator to be used within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodecolorop;
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
A $(D Color) operator to be used within the visual shader graph.

Applies $(D operator) to two color inputs.
*/
@GodotBaseClass struct VisualShaderNodeColorOp
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeColorOp";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_operator") GodotMethod!(VisualShaderNodeColorOp.Operator) getOperator;
		@GodotName("set_operator") GodotMethod!(void, long) setOperator;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeColorOp other) const
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
	/// Construct a new instance of VisualShaderNodeColorOp.
	/// Note: use `memnew!VisualShaderNodeColorOp` instead.
	static VisualShaderNodeColorOp _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeColorOp");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeColorOp)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Operator : int
	{
		/**
		Produce a screen effect with the following formula:
		
		
		result = vec3(1.0) - (vec3(1.0) - a) * (vec3(1.0) - b);
		
		
		*/
		opScreen = 0,
		/**
		Produce a difference effect with the following formula:
		
		
		result = abs(a - b);
		
		
		*/
		opDifference = 1,
		/**
		Produce a darken effect with the following formula:
		
		
		result = min(a, b);
		
		
		*/
		opDarken = 2,
		/**
		Produce a lighten effect with the following formula:
		
		
		result = max(a, b);
		
		
		*/
		opLighten = 3,
		/**
		Produce an overlay effect with the following formula:
		
		
		for (int i = 0; i &lt; 3; i++) {
		    float base = a$(D i);
		    float blend = b$(D i);
		    if (base &lt; 0.5) {
		        result$(D i) = 2.0 * base * blend;
		    } else {
		        result$(D i) = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
		    }
		}
		
		
		*/
		opOverlay = 4,
		/**
		Produce a dodge effect with the following formula:
		
		
		result = a / (vec3(1.0) - b);
		
		
		*/
		opDodge = 5,
		/**
		Produce a burn effect with the following formula:
		
		
		result = vec3(1.0) - (vec3(1.0) - a) / b;
		
		
		*/
		opBurn = 6,
		/**
		Produce a soft light effect with the following formula:
		
		
		for (int i = 0; i &lt; 3; i++) {
		    float base = a$(D i);
		    float blend = b$(D i);
		    if (base &lt; 0.5) {
		        result$(D i) = base * (blend + 0.5);
		    } else {
		        result$(D i) = 1.0 - (1.0 - base) * (1.0 - (blend - 0.5));
		    }
		}
		
		
		*/
		opSoftLight = 7,
		/**
		Produce a hard light effect with the following formula:
		
		
		for (int i = 0; i &lt; 3; i++) {
		    float base = a$(D i);
		    float blend = b$(D i);
		    if (base &lt; 0.5) {
		        result$(D i) = base * (2.0 * blend);
		    } else {
		        result$(D i) = 1.0 - (1.0 - base) * (1.0 - 2.0 * (blend - 0.5));
		    }
		}
		
		
		*/
		opHardLight = 8,
	}
	/// 
	enum Constants : int
	{
		opScreen = 0,
		opDifference = 1,
		opDarken = 2,
		opLighten = 3,
		opOverlay = 4,
		opDodge = 5,
		opBurn = 6,
		opSoftLight = 7,
		opHardLight = 8,
	}
	/**
	
	*/
	VisualShaderNodeColorOp.Operator getOperator() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeColorOp.Operator)(GDNativeClassBinding.getOperator, _godot_object);
	}
	/**
	
	*/
	void setOperator(in long op)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOperator, _godot_object, op);
	}
	/**
	An operator to be applied to the inputs. See $(D operator) for options.
	*/
	@property VisualShaderNodeColorOp.Operator operator()
	{
		return getOperator();
	}
	/// ditto
	@property void operator(long v)
	{
		setOperator(v);
	}
}
