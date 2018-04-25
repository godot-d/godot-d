/**
Base node for collision objects.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionobject;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.spatial;
import godot.inputevent;
import godot.shape;
/**
Base node for collision objects.

CollisionObject is the base class for physics objects. It can hold any number of collision $(D Shape)s. Each shape must be assigned to a $(I shape owner). The CollisionObject can have any number of shape owners. Shape owners are not nodes and do not appear in the editor, but are accessible through code using the `shape_owner_*` methods.
*/
@GodotBaseClass struct CollisionObject
{
	static immutable string _GODOT_internal_name = "CollisionObject";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CollisionObject other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionObject opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CollisionObject _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionObject");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionObject)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, GodotObject, InputEvent, Vector3, Vector3, long) _GODOT__input_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input_event") = _GODOT__input_event;
	/**
	Accepts unhandled $(D InputEvent)s. `click_position` is the clicked location in world space and `click_normal` is the normal vector extending from the clicked surface of the $(D Shape) at `shape_idx`. Connect to the `input_event` signal to easily pick up these events.
	*/
	void _inputEvent(GodotObject camera, InputEvent event, in Vector3 click_position, in Vector3 click_normal, in long shape_idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(camera);
		_GODOT_args.append(event);
		_GODOT_args.append(click_position);
		_GODOT_args.append(click_normal);
		_GODOT_args.append(shape_idx);
		String _GODOT_method_name = String("_input_event");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ray_pickable") = _GODOT_set_ray_pickable;
	/**
	
	*/
	void setRayPickable(in bool ray_pickable)
	{
		_GODOT_set_ray_pickable.bind("CollisionObject", "set_ray_pickable");
		ptrcall!(void)(_GODOT_set_ray_pickable, _godot_object, ray_pickable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ray_pickable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ray_pickable") = _GODOT_is_ray_pickable;
	/**
	
	*/
	bool isRayPickable() const
	{
		_GODOT_is_ray_pickable.bind("CollisionObject", "is_ray_pickable");
		return ptrcall!(bool)(_GODOT_is_ray_pickable, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_capture_input_on_drag;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_capture_input_on_drag") = _GODOT_set_capture_input_on_drag;
	/**
	
	*/
	void setCaptureInputOnDrag(in bool enable)
	{
		_GODOT_set_capture_input_on_drag.bind("CollisionObject", "set_capture_input_on_drag");
		ptrcall!(void)(_GODOT_set_capture_input_on_drag, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_capture_input_on_drag;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_capture_input_on_drag") = _GODOT_get_capture_input_on_drag;
	/**
	
	*/
	bool getCaptureInputOnDrag() const
	{
		_GODOT_get_capture_input_on_drag.bind("CollisionObject", "get_capture_input_on_drag");
		return ptrcall!(bool)(_GODOT_get_capture_input_on_drag, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rid") = _GODOT_get_rid;
	/**
	Returns the object's $(D RID).
	*/
	RID getRid() const
	{
		_GODOT_get_rid.bind("CollisionObject", "get_rid");
		return ptrcall!(RID)(_GODOT_get_rid, _godot_object);
	}
	package(godot) static GodotMethod!(long, GodotObject) _GODOT_create_shape_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_shape_owner") = _GODOT_create_shape_owner;
	/**
	Creates a new shape owner for the given object. Returns `owner_id` of the new owner for future reference.
	*/
	long createShapeOwner(GodotObject owner)
	{
		_GODOT_create_shape_owner.bind("CollisionObject", "create_shape_owner");
		return ptrcall!(long)(_GODOT_create_shape_owner, _godot_object, owner);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_shape_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_shape_owner") = _GODOT_remove_shape_owner;
	/**
	Removes the given shape owner.
	*/
	void removeShapeOwner(in long owner_id)
	{
		_GODOT_remove_shape_owner.bind("CollisionObject", "remove_shape_owner");
		ptrcall!(void)(_GODOT_remove_shape_owner, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_shape_owners;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape_owners") = _GODOT_get_shape_owners;
	/**
	Returns an $(D Array) of `owner_id` identifiers. You can use these ids in other methods that take `owner_id` as an argument.
	*/
	Array getShapeOwners()
	{
		_GODOT_get_shape_owners.bind("CollisionObject", "get_shape_owners");
		return ptrcall!(Array)(_GODOT_get_shape_owners, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, Transform) _GODOT_shape_owner_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_set_transform") = _GODOT_shape_owner_set_transform;
	/**
	Sets the $(D Transform) of the given shape owner.
	*/
	void shapeOwnerSetTransform(in long owner_id, in Transform transform)
	{
		_GODOT_shape_owner_set_transform.bind("CollisionObject", "shape_owner_set_transform");
		ptrcall!(void)(_GODOT_shape_owner_set_transform, _godot_object, owner_id, transform);
	}
	package(godot) static GodotMethod!(Transform, long) _GODOT_shape_owner_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_transform") = _GODOT_shape_owner_get_transform;
	/**
	Returns the shape owner's $(D Transform).
	*/
	Transform shapeOwnerGetTransform(in long owner_id) const
	{
		_GODOT_shape_owner_get_transform.bind("CollisionObject", "shape_owner_get_transform");
		return ptrcall!(Transform)(_GODOT_shape_owner_get_transform, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(GodotObject, long) _GODOT_shape_owner_get_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_owner") = _GODOT_shape_owner_get_owner;
	/**
	Returns the parent object of the given shape owner.
	*/
	GodotObject shapeOwnerGetOwner(in long owner_id) const
	{
		_GODOT_shape_owner_get_owner.bind("CollisionObject", "shape_owner_get_owner");
		return ptrcall!(GodotObject)(_GODOT_shape_owner_get_owner, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_shape_owner_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_set_disabled") = _GODOT_shape_owner_set_disabled;
	/**
	If `true` disables the given shape owner.
	*/
	void shapeOwnerSetDisabled(in long owner_id, in bool disabled)
	{
		_GODOT_shape_owner_set_disabled.bind("CollisionObject", "shape_owner_set_disabled");
		ptrcall!(void)(_GODOT_shape_owner_set_disabled, _godot_object, owner_id, disabled);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_shape_owner_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shape_owner_disabled") = _GODOT_is_shape_owner_disabled;
	/**
	If `true` the shape owner and its shapes are disabled.
	*/
	bool isShapeOwnerDisabled(in long owner_id) const
	{
		_GODOT_is_shape_owner_disabled.bind("CollisionObject", "is_shape_owner_disabled");
		return ptrcall!(bool)(_GODOT_is_shape_owner_disabled, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(void, long, Shape) _GODOT_shape_owner_add_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_add_shape") = _GODOT_shape_owner_add_shape;
	/**
	Adds a $(D Shape) to the shape owner.
	*/
	void shapeOwnerAddShape(in long owner_id, Shape shape)
	{
		_GODOT_shape_owner_add_shape.bind("CollisionObject", "shape_owner_add_shape");
		ptrcall!(void)(_GODOT_shape_owner_add_shape, _godot_object, owner_id, shape);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_shape_owner_get_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_shape_count") = _GODOT_shape_owner_get_shape_count;
	/**
	Returns the number of shapes the given shape owner contains.
	*/
	long shapeOwnerGetShapeCount(in long owner_id) const
	{
		_GODOT_shape_owner_get_shape_count.bind("CollisionObject", "shape_owner_get_shape_count");
		return ptrcall!(long)(_GODOT_shape_owner_get_shape_count, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(Shape, long, long) _GODOT_shape_owner_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_shape") = _GODOT_shape_owner_get_shape;
	/**
	Returns the $(D Shape) with the given id from the given shape owner.
	*/
	Ref!Shape shapeOwnerGetShape(in long owner_id, in long shape_id) const
	{
		_GODOT_shape_owner_get_shape.bind("CollisionObject", "shape_owner_get_shape");
		return ptrcall!(Shape)(_GODOT_shape_owner_get_shape, _godot_object, owner_id, shape_id);
	}
	package(godot) static GodotMethod!(long, long, long) _GODOT_shape_owner_get_shape_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_get_shape_index") = _GODOT_shape_owner_get_shape_index;
	/**
	Returns the child index of the $(D Shape) with the given id from the given shape owner.
	*/
	long shapeOwnerGetShapeIndex(in long owner_id, in long shape_id) const
	{
		_GODOT_shape_owner_get_shape_index.bind("CollisionObject", "shape_owner_get_shape_index");
		return ptrcall!(long)(_GODOT_shape_owner_get_shape_index, _godot_object, owner_id, shape_id);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_shape_owner_remove_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_remove_shape") = _GODOT_shape_owner_remove_shape;
	/**
	Removes a shape from the given shape owner.
	*/
	void shapeOwnerRemoveShape(in long owner_id, in long shape_id)
	{
		_GODOT_shape_owner_remove_shape.bind("CollisionObject", "shape_owner_remove_shape");
		ptrcall!(void)(_GODOT_shape_owner_remove_shape, _godot_object, owner_id, shape_id);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_shape_owner_clear_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_owner_clear_shapes") = _GODOT_shape_owner_clear_shapes;
	/**
	Removes all shapes from the shape owner.
	*/
	void shapeOwnerClearShapes(in long owner_id)
	{
		_GODOT_shape_owner_clear_shapes.bind("CollisionObject", "shape_owner_clear_shapes");
		ptrcall!(void)(_GODOT_shape_owner_clear_shapes, _godot_object, owner_id);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_shape_find_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "shape_find_owner") = _GODOT_shape_find_owner;
	/**
	Returns the `owner_id` of the given shape.
	*/
	long shapeFindOwner(in long shape_index) const
	{
		_GODOT_shape_find_owner.bind("CollisionObject", "shape_find_owner");
		return ptrcall!(long)(_GODOT_shape_find_owner, _godot_object, shape_index);
	}
	/**
	If `true` the $(D CollisionObject)'s shapes will respond to $(D RayCast)s. Default value: `true`.
	*/
	@property bool inputRayPickable()
	{
		return isRayPickable();
	}
	/// ditto
	@property void inputRayPickable(bool v)
	{
		setRayPickable(v);
	}
	/**
	If `true` the `CollisionObject` will continue to receive input events as the mouse is dragged across its shapes. Default value: `false`.
	*/
	@property bool inputCaptureOnDrag()
	{
		return getCaptureInputOnDrag();
	}
	/// ditto
	@property void inputCaptureOnDrag(bool v)
	{
		setCaptureInputOnDrag(v);
	}
}
