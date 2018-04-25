/**
The generic 6 degrees of freedom joint can implement a variety of joint-types by locking certain axes' rotation or translation.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.generic6dofjoint;
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
/**
The generic 6 degrees of freedom joint can implement a variety of joint-types by locking certain axes' rotation or translation.

The first 3 DOF axes are linear axes, which represent translation of Bodies, and the latter 3 DOF axes represent the angular motion. Each axis can be either locked, or limited.
*/
@GodotBaseClass struct Generic6DOFJoint
{
	static immutable string _GODOT_internal_name = "Generic6DOFJoint";
public:
@nogc nothrow:
	union { godot_object _godot_object; Joint _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Generic6DOFJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Generic6DOFJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Generic6DOFJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Generic6DOFJoint");
		if(constructor is null) return typeof(this).init;
		return cast(Generic6DOFJoint)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Param : int
	{
		/**
		The minimum difference between the pivot points' axes.
		*/
		paramLinearLowerLimit = 0,
		/**
		The maximum difference between the pivot points' axes.
		*/
		paramLinearUpperLimit = 1,
		/**
		A factor applied to the movement across the axes The lower, the slower the movement.
		*/
		paramLinearLimitSoftness = 2,
		/**
		The amount of restitution on the axes movement The lower, the more momentum gets lost.
		*/
		paramLinearRestitution = 3,
		/**
		The amount of damping that happens at the linear motion across the axes.
		*/
		paramLinearDamping = 4,
		/**
		The minimum rotation in negative direction to break loose and rotate around the axes.
		*/
		paramAngularLowerLimit = 5,
		/**
		The minimum rotation in positive direction to break loose and rotate around the axes.
		*/
		paramAngularUpperLimit = 6,
		/**
		The speed of all rotations across the axes.
		*/
		paramAngularLimitSoftness = 7,
		/**
		The amount of rotational damping across the axes. The lower, the more dampening occurs.
		*/
		paramAngularDamping = 8,
		/**
		The amount of rotational restitution across the axes. The lower, the more restitution occurs.
		*/
		paramAngularRestitution = 9,
		/**
		The maximum amount of force that can occur, when rotating around the axes.
		*/
		paramAngularForceLimit = 10,
		/**
		When rotating across the axes, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
		*/
		paramAngularErp = 11,
		/**
		Target speed for the motor at the axes.
		*/
		paramAngularMotorTargetVelocity = 12,
		/**
		Maximum acceleration for the motor at the axes.
		*/
		paramAngularMotorForceLimit = 13,
		/**
		End flag of PARAM_* constants, used internally.
		*/
		paramMax = 14,
	}
	/// 
	enum Flag : int
	{
		/**
		If `set` there is linear motion possible within the given limits.
		*/
		flagEnableLinearLimit = 0,
		/**
		If `set` there is rotational motion possible.
		*/
		flagEnableAngularLimit = 1,
		/**
		If `set` there is a rotational motor across these axes.
		*/
		flagEnableMotor = 2,
		/**
		End flag of FLAG_* constants, used internally.
		*/
		flagMax = 3,
	}
	/// 
	enum Constants : int
	{
		flagEnableLinearLimit = 0,
		paramLinearLowerLimit = 0,
		flagEnableAngularLimit = 1,
		paramLinearUpperLimit = 1,
		flagEnableMotor = 2,
		paramLinearLimitSoftness = 2,
		flagMax = 3,
		paramLinearRestitution = 3,
		paramLinearDamping = 4,
		paramAngularLowerLimit = 5,
		paramAngularUpperLimit = 6,
		paramAngularLimitSoftness = 7,
		paramAngularDamping = 8,
		paramAngularRestitution = 9,
		paramAngularForceLimit = 10,
		paramAngularErp = 11,
		paramAngularMotorTargetVelocity = 12,
		paramAngularMotorForceLimit = 13,
		paramMax = 14,
	}
	package(godot) static GodotMethod!(void, double) _GODOT__set_angular_hi_limit_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_hi_limit_x") = _GODOT__set_angular_hi_limit_x;
	/**
	
	*/
	void _setAngularHiLimitX(in double angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_x");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(double) _GODOT__get_angular_hi_limit_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_hi_limit_x") = _GODOT__get_angular_hi_limit_x;
	/**
	
	*/
	double _getAngularHiLimitX() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_hi_limit_x");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__set_angular_lo_limit_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_lo_limit_x") = _GODOT__set_angular_lo_limit_x;
	/**
	
	*/
	void _setAngularLoLimitX(in double angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_x");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(double) _GODOT__get_angular_lo_limit_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_lo_limit_x") = _GODOT__get_angular_lo_limit_x;
	/**
	
	*/
	double _getAngularLoLimitX() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_lo_limit_x");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__set_angular_hi_limit_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_hi_limit_y") = _GODOT__set_angular_hi_limit_y;
	/**
	
	*/
	void _setAngularHiLimitY(in double angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_y");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(double) _GODOT__get_angular_hi_limit_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_hi_limit_y") = _GODOT__get_angular_hi_limit_y;
	/**
	
	*/
	double _getAngularHiLimitY() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_hi_limit_y");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__set_angular_lo_limit_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_lo_limit_y") = _GODOT__set_angular_lo_limit_y;
	/**
	
	*/
	void _setAngularLoLimitY(in double angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_y");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(double) _GODOT__get_angular_lo_limit_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_lo_limit_y") = _GODOT__get_angular_lo_limit_y;
	/**
	
	*/
	double _getAngularLoLimitY() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_lo_limit_y");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__set_angular_hi_limit_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_hi_limit_z") = _GODOT__set_angular_hi_limit_z;
	/**
	
	*/
	void _setAngularHiLimitZ(in double angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_z");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(double) _GODOT__get_angular_hi_limit_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_hi_limit_z") = _GODOT__get_angular_hi_limit_z;
	/**
	
	*/
	double _getAngularHiLimitZ() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_hi_limit_z");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__set_angular_lo_limit_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_angular_lo_limit_z") = _GODOT__set_angular_lo_limit_z;
	/**
	
	*/
	void _setAngularLoLimitZ(in double angle)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_z");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(double) _GODOT__get_angular_lo_limit_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_angular_lo_limit_z") = _GODOT__get_angular_lo_limit_z;
	/**
	
	*/
	double _getAngularLoLimitZ() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_angular_lo_limit_z");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_param_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param_x") = _GODOT_set_param_x;
	/**
	
	*/
	void setParamX(in long param, in double value)
	{
		_GODOT_set_param_x.bind("Generic6DOFJoint", "set_param_x");
		ptrcall!(void)(_GODOT_set_param_x, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_param_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param_x") = _GODOT_get_param_x;
	/**
	
	*/
	double getParamX(in long param) const
	{
		_GODOT_get_param_x.bind("Generic6DOFJoint", "get_param_x");
		return ptrcall!(double)(_GODOT_get_param_x, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_param_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param_y") = _GODOT_set_param_y;
	/**
	
	*/
	void setParamY(in long param, in double value)
	{
		_GODOT_set_param_y.bind("Generic6DOFJoint", "set_param_y");
		ptrcall!(void)(_GODOT_set_param_y, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_param_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param_y") = _GODOT_get_param_y;
	/**
	
	*/
	double getParamY(in long param) const
	{
		_GODOT_get_param_y.bind("Generic6DOFJoint", "get_param_y");
		return ptrcall!(double)(_GODOT_get_param_y, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_param_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param_z") = _GODOT_set_param_z;
	/**
	
	*/
	void setParamZ(in long param, in double value)
	{
		_GODOT_set_param_z.bind("Generic6DOFJoint", "set_param_z");
		ptrcall!(void)(_GODOT_set_param_z, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_param_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param_z") = _GODOT_get_param_z;
	/**
	
	*/
	double getParamZ(in long param) const
	{
		_GODOT_get_param_z.bind("Generic6DOFJoint", "get_param_z");
		return ptrcall!(double)(_GODOT_get_param_z, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_flag_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag_x") = _GODOT_set_flag_x;
	/**
	
	*/
	void setFlagX(in long flag, in bool value)
	{
		_GODOT_set_flag_x.bind("Generic6DOFJoint", "set_flag_x");
		ptrcall!(void)(_GODOT_set_flag_x, _godot_object, flag, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_flag_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag_x") = _GODOT_get_flag_x;
	/**
	
	*/
	bool getFlagX(in long flag) const
	{
		_GODOT_get_flag_x.bind("Generic6DOFJoint", "get_flag_x");
		return ptrcall!(bool)(_GODOT_get_flag_x, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_flag_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag_y") = _GODOT_set_flag_y;
	/**
	
	*/
	void setFlagY(in long flag, in bool value)
	{
		_GODOT_set_flag_y.bind("Generic6DOFJoint", "set_flag_y");
		ptrcall!(void)(_GODOT_set_flag_y, _godot_object, flag, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_flag_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag_y") = _GODOT_get_flag_y;
	/**
	
	*/
	bool getFlagY(in long flag) const
	{
		_GODOT_get_flag_y.bind("Generic6DOFJoint", "get_flag_y");
		return ptrcall!(bool)(_GODOT_get_flag_y, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_flag_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag_z") = _GODOT_set_flag_z;
	/**
	
	*/
	void setFlagZ(in long flag, in bool value)
	{
		_GODOT_set_flag_z.bind("Generic6DOFJoint", "set_flag_z");
		ptrcall!(void)(_GODOT_set_flag_z, _godot_object, flag, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_flag_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag_z") = _GODOT_get_flag_z;
	/**
	
	*/
	bool getFlagZ(in long flag) const
	{
		_GODOT_get_flag_z.bind("Generic6DOFJoint", "get_flag_z");
		return ptrcall!(bool)(_GODOT_get_flag_z, _godot_object, flag);
	}
	/**
	If `true` the linear motion across the x-axis is limited.
	*/
	@property bool linearLimitXEnabled()
	{
		return getFlagX(0);
	}
	/// ditto
	@property void linearLimitXEnabled(bool v)
	{
		setFlagX(0, v);
	}
	/**
	The maximum difference between the pivot points' x-axis.
	*/
	@property double linearLimitXUpperDistance()
	{
		return getParamX(1);
	}
	/// ditto
	@property void linearLimitXUpperDistance(double v)
	{
		setParamX(1, v);
	}
	/**
	The minimum difference between the pivot points' x-axis.
	*/
	@property double linearLimitXLowerDistance()
	{
		return getParamX(0);
	}
	/// ditto
	@property void linearLimitXLowerDistance(double v)
	{
		setParamX(0, v);
	}
	/**
	A factor applied to the movement across the x-axis The lower, the slower the movement.
	*/
	@property double linearLimitXSoftness()
	{
		return getParamX(2);
	}
	/// ditto
	@property void linearLimitXSoftness(double v)
	{
		setParamX(2, v);
	}
	/**
	The amount of restitution on the x-axis movement The lower, the more momentum gets lost.
	*/
	@property double linearLimitXRestitution()
	{
		return getParamX(3);
	}
	/// ditto
	@property void linearLimitXRestitution(double v)
	{
		setParamX(3, v);
	}
	/**
	The amount of damping that happens at the x-motion.
	*/
	@property double linearLimitXDamping()
	{
		return getParamX(4);
	}
	/// ditto
	@property void linearLimitXDamping(double v)
	{
		setParamX(4, v);
	}
	/**
	If `true` rotation across the x-axis is limited.
	*/
	@property bool angularLimitXEnabled()
	{
		return getFlagX(1);
	}
	/// ditto
	@property void angularLimitXEnabled(bool v)
	{
		setFlagX(1, v);
	}
	/**
	The minimum rotation in positive direction to break loose and rotate around the x-axis.
	*/
	@property double angularLimitXUpperAngle()
	{
		return _getAngularHiLimitX();
	}
	/// ditto
	@property void angularLimitXUpperAngle(double v)
	{
		_setAngularHiLimitX(v);
	}
	/**
	The minimum rotation in negative direction to break loose and rotate around the x-axis.
	*/
	@property double angularLimitXLowerAngle()
	{
		return _getAngularLoLimitX();
	}
	/// ditto
	@property void angularLimitXLowerAngle(double v)
	{
		_setAngularLoLimitX(v);
	}
	/**
	The speed of all rotations across the x-axis.
	*/
	@property double angularLimitXSoftness()
	{
		return getParamX(7);
	}
	/// ditto
	@property void angularLimitXSoftness(double v)
	{
		setParamX(7, v);
	}
	/**
	The amount of rotational restitution across the x-axis. The lower, the more restitution occurs.
	*/
	@property double angularLimitXRestitution()
	{
		return getParamX(9);
	}
	/// ditto
	@property void angularLimitXRestitution(double v)
	{
		setParamX(9, v);
	}
	/**
	The amount of rotational damping across the x-axis.
	The lower, the longer an impulse from one side takes to travel to the other side.
	*/
	@property double angularLimitXDamping()
	{
		return getParamX(8);
	}
	/// ditto
	@property void angularLimitXDamping(double v)
	{
		setParamX(8, v);
	}
	/**
	The maximum amount of force that can occur, when rotating around x-axis.
	*/
	@property double angularLimitXForceLimit()
	{
		return getParamX(10);
	}
	/// ditto
	@property void angularLimitXForceLimit(double v)
	{
		setParamX(10, v);
	}
	/**
	When rotating across x-axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
	*/
	@property double angularLimitXErp()
	{
		return getParamX(11);
	}
	/// ditto
	@property void angularLimitXErp(double v)
	{
		setParamX(11, v);
	}
	/**
	If `true` a rotating motor at the x-axis is enabled.
	*/
	@property bool angularMotorXEnabled()
	{
		return getFlagX(2);
	}
	/// ditto
	@property void angularMotorXEnabled(bool v)
	{
		setFlagX(2, v);
	}
	/**
	Target speed for the motor at the x-axis.
	*/
	@property double angularMotorXTargetVelocity()
	{
		return getParamX(12);
	}
	/// ditto
	@property void angularMotorXTargetVelocity(double v)
	{
		setParamX(12, v);
	}
	/**
	Maximum acceleration for the motor at the x-axis.
	*/
	@property double angularMotorXForceLimit()
	{
		return getParamX(13);
	}
	/// ditto
	@property void angularMotorXForceLimit(double v)
	{
		setParamX(13, v);
	}
	/**
	If `true` the linear motion across the y-axis is limited.
	*/
	@property bool linearLimitYEnabled()
	{
		return getFlagY(0);
	}
	/// ditto
	@property void linearLimitYEnabled(bool v)
	{
		setFlagY(0, v);
	}
	/**
	The maximum difference between the pivot points' y-axis.
	*/
	@property double linearLimitYUpperDistance()
	{
		return getParamY(1);
	}
	/// ditto
	@property void linearLimitYUpperDistance(double v)
	{
		setParamY(1, v);
	}
	/**
	The minimum difference between the pivot points' y-axis.
	*/
	@property double linearLimitYLowerDistance()
	{
		return getParamY(0);
	}
	/// ditto
	@property void linearLimitYLowerDistance(double v)
	{
		setParamY(0, v);
	}
	/**
	A factor applied to the movement across the y-axis The lower, the slower the movement.
	*/
	@property double linearLimitYSoftness()
	{
		return getParamY(2);
	}
	/// ditto
	@property void linearLimitYSoftness(double v)
	{
		setParamY(2, v);
	}
	/**
	The amount of restitution on the y-axis movement The lower, the more momentum gets lost.
	*/
	@property double linearLimitYRestitution()
	{
		return getParamY(3);
	}
	/// ditto
	@property void linearLimitYRestitution(double v)
	{
		setParamY(3, v);
	}
	/**
	The amount of damping that happens at the y-motion.
	*/
	@property double linearLimitYDamping()
	{
		return getParamY(4);
	}
	/// ditto
	@property void linearLimitYDamping(double v)
	{
		setParamY(4, v);
	}
	/**
	If `true` rotation across the y-axis is limited.
	*/
	@property bool angularLimitYEnabled()
	{
		return getFlagY(1);
	}
	/// ditto
	@property void angularLimitYEnabled(bool v)
	{
		setFlagY(1, v);
	}
	/**
	The minimum rotation in positive direction to break loose and rotate around the y-axis.
	*/
	@property double angularLimitYUpperAngle()
	{
		return _getAngularHiLimitY();
	}
	/// ditto
	@property void angularLimitYUpperAngle(double v)
	{
		_setAngularHiLimitY(v);
	}
	/**
	The minimum rotation in negative direction to break loose and rotate around the y-axis.
	*/
	@property double angularLimitYLowerAngle()
	{
		return _getAngularLoLimitY();
	}
	/// ditto
	@property void angularLimitYLowerAngle(double v)
	{
		_setAngularLoLimitY(v);
	}
	/**
	The speed of all rotations across the y-axis.
	*/
	@property double angularLimitYSoftness()
	{
		return getParamY(7);
	}
	/// ditto
	@property void angularLimitYSoftness(double v)
	{
		setParamY(7, v);
	}
	/**
	The amount of rotational restitution across the y-axis. The lower, the more restitution occurs.
	*/
	@property double angularLimitYRestitution()
	{
		return getParamY(9);
	}
	/// ditto
	@property void angularLimitYRestitution(double v)
	{
		setParamY(9, v);
	}
	/**
	The amount of rotational damping across the y-axis. The lower, the more dampening occurs.
	*/
	@property double angularLimitYDamping()
	{
		return getParamY(8);
	}
	/// ditto
	@property void angularLimitYDamping(double v)
	{
		setParamY(8, v);
	}
	/**
	The maximum amount of force that can occur, when rotating around y-axis.
	*/
	@property double angularLimitYForceLimit()
	{
		return getParamY(10);
	}
	/// ditto
	@property void angularLimitYForceLimit(double v)
	{
		setParamY(10, v);
	}
	/**
	When rotating across y-axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
	*/
	@property double angularLimitYErp()
	{
		return getParamY(11);
	}
	/// ditto
	@property void angularLimitYErp(double v)
	{
		setParamY(11, v);
	}
	/**
	If `true` a rotating motor at the y-axis is enabled.
	*/
	@property bool angularMotorYEnabled()
	{
		return getFlagY(2);
	}
	/// ditto
	@property void angularMotorYEnabled(bool v)
	{
		setFlagY(2, v);
	}
	/**
	Target speed for the motor at the y-axis.
	*/
	@property double angularMotorYTargetVelocity()
	{
		return getParamY(12);
	}
	/// ditto
	@property void angularMotorYTargetVelocity(double v)
	{
		setParamY(12, v);
	}
	/**
	Maximum acceleration for the motor at the y-axis.
	*/
	@property double angularMotorYForceLimit()
	{
		return getParamY(13);
	}
	/// ditto
	@property void angularMotorYForceLimit(double v)
	{
		setParamY(13, v);
	}
	/**
	If `true` the linear motion across the z-axis is limited.
	*/
	@property bool linearLimitZEnabled()
	{
		return getFlagZ(0);
	}
	/// ditto
	@property void linearLimitZEnabled(bool v)
	{
		setFlagZ(0, v);
	}
	/**
	The maximum difference between the pivot points' z-axis.
	*/
	@property double linearLimitZUpperDistance()
	{
		return getParamZ(1);
	}
	/// ditto
	@property void linearLimitZUpperDistance(double v)
	{
		setParamZ(1, v);
	}
	/**
	The minimum difference between the pivot points' z-axis.
	*/
	@property double linearLimitZLowerDistance()
	{
		return getParamZ(0);
	}
	/// ditto
	@property void linearLimitZLowerDistance(double v)
	{
		setParamZ(0, v);
	}
	/**
	A factor applied to the movement across the z-axis The lower, the slower the movement.
	*/
	@property double linearLimitZSoftness()
	{
		return getParamZ(2);
	}
	/// ditto
	@property void linearLimitZSoftness(double v)
	{
		setParamZ(2, v);
	}
	/**
	The amount of restitution on the z-axis movement The lower, the more momentum gets lost.
	*/
	@property double linearLimitZRestitution()
	{
		return getParamZ(3);
	}
	/// ditto
	@property void linearLimitZRestitution(double v)
	{
		setParamZ(3, v);
	}
	/**
	The amount of damping that happens at the z-motion.
	*/
	@property double linearLimitZDamping()
	{
		return getParamZ(4);
	}
	/// ditto
	@property void linearLimitZDamping(double v)
	{
		setParamZ(4, v);
	}
	/**
	If `true` rotation across the z-axis is limited.
	*/
	@property bool angularLimitZEnabled()
	{
		return getFlagZ(1);
	}
	/// ditto
	@property void angularLimitZEnabled(bool v)
	{
		setFlagZ(1, v);
	}
	/**
	The minimum rotation in positive direction to break loose and rotate around the z-axis.
	*/
	@property double angularLimitZUpperAngle()
	{
		return _getAngularHiLimitZ();
	}
	/// ditto
	@property void angularLimitZUpperAngle(double v)
	{
		_setAngularHiLimitZ(v);
	}
	/**
	The minimum rotation in negative direction to break loose and rotate around the z-axis.
	*/
	@property double angularLimitZLowerAngle()
	{
		return _getAngularLoLimitZ();
	}
	/// ditto
	@property void angularLimitZLowerAngle(double v)
	{
		_setAngularLoLimitZ(v);
	}
	/**
	The speed of all rotations across the z-axis.
	*/
	@property double angularLimitZSoftness()
	{
		return getParamZ(7);
	}
	/// ditto
	@property void angularLimitZSoftness(double v)
	{
		setParamZ(7, v);
	}
	/**
	The amount of rotational restitution across the z-axis. The lower, the more restitution occurs.
	*/
	@property double angularLimitZRestitution()
	{
		return getParamZ(9);
	}
	/// ditto
	@property void angularLimitZRestitution(double v)
	{
		setParamZ(9, v);
	}
	/**
	The amount of rotational damping across the z-axis. The lower, the more dampening occurs.
	*/
	@property double angularLimitZDamping()
	{
		return getParamZ(8);
	}
	/// ditto
	@property void angularLimitZDamping(double v)
	{
		setParamZ(8, v);
	}
	/**
	The maximum amount of force that can occur, when rotating around z-axis.
	*/
	@property double angularLimitZForceLimit()
	{
		return getParamZ(10);
	}
	/// ditto
	@property void angularLimitZForceLimit(double v)
	{
		setParamZ(10, v);
	}
	/**
	When rotating across z-axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
	*/
	@property double angularLimitZErp()
	{
		return getParamZ(11);
	}
	/// ditto
	@property void angularLimitZErp(double v)
	{
		setParamZ(11, v);
	}
	/**
	If `true` a rotating motor at the z-axis is enabled.
	*/
	@property bool angularMotorZEnabled()
	{
		return getFlagZ(2);
	}
	/// ditto
	@property void angularMotorZEnabled(bool v)
	{
		setFlagZ(2, v);
	}
	/**
	Target speed for the motor at the z-axis.
	*/
	@property double angularMotorZTargetVelocity()
	{
		return getParamZ(12);
	}
	/// ditto
	@property void angularMotorZTargetVelocity(double v)
	{
		setParamZ(12, v);
	}
	/**
	Maximum acceleration for the motor at the z-axis.
	*/
	@property double angularMotorZForceLimit()
	{
		return getParamZ(13);
	}
	/// ditto
	@property void angularMotorZForceLimit(double v)
	{
		setParamZ(13, v);
	}
}
