/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.springarm;
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
import godot.node;
import godot.shape;
/**

*/
@GodotBaseClass struct SpringArm
{
	package(godot) enum string _GODOT_internal_name = "SpringArm";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_excluded_object") GodotMethod!(void, RID) addExcludedObject;
		@GodotName("clear_excluded_objects") GodotMethod!(void) clearExcludedObjects;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_hit_length") GodotMethod!(double) getHitLength;
		@GodotName("get_length") GodotMethod!(double) getLength;
		@GodotName("get_margin") GodotMethod!(double) getMargin;
		@GodotName("get_shape") GodotMethod!(Shape) getShape;
		@GodotName("remove_excluded_object") GodotMethod!(bool, RID) removeExcludedObject;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_length") GodotMethod!(void, double) setLength;
		@GodotName("set_margin") GodotMethod!(void, double) setMargin;
		@GodotName("set_shape") GodotMethod!(void, Shape) setShape;
	}
	/// 
	pragma(inline, true) bool opEquals(in SpringArm other) const
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
	/// Construct a new instance of SpringArm.
	/// Note: use `memnew!SpringArm` instead.
	static SpringArm _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpringArm");
		if(constructor is null) return typeof(this).init;
		return cast(SpringArm)(constructor());
	}
	/**
	
	*/
	void addExcludedObject(in RID RID)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addExcludedObject, _godot_object, RID);
	}
	/**
	
	*/
	void clearExcludedObjects()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearExcludedObjects, _godot_object);
	}
	/**
	
	*/
	long getCollisionMask()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionMask, _godot_object);
	}
	/**
	
	*/
	double getHitLength()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getHitLength, _godot_object);
	}
	/**
	
	*/
	double getLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLength, _godot_object);
	}
	/**
	
	*/
	double getMargin()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMargin, _godot_object);
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
	bool removeExcludedObject(in RID RID)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.removeExcludedObject, _godot_object, RID);
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
	void setLength(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLength, _godot_object, length);
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
	void setShape(Shape shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShape, _godot_object, shape);
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
	@property Shape shape()
	{
		return getShape();
	}
	/// ditto
	@property void shape(Shape v)
	{
		setShape(v);
	}
	/**
	
	*/
	@property double springLength()
	{
		return getLength();
	}
	/// ditto
	@property void springLength(double v)
	{
		setLength(v);
	}
}
