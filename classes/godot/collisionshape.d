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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.resource;
import godot.shape;
import godot.node;
/**
Node that represents collision shape data in 3D space.

Editor facility for creating and editing collision shapes in 3D space. You can use this node to represent all sorts of collision shapes, for example, add this to an $(D Area) to give it a detection shape, or add it to a $(D PhysicsBody) to create a solid object. $(B IMPORTANT): this is an Editor-only helper to create shapes, use $(D CollisionObject.shapeOwnerGetShape) to get the actual shape.
*/
@GodotBaseClass struct CollisionShape
{
	enum string _GODOT_internal_name = "CollisionShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("resource_changed") GodotMethod!(void, Resource) resourceChanged;
		@GodotName("set_shape") GodotMethod!(void, Shape) setShape;
		@GodotName("get_shape") GodotMethod!(Shape) getShape;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("make_convex_from_brothers") GodotMethod!(void) makeConvexFromBrothers;
	}
	bool opEquals(in CollisionShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CollisionShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionShape");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionShape)(constructor());
	}
	@disable new(size_t s);
	/**
	If this method exists within a script it will be called whenever the shape resource has been modified.
	*/
	void resourceChanged(Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.resourceChanged, _godot_object, resource);
	}
	/**
	
	*/
	void setShape(Shape shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShape, _godot_object, shape);
	}
	/**
	
	*/
	Ref!Shape getShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(_classBinding.getShape, _godot_object);
	}
	/**
	
	*/
	void setDisabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisabled, _godot_object, enable);
	}
	/**
	
	*/
	bool isDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDisabled, _godot_object);
	}
	/**
	Sets the collision shape's shape to the addition of all its convexed $(D MeshInstance) siblings geometry.
	*/
	void makeConvexFromBrothers()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.makeConvexFromBrothers, _godot_object);
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
}
