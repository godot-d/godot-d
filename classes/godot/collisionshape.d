/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionshape;
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
import godot.spatial;
import godot.shape;
import godot.resource;
/**

*/
@GodotBaseClass struct CollisionShape
{
	package(godot) enum string _GODOT_internal_name = "CollisionShape";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_shape") GodotMethod!(Shape) getShape;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("make_convex_from_brothers") GodotMethod!(void) makeConvexFromBrothers;
		@GodotName("resource_changed") GodotMethod!(void, Resource) resourceChanged;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("set_shape") GodotMethod!(void, Shape) setShape;
	}
	/// 
	pragma(inline, true) bool opEquals(in CollisionShape other) const
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
	/// Construct a new instance of CollisionShape.
	/// Note: use `memnew!CollisionShape` instead.
	static CollisionShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionShape");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionShape)(constructor());
	}
	/**
	
	*/
	Ref!Shape getShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(GDNativeClassBinding.getShape, _godot_object);
	}
	/**
	
	*/
	bool isDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDisabled, _godot_object);
	}
	/**
	
	*/
	void makeConvexFromBrothers()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.makeConvexFromBrothers, _godot_object);
	}
	/**
	
	*/
	void resourceChanged(Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resourceChanged, _godot_object, resource);
	}
	/**
	
	*/
	void setDisabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisabled, _godot_object, enable);
	}
	/**
	
	*/
	void setShape(Shape shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShape, _godot_object, shape);
	}
	/**
	
	*/
	@property bool disabled()
	{
		return isDisabled();
	}
	/// ditto
	@property void disabled(bool v)
	{
		setDisabled(v);
	}
	/**
	
	*/
	@property Shape shape()
	{
		return getShape();
	}
	/// ditto
	@property void shape(Shape v)
	{
		setShape(v);
	}
}
