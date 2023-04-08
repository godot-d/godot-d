/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.pinjoint;
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
import godot.spatial;
/**

*/
@GodotBaseClass struct PinJoint
{
	package(godot) enum string _GODOT_internal_name = "PinJoint";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Joint _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
	}
	/// 
	pragma(inline, true) bool opEquals(in PinJoint other) const
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
	/// Construct a new instance of PinJoint.
	/// Note: use `memnew!PinJoint` instead.
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
		/** */
		paramBias = 0,
		/** */
		paramDamping = 1,
		/** */
		paramImpulseClamp = 2,
	}
	/// 
	enum Constants : int
	{
		paramBias = 0,
		paramDamping = 1,
		paramImpulseClamp = 2,
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
