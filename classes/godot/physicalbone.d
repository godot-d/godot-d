/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicalbone;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.physicsbody;
/**

*/
@GodotBaseClass struct PhysicalBone
{
	package(godot) enum string _GODOT_internal_name = "PhysicalBone";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PhysicsBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_direct_state_changed") GodotMethod!(void, GodotObject) _directStateChanged;
		@GodotName("apply_central_impulse") GodotMethod!(void, Vector3) applyCentralImpulse;
		@GodotName("apply_impulse") GodotMethod!(void, Vector3, Vector3) applyImpulse;
		@GodotName("get_body_offset") GodotMethod!(Transform) getBodyOffset;
		@GodotName("get_bone_id") GodotMethod!(long) getBoneId;
		@GodotName("get_bounce") GodotMethod!(double) getBounce;
		@GodotName("get_friction") GodotMethod!(double) getFriction;
		@GodotName("get_gravity_scale") GodotMethod!(double) getGravityScale;
		@GodotName("get_joint_offset") GodotMethod!(Transform) getJointOffset;
		@GodotName("get_joint_type") GodotMethod!(PhysicalBone.JointType) getJointType;
		@GodotName("get_mass") GodotMethod!(double) getMass;
		@GodotName("get_simulate_physics") GodotMethod!(bool) getSimulatePhysics;
		@GodotName("get_weight") GodotMethod!(double) getWeight;
		@GodotName("is_simulating_physics") GodotMethod!(bool) isSimulatingPhysics;
		@GodotName("is_static_body") GodotMethod!(bool) isStaticBody;
		@GodotName("set_body_offset") GodotMethod!(void, Transform) setBodyOffset;
		@GodotName("set_bounce") GodotMethod!(void, double) setBounce;
		@GodotName("set_friction") GodotMethod!(void, double) setFriction;
		@GodotName("set_gravity_scale") GodotMethod!(void, double) setGravityScale;
		@GodotName("set_joint_offset") GodotMethod!(void, Transform) setJointOffset;
		@GodotName("set_joint_type") GodotMethod!(void, long) setJointType;
		@GodotName("set_mass") GodotMethod!(void, double) setMass;
		@GodotName("set_weight") GodotMethod!(void, double) setWeight;
	}
	/// 
	pragma(inline, true) bool opEquals(in PhysicalBone other) const
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
	/// Construct a new instance of PhysicalBone.
	/// Note: use `memnew!PhysicalBone` instead.
	static PhysicalBone _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicalBone");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicalBone)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum JointType : int
	{
		/**
		
		*/
		jointTypeNone = 0,
		/**
		
		*/
		jointTypePin = 1,
		/**
		
		*/
		jointTypeCone = 2,
		/**
		
		*/
		jointTypeHinge = 3,
		/**
		
		*/
		jointTypeSlider = 4,
		/**
		
		*/
		jointType6dof = 5,
	}
	/// 
	enum Constants : int
	{
		jointTypeNone = 0,
		jointTypePin = 1,
		jointTypeCone = 2,
		jointTypeHinge = 3,
		jointTypeSlider = 4,
		jointType6dof = 5,
	}
	/**
	
	*/
	void _directStateChanged(GodotObject arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_direct_state_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void applyCentralImpulse(in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyCentralImpulse, _godot_object, impulse);
	}
	/**
	
	*/
	void applyImpulse(in Vector3 position, in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyImpulse, _godot_object, position, impulse);
	}
	/**
	
	*/
	Transform getBodyOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getBodyOffset, _godot_object);
	}
	/**
	
	*/
	long getBoneId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBoneId, _godot_object);
	}
	/**
	
	*/
	double getBounce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBounce, _godot_object);
	}
	/**
	
	*/
	double getFriction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFriction, _godot_object);
	}
	/**
	
	*/
	double getGravityScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGravityScale, _godot_object);
	}
	/**
	
	*/
	Transform getJointOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getJointOffset, _godot_object);
	}
	/**
	
	*/
	PhysicalBone.JointType getJointType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicalBone.JointType)(GDNativeClassBinding.getJointType, _godot_object);
	}
	/**
	
	*/
	double getMass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMass, _godot_object);
	}
	/**
	
	*/
	bool getSimulatePhysics()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getSimulatePhysics, _godot_object);
	}
	/**
	
	*/
	double getWeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getWeight, _godot_object);
	}
	/**
	
	*/
	bool isSimulatingPhysics()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSimulatingPhysics, _godot_object);
	}
	/**
	
	*/
	bool isStaticBody()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isStaticBody, _godot_object);
	}
	/**
	
	*/
	void setBodyOffset(in Transform offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBodyOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setBounce(in double bounce)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBounce, _godot_object, bounce);
	}
	/**
	
	*/
	void setFriction(in double friction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFriction, _godot_object, friction);
	}
	/**
	
	*/
	void setGravityScale(in double gravity_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGravityScale, _godot_object, gravity_scale);
	}
	/**
	
	*/
	void setJointOffset(in Transform offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setJointOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setJointType(in long joint_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setJointType, _godot_object, joint_type);
	}
	/**
	
	*/
	void setMass(in double mass)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMass, _godot_object, mass);
	}
	/**
	
	*/
	void setWeight(in double weight)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWeight, _godot_object, weight);
	}
	/**
	
	*/
	@property Transform bodyOffset()
	{
		return getBodyOffset();
	}
	/// ditto
	@property void bodyOffset(Transform v)
	{
		setBodyOffset(v);
	}
	/**
	
	*/
	@property double bounce()
	{
		return getBounce();
	}
	/// ditto
	@property void bounce(double v)
	{
		setBounce(v);
	}
	/**
	
	*/
	@property double friction()
	{
		return getFriction();
	}
	/// ditto
	@property void friction(double v)
	{
		setFriction(v);
	}
	/**
	
	*/
	@property double gravityScale()
	{
		return getGravityScale();
	}
	/// ditto
	@property void gravityScale(double v)
	{
		setGravityScale(v);
	}
	/**
	
	*/
	@property Transform jointOffset()
	{
		return getJointOffset();
	}
	/// ditto
	@property void jointOffset(Transform v)
	{
		setJointOffset(v);
	}
	/**
	
	*/
	@property PhysicalBone.JointType jointType()
	{
		return getJointType();
	}
	/// ditto
	@property void jointType(long v)
	{
		setJointType(v);
	}
	/**
	
	*/
	@property double mass()
	{
		return getMass();
	}
	/// ditto
	@property void mass(double v)
	{
		setMass(v);
	}
	/**
	
	*/
	@property double weight()
	{
		return getWeight();
	}
	/// ditto
	@property void weight(double v)
	{
		setWeight(v);
	}
}
