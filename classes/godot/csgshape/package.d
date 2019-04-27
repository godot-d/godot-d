/**
The CSG base class.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.visualinstance;
import godot.spatial;
import godot.node;
/**
The CSG base class.

This is the CSG base class that provides CSG operation support to the various CSG nodes in Godot.
*/
@GodotBaseClass struct CSGShape
{
	enum string _GODOT_internal_name = "CSGShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_update_shape") GodotMethod!(void) _updateShape;
		@GodotName("is_root_shape") GodotMethod!(bool) isRootShape;
		@GodotName("set_operation") GodotMethod!(void, long) setOperation;
		@GodotName("get_operation") GodotMethod!(CSGShape.Operation) getOperation;
		@GodotName("set_snap") GodotMethod!(void, double) setSnap;
		@GodotName("get_snap") GodotMethod!(double) getSnap;
		@GodotName("set_use_collision") GodotMethod!(void, bool) setUseCollision;
		@GodotName("is_using_collision") GodotMethod!(bool) isUsingCollision;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("set_calculate_tangents") GodotMethod!(void, bool) setCalculateTangents;
		@GodotName("is_calculating_tangents") GodotMethod!(bool) isCalculatingTangents;
		@GodotName("get_meshes") GodotMethod!(Array) getMeshes;
	}
	bool opEquals(in CSGShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CSGShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CSGShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CSGShape");
		if(constructor is null) return typeof(this).init;
		return cast(CSGShape)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Operation : int
	{
		/**
		Geometry of both primitives is merged, intersecting geometry is removed.
		*/
		operationUnion = 0,
		/**
		Only intersecting geometry remains, the rest is removed.
		*/
		operationIntersection = 1,
		/**
		The second shape is susbtracted from the first, leaving a dent with it's shape.
		*/
		operationSubtraction = 2,
	}
	/// 
	enum Constants : int
	{
		operationUnion = 0,
		operationIntersection = 1,
		operationSubtraction = 2,
	}
	/**
	
	*/
	void _updateShape()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_shape");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns `true` if this is a root shape and is thus the object that is rendered.
	*/
	bool isRootShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRootShape, _godot_object);
	}
	/**
	
	*/
	void setOperation(in long operation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOperation, _godot_object, operation);
	}
	/**
	
	*/
	CSGShape.Operation getOperation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CSGShape.Operation)(_classBinding.getOperation, _godot_object);
	}
	/**
	
	*/
	void setSnap(in double snap)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSnap, _godot_object, snap);
	}
	/**
	
	*/
	double getSnap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSnap, _godot_object);
	}
	/**
	
	*/
	void setUseCollision(in bool operation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseCollision, _godot_object, operation);
	}
	/**
	
	*/
	bool isUsingCollision() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingCollision, _godot_object);
	}
	/**
	
	*/
	void setCollisionLayer(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionLayer, _godot_object, layer);
	}
	/**
	
	*/
	long getCollisionLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionLayer, _godot_object);
	}
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionMask, _godot_object);
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
	void setCalculateTangents(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCalculateTangents, _godot_object, enabled);
	}
	/**
	
	*/
	bool isCalculatingTangents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCalculatingTangents, _godot_object);
	}
	/**
	
	*/
	Array getMeshes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getMeshes, _godot_object);
	}
	/**
	The operation that is performed on this shape. This is ignored for the first CSG child node as the operation is between this node and the previous child of this nodes parent.
	*/
	@property CSGShape.Operation operation()
	{
		return getOperation();
	}
	/// ditto
	@property void operation(long v)
	{
		setOperation(v);
	}
	/**
	
	*/
	@property double snap()
	{
		return getSnap();
	}
	/// ditto
	@property void snap(double v)
	{
		setSnap(v);
	}
	/**
	Calculate tangents for the CSG shape which allows the use of normal maps. This is only applied on the root shape, this setting is ignored on any child.
	*/
	@property bool calculateTangents()
	{
		return isCalculatingTangents();
	}
	/// ditto
	@property void calculateTangents(bool v)
	{
		setCalculateTangents(v);
	}
	/**
	Adds a collision shape to the physics engine for our CSG shape. This will always act like a static body. Note that the collision shape is still active even if the CSG shape itself is hidden.
	*/
	@property bool useCollision()
	{
		return isUsingCollision();
	}
	/// ditto
	@property void useCollision(bool v)
	{
		setUseCollision(v);
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
	The physics layers this CSG shape scans for collisions.
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
}
