/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2dshapequeryparameters;
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
import godot.reference;
import godot.resource;
/**

*/
@GodotBaseClass struct Physics2DShapeQueryParameters
{
	package(godot) enum string _GODOT_internal_name = "Physics2DShapeQueryParameters";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in Physics2DShapeQueryParameters other) const
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
	/// Construct a new instance of Physics2DShapeQueryParameters.
	/// Note: use `memnew!Physics2DShapeQueryParameters` instead.
	static Physics2DShapeQueryParameters _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DShapeQueryParameters");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DShapeQueryParameters)(constructor());
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
	Array getExclude() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getExclude, _godot_object);
	}
	/**
	
	*/
	double getMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMargin, _godot_object);
	}
	/**
	
	*/
	Vector2 getMotion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMotion, _godot_object);
	}
	/**
	
	*/
	RID getShapeRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getShapeRid, _godot_object);
	}
	/**
	
	*/
	Transform2D getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getTransform, _godot_object);
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
	void setCollisionLayer(in long collision_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionLayer, _godot_object, collision_layer);
	}
	/**
	
	*/
	void setExclude(in Array exclude)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExclude, _godot_object, exclude);
	}
	/**
	
	*/
	void setMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMargin, _godot_object, margin);
	}
	/**
	
	*/
	void setMotion(in Vector2 motion)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMotion, _godot_object, motion);
	}
	/**
	
	*/
	void setShape(Resource shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShape, _godot_object, shape);
	}
	/**
	
	*/
	void setShapeRid(in RID shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShapeRid, _godot_object, shape);
	}
	/**
	
	*/
	void setTransform(in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransform, _godot_object, transform);
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
