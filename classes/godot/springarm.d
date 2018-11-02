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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.shape;
import godot.node;
/**

*/
@GodotBaseClass struct SpringArm
{
	enum string _GODOT_internal_name = "SpringArm";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_hit_length") GodotMethod!(double) getHitLength;
		@GodotName("set_length") GodotMethod!(void, double) setLength;
		@GodotName("get_length") GodotMethod!(double) getLength;
		@GodotName("set_shape") GodotMethod!(void, Shape) setShape;
		@GodotName("get_shape") GodotMethod!(Shape) getShape;
		@GodotName("add_excluded_object") GodotMethod!(void, RID) addExcludedObject;
		@GodotName("remove_excluded_object") GodotMethod!(bool, RID) removeExcludedObject;
		@GodotName("clear_excluded_objects") GodotMethod!(void) clearExcludedObjects;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("set_margin") GodotMethod!(void, double) setMargin;
		@GodotName("get_margin") GodotMethod!(double) getMargin;
	}
	bool opEquals(in SpringArm other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpringArm opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SpringArm _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpringArm");
		if(constructor is null) return typeof(this).init;
		return cast(SpringArm)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getHitLength()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getHitLength, _godot_object);
	}
	/**
	
	*/
	void setLength(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLength, _godot_object, length);
	}
	/**
	
	*/
	double getLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLength, _godot_object);
	}
	/**
	
	*/
	void setShape(Shape shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShape, _godot_object, shape);
	}
	/**
	
	*/
	Ref!Shape getShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(_classBinding.getShape, _godot_object);
	}
	/**
	
	*/
	void addExcludedObject(in RID RID)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addExcludedObject, _godot_object, RID);
	}
	/**
	
	*/
	bool removeExcludedObject(in RID RID)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.removeExcludedObject, _godot_object, RID);
	}
	/**
	
	*/
	void clearExcludedObjects()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearExcludedObjects, _godot_object);
	}
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	
	*/
	long getCollisionMask()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionMask, _godot_object);
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
	double getMargin()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMargin, _godot_object);
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
}
