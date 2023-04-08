/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.conetwistjoint;
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
import godot.joint;
/**

*/
@GodotBaseClass struct ConeTwistJoint
{
	package(godot) enum string _GODOT_internal_name = "ConeTwistJoint";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Joint _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_swing_span") GodotMethod!(double) _getSwingSpan;
		@GodotName("_get_twist_span") GodotMethod!(double) _getTwistSpan;
		@GodotName("_set_swing_span") GodotMethod!(void, double) _setSwingSpan;
		@GodotName("_set_twist_span") GodotMethod!(void, double) _setTwistSpan;
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
	}
	/// 
	pragma(inline, true) bool opEquals(in ConeTwistJoint other) const
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
	/// Construct a new instance of ConeTwistJoint.
	/// Note: use `memnew!ConeTwistJoint` instead.
	static ConeTwistJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ConeTwistJoint");
		if(constructor is null) return typeof(this).init;
		return cast(ConeTwistJoint)(constructor());
	}
	/// 
	enum Param : int
	{
		/** */
		paramSwingSpan = 0,
		/** */
		paramTwistSpan = 1,
		/** */
		paramBias = 2,
		/** */
		paramSoftness = 3,
		/** */
		paramRelaxation = 4,
		/** */
		paramMax = 5,
	}
	/// 
	enum Constants : int
	{
		paramSwingSpan = 0,
		paramTwistSpan = 1,
		paramBias = 2,
		paramSoftness = 3,
		paramRelaxation = 4,
		paramMax = 5,
	}
	/**
	
	*/
	double _getSwingSpan() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_swing_span");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	double _getTwistSpan() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_twist_span");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	void _setSwingSpan(in double swing_span)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(swing_span);
		String _GODOT_method_name = String("_set_swing_span");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setTwistSpan(in double twist_span)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(twist_span);
		String _GODOT_method_name = String("_set_twist_span");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double getParam(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParam, _godot_object, param);
	}
	/**
	
	*/
	void setParam(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParam, _godot_object, param, value);
	}
	/**
	
	*/
	@property double bias()
	{
		return getParam(2);
	}
	/// ditto
	@property void bias(double v)
	{
		setParam(2, v);
	}
	/**
	
	*/
	@property double relaxation()
	{
		return getParam(4);
	}
	/// ditto
	@property void relaxation(double v)
	{
		setParam(4, v);
	}
	/**
	
	*/
	@property double softness()
	{
		return getParam(3);
	}
	/// ditto
	@property void softness(double v)
	{
		setParam(3, v);
	}
	/**
	
	*/
	@property double swingSpan()
	{
		return _getSwingSpan();
	}
	/// ditto
	@property void swingSpan(double v)
	{
		_setSwingSpan(v);
	}
	/**
	
	*/
	@property double twistSpan()
	{
		return _getTwistSpan();
	}
	/// ditto
	@property void twistSpan(double v)
	{
		_setTwistSpan(v);
	}
}
