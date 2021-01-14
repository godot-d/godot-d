/**
Slider between two PhysicsBodies in 3D.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.sliderjoint;
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
import godot.spatial;
/**
Slider between two PhysicsBodies in 3D.

Slides across the X axis of the pivot object. See also $(D Generic6DOFJoint).
*/
@GodotBaseClass struct SliderJoint
{
	package(godot) enum string _GODOT_internal_name = "SliderJoint";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Joint _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_lower_limit_angular") GodotMethod!(double) _getLowerLimitAngular;
		@GodotName("_get_upper_limit_angular") GodotMethod!(double) _getUpperLimitAngular;
		@GodotName("_set_lower_limit_angular") GodotMethod!(void, double) _setLowerLimitAngular;
		@GodotName("_set_upper_limit_angular") GodotMethod!(void, double) _setUpperLimitAngular;
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
	}
	/// 
	pragma(inline, true) bool opEquals(in SliderJoint other) const
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
	/// Construct a new instance of SliderJoint.
	/// Note: use `memnew!SliderJoint` instead.
	static SliderJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SliderJoint");
		if(constructor is null) return typeof(this).init;
		return cast(SliderJoint)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Param : int
	{
		/**
		The maximum difference between the pivot points on their X axis before damping happens.
		*/
		paramLinearLimitUpper = 0,
		/**
		The minimum difference between the pivot points on their X axis before damping happens.
		*/
		paramLinearLimitLower = 1,
		/**
		A factor applied to the movement across the slider axis once the limits get surpassed. The lower, the slower the movement.
		*/
		paramLinearLimitSoftness = 2,
		/**
		The amount of restitution once the limits are surpassed. The lower, the more velocityenergy gets lost.
		*/
		paramLinearLimitRestitution = 3,
		/**
		The amount of damping once the slider limits are surpassed.
		*/
		paramLinearLimitDamping = 4,
		/**
		A factor applied to the movement across the slider axis as long as the slider is in the limits. The lower, the slower the movement.
		*/
		paramLinearMotionSoftness = 5,
		/**
		The amount of restitution inside the slider limits.
		*/
		paramLinearMotionRestitution = 6,
		/**
		The amount of damping inside the slider limits.
		*/
		paramLinearMotionDamping = 7,
		/**
		A factor applied to the movement across axes orthogonal to the slider.
		*/
		paramLinearOrthogonalSoftness = 8,
		/**
		The amount of restitution when movement is across axes orthogonal to the slider.
		*/
		paramLinearOrthogonalRestitution = 9,
		/**
		The amount of damping when movement is across axes orthogonal to the slider.
		*/
		paramLinearOrthogonalDamping = 10,
		/**
		The upper limit of rotation in the slider.
		*/
		paramAngularLimitUpper = 11,
		/**
		The lower limit of rotation in the slider.
		*/
		paramAngularLimitLower = 12,
		/**
		A factor applied to the all rotation once the limit is surpassed.
		*/
		paramAngularLimitSoftness = 13,
		/**
		The amount of restitution of the rotation when the limit is surpassed.
		*/
		paramAngularLimitRestitution = 14,
		/**
		The amount of damping of the rotation when the limit is surpassed.
		*/
		paramAngularLimitDamping = 15,
		/**
		A factor applied to the all rotation in the limits.
		*/
		paramAngularMotionSoftness = 16,
		/**
		The amount of restitution of the rotation in the limits.
		*/
		paramAngularMotionRestitution = 17,
		/**
		The amount of damping of the rotation in the limits.
		*/
		paramAngularMotionDamping = 18,
		/**
		A factor applied to the all rotation across axes orthogonal to the slider.
		*/
		paramAngularOrthogonalSoftness = 19,
		/**
		The amount of restitution of the rotation across axes orthogonal to the slider.
		*/
		paramAngularOrthogonalRestitution = 20,
		/**
		The amount of damping of the rotation across axes orthogonal to the slider.
		*/
		paramAngularOrthogonalDamping = 21,
		/**
		Represents the size of the $(D param) enum.
		*/
		paramMax = 22,
	}
	/// 
	enum Constants : int
	{
		paramLinearLimitUpper = 0,
		paramLinearLimitLower = 1,
		paramLinearLimitSoftness = 2,
		paramLinearLimitRestitution = 3,
		paramLinearLimitDamping = 4,
		paramLinearMotionSoftness = 5,
		paramLinearMotionRestitution = 6,
		paramLinearMotionDamping = 7,
		paramLinearOrthogonalSoftness = 8,
		paramLinearOrthogonalRestitution = 9,
		paramLinearOrthogonalDamping = 10,
		paramAngularLimitUpper = 11,
		paramAngularLimitLower = 12,
		paramAngularLimitSoftness = 13,
		paramAngularLimitRestitution = 14,
		paramAngularLimitDamping = 15,
		paramAngularMotionSoftness = 16,
		paramAngularMotionRestitution = 17,
		paramAngularMotionDamping = 18,
		paramAngularOrthogonalSoftness = 19,
		paramAngularOrthogonalRestitution = 20,
		paramAngularOrthogonalDamping = 21,
		paramMax = 22,
	}
	/**
	
	*/
	double _getLowerLimitAngular() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_lower_limit_angular");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	double _getUpperLimitAngular() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_upper_limit_angular");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	void _setLowerLimitAngular(in double lower_limit_angular)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(lower_limit_angular);
		String _GODOT_method_name = String("_set_lower_limit_angular");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setUpperLimitAngular(in double upper_limit_angular)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(upper_limit_angular);
		String _GODOT_method_name = String("_set_upper_limit_angular");
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
	The amount of damping of the rotation when the limit is surpassed.
	A lower damping value allows a rotation initiated by body A to travel to body B slower.
	*/
	@property double angularLimitDamping()
	{
		return getParam(15);
	}
	/// ditto
	@property void angularLimitDamping(double v)
	{
		setParam(15, v);
	}
	/**
	The lower limit of rotation in the slider.
	*/
	@property double angularLimitLowerAngle()
	{
		return _getLowerLimitAngular();
	}
	/// ditto
	@property void angularLimitLowerAngle(double v)
	{
		_setLowerLimitAngular(v);
	}
	/**
	The amount of restitution of the rotation when the limit is surpassed.
	Does not affect damping.
	*/
	@property double angularLimitRestitution()
	{
		return getParam(14);
	}
	/// ditto
	@property void angularLimitRestitution(double v)
	{
		setParam(14, v);
	}
	/**
	A factor applied to the all rotation once the limit is surpassed.
	Makes all rotation slower when between 0 and 1.
	*/
	@property double angularLimitSoftness()
	{
		return getParam(13);
	}
	/// ditto
	@property void angularLimitSoftness(double v)
	{
		setParam(13, v);
	}
	/**
	The upper limit of rotation in the slider.
	*/
	@property double angularLimitUpperAngle()
	{
		return _getUpperLimitAngular();
	}
	/// ditto
	@property void angularLimitUpperAngle(double v)
	{
		_setUpperLimitAngular(v);
	}
	/**
	The amount of damping of the rotation in the limits.
	*/
	@property double angularMotionDamping()
	{
		return getParam(18);
	}
	/// ditto
	@property void angularMotionDamping(double v)
	{
		setParam(18, v);
	}
	/**
	The amount of restitution of the rotation in the limits.
	*/
	@property double angularMotionRestitution()
	{
		return getParam(17);
	}
	/// ditto
	@property void angularMotionRestitution(double v)
	{
		setParam(17, v);
	}
	/**
	A factor applied to the all rotation in the limits.
	*/
	@property double angularMotionSoftness()
	{
		return getParam(16);
	}
	/// ditto
	@property void angularMotionSoftness(double v)
	{
		setParam(16, v);
	}
	/**
	The amount of damping of the rotation across axes orthogonal to the slider.
	*/
	@property double angularOrthoDamping()
	{
		return getParam(21);
	}
	/// ditto
	@property void angularOrthoDamping(double v)
	{
		setParam(21, v);
	}
	/**
	The amount of restitution of the rotation across axes orthogonal to the slider.
	*/
	@property double angularOrthoRestitution()
	{
		return getParam(20);
	}
	/// ditto
	@property void angularOrthoRestitution(double v)
	{
		setParam(20, v);
	}
	/**
	A factor applied to the all rotation across axes orthogonal to the slider.
	*/
	@property double angularOrthoSoftness()
	{
		return getParam(19);
	}
	/// ditto
	@property void angularOrthoSoftness(double v)
	{
		setParam(19, v);
	}
	/**
	The amount of damping that happens once the limit defined by $(D linearLimit/lowerDistance) and $(D linearLimit/upperDistance) is surpassed.
	*/
	@property double linearLimitDamping()
	{
		return getParam(4);
	}
	/// ditto
	@property void linearLimitDamping(double v)
	{
		setParam(4, v);
	}
	/**
	The minimum difference between the pivot points on their X axis before damping happens.
	*/
	@property double linearLimitLowerDistance()
	{
		return getParam(1);
	}
	/// ditto
	@property void linearLimitLowerDistance(double v)
	{
		setParam(1, v);
	}
	/**
	The amount of restitution once the limits are surpassed. The lower, the more velocity-energy gets lost.
	*/
	@property double linearLimitRestitution()
	{
		return getParam(3);
	}
	/// ditto
	@property void linearLimitRestitution(double v)
	{
		setParam(3, v);
	}
	/**
	A factor applied to the movement across the slider axis once the limits get surpassed. The lower, the slower the movement.
	*/
	@property double linearLimitSoftness()
	{
		return getParam(2);
	}
	/// ditto
	@property void linearLimitSoftness(double v)
	{
		setParam(2, v);
	}
	/**
	The maximum difference between the pivot points on their X axis before damping happens.
	*/
	@property double linearLimitUpperDistance()
	{
		return getParam(0);
	}
	/// ditto
	@property void linearLimitUpperDistance(double v)
	{
		setParam(0, v);
	}
	/**
	The amount of damping inside the slider limits.
	*/
	@property double linearMotionDamping()
	{
		return getParam(7);
	}
	/// ditto
	@property void linearMotionDamping(double v)
	{
		setParam(7, v);
	}
	/**
	The amount of restitution inside the slider limits.
	*/
	@property double linearMotionRestitution()
	{
		return getParam(6);
	}
	/// ditto
	@property void linearMotionRestitution(double v)
	{
		setParam(6, v);
	}
	/**
	A factor applied to the movement across the slider axis as long as the slider is in the limits. The lower, the slower the movement.
	*/
	@property double linearMotionSoftness()
	{
		return getParam(5);
	}
	/// ditto
	@property void linearMotionSoftness(double v)
	{
		setParam(5, v);
	}
	/**
	The amount of damping when movement is across axes orthogonal to the slider.
	*/
	@property double linearOrthoDamping()
	{
		return getParam(10);
	}
	/// ditto
	@property void linearOrthoDamping(double v)
	{
		setParam(10, v);
	}
	/**
	The amount of restitution when movement is across axes orthogonal to the slider.
	*/
	@property double linearOrthoRestitution()
	{
		return getParam(9);
	}
	/// ditto
	@property void linearOrthoRestitution(double v)
	{
		setParam(9, v);
	}
	/**
	A factor applied to the movement across axes orthogonal to the slider.
	*/
	@property double linearOrthoSoftness()
	{
		return getParam(8);
	}
	/// ditto
	@property void linearOrthoSoftness(double v)
	{
		setParam(8, v);
	}
}
