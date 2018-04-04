/**
A twist joint between two 3D bodies.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.conetwistjoint;
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
A twist joint between two 3D bodies.

The joint can rotate the bodies across an axis defined by the local x-axes of the $(D Joint).
The twist axis is initiated as the x-axis of the $(D Joint).
Once the Bodies swing, the twist axis is calculated as the middle of the x-axes of the Joint in the local space of the two Bodies.
*/
@GodotBaseClass struct ConeTwistJoint
{
	static immutable string _GODOT_internal_name = "ConeTwistJoint";
public:
@nogc nothrow:
	union { godot_object _godot_object; Joint _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ConeTwistJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConeTwistJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		Swing is rotation from side to side, around the axis perpendicular to the twist axis.
		The swing span defines, how much rotation will not get corrected allong the swing axis.
		Could be defined as looseness in the `ConeTwistJoint`.
		If below 0.05, this behaviour is locked. Default value: `PI/4`.
		*/
		paramSwingSpan = 0,
		/**
		Twist is the rotation around the twist axis, this value defined how far the joint can twist.
		Twist is locked if below 0.05.
		*/
		paramTwistSpan = 1,
		/**
		The speed with which the swing or twist will take place.
		The higher, the faster.
		*/
		paramBias = 2,
		/**
		The ease with which the joint starts to twist. If it's too low, it takes more force to start twisting the joint.
		*/
		paramSoftness = 3,
		/**
		Defines, how fast the swing- and twist-speed-difference on both sides gets synced.
		*/
		paramRelaxation = 4,
		/**
		End flag of PARAM_* constants, used internally.
		*/
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
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param") = _GODOT_set_param;
	/**
	
	*/
	void setParam(in long param, in double value)
	{
		_GODOT_set_param.bind("ConeTwistJoint", "set_param");
		ptrcall!(void)(_GODOT_set_param, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param") = _GODOT_get_param;
	/**
	
	*/
	double getParam(in long param) const
	{
		_GODOT_get_param.bind("ConeTwistJoint", "get_param");
		return ptrcall!(double)(_GODOT_get_param, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__set_swing_span;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_swing_span") = _GODOT__set_swing_span;
	/**
	
	*/
	void _setSwingSpan(in double swing_span)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(swing_span);
		String _GODOT_method_name = String("_set_swing_span");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(double) _GODOT__get_swing_span;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_swing_span") = _GODOT__get_swing_span;
	/**
	
	*/
	double _getSwingSpan() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_swing_span");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__set_twist_span;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_twist_span") = _GODOT__set_twist_span;
	/**
	
	*/
	void _setTwistSpan(in double twist_span)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(twist_span);
		String _GODOT_method_name = String("_set_twist_span");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(double) _GODOT__get_twist_span;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_twist_span") = _GODOT__get_twist_span;
	/**
	
	*/
	double _getTwistSpan() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_twist_span");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	Swing is rotation from side to side, around the axis perpendicular to the twist axis.
	The swing span defines, how much rotation will not get corrected allong the swing axis.
	Could be defined as looseness in the `ConeTwistJoint`.
	If below 0.05, this behaviour is locked. Default value: `PI/4`.
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
	Twist is the rotation around the twist axis, this value defined how far the joint can twist.
	Twist is locked if below 0.05.
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
	/**
	The speed with which the swing or twist will take place.
	The higher, the faster.
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
	The ease with which the joint starts to twist. If it's too low, it takes more force to start twisting the joint.
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
	Defines, how fast the swing- and twist-speed-difference on both sides gets synced.
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
}
