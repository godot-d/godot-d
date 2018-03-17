/**
Pin Joint for 3D Shapes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.pinjoint;
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
Pin Joint for 3D Shapes.

Pin Joint for 3D Rigid Bodies. It pins 2 bodies (rigid or static) together.
*/
@GodotBaseClass struct PinJoint
{
	static immutable string _GODOT_internal_name = "PinJoint";
public:
@nogc nothrow:
	union { godot_object _godot_object; Joint _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PinJoint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PinJoint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PinJoint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PinJoint");
		if(constructor is null) return typeof(this).init;
		return cast(PinJoint)(constructor());
	}
	/// 
	enum Param : int
	{
		/**
		The force with which the pinned objects stay in positional relation to each other.
		The higher, the stronger.
		*/
		paramBias = 0,
		/**
		The force with which the pinned objects stay in velocity relation to each other.
		The higher, the stronger.
		*/
		paramDamping = 1,
		/**
		If above 0, this value is the maximum value for an impulse that this Joint produces.
		*/
		paramImpulseClamp = 2,
	}
	/// 
	enum Constants : int
	{
		paramBias = 0,
		paramDamping = 1,
		paramImpulseClamp = 2,
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param") = _GODOT_set_param;
	/**
	
	*/
	void setParam(in long param, in double value)
	{
		_GODOT_set_param.bind("PinJoint", "set_param");
		ptrcall!(void)(_GODOT_set_param, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param") = _GODOT_get_param;
	/**
	
	*/
	double getParam(in long param) const
	{
		_GODOT_get_param.bind("PinJoint", "get_param");
		return ptrcall!(double)(_GODOT_get_param, _godot_object, param);
	}
	/**
	The force with which the pinned objects stay in positional relation to each other.
	The higher, the stronger.
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
	The force with which the pinned objects stay in velocity relation to each other.
	The higher, the stronger.
	*/
	@property double paramsDamping()
	{
		return getParam(1);
	}
	/// ditto
	@property void paramsDamping(double v)
	{
		setParam(1, v);
	}
	/**
	If above 0, this value is the maximum value for an impulse that this Joint produces.
	*/
	@property double paramsImpulseClamp()
	{
		return getParam(2);
	}
	/// ditto
	@property void paramsImpulseClamp(double v)
	{
		setParam(2, v);
	}
}
