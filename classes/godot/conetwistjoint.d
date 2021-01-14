/**
A twist joint between two 3D PhysicsBodies.

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
import godot.object;
import godot.classdb;
import godot.joint;
/**
A twist joint between two 3D PhysicsBodies.

The joint can rotate the bodies across an axis defined by the local x-axes of the $(D Joint).
The twist axis is initiated as the X axis of the $(D Joint).
Once the Bodies swing, the twist axis is calculated as the middle of the x-axes of the Joint in the local space of the two Bodies. See also $(D Generic6DOFJoint).
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
	@disable new(size_t s);
	/// 
	enum Param : int
	{
		/**
		Swing is rotation from side to side, around the axis perpendicular to the twist axis.
		The swing span defines, how much rotation will not get corrected along the swing axis.
		Could be defined as looseness in the $(D ConeTwistJoint).
		If below 0.05, this behavior is locked.
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
		Represents the size of the $(D param) enum.
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
	Swing is rotation from side to side, around the axis perpendicular to the twist axis.
	The swing span defines, how much rotation will not get corrected along the swing axis.
	Could be defined as looseness in the $(D ConeTwistJoint).
	If below 0.05, this behavior is locked.
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
}
