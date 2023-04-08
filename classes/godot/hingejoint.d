/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.hingejoint;
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
@GodotBaseClass struct HingeJoint
{
	package(godot) enum string _GODOT_internal_name = "HingeJoint";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Joint _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_lower_limit") GodotMethod!(double) _getLowerLimit;
		@GodotName("_get_upper_limit") GodotMethod!(double) _getUpperLimit;
		@GodotName("_set_lower_limit") GodotMethod!(void, double) _setLowerLimit;
		@GodotName("_set_upper_limit") GodotMethod!(void, double) _setUpperLimit;
		@GodotName("get_flag") GodotMethod!(bool, long) getFlag;
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("set_flag") GodotMethod!(void, long, bool) setFlag;
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
	}
	/// 
	pragma(inline, true) bool opEquals(in HingeJoint other) const
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
	/// Construct a new instance of HingeJoint.
	/// Note: use `memnew!HingeJoint` instead.
	static HingeJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("HingeJoint");
		if(constructor is null) return typeof(this).init;
		return cast(HingeJoint)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Param : int
	{
		/** */
		paramBias = 0,
		/** */
		paramLimitUpper = 1,
		/** */
		paramLimitLower = 2,
		/** */
		paramLimitBias = 3,
		/** */
		paramLimitSoftness = 4,
		/** */
		paramLimitRelaxation = 5,
		/** */
		paramMotorTargetVelocity = 6,
		/** */
		paramMotorMaxImpulse = 7,
		/** */
		paramMax = 8,
	}
	/// 
	enum Flag : int
	{
		/** */
		flagUseLimit = 0,
		/** */
		flagEnableMotor = 1,
		/** */
		flagMax = 2,
	}
	/// 
	enum Constants : int
	{
		paramBias = 0,
		flagUseLimit = 0,
		flagEnableMotor = 1,
		paramLimitUpper = 1,
		flagMax = 2,
		paramLimitLower = 2,
		paramLimitBias = 3,
		paramLimitSoftness = 4,
		paramLimitRelaxation = 5,
		paramMotorTargetVelocity = 6,
		paramMotorMaxImpulse = 7,
		paramMax = 8,
	}
	/**
	
	*/
	double _getLowerLimit() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_lower_limit");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	double _getUpperLimit() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_upper_limit");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	void _setLowerLimit(in double lower_limit)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(lower_limit);
		String _GODOT_method_name = String("_set_lower_limit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setUpperLimit(in double upper_limit)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(upper_limit);
		String _GODOT_method_name = String("_set_upper_limit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool getFlag(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFlag, _godot_object, flag);
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
	void setFlag(in long flag, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlag, _godot_object, flag, enabled);
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
	@property double angularLimitBias()
	{
		return getParam(3);
	}
	/// ditto
	@property void angularLimitBias(double v)
	{
		setParam(3, v);
	}
	/**
	
	*/
	@property bool angularLimitEnable()
	{
		return getFlag(0);
	}
	/// ditto
	@property void angularLimitEnable(bool v)
	{
		setFlag(0, v);
	}
	/**
	
	*/
	@property double angularLimitLower()
	{
		return _getLowerLimit();
	}
	/// ditto
	@property void angularLimitLower(double v)
	{
		_setLowerLimit(v);
	}
	/**
	
	*/
	@property double angularLimitRelaxation()
	{
		return getParam(5);
	}
	/// ditto
	@property void angularLimitRelaxation(double v)
	{
		setParam(5, v);
	}
	/**
	
	*/
	@property double angularLimitSoftness()
	{
		return getParam(4);
	}
	/// ditto
	@property void angularLimitSoftness(double v)
	{
		setParam(4, v);
	}
	/**
	
	*/
	@property double angularLimitUpper()
	{
		return _getUpperLimit();
	}
	/// ditto
	@property void angularLimitUpper(double v)
	{
		_setUpperLimit(v);
	}
	/**
	
	*/
	@property bool motorEnable()
	{
		return getFlag(1);
	}
	/// ditto
	@property void motorEnable(bool v)
	{
		setFlag(1, v);
	}
	/**
	
	*/
	@property double motorMaxImpulse()
	{
		return getParam(7);
	}
	/// ditto
	@property void motorMaxImpulse(double v)
	{
		setParam(7, v);
	}
	/**
	
	*/
	@property double motorTargetVelocity()
	{
		return getParam(6);
	}
	/// ditto
	@property void motorTargetVelocity(double v)
	{
		setParam(6, v);
	}
	/**
	
	*/
	@property double paramsBias()
	{
		return getParam(0);
	}
	/// ditto
	@property void paramsBias(double v)
	{
		setParam(0, v);
	}
}
