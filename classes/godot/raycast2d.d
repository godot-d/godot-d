/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.raycast2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**

*/
@GodotBaseClass struct RayCast2D
{
	package(godot) enum string _GODOT_internal_name = "RayCast2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_exception") GodotMethod!(void, GodotObject) addException;
		@GodotName("add_exception_rid") GodotMethod!(void, RID) addExceptionRid;
		@GodotName("clear_exceptions") GodotMethod!(void) clearExceptions;
		@GodotName("force_raycast_update") GodotMethod!(void) forceRaycastUpdate;
		@GodotName("get_cast_to") GodotMethod!(Vector2) getCastTo;
		@GodotName("get_collider") GodotMethod!(GodotObject) getCollider;
		@GodotName("get_collider_shape") GodotMethod!(long) getColliderShape;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("get_collision_normal") GodotMethod!(Vector2) getCollisionNormal;
		@GodotName("get_collision_point") GodotMethod!(Vector2) getCollisionPoint;
		@GodotName("get_exclude_parent_body") GodotMethod!(bool) getExcludeParentBody;
		@GodotName("is_collide_with_areas_enabled") GodotMethod!(bool) isCollideWithAreasEnabled;
		@GodotName("is_collide_with_bodies_enabled") GodotMethod!(bool) isCollideWithBodiesEnabled;
		@GodotName("is_colliding") GodotMethod!(bool) isColliding;
		@GodotName("is_enabled") GodotMethod!(bool) isEnabled;
		@GodotName("remove_exception") GodotMethod!(void, GodotObject) removeException;
		@GodotName("remove_exception_rid") GodotMethod!(void, RID) removeExceptionRid;
		@GodotName("set_cast_to") GodotMethod!(void, Vector2) setCastTo;
		@GodotName("set_collide_with_areas") GodotMethod!(void, bool) setCollideWithAreas;
		@GodotName("set_collide_with_bodies") GodotMethod!(void, bool) setCollideWithBodies;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("set_enabled") GodotMethod!(void, bool) setEnabled;
		@GodotName("set_exclude_parent_body") GodotMethod!(void, bool) setExcludeParentBody;
	}
	/// 
	pragma(inline, true) bool opEquals(in RayCast2D other) const
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
	/// Construct a new instance of RayCast2D.
	/// Note: use `memnew!RayCast2D` instead.
	static RayCast2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RayCast2D");
		if(constructor is null) return typeof(this).init;
		return cast(RayCast2D)(constructor());
	}
	/**
	
	*/
	void addException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addException, _godot_object, node);
	}
	/**
	
	*/
	void addExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addExceptionRid, _godot_object, rid);
	}
	/**
	
	*/
	void clearExceptions()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearExceptions, _godot_object);
	}
	/**
	
	*/
	void forceRaycastUpdate()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceRaycastUpdate, _godot_object);
	}
	/**
	
	*/
	Vector2 getCastTo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCastTo, _godot_object);
	}
	/**
	
	*/
	GodotObject getCollider() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.getCollider, _godot_object);
	}
	/**
	
	*/
	long getColliderShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getColliderShape, _godot_object);
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
	Vector2 getCollisionNormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCollisionNormal, _godot_object);
	}
	/**
	
	*/
	Vector2 getCollisionPoint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCollisionPoint, _godot_object);
	}
	/**
	
	*/
	bool getExcludeParentBody() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getExcludeParentBody, _godot_object);
	}
	/**
	
	*/
	bool isCollideWithAreasEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCollideWithAreasEnabled, _godot_object);
	}
	/**
	
	*/
	bool isCollideWithBodiesEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCollideWithBodiesEnabled, _godot_object);
	}
	/**
	
	*/
	bool isColliding() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isColliding, _godot_object);
	}
	/**
	
	*/
	bool isEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEnabled, _godot_object);
	}
	/**
	
	*/
	void removeException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeException, _godot_object, node);
	}
	/**
	
	*/
	void removeExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeExceptionRid, _godot_object, rid);
	}
	/**
	
	*/
	void setCastTo(in Vector2 local_point)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCastTo, _godot_object, local_point);
	}
	/**
	
	*/
	void setCollideWithAreas(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollideWithAreas, _godot_object, enable);
	}
	/**
	
	*/
	void setCollideWithBodies(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollideWithBodies, _godot_object, enable);
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
	void setEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setExcludeParentBody(in bool mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExcludeParentBody, _godot_object, mask);
	}
	/**
	
	*/
	@property Vector2 castTo()
	{
		return getCastTo();
	}
	/// ditto
	@property void castTo(Vector2 v)
	{
		setCastTo(v);
	}
	/**
	
	*/
	@property bool collideWithAreas()
	{
		return isCollideWithAreasEnabled();
	}
	/// ditto
	@property void collideWithAreas(bool v)
	{
		setCollideWithAreas(v);
	}
	/**
	
	*/
	@property bool collideWithBodies()
	{
		return isCollideWithBodiesEnabled();
	}
	/// ditto
	@property void collideWithBodies(bool v)
	{
		setCollideWithBodies(v);
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
	@property bool enabled()
	{
		return isEnabled();
	}
	/// ditto
	@property void enabled(bool v)
	{
		setEnabled(v);
	}
	/**
	
	*/
	@property bool excludeParent()
	{
		return getExcludeParentBody();
	}
	/// ditto
	@property void excludeParent(bool v)
	{
		setExcludeParentBody(v);
	}
}
