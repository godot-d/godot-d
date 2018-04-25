/**
Base node for 2D collision objects.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionobject2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.node2d;
import godot.inputevent;
import godot.shape2d;
/**
Base node for 2D collision objects.

CollisionObject2D is the base class for 2D physics objects. It can hold any number of 2D collision $(D Shape2D)s. Each shape must be assigned to a $(I shape owner). The CollisionObject2D can have any number of shape owners. Shape owners are not nodes and do not appear in the editor, but are accessible through code using the `shape_owner_*` methods.
*/
@GodotBaseClass struct CollisionObject2D
{
	static immutable string _GODOT_internal_name = "CollisionObject2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CollisionObject2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionObject2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CollisionObject2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionObject2D");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionObject2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, GodotObject, InputEvent, long) _GODOT__input_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input_event") = _GODOT__input_event;
	/**
	Accepts unhandled $(D InputEvent)s. `shape_idx` is the child index of the clicked $(D Shape2D). Connect to the `input_event` signal to easily pick up these events.
	*/
	void _inputEvent(GodotObject viewport, InputEvent event, in long shape_idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(viewport);
		_GODOT_args.append(event);
		_GODOT_args.append(shape_idx);
		String _GODOT_method_name = String("_input_event");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rid") = _GODOT_get_rid;
	/**
	Returns the object's $(D RID).
	*/
	RID getRid() const
	{
		_GODOT_get_rid.bind("CollisionObject2D", "get_rid");
		return ptrcall!(RID)(_GODOT_get_rid, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pickable") = _GODOT_set_pickable;
	/**
	
	*/
	void setPickable(in bool enabled)
	{
		_GODOT_set_pickable.bind("CollisionObject2D", "set_pickable");
		ptrcall!(void)(_GODOT_set_pickable, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_pickable") = _GODOT_is_pickable;
	/**
	
	*/
	bool isPickable() const
	{
		_GODOT_is_pickable.bind("CollisionObject2D", "is_pickable");
		return ptrcall!(bool)(_GODOT_is_pickable, _godot_object);
	}
	package(godot) static GodotMethod!(long, GodotObject) _GODOT_create_shape_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_shape_owner") = _GODOT_create_shape_owner;
	/**
	Creates a new shape owner for the given object. Returns `owner_id` of the new owner for future reference.
	*/
	long createShapeOwner(GodotObject owner)
	{
		_GODOT_create_shape_owner.bind("CollisionObject2D", "create_shape_owner");
		return ptrcall!(long)(_GODOT_create_shape_owner, _godot_object, owner);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_shape_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_shape_owner") = _GODOT_remove_shape_owner;
	/**
	Removes the given shape owner.
	*/
	void removeShapeOwner(in long owner_id)
	{
		_GODOT_remove_shape_owner.bind("CollisionObject2D", "remove_shape_owner");
		ptrcall!(void)(_GODOT_remove_shape_owner, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_shape_owners;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape_owners") = _GODOT_get_shape_owners;
	/**
	Returns an $(D Array) of `owner_id` identifiers. You can use these ids in other methods that take `owner_id` as an argument.
	*/
	Array getShapeOwners()
	{
		_GODOT_get_shape_owners.bind("CollisionObject2D", "get_shape_owners");
		return ptrcall!(Array)(_GODOT_get_shape_owners, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, Transform2D) _GODOT_shape_owner_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_set_transform") = _GODOT_shape_owner_set_transform;
	/**
	Sets the $(D Transform2D) of the given shape owner.
	*/
	void shapeOwnerSetTransform(in long owner_id, in Transform2D transform)
	{
		_GODOT_shape_owner_set_transform.bind("CollisionObject2D", "shape_owner_set_transform");
		ptrcall!(void)(_GODOT_shape_owner_set_transform, _godot_object, owner_id, transform);
	}
	package(godot) static GodotMethod!(Transform2D, long) _GODOT_shape_owner_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_transform") = _GODOT_shape_owner_get_transform;
	/**
	Returns the shape owner's $(D Transform2D).
	*/
	Transform2D shapeOwnerGetTransform(in long owner_id) const
	{
		_GODOT_shape_owner_get_transform.bind("CollisionObject2D", "shape_owner_get_transform");
		return ptrcall!(Transform2D)(_GODOT_shape_owner_get_transform, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(GodotObject, long) _GODOT_shape_owner_get_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_owner") = _GODOT_shape_owner_get_owner;
	/**
	Returns the parent object of the given shape owner.
	*/
	GodotObject shapeOwnerGetOwner(in long owner_id) const
	{
		_GODOT_shape_owner_get_owner.bind("CollisionObject2D", "shape_owner_get_owner");
		return ptrcall!(GodotObject)(_GODOT_shape_owner_get_owner, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_shape_owner_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_set_disabled") = _GODOT_shape_owner_set_disabled;
	/**
	If `true` disables the given shape owner.
	*/
	void shapeOwnerSetDisabled(in long owner_id, in bool disabled)
	{
		_GODOT_shape_owner_set_disabled.bind("CollisionObject2D", "shape_owner_set_disabled");
		ptrcall!(void)(_GODOT_shape_owner_set_disabled, _godot_object, owner_id, disabled);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_shape_owner_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shape_owner_disabled") = _GODOT_is_shape_owner_disabled;
	/**
	If `true` the shape owner and its shapes are disabled.
	*/
	bool isShapeOwnerDisabled(in long owner_id) const
	{
		_GODOT_is_shape_owner_disabled.bind("CollisionObject2D", "is_shape_owner_disabled");
		return ptrcall!(bool)(_GODOT_is_shape_owner_disabled, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_shape_owner_set_one_way_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_set_one_way_collision") = _GODOT_shape_owner_set_one_way_collision;
	/**
	If `enable` is `true`, collisions for the shape owner originating from this `CollisionObject2D` will not be reported to collided with `CollisionObject2D`s.
	*/
	void shapeOwnerSetOneWayCollision(in long owner_id, in bool enable)
	{
		_GODOT_shape_owner_set_one_way_collision.bind("CollisionObject2D", "shape_owner_set_one_way_collision");
		ptrcall!(void)(_GODOT_shape_owner_set_one_way_collision, _godot_object, owner_id, enable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_shape_owner_one_way_collision_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shape_owner_one_way_collision_enabled") = _GODOT_is_shape_owner_one_way_collision_enabled;
	/**
	Returns `true` if collisions for the shape owner originating from this `CollisionObject2D` will not be reported to collided with `CollisionObject2D`s.
	*/
	bool isShapeOwnerOneWayCollisionEnabled(in long owner_id) const
	{
		_GODOT_is_shape_owner_one_way_collision_enabled.bind("CollisionObject2D", "is_shape_owner_one_way_collision_enabled");
		return ptrcall!(bool)(_GODOT_is_shape_owner_one_way_collision_enabled, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(void, long, Shape2D) _GODOT_shape_owner_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_add_shape") = _GODOT_shape_owner_add_shape;
	/**
	Adds a $(D Shape2D) to the shape owner.
	*/
	void shapeOwnerAddShape(in long owner_id, Shape2D shape)
	{
		_GODOT_shape_owner_add_shape.bind("CollisionObject2D", "shape_owner_add_shape");
		ptrcall!(void)(_GODOT_shape_owner_add_shape, _godot_object, owner_id, shape);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_shape_owner_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_shape_count") = _GODOT_shape_owner_get_shape_count;
	/**
	Returns the number of shapes the given shape owner contains.
	*/
	long shapeOwnerGetShapeCount(in long owner_id) const
	{
		_GODOT_shape_owner_get_shape_count.bind("CollisionObject2D", "shape_owner_get_shape_count");
		return ptrcall!(long)(_GODOT_shape_owner_get_shape_count, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(Shape2D, long, long) _GODOT_shape_owner_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_shape") = _GODOT_shape_owner_get_shape;
	/**
	Returns the $(D Shape2D) with the given id from the given shape owner.
	*/
	Ref!Shape2D shapeOwnerGetShape(in long owner_id, in long shape_id) const
	{
		_GODOT_shape_owner_get_shape.bind("CollisionObject2D", "shape_owner_get_shape");
		return ptrcall!(Shape2D)(_GODOT_shape_owner_get_shape, _godot_object, owner_id, shape_id);
	}
	package(godot) static GodotMethod!(long, long, long) _GODOT_shape_owner_get_shape_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_shape_index") = _GODOT_shape_owner_get_shape_index;
	/**
	Returns the child index of the $(D Shape2D) with the given id from the given shape owner.
	*/
	long shapeOwnerGetShapeIndex(in long owner_id, in long shape_id) const
	{
		_GODOT_shape_owner_get_shape_index.bind("CollisionObject2D", "shape_owner_get_shape_index");
		return ptrcall!(long)(_GODOT_shape_owner_get_shape_index, _godot_object, owner_id, shape_id);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_shape_owner_remove_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_remove_shape") = _GODOT_shape_owner_remove_shape;
	/**
	Removes a shape from the given shape owner.
	*/
	void shapeOwnerRemoveShape(in long owner_id, in long shape_id)
	{
		_GODOT_shape_owner_remove_shape.bind("CollisionObject2D", "shape_owner_remove_shape");
		ptrcall!(void)(_GODOT_shape_owner_remove_shape, _godot_object, owner_id, shape_id);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_shape_owner_clear_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_clear_shapes") = _GODOT_shape_owner_clear_shapes;
	/**
	Removes all shapes from the shape owner.
	*/
	void shapeOwnerClearShapes(in long owner_id)
	{
		_GODOT_shape_owner_clear_shapes.bind("CollisionObject2D", "shape_owner_clear_shapes");
		ptrcall!(void)(_GODOT_shape_owner_clear_shapes, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_shape_find_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_find_owner") = _GODOT_shape_find_owner;
	/**
	Returns the `owner_id` of the given shape.
	*/
	long shapeFindOwner(in long shape_index) const
	{
		_GODOT_shape_find_owner.bind("CollisionObject2D", "shape_find_owner");
		return ptrcall!(long)(_GODOT_shape_find_owner, _godot_object, shape_index);
	}
	/**
	If `true` this object is pickable. A pickable object can detect the mouse pointer entering/leaving, and if the mouse is inside it, report input events.
	*/
	@property bool inputPickable()
	{
		return isPickable();
	}
	/// ditto
	@property void inputPickable(bool v)
	{
		setPickable(v);
	}
}
