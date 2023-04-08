/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionshape2d;
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
import godot.shape2d;
/**

*/
@GodotBaseClass struct CollisionShape2D
{
	package(godot) enum string _GODOT_internal_name = "CollisionShape2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_shape_changed") GodotMethod!(void) _shapeChanged;
		@GodotName("get_one_way_collision_margin") GodotMethod!(double) getOneWayCollisionMargin;
		@GodotName("get_shape") GodotMethod!(Shape2D) getShape;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("is_one_way_collision_enabled") GodotMethod!(bool) isOneWayCollisionEnabled;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("set_one_way_collision") GodotMethod!(void, bool) setOneWayCollision;
		@GodotName("set_one_way_collision_margin") GodotMethod!(void, double) setOneWayCollisionMargin;
		@GodotName("set_shape") GodotMethod!(void, Shape2D) setShape;
	}
	/// 
	pragma(inline, true) bool opEquals(in CollisionShape2D other) const
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
	/// Construct a new instance of CollisionShape2D.
	/// Note: use `memnew!CollisionShape2D` instead.
	static CollisionShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionShape2D)(constructor());
	}
	/**
	
	*/
	void _shapeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_shape_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double getOneWayCollisionMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getOneWayCollisionMargin, _godot_object);
	}
	/**
	
	*/
	Ref!Shape2D getShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape2D)(GDNativeClassBinding.getShape, _godot_object);
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
	bool isOneWayCollisionEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOneWayCollisionEnabled, _godot_object);
	}
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisabled, _godot_object, disabled);
	}
	/**
	
	*/
	void setOneWayCollision(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOneWayCollision, _godot_object, enabled);
	}
	/**
	
	*/
	void setOneWayCollisionMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOneWayCollisionMargin, _godot_object, margin);
	}
	/**
	
	*/
	void setShape(Shape2D shape)
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
	@property bool oneWayCollision()
	{
		return isOneWayCollisionEnabled();
	}
	/// ditto
	@property void oneWayCollision(bool v)
	{
		setOneWayCollision(v);
	}
	/**
	
	*/
	@property double oneWayCollisionMargin()
	{
		return getOneWayCollisionMargin();
	}
	/// ditto
	@property void oneWayCollisionMargin(double v)
	{
		setOneWayCollisionMargin(v);
	}
	/**
	
	*/
	@property Shape2D shape()
	{
		return getShape();
	}
	/// ditto
	@property void shape(Shape2D v)
	{
		setShape(v);
	}
}
