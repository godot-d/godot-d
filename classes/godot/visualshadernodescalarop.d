/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodescalarop;
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
@GodotBaseClass struct VisualShaderNodeScalarOp
{
	enum string _GODOT_internal_name = "VisualShaderNodeScalarOp";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_operator") GodotMethod!(VisualShaderNodeScalarOp.Operator) getOperator;
		@GodotName("set_operator") GodotMethod!(void, long) setOperator;
	}
	bool opEquals(in VisualShaderNodeScalarOp other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeScalarOp opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualShaderNodeScalarOp _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeScalarOp");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeScalarOp)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Operator : int
	{
		/**
		
		*/
		opAdd = 0,
		/**
		
		*/
		opSub = 1,
		/**
		
		*/
		opMul = 2,
		/**
		
		*/
		opDiv = 3,
		/**
		
		*/
		opMod = 4,
		/**
		
		*/
		opPow = 5,
		/**
		
		*/
		opMax = 6,
		/**
		
		*/
		opMin = 7,
		/**
		
		*/
		opAtan2 = 8,
		/**
		
		*/
		opStep = 9,
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
		opAtan2 = 8,
		opStep = 9,
	}
	/**
	
	*/
	VisualShaderNodeScalarOp.Operator getOperator() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeScalarOp.Operator)(_classBinding.getOperator, _godot_object);
	}
	/**
	
	*/
	void setOperator(in long op)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOperator, _godot_object, op);
	}
	/**
	
	*/
	@property VisualShaderNodeScalarOp.Operator operator()
	{
		return getOperator();
	}
	/// ditto
	@property void operator(long v)
	{
		setOperator(v);
	}
}
