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
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**
Damped spring constraint for 2D physics.

This resembles a spring joint that always wants to go back to a given length.
*/
@GodotBaseClass struct DampedSpringJoint2D
{
	enum string _GODOT_internal_name = "DampedSpringJoint2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Joint2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_length") GodotMethod!(void, double) setLength;
		@GodotName("get_length") GodotMethod!(double) getLength;
		@GodotName("set_rest_length") GodotMethod!(void, double) setRestLength;
		@GodotName("get_rest_length") GodotMethod!(double) getRestLength;
		@GodotName("set_stiffness") GodotMethod!(void, double) setStiffness;
		@GodotName("get_stiffness") GodotMethod!(double) getStiffness;
		@GodotName("set_damping") GodotMethod!(void, double) setDamping;
		@GodotName("get_damping") GodotMethod!(double) getDamping;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void setLength(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLength, _godot_object, length);
	}
	/**
	
	*/
	double getLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLength, _godot_object);
	}
	/**
	
	*/
	void setRestLength(in double rest_length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRestLength, _godot_object, rest_length);
	}
	/**
	
	*/
	double getRestLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRestLength, _godot_object);
	}
	/**
	
	*/
	void setStiffness(in double stiffness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStiffness, _godot_object, stiffness);
	}
	/**
	
	*/
	double getStiffness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getStiffness, _godot_object);
	}
	/**
	
	*/
	void setDamping(in double damping)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDamping, _godot_object, damping);
	}
	/**
	
	*/
	double getDamping() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDamping, _godot_object);
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