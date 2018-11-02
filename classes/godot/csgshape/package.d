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
		@GodotName("set_use_collision") GodotMethod!(void, bool) setUseCollision;
		@GodotName("is_using_collision") GodotMethod!(bool) isUsingCollision;
		@GodotName("set_snap") GodotMethod!(void, double) setSnap;
		@GodotName("get_snap") GodotMethod!(double) getSnap;
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
	Returns true if this is a root shape and is thus the object that is rendered.
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
}
