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
import godot.node;
/**
Base node for collision objects.

CollisionObject is the base class for physics objects. It can hold any number of collision $(D Shape)s. Each shape must be assigned to a $(I shape owner). The CollisionObject can have any number of shape owners. Shape owners are not nodes and do not appear in the editor, but are accessible through code using the `shape_owner_*` methods.
*/
@GodotBaseClass struct CollisionObject
{
	enum string _GODOT_internal_name = "CollisionObject";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_input_event") GodotMethod!(void, GodotObject, InputEvent, Vector3, Vector3, long) _inputEvent;
		@GodotName("set_ray_pickable") GodotMethod!(void, bool) setRayPickable;
		@GodotName("is_ray_pickable") GodotMethod!(bool) isRayPickable;
		@GodotName("set_capture_input_on_drag") GodotMethod!(void, bool) setCaptureInputOnDrag;
		@GodotName("get_capture_input_on_drag") GodotMethod!(bool) getCaptureInputOnDrag;
		@GodotName("get_rid") GodotMethod!(RID) getRid;
		@GodotName("create_shape_owner") GodotMethod!(long, GodotObject) createShapeOwner;
		@GodotName("remove_shape_owner") GodotMethod!(void, long) removeShapeOwner;
		@GodotName("get_shape_owners") GodotMethod!(Array) getShapeOwners;
		@GodotName("shape_owner_set_transform") GodotMethod!(void, long, Transform) shapeOwnerSetTransform;
		@GodotName("shape_owner_get_transform") GodotMethod!(Transform, long) shapeOwnerGetTransform;
		@GodotName("shape_owner_get_owner") GodotMethod!(GodotObject, long) shapeOwnerGetOwner;
		@GodotName("shape_owner_set_disabled") GodotMethod!(void, long, bool) shapeOwnerSetDisabled;
		@GodotName("is_shape_owner_disabled") GodotMethod!(bool, long) isShapeOwnerDisabled;
		@GodotName("shape_owner_add_shape") GodotMethod!(void, long, Shape) shapeOwnerAddShape;
		@GodotName("shape_owner_get_shape_count") GodotMethod!(long, long) shapeOwnerGetShapeCount;
		@GodotName("shape_owner_get_shape") GodotMethod!(Shape, long, long) shapeOwnerGetShape;
		@GodotName("shape_owner_get_shape_index") GodotMethod!(long, long, long) shapeOwnerGetShapeIndex;
		@GodotName("shape_owner_remove_shape") GodotMethod!(void, long, long) shapeOwnerRemoveShape;
		@GodotName("shape_owner_clear_shapes") GodotMethod!(void, long) shapeOwnerClearShapes;
		@GodotName("shape_find_owner") GodotMethod!(long, long) shapeFindOwner;
	}
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
	/**
	
	*/
	void setRayPickable(in bool ray_pickable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRayPickable, _godot_object, ray_pickable);
	}
	/**
	
	*/
	bool isRayPickable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRayPickable, _godot_object);
	}
	/**
	
	*/
	void setCaptureInputOnDrag(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCaptureInputOnDrag, _godot_object, enable);
	}
	/**
	
	*/
	bool getCaptureInputOnDrag() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCaptureInputOnDrag, _godot_object);
	}
	/**
	Returns the object's $(D RID).
	*/
	RID getRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getRid, _godot_object);
	}
	/**
	Creates a new shape owner for the given object. Returns `owner_id` of the new owner for future reference.
	*/
	long createShapeOwner(GodotObject owner)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.createShapeOwner, _godot_object, owner);
	}
	/**
	Removes the given shape owner.
	*/
	void removeShapeOwner(in long owner_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeShapeOwner, _godot_object, owner_id);
	}
	/**
	Returns an $(D Array) of `owner_id` identifiers. You can use these ids in other methods that take `owner_id` as an argument.
	*/
	Array getShapeOwners()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getShapeOwners, _godot_object);
	}
	/**
	Sets the $(D Transform) of the given shape owner.
	*/
	void shapeOwnerSetTransform(in long owner_id, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.shapeOwnerSetTransform, _godot_object, owner_id, transform);
	}
	/**
	Returns the shape owner's $(D Transform).
	*/
	Transform shapeOwnerGetTransform(in long owner_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.shapeOwnerGetTransform, _godot_object, owner_id);
	}
	/**
	Returns the parent object of the given shape owner.
	*/
	GodotObject shapeOwnerGetOwner(in long owner_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(_classBinding.shapeOwnerGetOwner, _godot_object, owner_id);
	}
	/**
	If `true` disables the given shape owner.
	*/
	void shapeOwnerSetDisabled(in long owner_id, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.shapeOwnerSetDisabled, _godot_object, owner_id, disabled);
	}
	/**
	If `true` the shape owner and its shapes are disabled.
	*/
	bool isShapeOwnerDisabled(in long owner_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isShapeOwnerDisabled, _godot_object, owner_id);
	}
	/**
	Adds a $(D Shape) to the shape owner.
	*/
	void shapeOwnerAddShape(in long owner_id, Shape shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.shapeOwnerAddShape, _godot_object, owner_id, shape);
	}
	/**
	Returns the number of shapes the given shape owner contains.
	*/
	long shapeOwnerGetShapeCount(in long owner_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.shapeOwnerGetShapeCount, _godot_object, owner_id);
	}
	/**
	Returns the $(D Shape) with the given id from the given shape owner.
	*/
	Ref!Shape shapeOwnerGetShape(in long owner_id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(_classBinding.shapeOwnerGetShape, _godot_object, owner_id, shape_id);
	}
	/**
	Returns the child index of the $(D Shape) with the given id from the given shape owner.
	*/
	long shapeOwnerGetShapeIndex(in long owner_id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.shapeOwnerGetShapeIndex, _godot_object, owner_id, shape_id);
	}
	/**
	Removes a shape from the given shape owner.
	*/
	void shapeOwnerRemoveShape(in long owner_id, in long shape_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.shapeOwnerRemoveShape, _godot_object, owner_id, shape_id);
	}
	/**
	Removes all shapes from the shape owner.
	*/
	void shapeOwnerClearShapes(in long owner_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.shapeOwnerClearShapes, _godot_object, owner_id);
	}
	/**
	Returns the `owner_id` of the given shape.
	*/
	long shapeFindOwner(in long shape_index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.shapeFindOwner, _godot_object, shape_index);
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
