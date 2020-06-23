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
import godot.node;
/**
A soft mesh physics body.

A deformable physics body. Used to create elastic or deformable objects such as cloth, rubber, or other flexible materials.
*/
@GodotBaseClass struct SoftBody
{
	package(godot) enum string _GODOT_internal_name = "SoftBody";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ MeshInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_draw_soft_mesh") GodotMethod!(void) _drawSoftMesh;
		@GodotName("add_collision_exception_with") GodotMethod!(void, Node) addCollisionExceptionWith;
		@GodotName("get_areaAngular_stiffness") GodotMethod!(double) getAreaangularStiffness;
		@GodotName("get_collision_exceptions") GodotMethod!(Array) getCollisionExceptions;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("get_damping_coefficient") GodotMethod!(double) getDampingCoefficient;
		@GodotName("get_drag_coefficient") GodotMethod!(double) getDragCoefficient;
		@GodotName("get_linear_stiffness") GodotMethod!(double) getLinearStiffness;
		@GodotName("get_parent_collision_ignore") GodotMethod!(NodePath) getParentCollisionIgnore;
		@GodotName("get_pose_matching_coefficient") GodotMethod!(double) getPoseMatchingCoefficient;
		@GodotName("get_pressure_coefficient") GodotMethod!(double) getPressureCoefficient;
		@GodotName("get_simulation_precision") GodotMethod!(long) getSimulationPrecision;
		@GodotName("get_total_mass") GodotMethod!(double) getTotalMass;
		@GodotName("get_volume_stiffness") GodotMethod!(double) getVolumeStiffness;
		@GodotName("is_ray_pickable") GodotMethod!(bool) isRayPickable;
		@GodotName("remove_collision_exception_with") GodotMethod!(void, Node) removeCollisionExceptionWith;
		@GodotName("set_areaAngular_stiffness") GodotMethod!(void, double) setAreaangularStiffness;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("set_damping_coefficient") GodotMethod!(void, double) setDampingCoefficient;
		@GodotName("set_drag_coefficient") GodotMethod!(void, double) setDragCoefficient;
		@GodotName("set_linear_stiffness") GodotMethod!(void, double) setLinearStiffness;
		@GodotName("set_parent_collision_ignore") GodotMethod!(void, NodePath) setParentCollisionIgnore;
		@GodotName("set_pose_matching_coefficient") GodotMethod!(void, double) setPoseMatchingCoefficient;
		@GodotName("set_pressure_coefficient") GodotMethod!(void, double) setPressureCoefficient;
		@GodotName("set_ray_pickable") GodotMethod!(void, bool) setRayPickable;
		@GodotName("set_simulation_precision") GodotMethod!(void, long) setSimulationPrecision;
		@GodotName("set_total_mass") GodotMethod!(void, double) setTotalMass;
		@GodotName("set_volume_stiffness") GodotMethod!(void, double) setVolumeStiffness;
	}
	/// 
	pragma(inline, true) bool opEquals(in SoftBody other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) SoftBody opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of SoftBody.
	/// Note: use `memnew!SoftBody` instead.
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
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_draw_soft_mesh");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a body to the list of bodies that this body can't collide with.
	*/
	void addCollisionExceptionWith(Node _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCollisionExceptionWith, _godot_object, _body);
	}
	/**
	
	*/
	double getAreaangularStiffness()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAreaangularStiffness, _godot_object);
	}
	/**
	Returns an array of nodes that were added as collision exceptions for this body.
	*/
	Array getCollisionExceptions()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getCollisionExceptions, _godot_object);
	}
	/**
	
	*/
	long getCollisionLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionLayer, _godot_object);
	}
	/**
	Returns an individual bit on the collision mask.
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionLayerBit, _godot_object, bit);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionMask, _godot_object);
	}
	/**
	Returns an individual bit on the collision mask.
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	
	*/
	double getDampingCoefficient()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDampingCoefficient, _godot_object);
	}
	/**
	
	*/
	double getDragCoefficient()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDragCoefficient, _godot_object);
	}
	/**
	
	*/
	double getLinearStiffness()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLinearStiffness, _godot_object);
	}
	/**
	
	*/
	NodePath getParentCollisionIgnore() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getParentCollisionIgnore, _godot_object);
	}
	/**
	
	*/
	double getPoseMatchingCoefficient()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPoseMatchingCoefficient, _godot_object);
	}
	/**
	
	*/
	double getPressureCoefficient()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPressureCoefficient, _godot_object);
	}
	/**
	
	*/
	long getSimulationPrecision()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSimulationPrecision, _godot_object);
	}
	/**
	
	*/
	double getTotalMass()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTotalMass, _godot_object);
	}
	/**
	
	*/
	double getVolumeStiffness()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVolumeStiffness, _godot_object);
	}
	/**
	
	*/
	bool isRayPickable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRayPickable, _godot_object);
	}
	/**
	Removes a body from the list of bodies that this body can't collide with.
	*/
	void removeCollisionExceptionWith(Node _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeCollisionExceptionWith, _godot_object, _body);
	}
	/**
	
	*/
	void setAreaangularStiffness(in double areaAngular_stiffness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAreaangularStiffness, _godot_object, areaAngular_stiffness);
	}
	/**
	
	*/
	void setCollisionLayer(in long collision_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionLayer, _godot_object, collision_layer);
	}
	/**
	Sets individual bits on the layer mask. Use this if you only need to change one layer's value.
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionLayerBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setCollisionMask(in long collision_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMask, _godot_object, collision_mask);
	}
	/**
	Sets individual bits on the collision mask. Use this if you only need to change one layer's value.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setDampingCoefficient(in double damping_coefficient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDampingCoefficient, _godot_object, damping_coefficient);
	}
	/**
	
	*/
	void setDragCoefficient(in double drag_coefficient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDragCoefficient, _godot_object, drag_coefficient);
	}
	/**
	
	*/
	void setLinearStiffness(in double linear_stiffness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLinearStiffness, _godot_object, linear_stiffness);
	}
	/**
	
	*/
	void setParentCollisionIgnore(NodePathArg0)(in NodePathArg0 parent_collision_ignore)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParentCollisionIgnore, _godot_object, parent_collision_ignore);
	}
	/**
	
	*/
	void setPoseMatchingCoefficient(in double pose_matching_coefficient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPoseMatchingCoefficient, _godot_object, pose_matching_coefficient);
	}
	/**
	
	*/
	void setPressureCoefficient(in double pressure_coefficient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPressureCoefficient, _godot_object, pressure_coefficient);
	}
	/**
	
	*/
	void setRayPickable(in bool ray_pickable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRayPickable, _godot_object, ray_pickable);
	}
	/**
	
	*/
	void setSimulationPrecision(in long simulation_precision)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSimulationPrecision, _godot_object, simulation_precision);
	}
	/**
	
	*/
	void setTotalMass(in double mass)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTotalMass, _godot_object, mass);
	}
	/**
	
	*/
	void setVolumeStiffness(in double volume_stiffness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVolumeStiffness, _godot_object, volume_stiffness);
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
	The physics layers this SoftBody is in.
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
	The physics layers this SoftBody scans for collisions.
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
	$(D NodePath) to a $(D CollisionObject) this SoftBody should avoid clipping.
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
	If `true`, the $(D SoftBody) will respond to $(D RayCast)s.
	*/
	@property bool rayPickable()
	{
		return isRayPickable();
	}
	/// ditto
	@property void rayPickable(bool v)
	{
		setRayPickable(v);
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
	The SoftBody's mass.
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
	@property double volumeStiffness()
	{
		return getVolumeStiffness();
	}
	/// ditto
	@property void volumeStiffness(double v)
	{
		setVolumeStiffness(v);
	}
}
