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
	enum string _GODOT_internal_name = "PhysicsShapeQueryParameters";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_shape") GodotMethod!(void, Resource) setShape;
		@GodotName("set_shape_rid") GodotMethod!(void, RID) setShapeRid;
		@GodotName("get_shape_rid") GodotMethod!(RID) getShapeRid;
		@GodotName("set_transform") GodotMethod!(void, Transform) setTransform;
		@GodotName("get_transform") GodotMethod!(Transform) getTransform;
		@GodotName("set_margin") GodotMethod!(void, double) setMargin;
		@GodotName("get_margin") GodotMethod!(double) getMargin;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("set_exclude") GodotMethod!(void, Array) setExclude;
		@GodotName("get_exclude") GodotMethod!(Array) getExclude;
		@GodotName("set_collide_with_bodies") GodotMethod!(void, bool) setCollideWithBodies;
		@GodotName("is_collide_with_bodies_enabled") GodotMethod!(bool) isCollideWithBodiesEnabled;
		@GodotName("set_collide_with_areas") GodotMethod!(void, bool) setCollideWithAreas;
		@GodotName("is_collide_with_areas_enabled") GodotMethod!(bool) isCollideWithAreasEnabled;
	}
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
	/**
	
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
	RID getShapeRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getShapeRid, _godot_object);
	}
	/**
	
	*/
	void setTransform(in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTransform, _godot_object, transform);
	}
	/**
	
	*/
	Transform getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getTransform, _godot_object);
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
	double getMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMargin, _godot_object);
	}
	/**
	
	*/
	void setCollisionMask(in long collision_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMask, _godot_object, collision_mask);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionMask, _godot_object);
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
	Array getExclude() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getExclude, _godot_object);
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
	bool isCollideWithAreasEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCollideWithAreasEnabled, _godot_object);
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
	@property bool collideWithAreas()
	{
		return isCollideWithAreasEnabled();
	}
	/// ditto
	@property void collideWithAreas(bool v)
	{
		setCollideWithAreas(v);
	}
}
