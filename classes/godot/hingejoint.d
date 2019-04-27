/**
A hinge between two 3D bodies.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.hingejoint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.joint;
import godot.spatial;
import godot.node;
/**
A hinge between two 3D bodies.

Normally uses the z-axis of body A as the hinge axis, another axis can be specified when adding it manually though.
*/
@GodotBaseClass struct HingeJoint
{
	enum string _GODOT_internal_name = "HingeJoint";
public:
@nogc nothrow:
	union { godot_object _godot_object; Joint _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("set_flag") GodotMethod!(void, long, bool) setFlag;
		@GodotName("get_flag") GodotMethod!(bool, long) getFlag;
		@GodotName("_set_upper_limit") GodotMethod!(void, double) _setUpperLimit;
		@GodotName("_get_upper_limit") GodotMethod!(double) _getUpperLimit;
		@GodotName("_set_lower_limit") GodotMethod!(void, double) _setLowerLimit;
		@GodotName("_get_lower_limit") GodotMethod!(double) _getLowerLimit;
	}
	bool opEquals(in HingeJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HingeJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		The speed with which the two bodies get pulled together when they move in different directions.
		*/
		paramBias = 0,
		/**
		The maximum rotation. only active if $(D angularLimit/enable) is `true`.
		*/
		paramLimitUpper = 1,
		/**
		The minimum rotation. only active if $(D angularLimit/enable) is `true`.
		*/
		paramLimitLower = 2,
		/**
		The speed with which the rotation across the axis perpendicular to the hinge gets corrected.
		*/
		paramLimitBias = 3,
		/**
		
		*/
		paramLimitSoftness = 4,
		/**
		The lower this value, the more the rotation gets slowed down.
		*/
		paramLimitRelaxation = 5,
		/**
		Target speed for the motor.
		*/
		paramMotorTargetVelocity = 6,
		/**
		Maximum acceleration for the motor.
		*/
		paramMotorMaxImpulse = 7,
		/**
		End flag of PARAM_* constants, used internally.
		*/
		paramMax = 8,
	}
	/// 
	enum Flag : int
	{
		/**
		If `true`, the hinges maximum and minimum rotation, defined by $(D angularLimit/lower) and $(D angularLimit/upper) has effects.
		*/
		flagUseLimit = 0,
		/**
		When activated, a motor turns the hinge.
		*/
		flagEnableMotor = 1,
		/**
		End flag of FLAG_* constants, used internally.
		*/
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
	void setParam(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParam, _godot_object, param, value);
	}
	/**
	
	*/
	double getParam(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getParam, _godot_object, param);
	}
	/**
	
	*/
	void setFlag(in long flag, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlag, _godot_object, flag, enabled);
	}
	/**
	
	*/
	bool getFlag(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getFlag, _godot_object, flag);
	}
	/**
	
	*/
	void _setUpperLimit(in double upper_limit)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(upper_limit);
		String _GODOT_method_name = String("_set_upper_limit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double _getUpperLimit() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_upper_limit");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	void _setLowerLimit(in double lower_limit)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(lower_limit);
		String _GODOT_method_name = String("_set_lower_limit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double _getLowerLimit() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_lower_limit");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	The speed with which the two bodies get pulled together when they move in different directions.
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
	/**
	If `true`, the hinges maximum and minimum rotation, defined by $(D angularLimit/lower) and $(D angularLimit/upper) has effects.
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
	The maximum rotation. only active if $(D angularLimit/enable) is `true`.
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
	The minimum rotation. only active if $(D angularLimit/enable) is `true`.
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
	The speed with which the rotation across the axis perpendicular to the hinge gets corrected.
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
	The lower this value, the more the rotation gets slowed down.
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
	When activated, a motor turns the hinge.
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
	Target speed for the motor.
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
	Maximum acceleration for the motor.
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
}
