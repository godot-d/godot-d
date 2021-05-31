/**
The generic 6-degrees-of-freedom joint can implement a variety of joint types by locking certain axes' rotation or translation.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.generic6dofjoint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.joint;
/**
The generic 6-degrees-of-freedom joint can implement a variety of joint types by locking certain axes' rotation or translation.

The first 3 DOF axes are linear axes, which represent translation of Bodies, and the latter 3 DOF axes represent the angular motion. Each axis can be either locked, or limited.
*/
@GodotBaseClass struct Generic6DOFJoint
{
	package(godot) enum string _GODOT_internal_name = "Generic6DOFJoint";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Joint _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_angular_hi_limit_x") GodotMethod!(double) _getAngularHiLimitX;
		@GodotName("_get_angular_hi_limit_y") GodotMethod!(double) _getAngularHiLimitY;
		@GodotName("_get_angular_hi_limit_z") GodotMethod!(double) _getAngularHiLimitZ;
		@GodotName("_get_angular_lo_limit_x") GodotMethod!(double) _getAngularLoLimitX;
		@GodotName("_get_angular_lo_limit_y") GodotMethod!(double) _getAngularLoLimitY;
		@GodotName("_get_angular_lo_limit_z") GodotMethod!(double) _getAngularLoLimitZ;
		@GodotName("_set_angular_hi_limit_x") GodotMethod!(void, double) _setAngularHiLimitX;
		@GodotName("_set_angular_hi_limit_y") GodotMethod!(void, double) _setAngularHiLimitY;
		@GodotName("_set_angular_hi_limit_z") GodotMethod!(void, double) _setAngularHiLimitZ;
		@GodotName("_set_angular_lo_limit_x") GodotMethod!(void, double) _setAngularLoLimitX;
		@GodotName("_set_angular_lo_limit_y") GodotMethod!(void, double) _setAngularLoLimitY;
		@GodotName("_set_angular_lo_limit_z") GodotMethod!(void, double) _setAngularLoLimitZ;
		@GodotName("get_flag_x") GodotMethod!(bool, long) getFlagX;
		@GodotName("get_flag_y") GodotMethod!(bool, long) getFlagY;
		@GodotName("get_flag_z") GodotMethod!(bool, long) getFlagZ;
		@GodotName("get_param_x") GodotMethod!(double, long) getParamX;
		@GodotName("get_param_y") GodotMethod!(double, long) getParamY;
		@GodotName("get_param_z") GodotMethod!(double, long) getParamZ;
		@GodotName("set_flag_x") GodotMethod!(void, long, bool) setFlagX;
		@GodotName("set_flag_y") GodotMethod!(void, long, bool) setFlagY;
		@GodotName("set_flag_z") GodotMethod!(void, long, bool) setFlagZ;
		@GodotName("set_param_x") GodotMethod!(void, long, double) setParamX;
		@GodotName("set_param_y") GodotMethod!(void, long, double) setParamY;
		@GodotName("set_param_z") GodotMethod!(void, long, double) setParamZ;
	}
	/// 
	pragma(inline, true) bool opEquals(in Generic6DOFJoint other) const
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
	/// Construct a new instance of Generic6DOFJoint.
	/// Note: use `memnew!Generic6DOFJoint` instead.
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
		A factor applied to the movement across the axes. The lower, the slower the movement.
		*/
		paramLinearLimitSoftness = 2,
		/**
		The amount of restitution on the axes' movement. The lower, the more momentum gets lost.
		*/
		paramLinearRestitution = 3,
		/**
		The amount of damping that happens at the linear motion across the axes.
		*/
		paramLinearDamping = 4,
		/**
		The velocity the linear motor will try to reach.
		*/
		paramLinearMotorTargetVelocity = 5,
		/**
		The maximum force the linear motor will apply while trying to reach the velocity target.
		*/
		paramLinearMotorForceLimit = 6,
		/**
		
		*/
		paramLinearSpringStiffness = 7,
		/**
		
		*/
		paramLinearSpringDamping = 8,
		/**
		
		*/
		paramLinearSpringEquilibriumPoint = 9,
		/**
		The minimum rotation in negative direction to break loose and rotate around the axes.
		*/
		paramAngularLowerLimit = 10,
		/**
		The minimum rotation in positive direction to break loose and rotate around the axes.
		*/
		paramAngularUpperLimit = 11,
		/**
		The speed of all rotations across the axes.
		*/
		paramAngularLimitSoftness = 12,
		/**
		The amount of rotational damping across the axes. The lower, the more dampening occurs.
		*/
		paramAngularDamping = 13,
		/**
		The amount of rotational restitution across the axes. The lower, the more restitution occurs.
		*/
		paramAngularRestitution = 14,
		/**
		The maximum amount of force that can occur, when rotating around the axes.
		*/
		paramAngularForceLimit = 15,
		/**
		When rotating across the axes, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
		*/
		paramAngularErp = 16,
		/**
		Target speed for the motor at the axes.
		*/
		paramAngularMotorTargetVelocity = 17,
		/**
		Maximum acceleration for the motor at the axes.
		*/
		paramAngularMotorForceLimit = 18,
		/**
		
		*/
		paramAngularSpringStiffness = 19,
		/**
		
		*/
		paramAngularSpringDamping = 20,
		/**
		
		*/
		paramAngularSpringEquilibriumPoint = 21,
		/**
		Represents the size of the $(D param) enum.
		*/
		paramMax = 22,
	}
	/// 
	enum Flag : int
	{
		/**
		If enabled, linear motion is possible within the given limits.
		*/
		flagEnableLinearLimit = 0,
		/**
		If enabled, rotational motion is possible within the given limits.
		*/
		flagEnableAngularLimit = 1,
		/**
		
		*/
		flagEnableAngularSpring = 2,
		/**
		
		*/
		flagEnableLinearSpring = 3,
		/**
		If enabled, there is a rotational motor across these axes.
		*/
		flagEnableMotor = 4,
		/**
		If enabled, there is a linear motor across these axes.
		*/
		flagEnableLinearMotor = 5,
		/**
		Represents the size of the $(D flag) enum.
		*/
		flagMax = 6,
	}
	/// 
	enum Constants : int
	{
		paramLinearLowerLimit = 0,
		flagEnableLinearLimit = 0,
		flagEnableAngularLimit = 1,
		paramLinearUpperLimit = 1,
		paramLinearLimitSoftness = 2,
		flagEnableAngularSpring = 2,
		paramLinearRestitution = 3,
		flagEnableLinearSpring = 3,
		flagEnableMotor = 4,
		paramLinearDamping = 4,
		flagEnableLinearMotor = 5,
		paramLinearMotorTargetVelocity = 5,
		flagMax = 6,
		paramLinearMotorForceLimit = 6,
		paramLinearSpringStiffness = 7,
		paramLinearSpringDamping = 8,
		paramLinearSpringEquilibriumPoint = 9,
		paramAngularLowerLimit = 10,
		paramAngularUpperLimit = 11,
		paramAngularLimitSoftness = 12,
		paramAngularDamping = 13,
		paramAngularRestitution = 14,
		paramAngularForceLimit = 15,
		paramAngularErp = 16,
		paramAngularMotorTargetVelocity = 17,
		paramAngularMotorForceLimit = 18,
		paramAngularSpringStiffness = 19,
		paramAngularSpringDamping = 20,
		paramAngularSpringEquilibriumPoint = 21,
		paramMax = 22,
	}
	/**
	
	*/
	double _getAngularHiLimitX() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_angular_hi_limit_x");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	double _getAngularHiLimitY() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_angular_hi_limit_y");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	double _getAngularHiLimitZ() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_angular_hi_limit_z");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	double _getAngularLoLimitX() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_angular_lo_limit_x");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	double _getAngularLoLimitY() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_angular_lo_limit_y");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	double _getAngularLoLimitZ() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_angular_lo_limit_z");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	void _setAngularHiLimitX(in double angle)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_x");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setAngularHiLimitY(in double angle)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_y");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setAngularHiLimitZ(in double angle)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_hi_limit_z");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setAngularLoLimitX(in double angle)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_x");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setAngularLoLimitY(in double angle)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_y");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setAngularLoLimitZ(in double angle)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(angle);
		String _GODOT_method_name = String("_set_angular_lo_limit_z");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool getFlagX(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFlagX, _godot_object, flag);
	}
	/**
	
	*/
	bool getFlagY(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFlagY, _godot_object, flag);
	}
	/**
	
	*/
	bool getFlagZ(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFlagZ, _godot_object, flag);
	}
	/**
	
	*/
	double getParamX(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParamX, _godot_object, param);
	}
	/**
	
	*/
	double getParamY(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParamY, _godot_object, param);
	}
	/**
	
	*/
	double getParamZ(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParamZ, _godot_object, param);
	}
	/**
	
	*/
	void setFlagX(in long flag, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlagX, _godot_object, flag, value);
	}
	/**
	
	*/
	void setFlagY(in long flag, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlagY, _godot_object, flag, value);
	}
	/**
	
	*/
	void setFlagZ(in long flag, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlagZ, _godot_object, flag, value);
	}
	/**
	
	*/
	void setParamX(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParamX, _godot_object, param, value);
	}
	/**
	
	*/
	void setParamY(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParamY, _godot_object, param, value);
	}
	/**
	
	*/
	void setParamZ(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParamZ, _godot_object, param, value);
	}
	/**
	The amount of rotational damping across the X axis.
	The lower, the longer an impulse from one side takes to travel to the other side.
	*/
	@property double angularLimitXDamping()
	{
		return getParamX(13);
	}
	/// ditto
	@property void angularLimitXDamping(double v)
	{
		setParamX(13, v);
	}
	/**
	If `true`, rotation across the X axis is limited.
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
	When rotating across the X axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
	*/
	@property double angularLimitXErp()
	{
		return getParamX(16);
	}
	/// ditto
	@property void angularLimitXErp(double v)
	{
		setParamX(16, v);
	}
	/**
	The maximum amount of force that can occur, when rotating around the X axis.
	*/
	@property double angularLimitXForceLimit()
	{
		return getParamX(15);
	}
	/// ditto
	@property void angularLimitXForceLimit(double v)
	{
		setParamX(15, v);
	}
	/**
	The minimum rotation in negative direction to break loose and rotate around the X axis.
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
	The amount of rotational restitution across the X axis. The lower, the more restitution occurs.
	*/
	@property double angularLimitXRestitution()
	{
		return getParamX(14);
	}
	/// ditto
	@property void angularLimitXRestitution(double v)
	{
		setParamX(14, v);
	}
	/**
	The speed of all rotations across the X axis.
	*/
	@property double angularLimitXSoftness()
	{
		return getParamX(12);
	}
	/// ditto
	@property void angularLimitXSoftness(double v)
	{
		setParamX(12, v);
	}
	/**
	The minimum rotation in positive direction to break loose and rotate around the X axis.
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
	The amount of rotational damping across the Y axis. The lower, the more dampening occurs.
	*/
	@property double angularLimitYDamping()
	{
		return getParamY(13);
	}
	/// ditto
	@property void angularLimitYDamping(double v)
	{
		setParamY(13, v);
	}
	/**
	If `true`, rotation across the Y axis is limited.
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
	When rotating across the Y axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
	*/
	@property double angularLimitYErp()
	{
		return getParamY(16);
	}
	/// ditto
	@property void angularLimitYErp(double v)
	{
		setParamY(16, v);
	}
	/**
	The maximum amount of force that can occur, when rotating around the Y axis.
	*/
	@property double angularLimitYForceLimit()
	{
		return getParamY(15);
	}
	/// ditto
	@property void angularLimitYForceLimit(double v)
	{
		setParamY(15, v);
	}
	/**
	The minimum rotation in negative direction to break loose and rotate around the Y axis.
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
	The amount of rotational restitution across the Y axis. The lower, the more restitution occurs.
	*/
	@property double angularLimitYRestitution()
	{
		return getParamY(14);
	}
	/// ditto
	@property void angularLimitYRestitution(double v)
	{
		setParamY(14, v);
	}
	/**
	The speed of all rotations across the Y axis.
	*/
	@property double angularLimitYSoftness()
	{
		return getParamY(12);
	}
	/// ditto
	@property void angularLimitYSoftness(double v)
	{
		setParamY(12, v);
	}
	/**
	The minimum rotation in positive direction to break loose and rotate around the Y axis.
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
	The amount of rotational damping across the Z axis. The lower, the more dampening occurs.
	*/
	@property double angularLimitZDamping()
	{
		return getParamZ(13);
	}
	/// ditto
	@property void angularLimitZDamping(double v)
	{
		setParamZ(13, v);
	}
	/**
	If `true`, rotation across the Z axis is limited.
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
	When rotating across the Z axis, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
	*/
	@property double angularLimitZErp()
	{
		return getParamZ(16);
	}
	/// ditto
	@property void angularLimitZErp(double v)
	{
		setParamZ(16, v);
	}
	/**
	The maximum amount of force that can occur, when rotating around the Z axis.
	*/
	@property double angularLimitZForceLimit()
	{
		return getParamZ(15);
	}
	/// ditto
	@property void angularLimitZForceLimit(double v)
	{
		setParamZ(15, v);
	}
	/**
	The minimum rotation in negative direction to break loose and rotate around the Z axis.
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
	The amount of rotational restitution across the Z axis. The lower, the more restitution occurs.
	*/
	@property double angularLimitZRestitution()
	{
		return getParamZ(14);
	}
	/// ditto
	@property void angularLimitZRestitution(double v)
	{
		setParamZ(14, v);
	}
	/**
	The speed of all rotations across the Z axis.
	*/
	@property double angularLimitZSoftness()
	{
		return getParamZ(12);
	}
	/// ditto
	@property void angularLimitZSoftness(double v)
	{
		setParamZ(12, v);
	}
	/**
	The minimum rotation in positive direction to break loose and rotate around the Z axis.
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
	If `true`, a rotating motor at the X axis is enabled.
	*/
	@property bool angularMotorXEnabled()
	{
		return getFlagX(4);
	}
	/// ditto
	@property void angularMotorXEnabled(bool v)
	{
		setFlagX(4, v);
	}
	/**
	Maximum acceleration for the motor at the X axis.
	*/
	@property double angularMotorXForceLimit()
	{
		return getParamX(18);
	}
	/// ditto
	@property void angularMotorXForceLimit(double v)
	{
		setParamX(18, v);
	}
	/**
	Target speed for the motor at the X axis.
	*/
	@property double angularMotorXTargetVelocity()
	{
		return getParamX(17);
	}
	/// ditto
	@property void angularMotorXTargetVelocity(double v)
	{
		setParamX(17, v);
	}
	/**
	If `true`, a rotating motor at the Y axis is enabled.
	*/
	@property bool angularMotorYEnabled()
	{
		return getFlagY(4);
	}
	/// ditto
	@property void angularMotorYEnabled(bool v)
	{
		setFlagY(4, v);
	}
	/**
	Maximum acceleration for the motor at the Y axis.
	*/
	@property double angularMotorYForceLimit()
	{
		return getParamY(18);
	}
	/// ditto
	@property void angularMotorYForceLimit(double v)
	{
		setParamY(18, v);
	}
	/**
	Target speed for the motor at the Y axis.
	*/
	@property double angularMotorYTargetVelocity()
	{
		return getParamY(17);
	}
	/// ditto
	@property void angularMotorYTargetVelocity(double v)
	{
		setParamY(17, v);
	}
	/**
	If `true`, a rotating motor at the Z axis is enabled.
	*/
	@property bool angularMotorZEnabled()
	{
		return getFlagZ(4);
	}
	/// ditto
	@property void angularMotorZEnabled(bool v)
	{
		setFlagZ(4, v);
	}
	/**
	Maximum acceleration for the motor at the Z axis.
	*/
	@property double angularMotorZForceLimit()
	{
		return getParamZ(18);
	}
	/// ditto
	@property void angularMotorZForceLimit(double v)
	{
		setParamZ(18, v);
	}
	/**
	Target speed for the motor at the Z axis.
	*/
	@property double angularMotorZTargetVelocity()
	{
		return getParamZ(17);
	}
	/// ditto
	@property void angularMotorZTargetVelocity(double v)
	{
		setParamZ(17, v);
	}
	/**
	
	*/
	@property double angularSpringXDamping()
	{
		return getParamX(20);
	}
	/// ditto
	@property void angularSpringXDamping(double v)
	{
		setParamX(20, v);
	}
	/**
	
	*/
	@property bool angularSpringXEnabled()
	{
		return getFlagX(2);
	}
	/// ditto
	@property void angularSpringXEnabled(bool v)
	{
		setFlagX(2, v);
	}
	/**
	
	*/
	@property double angularSpringXEquilibriumPoint()
	{
		return getParamX(21);
	}
	/// ditto
	@property void angularSpringXEquilibriumPoint(double v)
	{
		setParamX(21, v);
	}
	/**
	
	*/
	@property double angularSpringXStiffness()
	{
		return getParamX(19);
	}
	/// ditto
	@property void angularSpringXStiffness(double v)
	{
		setParamX(19, v);
	}
	/**
	
	*/
	@property double angularSpringYDamping()
	{
		return getParamY(20);
	}
	/// ditto
	@property void angularSpringYDamping(double v)
	{
		setParamY(20, v);
	}
	/**
	
	*/
	@property bool angularSpringYEnabled()
	{
		return getFlagY(2);
	}
	/// ditto
	@property void angularSpringYEnabled(bool v)
	{
		setFlagY(2, v);
	}
	/**
	
	*/
	@property double angularSpringYEquilibriumPoint()
	{
		return getParamY(21);
	}
	/// ditto
	@property void angularSpringYEquilibriumPoint(double v)
	{
		setParamY(21, v);
	}
	/**
	
	*/
	@property double angularSpringYStiffness()
	{
		return getParamY(19);
	}
	/// ditto
	@property void angularSpringYStiffness(double v)
	{
		setParamY(19, v);
	}
	/**
	
	*/
	@property double angularSpringZDamping()
	{
		return getParamZ(20);
	}
	/// ditto
	@property void angularSpringZDamping(double v)
	{
		setParamZ(20, v);
	}
	/**
	
	*/
	@property bool angularSpringZEnabled()
	{
		return getFlagZ(2);
	}
	/// ditto
	@property void angularSpringZEnabled(bool v)
	{
		setFlagZ(2, v);
	}
	/**
	
	*/
	@property double angularSpringZEquilibriumPoint()
	{
		return getParamZ(21);
	}
	/// ditto
	@property void angularSpringZEquilibriumPoint(double v)
	{
		setParamZ(21, v);
	}
	/**
	
	*/
	@property double angularSpringZStiffness()
	{
		return getParamZ(19);
	}
	/// ditto
	@property void angularSpringZStiffness(double v)
	{
		setParamZ(19, v);
	}
	/**
	The amount of damping that happens at the X motion.
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
	If `true`, the linear motion across the X axis is limited.
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
	The minimum difference between the pivot points' X axis.
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
	The amount of restitution on the X axis movement. The lower, the more momentum gets lost.
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
	A factor applied to the movement across the X axis. The lower, the slower the movement.
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
	The maximum difference between the pivot points' X axis.
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
	The amount of damping that happens at the Y motion.
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
	If `true`, the linear motion across the Y axis is limited.
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
	The minimum difference between the pivot points' Y axis.
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
	The amount of restitution on the Y axis movement. The lower, the more momentum gets lost.
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
	A factor applied to the movement across the Y axis. The lower, the slower the movement.
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
	The maximum difference between the pivot points' Y axis.
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
	The amount of damping that happens at the Z motion.
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
	If `true`, the linear motion across the Z axis is limited.
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
	The minimum difference between the pivot points' Z axis.
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
	The amount of restitution on the Z axis movement. The lower, the more momentum gets lost.
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
	A factor applied to the movement across the Z axis. The lower, the slower the movement.
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
	The maximum difference between the pivot points' Z axis.
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
	If `true`, then there is a linear motor on the X axis. It will attempt to reach the target velocity while staying within the force limits.
	*/
	@property bool linearMotorXEnabled()
	{
		return getFlagX(5);
	}
	/// ditto
	@property void linearMotorXEnabled(bool v)
	{
		setFlagX(5, v);
	}
	/**
	The maximum force the linear motor can apply on the X axis while trying to reach the target velocity.
	*/
	@property double linearMotorXForceLimit()
	{
		return getParamX(6);
	}
	/// ditto
	@property void linearMotorXForceLimit(double v)
	{
		setParamX(6, v);
	}
	/**
	The speed that the linear motor will attempt to reach on the X axis.
	*/
	@property double linearMotorXTargetVelocity()
	{
		return getParamX(5);
	}
	/// ditto
	@property void linearMotorXTargetVelocity(double v)
	{
		setParamX(5, v);
	}
	/**
	If `true`, then there is a linear motor on the Y axis. It will attempt to reach the target velocity while staying within the force limits.
	*/
	@property bool linearMotorYEnabled()
	{
		return getFlagY(5);
	}
	/// ditto
	@property void linearMotorYEnabled(bool v)
	{
		setFlagY(5, v);
	}
	/**
	The maximum force the linear motor can apply on the Y axis while trying to reach the target velocity.
	*/
	@property double linearMotorYForceLimit()
	{
		return getParamY(6);
	}
	/// ditto
	@property void linearMotorYForceLimit(double v)
	{
		setParamY(6, v);
	}
	/**
	The speed that the linear motor will attempt to reach on the Y axis.
	*/
	@property double linearMotorYTargetVelocity()
	{
		return getParamY(5);
	}
	/// ditto
	@property void linearMotorYTargetVelocity(double v)
	{
		setParamY(5, v);
	}
	/**
	If `true`, then there is a linear motor on the Z axis. It will attempt to reach the target velocity while staying within the force limits.
	*/
	@property bool linearMotorZEnabled()
	{
		return getFlagZ(5);
	}
	/// ditto
	@property void linearMotorZEnabled(bool v)
	{
		setFlagZ(5, v);
	}
	/**
	The maximum force the linear motor can apply on the Z axis while trying to reach the target velocity.
	*/
	@property double linearMotorZForceLimit()
	{
		return getParamZ(6);
	}
	/// ditto
	@property void linearMotorZForceLimit(double v)
	{
		setParamZ(6, v);
	}
	/**
	The speed that the linear motor will attempt to reach on the Z axis.
	*/
	@property double linearMotorZTargetVelocity()
	{
		return getParamZ(5);
	}
	/// ditto
	@property void linearMotorZTargetVelocity(double v)
	{
		setParamZ(5, v);
	}
	/**
	
	*/
	@property double linearSpringXDamping()
	{
		return getParamX(8);
	}
	/// ditto
	@property void linearSpringXDamping(double v)
	{
		setParamX(8, v);
	}
	/**
	
	*/
	@property bool linearSpringXEnabled()
	{
		return getFlagX(3);
	}
	/// ditto
	@property void linearSpringXEnabled(bool v)
	{
		setFlagX(3, v);
	}
	/**
	
	*/
	@property double linearSpringXEquilibriumPoint()
	{
		return getParamX(9);
	}
	/// ditto
	@property void linearSpringXEquilibriumPoint(double v)
	{
		setParamX(9, v);
	}
	/**
	
	*/
	@property double linearSpringXStiffness()
	{
		return getParamX(7);
	}
	/// ditto
	@property void linearSpringXStiffness(double v)
	{
		setParamX(7, v);
	}
	/**
	
	*/
	@property double linearSpringYDamping()
	{
		return getParamY(8);
	}
	/// ditto
	@property void linearSpringYDamping(double v)
	{
		setParamY(8, v);
	}
	/**
	
	*/
	@property bool linearSpringYEnabled()
	{
		return getFlagY(3);
	}
	/// ditto
	@property void linearSpringYEnabled(bool v)
	{
		setFlagY(3, v);
	}
	/**
	
	*/
	@property double linearSpringYEquilibriumPoint()
	{
		return getParamY(9);
	}
	/// ditto
	@property void linearSpringYEquilibriumPoint(double v)
	{
		setParamY(9, v);
	}
	/**
	
	*/
	@property double linearSpringYStiffness()
	{
		return getParamY(7);
	}
	/// ditto
	@property void linearSpringYStiffness(double v)
	{
		setParamY(7, v);
	}
	/**
	
	*/
	@property double linearSpringZDamping()
	{
		return getParamZ(8);
	}
	/// ditto
	@property void linearSpringZDamping(double v)
	{
		setParamZ(8, v);
	}
	/**
	
	*/
	@property bool linearSpringZEnabled()
	{
		return getFlagZ(3);
	}
	/// ditto
	@property void linearSpringZEnabled(bool v)
	{
		setFlagZ(3, v);
	}
	/**
	
	*/
	@property double linearSpringZEquilibriumPoint()
	{
		return getParamZ(9);
	}
	/// ditto
	@property void linearSpringZEquilibriumPoint(double v)
	{
		setParamZ(9, v);
	}
	/**
	
	*/
	@property double linearSpringZStiffness()
	{
		return getParamZ(7);
	}
	/// ditto
	@property void linearSpringZStiffness(double v)
	{
		setParamZ(7, v);
	}
}
