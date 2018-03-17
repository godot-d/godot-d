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

This class contains the shape and other parameters for intersection/collision queries.
*/
@GodotBaseClass struct Physics2DShapeQueryParameters
{
	static immutable string _GODOT_internal_name = "Physics2DShapeQueryParameters";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, Resource) _GODOT_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape") = _GODOT_set_shape;
	/**
	Set the $(D Shape2D) that will be used for collision/intersection queries.
	*/
	void setShape(Resource shape)
	{
		_GODOT_set_shape.bind("Physics2DShapeQueryParameters", "set_shape");
		ptrcall!(void)(_GODOT_set_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_set_shape_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape_rid") = _GODOT_set_shape_rid;
	/**
	
	*/
	void setShapeRid(in RID shape)
	{
		_GODOT_set_shape_rid.bind("Physics2DShapeQueryParameters", "set_shape_rid");
		ptrcall!(void)(_GODOT_set_shape_rid, _godot_object, shape);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_shape_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape_rid") = _GODOT_get_shape_rid;
	/**
	
	*/
	RID getShapeRid() const
	{
		_GODOT_get_shape_rid.bind("Physics2DShapeQueryParameters", "get_shape_rid");
		return ptrcall!(RID)(_GODOT_get_shape_rid, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	/**
	
	*/
	void setTransform(in Transform2D transform)
	{
		_GODOT_set_transform.bind("Physics2DShapeQueryParameters", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, transform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	/**
	
	*/
	Transform2D getTransform() const
	{
		_GODOT_get_transform.bind("Physics2DShapeQueryParameters", "get_transform");
		return ptrcall!(Transform2D)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_motion") = _GODOT_set_motion;
	/**
	
	*/
	void setMotion(in Vector2 motion)
	{
		_GODOT_set_motion.bind("Physics2DShapeQueryParameters", "set_motion");
		ptrcall!(void)(_GODOT_set_motion, _godot_object, motion);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_motion") = _GODOT_get_motion;
	/**
	
	*/
	Vector2 getMotion() const
	{
		_GODOT_get_motion.bind("Physics2DShapeQueryParameters", "get_motion");
		return ptrcall!(Vector2)(_GODOT_get_motion, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin") = _GODOT_set_margin;
	/**
	
	*/
	void setMargin(in double margin)
	{
		_GODOT_set_margin.bind("Physics2DShapeQueryParameters", "set_margin");
		ptrcall!(void)(_GODOT_set_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin") = _GODOT_get_margin;
	/**
	
	*/
	double getMargin() const
	{
		_GODOT_get_margin.bind("Physics2DShapeQueryParameters", "get_margin");
		return ptrcall!(double)(_GODOT_get_margin, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer") = _GODOT_set_collision_layer;
	/**
	
	*/
	void setCollisionLayer(in long collision_layer)
	{
		_GODOT_set_collision_layer.bind("Physics2DShapeQueryParameters", "set_collision_layer");
		ptrcall!(void)(_GODOT_set_collision_layer, _godot_object, collision_layer);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer") = _GODOT_get_collision_layer;
	/**
	
	*/
	long getCollisionLayer() const
	{
		_GODOT_get_collision_layer.bind("Physics2DShapeQueryParameters", "get_collision_layer");
		return ptrcall!(long)(_GODOT_get_collision_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT_set_exclude;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclude") = _GODOT_set_exclude;
	/**
	
	*/
	void setExclude(in Array exclude)
	{
		_GODOT_set_exclude.bind("Physics2DShapeQueryParameters", "set_exclude");
		ptrcall!(void)(_GODOT_set_exclude, _godot_object, exclude);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_exclude;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exclude") = _GODOT_get_exclude;
	/**
	
	*/
	Array getExclude() const
	{
		_GODOT_get_exclude.bind("Physics2DShapeQueryParameters", "get_exclude");
		return ptrcall!(Array)(_GODOT_get_exclude, _godot_object);
	}
	/**
	The physics layer the query should be made on.
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
	The list of objects or object $(D RID)s, that will be excluded from collisions.
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
	The $(D RID) of the queried shape. See $(D setShape) also.
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
	the transform matrix of the queried shape.
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
