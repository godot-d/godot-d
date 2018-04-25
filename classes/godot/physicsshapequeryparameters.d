/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicsshapequeryparameters;
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

*/
@GodotBaseClass struct PhysicsShapeQueryParameters
{
	static immutable string _GODOT_internal_name = "PhysicsShapeQueryParameters";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PhysicsShapeQueryParameters other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsShapeQueryParameters opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PhysicsShapeQueryParameters _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsShapeQueryParameters");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsShapeQueryParameters)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Resource) _GODOT_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape") = _GODOT_set_shape;
	/**
	
	*/
	void setShape(Resource shape)
	{
		_GODOT_set_shape.bind("PhysicsShapeQueryParameters", "set_shape");
		ptrcall!(void)(_GODOT_set_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_set_shape_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape_rid") = _GODOT_set_shape_rid;
	/**
	
	*/
	void setShapeRid(in RID shape)
	{
		_GODOT_set_shape_rid.bind("PhysicsShapeQueryParameters", "set_shape_rid");
		ptrcall!(void)(_GODOT_set_shape_rid, _godot_object, shape);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_shape_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape_rid") = _GODOT_get_shape_rid;
	/**
	
	*/
	RID getShapeRid() const
	{
		_GODOT_get_shape_rid.bind("PhysicsShapeQueryParameters", "get_shape_rid");
		return ptrcall!(RID)(_GODOT_get_shape_rid, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	/**
	
	*/
	void setTransform(in Transform transform)
	{
		_GODOT_set_transform.bind("PhysicsShapeQueryParameters", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, transform);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	/**
	
	*/
	Transform getTransform() const
	{
		_GODOT_get_transform.bind("PhysicsShapeQueryParameters", "get_transform");
		return ptrcall!(Transform)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin") = _GODOT_set_margin;
	/**
	
	*/
	void setMargin(in double margin)
	{
		_GODOT_set_margin.bind("PhysicsShapeQueryParameters", "set_margin");
		ptrcall!(void)(_GODOT_set_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin") = _GODOT_get_margin;
	/**
	
	*/
	double getMargin() const
	{
		_GODOT_get_margin.bind("PhysicsShapeQueryParameters", "get_margin");
		return ptrcall!(double)(_GODOT_get_margin, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask") = _GODOT_set_collision_mask;
	/**
	
	*/
	void setCollisionMask(in long collision_mask)
	{
		_GODOT_set_collision_mask.bind("PhysicsShapeQueryParameters", "set_collision_mask");
		ptrcall!(void)(_GODOT_set_collision_mask, _godot_object, collision_mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask") = _GODOT_get_collision_mask;
	/**
	
	*/
	long getCollisionMask() const
	{
		_GODOT_get_collision_mask.bind("PhysicsShapeQueryParameters", "get_collision_mask");
		return ptrcall!(long)(_GODOT_get_collision_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT_set_exclude;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclude") = _GODOT_set_exclude;
	/**
	
	*/
	void setExclude(in Array exclude)
	{
		_GODOT_set_exclude.bind("PhysicsShapeQueryParameters", "set_exclude");
		ptrcall!(void)(_GODOT_set_exclude, _godot_object, exclude);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_exclude;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exclude") = _GODOT_get_exclude;
	/**
	
	*/
	Array getExclude() const
	{
		_GODOT_get_exclude.bind("PhysicsShapeQueryParameters", "get_exclude");
		return ptrcall!(Array)(_GODOT_get_exclude, _godot_object);
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
	
	*/
	@property Transform transform()
	{
		return getTransform();
	}
	/// ditto
	@property void transform(Transform v)
	{
		setTransform(v);
	}
}
