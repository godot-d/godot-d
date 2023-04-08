/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionobject2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.node2d;
import godot.inputevent;
import godot.shape2d;
/**

*/
@GodotBaseClass struct CollisionObject2D
{
	package(godot) enum string _GODOT_internal_name = "CollisionObject2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_input_event") GodotMethod!(void, GodotObject, InputEvent, long) _inputEvent;
		@GodotName("create_shape_owner") GodotMethod!(long, GodotObject) createShapeOwner;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("get_rid") GodotMethod!(RID) getRid;
		@GodotName("get_shape_owner_one_way_collision_margin") GodotMethod!(double, long) getShapeOwnerOneWayCollisionMargin;
		@GodotName("get_shape_owners") GodotMethod!(Array) getShapeOwners;
		@GodotName("is_pickable") GodotMethod!(bool) isPickable;
		@GodotName("is_shape_owner_disabled") GodotMethod!(bool, long) isShapeOwnerDisabled;
		@GodotName("is_shape_owner_one_way_collision_enabled") GodotMethod!(bool, long) isShapeOwnerOneWayCollisionEnabled;
		@GodotName("remove_shape_owner") GodotMethod!(void, long) removeShapeOwner;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("set_pickable") GodotMethod!(void, bool) setPickable;
		@GodotName("shape_find_owner") GodotMethod!(long, long) shapeFindOwner;
		@GodotName("shape_owner_add_shape") GodotMethod!(void, long, Shape2D) shapeOwnerAddShape;
		@GodotName("shape_owner_clear_shapes") GodotMethod!(void, long) shapeOwnerClearShapes;
		@GodotName("shape_owner_get_owner") GodotMethod!(GodotObject, long) shapeOwnerGetOwner;
		@GodotName("shape_owner_get_shape") GodotMethod!(Shape2D, long, long) shapeOwnerGetShape;
		@GodotName("shape_owner_get_shape_count") GodotMethod!(long, long) shapeOwnerGetShapeCount;
		@GodotName("shape_owner_get_shape_index") GodotMethod!(long, long, long) shapeOwnerGetShapeIndex;
		@GodotName("shape_owner_get_transform") GodotMethod!(Transform2D, long) shapeOwnerGetTransform;
		@GodotName("shape_owner_remove_shape") GodotMethod!(void, long, long) shapeOwnerRemoveShape;
		@GodotName("shape_owner_set_disabled") GodotMethod!(void, long, bool) shapeOwnerSetDisabled;
		@GodotName("shape_owner_set_one_way_collision") GodotMethod!(void, long, bool) shapeOwnerSetOneWayCollision;
		@GodotName("shape_owner_set_one_way_collision_margin") GodotMethod!(void, long, double) shapeOwnerSetOneWayCollisionMargin;
		@GodotName("shape_owner_set_transform") GodotMethod!(void, long, Transform2D) shapeOwnerSetTransform;
	}
	/// 
	pragma(inline, true) bool opEquals(in CollisionObject2D other) const
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
	/// Construct a new instance of CollisionObject2D.
	/// Note: use `memnew!CollisionObject2D` instead.
	static CollisionObject2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionObject2D");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionObject2D)(constructor());
	}
	/**
	
	*/
	void _inputEvent(GodotObject viewport, InputEvent event, in long shape_idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(viewport);
		_GODOT_args.append(event);
		_GODOT_args.append(shape_idx);
		String _GODOT_method_name = String("_input_event");
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
	double getShapeOwnerOneWayCollisionMargin(in long owner_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getShapeOwnerOneWayCollisionMargin, _godot_object, owner_id);
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
	bool isPickable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPickable, _godot_object);
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
	bool isShapeOwnerOneWayCollisionEnabled(in long owner_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isShapeOwnerOneWayCollisionEnabled, _godot_object, owner_id);
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
	void setPickable(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPickable, _godot_object, enabled);
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
	void shapeOwnerAddShape(in long owner_id, Shape2D shape)
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
	Ref!Shape2D shapeOwnerGetShape(in long owner_id, in long shape_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape2D)(GDNativeClassBinding.shapeOwnerGetShape, _godot_object, owner_id, shape_id);
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
	Transform2D shapeOwnerGetTransform(in long owner_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.shapeOwnerGetTransform, _godot_object, owner_id);
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
	void shapeOwnerSetOneWayCollision(in long owner_id, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shapeOwnerSetOneWayCollision, _godot_object, owner_id, enable);
	}
	/**
	
	*/
	void shapeOwnerSetOneWayCollisionMargin(in long owner_id, in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shapeOwnerSetOneWayCollisionMargin, _godot_object, owner_id, margin);
	}
	/**
	
	*/
	void shapeOwnerSetTransform(in long owner_id, in Transform2D transform)
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
