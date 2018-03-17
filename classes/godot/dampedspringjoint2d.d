/**
Damped spring constraint for 2D physics.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.dampedspringjoint2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.joint2d;
/**
Damped spring constraint for 2D physics.

This resembles a spring joint that always wants to go back to a given length.
*/
@GodotBaseClass struct DampedSpringJoint2D
{
	static immutable string _GODOT_internal_name = "DampedSpringJoint2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Joint2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in DampedSpringJoint2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	DampedSpringJoint2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static DampedSpringJoint2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("DampedSpringJoint2D");
		if(constructor is null) return typeof(this).init;
		return cast(DampedSpringJoint2D)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_length") = _GODOT_set_length;
	/**
	
	*/
	void setLength(in double length)
	{
		_GODOT_set_length.bind("DampedSpringJoint2D", "set_length");
		ptrcall!(void)(_GODOT_set_length, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_length") = _GODOT_get_length;
	/**
	
	*/
	double getLength() const
	{
		_GODOT_get_length.bind("DampedSpringJoint2D", "get_length");
		return ptrcall!(double)(_GODOT_get_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rest_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rest_length") = _GODOT_set_rest_length;
	/**
	
	*/
	void setRestLength(in double rest_length)
	{
		_GODOT_set_rest_length.bind("DampedSpringJoint2D", "set_rest_length");
		ptrcall!(void)(_GODOT_set_rest_length, _godot_object, rest_length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rest_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rest_length") = _GODOT_get_rest_length;
	/**
	
	*/
	double getRestLength() const
	{
		_GODOT_get_rest_length.bind("DampedSpringJoint2D", "get_rest_length");
		return ptrcall!(double)(_GODOT_get_rest_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_stiffness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stiffness") = _GODOT_set_stiffness;
	/**
	
	*/
	void setStiffness(in double stiffness)
	{
		_GODOT_set_stiffness.bind("DampedSpringJoint2D", "set_stiffness");
		ptrcall!(void)(_GODOT_set_stiffness, _godot_object, stiffness);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_stiffness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stiffness") = _GODOT_get_stiffness;
	/**
	
	*/
	double getStiffness() const
	{
		_GODOT_get_stiffness.bind("DampedSpringJoint2D", "get_stiffness");
		return ptrcall!(double)(_GODOT_get_stiffness, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_damping;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_damping") = _GODOT_set_damping;
	/**
	
	*/
	void setDamping(in double damping)
	{
		_GODOT_set_damping.bind("DampedSpringJoint2D", "set_damping");
		ptrcall!(void)(_GODOT_set_damping, _godot_object, damping);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_damping;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_damping") = _GODOT_get_damping;
	/**
	
	*/
	double getDamping() const
	{
		_GODOT_get_damping.bind("DampedSpringJoint2D", "get_damping");
		return ptrcall!(double)(_GODOT_get_damping, _godot_object);
	}
	/**
	The spring joint's maximum length. The two attached bodies cannot stretch it past this value. Default value: `50`
	*/
	@property double length()
	{
		return getLength();
	}
	/// ditto
	@property void length(double v)
	{
		setLength(v);
	}
	/**
	When the bodies attached to the spring joint move they stretch or squash it. The joint always tries to resize towards this length. Default value: `0`
	*/
	@property double restLength()
	{
		return getRestLength();
	}
	/// ditto
	@property void restLength(double v)
	{
		setRestLength(v);
	}
	/**
	The higher the value, the less the bodies attached to the joint will deform it. The joint applies an opposing force to the bodies, the product of the stiffness multiplied by the size difference from its resting length. Default value: `20`
	*/
	@property double stiffness()
	{
		return getStiffness();
	}
	/// ditto
	@property void stiffness(double v)
	{
		setStiffness(v);
	}
	/**
	The spring joint's damping ratio. A value between `0` and `1`. When the two bodies move into different directions the system tries to align them to the spring axis again. A high `damping` value forces the attached bodies to align faster. Default value: `1`
	*/
	@property double damping()
	{
		return getDamping();
	}
	/// ditto
	@property void damping(double v)
	{
		setDamping(v);
	}
}
