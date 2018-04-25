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
/**
Node that represents collision shape data in 3D space.

Editor facility for creating and editing collision shapes in 3D space. You can use this node to represent all sorts of collision shapes, for example, add this to an $(D Area) to give it a detection shape, or add it to a $(D PhysicsBody) to create a solid object. $(B IMPORTANT): this is an Editor-only helper to create shapes, use $(D getShape) to get the actual shape.
*/
@GodotBaseClass struct CollisionShape
{
	static immutable string _GODOT_internal_name = "CollisionShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, Resource) _GODOT_resource_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "resource_changed") = _GODOT_resource_changed;
	/**
	If this method exists within a script it will be called whenever the shape resource has been modified.
	*/
	void resourceChanged(Resource resource)
	{
		_GODOT_resource_changed.bind("CollisionShape", "resource_changed");
		ptrcall!(void)(_GODOT_resource_changed, _godot_object, resource);
	}
	package(godot) static GodotMethod!(void, Shape) _GODOT_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape") = _GODOT_set_shape;
	/**
	
	*/
	void setShape(Shape shape)
	{
		_GODOT_set_shape.bind("CollisionShape", "set_shape");
		ptrcall!(void)(_GODOT_set_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Shape) _GODOT_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape") = _GODOT_get_shape;
	/**
	
	*/
	Ref!Shape getShape() const
	{
		_GODOT_get_shape.bind("CollisionShape", "get_shape");
		return ptrcall!(Shape)(_GODOT_get_shape, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled") = _GODOT_set_disabled;
	/**
	
	*/
	void setDisabled(in bool enable)
	{
		_GODOT_set_disabled.bind("CollisionShape", "set_disabled");
		ptrcall!(void)(_GODOT_set_disabled, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_disabled") = _GODOT_is_disabled;
	/**
	
	*/
	bool isDisabled() const
	{
		_GODOT_is_disabled.bind("CollisionShape", "is_disabled");
		return ptrcall!(bool)(_GODOT_is_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_make_convex_from_brothers;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_convex_from_brothers") = _GODOT_make_convex_from_brothers;
	/**
	Sets the collision shape's shape to the addition of all its convexed $(D MeshInstance) siblings geometry.
	*/
	void makeConvexFromBrothers()
	{
		_GODOT_make_convex_from_brothers.bind("CollisionShape", "make_convex_from_brothers");
		ptrcall!(void)(_GODOT_make_convex_from_brothers, _godot_object);
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
