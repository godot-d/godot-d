/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodecolorop;
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
@GodotBaseClass struct VisualShaderNodeColorOp
{
	enum string _GODOT_internal_name = "VisualShaderNodeColorOp";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_operator") GodotMethod!(void, long) setOperator;
		@GodotName("get_operator") GodotMethod!(VisualShaderNodeColorOp.Operator) getOperator;
	}
	bool opEquals(in VisualShaderNodeColorOp other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeColorOp opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		
		*/
		opScreen = 0,
		/**
		
		*/
		opDifference = 1,
		/**
		
		*/
		opDarken = 2,
		/**
		
		*/
		opLighten = 3,
		/**
		
		*/
		opOverlay = 4,
		/**
		
		*/
		opDodge = 5,
		/**
		
		*/
		opBurn = 6,
		/**
		
		*/
		opSoftLight = 7,
		/**
		
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
	void setOperator(in long op)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOperator, _godot_object, op);
	}
	/**
	
	*/
	VisualShaderNodeColorOp.Operator getOperator() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeColorOp.Operator)(_classBinding.getOperator, _godot_object);
	}
	/**
	
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
