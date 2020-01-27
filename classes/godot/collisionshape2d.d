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

Editor facility for creating and editing collision shapes in 2D space. You can use this node to represent all sorts of collision shapes, for example, add this to an $(D Area2D) to give it a detection shape, or add it to a $(D PhysicsBody2D) to create a solid object. $(B IMPORTANT): this is an Editor-only helper to create shapes, use $(D CollisionObject2D.shapeOwnerGetShape) to get the actual shape.
*/
@GodotBaseClass struct CollisionShape2D
{
	enum string _GODOT_internal_name = "CollisionShape2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_shape_changed") GodotMethod!(void) _shapeChanged;
		@GodotName("get_one_way_collision_margin") GodotMethod!(double) getOneWayCollisionMargin;
		@GodotName("get_shape") GodotMethod!(Shape2D) getShape;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("is_one_way_collision_enabled") GodotMethod!(bool) isOneWayCollisionEnabled;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("set_one_way_collision") GodotMethod!(void, bool) setOneWayCollision;
		@GodotName("set_one_way_collision_margin") GodotMethod!(void, double) setOneWayCollisionMargin;
		@GodotName("set_shape") GodotMethod!(void, Shape2D) setShape;
	}
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
	double getOneWayCollisionMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getOneWayCollisionMargin, _godot_object);
	}
	/**
	
	*/
	Ref!Shape2D getShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape2D)(_classBinding.getShape, _godot_object);
	}
	/**
	
	*/
	bool isDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDisabled, _godot_object);
	}
	/**
	
	*/
	bool isOneWayCollisionEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isOneWayCollisionEnabled, _godot_object);
	}
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisabled, _godot_object, disabled);
	}
	/**
	
	*/
	void setOneWayCollision(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOneWayCollision, _godot_object, enabled);
	}
	/**
	
	*/
	void setOneWayCollisionMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOneWayCollisionMargin, _godot_object, margin);
	}
	/**
	
	*/
	void setShape(Shape2D shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShape, _godot_object, shape);
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
	/**
	The margin used for one-way collision (in pixels).
	*/
	@property double oneWayCollisionMargin()
	{
		return getOneWayCollisionMargin();
	}
	/// ditto
	@property void oneWayCollisionMargin(double v)
	{
		setOneWayCollisionMargin(v);
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
}
