/**
Node that represents collision shape data in 2D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.shape2d;
/**
Node that represents collision shape data in 2D space.

Editor facility for creating and editing collision shapes in 2D space. You can use this node to represent all sorts of collision shapes, for example, add this to an $(D Area2D) to give it a detection shape, or add it to a $(D PhysicsBody2D) to create a solid object. $(B IMPORTANT): this is an Editor-only helper to create shapes, use $(D getShape) to get the actual shape.
*/
@GodotBaseClass struct CollisionShape2D
{
	static immutable string _GODOT_internal_name = "CollisionShape2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CollisionShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CollisionShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionShape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, Shape2D) _GODOT_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape") = _GODOT_set_shape;
	/**
	
	*/
	void setShape(Shape2D shape)
	{
		_GODOT_set_shape.bind("CollisionShape2D", "set_shape");
		ptrcall!(void)(_GODOT_set_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Shape2D) _GODOT_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape") = _GODOT_get_shape;
	/**
	
	*/
	Ref!Shape2D getShape() const
	{
		_GODOT_get_shape.bind("CollisionShape2D", "get_shape");
		return ptrcall!(Shape2D)(_GODOT_get_shape, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled") = _GODOT_set_disabled;
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		_GODOT_set_disabled.bind("CollisionShape2D", "set_disabled");
		ptrcall!(void)(_GODOT_set_disabled, _godot_object, disabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_disabled") = _GODOT_is_disabled;
	/**
	
	*/
	bool isDisabled() const
	{
		_GODOT_is_disabled.bind("CollisionShape2D", "is_disabled");
		return ptrcall!(bool)(_GODOT_is_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_one_way_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_one_way_collision") = _GODOT_set_one_way_collision;
	/**
	
	*/
	void setOneWayCollision(in bool enabled)
	{
		_GODOT_set_one_way_collision.bind("CollisionShape2D", "set_one_way_collision");
		ptrcall!(void)(_GODOT_set_one_way_collision, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_one_way_collision_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_one_way_collision_enabled") = _GODOT_is_one_way_collision_enabled;
	/**
	
	*/
	bool isOneWayCollisionEnabled() const
	{
		_GODOT_is_one_way_collision_enabled.bind("CollisionShape2D", "is_one_way_collision_enabled");
		return ptrcall!(bool)(_GODOT_is_one_way_collision_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__shape_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_shape_changed") = _GODOT__shape_changed;
	/**
	
	*/
	void _shapeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_shape_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The actual shape owned by this collision shape.
	*/
	@property Shape2D shape()
	{
		return getShape();
	}
	/// ditto
	@property void shape(Shape2D v)
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
	/**
	Sets whether this collision shape should only detect collision on one side (top or bottom).
	*/
	@property bool oneWayCollision()
	{
		return isOneWayCollisionEnabled();
	}
	/// ditto
	@property void oneWayCollision(bool v)
	{
		setOneWayCollision(v);
	}
}
