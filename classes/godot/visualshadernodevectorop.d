/**
A vector operator to be used within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodevectorop;
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
A vector operator to be used within the visual shader graph.

A visual shader node for use of vector operators. Operates on vector `a` and vector `b`.
*/
@GodotBaseClass struct VisualShaderNodeVectorOp
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeVectorOp";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_operator") GodotMethod!(VisualShaderNodeVectorOp.Operator) getOperator;
		@GodotName("set_operator") GodotMethod!(void, long) setOperator;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeVectorOp other) const
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
	/// Construct a new instance of VisualShaderNodeVectorOp.
	/// Note: use `memnew!VisualShaderNodeVectorOp` instead.
	static VisualShaderNodeVectorOp _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeVectorOp");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeVectorOp)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Operator : int
	{
		/**
		Adds two vectors.
		*/
		opAdd = 0,
		/**
		Subtracts a vector from a vector.
		*/
		opSub = 1,
		/**
		Multiplies two vectors.
		*/
		opMul = 2,
		/**
		Divides vector by vector.
		*/
		opDiv = 3,
		/**
		Returns the remainder of the two vectors.
		*/
		opMod = 4,
		/**
		Returns the value of the first parameter raised to the power of the second, for each component of the vectors.
		*/
		opPow = 5,
		/**
		Returns the greater of two values, for each component of the vectors.
		*/
		opMax = 6,
		/**
		Returns the lesser of two values, for each component of the vectors.
		*/
		opMin = 7,
		/**
		Calculates the cross product of two vectors.
		*/
		opCross = 8,
		/**
		Returns the arc-tangent of the parameters.
		*/
		opAtan2 = 9,
		/**
		Returns the vector that points in the direction of reflection. `a` is incident vector and `b` is the normal vector.
		*/
		opReflect = 10,
		/**
		Vector step operator. Returns `0.0` if `a` is smaller than `b` and `1.0` otherwise.
		*/
		opStep = 11,
	}
	/// 
	enum Constants : int
	{
		opAdd = 0,
		opSub = 1,
		opMul = 2,
		opDiv = 3,
		opMod = 4,
		opPow = 5,
		opMax = 6,
		opMin = 7,
		opCross = 8,
		opAtan2 = 9,
		opReflect = 10,
		opStep = 11,
	}
	/**
	
	*/
	VisualShaderNodeVectorOp.Operator getOperator() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeVectorOp.Operator)(GDNativeClassBinding.getOperator, _godot_object);
	}
	/**
	
	*/
	void setOperator(in long op)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOperator, _godot_object, op);
	}
	/**
	The operator to be used. See $(D operator) for options.
	*/
	@property VisualShaderNodeVectorOp.Operator operator()
	{
		return getOperator();
	}
	/// ditto
	@property void operator(long v)
	{
		setOperator(v);
	}
}
