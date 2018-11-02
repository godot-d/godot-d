/**
A soft mesh physics body.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.softbody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.meshinstance;
import godot.geometryinstance;
import godot.visualinstance;
import godot.spatial;
import godot.node;
/**
A soft mesh physics body.

A deformable physics body. Used to create elastic or deformable objects such as cloth, rubber, or other flexible materials.
*/
@GodotBaseClass struct SoftBody
{
	enum string _GODOT_internal_name = "SoftBody";
public:
@nogc nothrow:
	union { godot_object _godot_object; MeshInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_draw_soft_mesh") GodotMethod!(void) _drawSoftMesh;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("set_parent_collision_ignore") GodotMethod!(void, NodePath) setParentCollisionIgnore;
		@GodotName("get_parent_collision_ignore") GodotMethod!(NodePath) getParentCollisionIgnore;
		@GodotName("get_collision_exceptions") GodotMethod!(Array) getCollisionExceptions;
		@GodotName("add_collision_exception_with") GodotMethod!(void, GodotObject) addCollisionExceptionWith;
		@GodotName("remove_collision_exception_with") GodotMethod!(void, GodotObject) removeCollisionExceptionWith;
		@GodotName("set_simulation_precision") GodotMethod!(void, long) setSimulationPrecision;
		@GodotName("get_simulation_precision") GodotMethod!(long) getSimulationPrecision;
		@GodotName("set_total_mass") GodotMethod!(void, double) setTotalMass;
		@GodotName("get_total_mass") GodotMethod!(double) getTotalMass;
		@GodotName("set_linear_stiffness") GodotMethod!(void, double) setLinearStiffness;
		@GodotName("get_linear_stiffness") GodotMethod!(double) getLinearStiffness;
		@GodotName("set_areaAngular_stiffness") GodotMethod!(void, double) setAreaangularStiffness;
		@GodotName("get_areaAngular_stiffness") GodotMethod!(double) getAreaangularStiffness;
		@GodotName("set_volume_stiffness") GodotMethod!(void, double) setVolumeStiffness;
		@GodotName("get_volume_stiffness") GodotMethod!(double) getVolumeStiffness;
		@GodotName("set_pressure_coefficient") GodotMethod!(void, double) setPressureCoefficient;
		@GodotName("get_pressure_coefficient") GodotMethod!(double) getPressureCoefficient;
		@GodotName("set_pose_matching_coefficient") GodotMethod!(void, double) setPoseMatchingCoefficient;
		@GodotName("get_pose_matching_coefficient") GodotMethod!(double) getPoseMatchingCoefficient;
		@GodotName("set_damping_coefficient") GodotMethod!(void, double) setDampingCoefficient;
		@GodotName("get_damping_coefficient") GodotMethod!(double) getDampingCoefficient;
		@GodotName("set_drag_coefficient") GodotMethod!(void, double) setDragCoefficient;
		@GodotName("get_drag_coefficient") GodotMethod!(double) getDragCoefficient;
		@GodotName("set_ray_pickable") GodotMethod!(void, bool) setRayPickable;
		@GodotName("is_ray_pickable") GodotMethod!(bool) isRayPickable;
	}
	bool opEquals(in SoftBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SoftBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SoftBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SoftBody");
		if(constructor is null) return typeof(this).init;
		return cast(SoftBody)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _drawSoftMesh()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_draw_soft_mesh");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setCollisionMask(in long collision_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMask, _godot_object, collision_mask);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionMask, _godot_object);
	}
	/**
	
	*/
	void setCollisionLayer(in long collision_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionLayer, _godot_object, collision_layer);
	}
	/**
	
	*/
	long getCollisionLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionLayer, _godot_object);
	}
	/**
	Sets individual bits on the collision mask. Use this if you only need to change one layer's value.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	Returns an individual bit on the collision mask.
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	Sets individual bits on the layer mask. Use this if you only need to change one layer's value.
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionLayerBit, _godot_object, bit, value);
	}
	/**
	Returns an individual bit on the collision mask.
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionLayerBit, _godot_object, bit);
	}
	/**
	
	*/
	void setParentCollisionIgnore(NodePathArg0)(in NodePathArg0 parent_collision_ignore)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParentCollisionIgnore, _godot_object, parent_collision_ignore);
	}
	/**
	
	*/
	NodePath getParentCollisionIgnore() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getParentCollisionIgnore, _godot_object);
	}
	/**
	Returns an array of nodes that were added as collision exceptions for this body.
	*/
	Array getCollisionExceptions()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getCollisionExceptions, _godot_object);
	}
	/**
	Adds a body to the list of bodies that this body can't collide with.
	*/
	void addCollisionExceptionWith(GodotObject _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCollisionExceptionWith, _godot_object, _body);
	}
	/**
	Removes a body from the list of bodies that this body can't collide with.
	*/
	void removeCollisionExceptionWith(GodotObject _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeCollisionExceptionWith, _godot_object, _body);
	}
	/**
	
	*/
	void setSimulationPrecision(in long simulation_precision)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSimulationPrecision, _godot_object, simulation_precision);
	}
	/**
	
	*/
	long getSimulationPrecision()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSimulationPrecision, _godot_object);
	}
	/**
	
	*/
	void setTotalMass(in double mass)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTotalMass, _godot_object, mass);
	}
	/**
	
	*/
	double getTotalMass()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTotalMass, _godot_object);
	}
	/**
	
	*/
	void setLinearStiffness(in double linear_stiffness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLinearStiffness, _godot_object, linear_stiffness);
	}
	/**
	
	*/
	double getLinearStiffness()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLinearStiffness, _godot_object);
	}
	/**
	
	*/
	void setAreaangularStiffness(in double areaAngular_stiffness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAreaangularStiffness, _godot_object, areaAngular_stiffness);
	}
	/**
	
	*/
	double getAreaangularStiffness()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAreaangularStiffness, _godot_object);
	}
	/**
	
	*/
	void setVolumeStiffness(in double volume_stiffness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVolumeStiffness, _godot_object, volume_stiffness);
	}
	/**
	
	*/
	double getVolumeStiffness()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getVolumeStiffness, _godot_object);
	}
	/**
	
	*/
	void setPressureCoefficient(in double pressure_coefficient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPressureCoefficient, _godot_object, pressure_coefficient);
	}
	/**
	
	*/
	double getPressureCoefficient()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPressureCoefficient, _godot_object);
	}
	/**
	
	*/
	void setPoseMatchingCoefficient(in double pose_matching_coefficient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPoseMatchingCoefficient, _godot_object, pose_matching_coefficient);
	}
	/**
	
	*/
	double getPoseMatchingCoefficient()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPoseMatchingCoefficient, _godot_object);
	}
	/**
	
	*/
	void setDampingCoefficient(in double damping_coefficient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDampingCoefficient, _godot_object, damping_coefficient);
	}
	/**
	
	*/
	double getDampingCoefficient()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDampingCoefficient, _godot_object);
	}
	/**
	
	*/
	void setDragCoefficient(in double drag_coefficient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDragCoefficient, _godot_object, drag_coefficient);
	}
	/**
	
	*/
	double getDragCoefficient()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDragCoefficient, _godot_object);
	}
	/**
	
	*/
	void setRayPickable(in bool ray_pickable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRayPickable, _godot_object, ray_pickable);
	}
	/**
	
	*/
	bool isRayPickable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRayPickable, _godot_object);
	}
	/**
	The physics layers this area is in.
	Collidable objects can exist in any of 32 different layers. These layers work like a tagging system, and are not visual. A collidable can use these layers to select with which objects it can collide, using the collision_mask property.
	A contact is detected if object A is in any of the layers that object B scans, or object B is in any layer scanned by object A.
	*/
	@property long collisionLayer()
	{
		return getCollisionLayer();
	}
	/// ditto
	@property void collisionLayer(long v)
	{
		setCollisionLayer(v);
	}
	/**
	The physics layers this area scans for collisions.
	*/
	@property long collisionMask()
	{
		return getCollisionMask();
	}
	/// ditto
	@property void collisionMask(long v)
	{
		setCollisionMask(v);
	}
	/**
	
	*/
	@property NodePath parentCollisionIgnore()
	{
		return getParentCollisionIgnore();
	}
	/// ditto
	@property void parentCollisionIgnore(NodePath v)
	{
		setParentCollisionIgnore(v);
	}
	/**
	Increasing this value will improve the resulting simulation, but can affect performance. Use with care.
	*/
	@property long simulationPrecision()
	{
		return getSimulationPrecision();
	}
	/// ditto
	@property void simulationPrecision(long v)
	{
		setSimulationPrecision(v);
	}
	/**
	
	*/
	@property double totalMass()
	{
		return getTotalMass();
	}
	/// ditto
	@property void totalMass(double v)
	{
		setTotalMass(v);
	}
	/**
	
	*/
	@property double linearStiffness()
	{
		return getLinearStiffness();
	}
	/// ditto
	@property void linearStiffness(double v)
	{
		setLinearStiffness(v);
	}
	/**
	
	*/
	@property double areaangularStiffness()
	{
		return getAreaangularStiffness();
	}
	/// ditto
	@property void areaangularStiffness(double v)
	{
		setAreaangularStiffness(v);
	}
	/**
	
	*/
	@property double volumeStiffness()
	{
		return getVolumeStiffness();
	}
	/// ditto
	@property void volumeStiffness(double v)
	{
		setVolumeStiffness(v);
	}
	/**
	
	*/
	@property double pressureCoefficient()
	{
		return getPressureCoefficient();
	}
	/// ditto
	@property void pressureCoefficient(double v)
	{
		setPressureCoefficient(v);
	}
	/**
	
	*/
	@property double dampingCoefficient()
	{
		return getDampingCoefficient();
	}
	/// ditto
	@property void dampingCoefficient(double v)
	{
		setDampingCoefficient(v);
	}
	/**
	
	*/
	@property double dragCoefficient()
	{
		return getDragCoefficient();
	}
	/// ditto
	@property void dragCoefficient(double v)
	{
		setDragCoefficient(v);
	}
	/**
	
	*/
	@property double poseMatchingCoefficient()
	{
		return getPoseMatchingCoefficient();
	}
	/// ditto
	@property void poseMatchingCoefficient(double v)
	{
		setPoseMatchingCoefficient(v);
	}
}
