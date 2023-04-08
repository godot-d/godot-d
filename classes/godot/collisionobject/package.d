/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionobject;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.spatial;
import godot.inputevent;
import godot.shape;
/**

*/
@GodotBaseClass struct CollisionObject
{
	package(godot) enum string _GODOT_internal_name = "CollisionObject";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_input_event") GodotMethod!(void, GodotObject, InputEvent, Vector3, Vector3, long) _inputEvent;
		@GodotName("_shape_changed") GodotMethod!(void, Shape) _shapeChanged;
		@GodotName("_update_debug_shapes") GodotMethod!(void) _updateDebugShapes;
		@GodotName("create_shape_owner") GodotMethod!(long, GodotObject) createShapeOwner;
		@GodotName("get_capture_input_on_drag") GodotMethod!(bool) getCaptureInputOnDrag;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("get_rid") GodotMethod!(RID) getRid;
		@GodotName("get_shape_owners") GodotMethod!(Array) getShapeOwners;
		@GodotName("is_ray_pickable") GodotMethod!(bool) isRayPickable;
		@GodotName("is_shape_owner_disabled") GodotMethod!(bool, long) isShapeOwnerDisabled;
		@GodotName("remove_shape_owner") GodotMethod!(void, long) removeShapeOwner;
		@GodotName("set_capture_input_on_drag") GodotMethod!(void, bool) setCaptureInputOnDrag;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("set_ray_pickable") GodotMethod!(void, bool) setRayPickable;
		@GodotName("shape_find_owner") GodotMethod!(long, long) shapeFindOwner;
		@GodotName("shape_owner_add_shape") GodotMethod!(void, long, Shape) shapeOwnerAddShape;
		@GodotName("shape_owner_clear_shapes") GodotMethod!(void, long) shapeOwnerClearShapes;
		@GodotName("shape_owner_get_owner") GodotMethod!(GodotObject, long) shapeOwnerGetOwner;
		@GodotName("shape_owner_get_shape") GodotMethod!(Shape, long, long) shapeOwnerGetShape;
		@GodotName("shape_owner_get_shape_count") GodotMethod!(long, long) shapeOwnerGetShapeCount;
		@GodotName("shape_owner_get_shape_index") GodotMethod!(long, long, long) shapeOwnerGetShapeIndex;
		@GodotName("shape_owner_get_transform") GodotMethod!(Transform, long) shapeOwnerGetTransform;
		@GodotName("shape_owner_remove_shape") GodotMethod!(void, long, long) shapeOwnerRemoveShape;
		@GodotName("shape_owner_set_disabled") GodotMethod!(void, long, bool) shapeOwnerSetDisabled;
		@GodotName("shape_owner_set_transform") GodotMethod!(void, long, Transform) shapeOwnerSetTransform;
	}
	/// 
	pragma(inline, true) bool opEquals(in CollisionObject other) const
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
	/// Construct a new instance of CollisionObject.
	/// Note: use `memnew!CollisionObject` instead.
	static CollisionObject _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionObject");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionObject)(constructor());
	}
	/**
	
	*/
	void _inputEvent(GodotObject camera, InputEvent event, in Vector3 position, in Vector3 normal, in long shape_idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(camera);
		_GODOT_args.append(event);
		_GODOT_args.append(position);
		_GODOT_args.append(normal);
		_GODOT_args.append(shape_idx);
		String _GODOT_method_name = String("_input_event");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _shapeChanged(Shape shape)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(shape);
		String _GODOT_method_name = String("_shape_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateDebugShapes()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_debug_shapes");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long createShapeOwner(GodotObject owner)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.createShapeOwner, _godot_object, owner);
	}
	/**
	
	*/
	bool getCaptureInputOnDrag() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCaptureInputOnDrag, _godot_object);
	}
	/**
	
	*/
	long getCollisionLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionLayer, _godot_object);
	}
	/**
	
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionLayerBit, _godot_object, bit);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionMask, _godot_object);
	}
	/**
	
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	
	*/
	RID getRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getRid, _godot_object);
	}
	/**
	
	*/
	Array getShapeOwners()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getShapeOwners, _godot_object);
	}
	/**
	
	*/
	bool isRayPickable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRayPickable, _godot_object);
	}
	/**
	
	*/
	bool isShapeOwnerDisabled(in long owner_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isShapeOwnerDisabled, _godot_object, owner_id);
	}
	/**
	
	*/
	void removeShapeOwner(in long owner_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeShapeOwner, _godot_object, owner_id);
	}
	/**
	
	*/
	void setCaptureInputOnDrag(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCaptureInputOnDrag, _godot_object, enable);
	}
	/**
	
	*/
	void setCollisionLayer(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionLayer, _godot_object, layer);
	}
	/**
	
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionLayerBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setRayPickable(in bool ray_pickable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRayPickable, _godot_object, ray_pickable);
	}
	/**
	
	*/
	long shapeFindOwner(in long shape_index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.shapeFindOwner, _godot_object, shape_index);
	}
	/**
	
	*/
	void shapeOwnerAddShape(in long owner_id, Shape shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shapeOwnerAddShape, _godot_object, owner_id, shape);
	}
	/**
	
	*/
	void shapeOwnerClearShapes(in long owner_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shapeOwnerClearShapes, _godot_object, owner_id);
	}
	/**
	
	*/
	GodotObject shapeOwnerGetOwner(in long owner_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.shapeOwnerGetOwner, _godot_object, owner_id);
	}
	/**
	
	*/
	Ref!Shape shapeOwnerGetShape(in long owner_id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(GDNativeClassBinding.shapeOwnerGetShape, _godot_object, owner_id, shape_id);
	}
	/**
	
	*/
	long shapeOwnerGetShapeCount(in long owner_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.shapeOwnerGetShapeCount, _godot_object, owner_id);
	}
	/**
	
	*/
	long shapeOwnerGetShapeIndex(in long owner_id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.shapeOwnerGetShapeIndex, _godot_object, owner_id, shape_id);
	}
	/**
	
	*/
	Transform shapeOwnerGetTransform(in long owner_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.shapeOwnerGetTransform, _godot_object, owner_id);
	}
	/**
	
	*/
	void shapeOwnerRemoveShape(in long owner_id, in long shape_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shapeOwnerRemoveShape, _godot_object, owner_id, shape_id);
	}
	/**
	
	*/
	void shapeOwnerSetDisabled(in long owner_id, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shapeOwnerSetDisabled, _godot_object, owner_id, disabled);
	}
	/**
	
	*/
	void shapeOwnerSetTransform(in long owner_id, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shapeOwnerSetTransform, _godot_object, owner_id, transform);
	}
	/**
	
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
	/**
	
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
	/**
	
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
}
