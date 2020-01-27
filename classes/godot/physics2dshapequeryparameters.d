/**
Parameters to be sent to a 2D shape physics query.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2dshapequeryparameters;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.resource;
/**
Parameters to be sent to a 2D shape physics query.

This class contains the shape and other parameters for 2D intersection/collision queries. See also $(D Physics2DShapeQueryResult).
*/
@GodotBaseClass struct Physics2DShapeQueryParameters
{
	enum string _GODOT_internal_name = "Physics2DShapeQueryParameters";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("get_exclude") GodotMethod!(Array) getExclude;
		@GodotName("get_margin") GodotMethod!(double) getMargin;
		@GodotName("get_motion") GodotMethod!(Vector2) getMotion;
		@GodotName("get_shape_rid") GodotMethod!(RID) getShapeRid;
		@GodotName("get_transform") GodotMethod!(Transform2D) getTransform;
		@GodotName("is_collide_with_areas_enabled") GodotMethod!(bool) isCollideWithAreasEnabled;
		@GodotName("is_collide_with_bodies_enabled") GodotMethod!(bool) isCollideWithBodiesEnabled;
		@GodotName("set_collide_with_areas") GodotMethod!(void, bool) setCollideWithAreas;
		@GodotName("set_collide_with_bodies") GodotMethod!(void, bool) setCollideWithBodies;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("set_exclude") GodotMethod!(void, Array) setExclude;
		@GodotName("set_margin") GodotMethod!(void, double) setMargin;
		@GodotName("set_motion") GodotMethod!(void, Vector2) setMotion;
		@GodotName("set_shape") GodotMethod!(void, Resource) setShape;
		@GodotName("set_shape_rid") GodotMethod!(void, RID) setShapeRid;
		@GodotName("set_transform") GodotMethod!(void, Transform2D) setTransform;
	}
	bool opEquals(in Physics2DShapeQueryParameters other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DShapeQueryParameters opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DShapeQueryParameters _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DShapeQueryParameters");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DShapeQueryParameters)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getCollisionLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionLayer, _godot_object);
	}
	/**
	
	*/
	Array getExclude() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getExclude, _godot_object);
	}
	/**
	
	*/
	double getMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMargin, _godot_object);
	}
	/**
	
	*/
	Vector2 getMotion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getMotion, _godot_object);
	}
	/**
	
	*/
	RID getShapeRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getShapeRid, _godot_object);
	}
	/**
	
	*/
	Transform2D getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getTransform, _godot_object);
	}
	/**
	
	*/
	bool isCollideWithAreasEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCollideWithAreasEnabled, _godot_object);
	}
	/**
	
	*/
	bool isCollideWithBodiesEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCollideWithBodiesEnabled, _godot_object);
	}
	/**
	
	*/
	void setCollideWithAreas(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollideWithAreas, _godot_object, enable);
	}
	/**
	
	*/
	void setCollideWithBodies(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollideWithBodies, _godot_object, enable);
	}
	/**
	
	*/
	void setCollisionLayer(in long collision_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionLayer, _godot_object, collision_layer);
	}
	/**
	
	*/
	void setExclude(in Array exclude)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExclude, _godot_object, exclude);
	}
	/**
	
	*/
	void setMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMargin, _godot_object, margin);
	}
	/**
	
	*/
	void setMotion(in Vector2 motion)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMotion, _godot_object, motion);
	}
	/**
	Sets the $(D Shape2D) that will be used for collision/intersection queries.
	*/
	void setShape(Resource shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShape, _godot_object, shape);
	}
	/**
	
	*/
	void setShapeRid(in RID shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShapeRid, _godot_object, shape);
	}
	/**
	
	*/
	void setTransform(in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTransform, _godot_object, transform);
	}
	/**
	If `true`, the query will take $(D Area2D)s into account.
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
	If `true`, the query will take $(D PhysicsBody2D)s into account.
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
	The physics layer(s) the query will take into account (as a bitmask).
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
	The list of objects or object $(D RID)s that will be excluded from collisions.
	*/
	@property Array exclude()
	{
		return getExclude();
	}
	/// ditto
	@property void exclude(Array v)
	{
		setExclude(v);
	}
	/**
	The collision margin for the shape.
	*/
	@property double margin()
	{
		return getMargin();
	}
	/// ditto
	@property void margin(double v)
	{
		setMargin(v);
	}
	/**
	The motion of the shape being queried for.
	*/
	@property Vector2 motion()
	{
		return getMotion();
	}
	/// ditto
	@property void motion(Vector2 v)
	{
		setMotion(v);
	}
	/**
	The queried shape's $(D RID). See also $(D setShape).
	*/
	@property RID shapeRid()
	{
		return getShapeRid();
	}
	/// ditto
	@property void shapeRid(RID v)
	{
		setShapeRid(v);
	}
	/**
	The queried shape's transform matrix.
	*/
	@property Transform2D transform()
	{
		return getTransform();
	}
	/// ditto
	@property void transform(Transform2D v)
	{
		setTransform(v);
	}
}
