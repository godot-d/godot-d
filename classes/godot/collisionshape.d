/**
Node that represents collision shape data in 3D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.shape;
import godot.resource;
/**
Node that represents collision shape data in 3D space.

Editor facility for creating and editing collision shapes in 3D space. You can use this node to represent all sorts of collision shapes, for example, add this to an $(D Area) to give it a detection shape, or add it to a $(D PhysicsBody) to create a solid object. $(B IMPORTANT): this is an Editor-only helper to create shapes, use $(D CollisionObject.shapeOwnerGetShape) to get the actual shape.
*/
@GodotBaseClass struct CollisionShape
{
	package(godot) enum string _GODOT_internal_name = "CollisionShape";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_shape_changed") GodotMethod!(void) _shapeChanged;
		@GodotName("_update_debug_shape") GodotMethod!(void) _updateDebugShape;
		@GodotName("get_shape") GodotMethod!(Shape) getShape;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("make_convex_from_brothers") GodotMethod!(void) makeConvexFromBrothers;
		@GodotName("resource_changed") GodotMethod!(void, Resource) resourceChanged;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("set_shape") GodotMethod!(void, Shape) setShape;
	}
	/// 
	pragma(inline, true) bool opEquals(in CollisionShape other) const
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
	/// Construct a new instance of CollisionShape.
	/// Note: use `memnew!CollisionShape` instead.
	static CollisionShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionShape");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionShape)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _shapeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_shape_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateDebugShape()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_debug_shape");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Ref!Shape getShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(GDNativeClassBinding.getShape, _godot_object);
	}
	/**
	
	*/
	bool isDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDisabled, _godot_object);
	}
	/**
	Sets the collision shape's shape to the addition of all its convexed $(D MeshInstance) siblings geometry.
	*/
	void makeConvexFromBrothers()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.makeConvexFromBrothers, _godot_object);
	}
	/**
	If this method exists within a script it will be called whenever the shape resource has been modified.
	*/
	void resourceChanged(Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resourceChanged, _godot_object, resource);
	}
	/**
	
	*/
	void setDisabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisabled, _godot_object, enable);
	}
	/**
	
	*/
	void setShape(Shape shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShape, _godot_object, shape);
	}
	/**
	A disabled collision shape has no effect in the world.
	*/
	@property bool disabled()
	{
		return isDisabled();
	}
	/// ditto
	@property void disabled(bool v)
	{
		setDisabled(v);
	}
	/**
	The actual shape owned by this collision shape.
	*/
	@property Shape shape()
	{
		return getShape();
	}
	/// ditto
	@property void shape(Shape v)
	{
		setShape(v);
	}
}
