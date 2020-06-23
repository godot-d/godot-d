/**
A helper node, mostly used in 3rd person cameras.

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
import godot.node;
import godot.shape;
/**
A helper node, mostly used in 3rd person cameras.

The SpringArm node is a node that casts a ray (or collision shape) along its z axis and moves all its direct children to the collision point, minus a margin.
The most common use case for this is to make a 3rd person camera that reacts to collisions in the environment.
The SpringArm will either cast a ray, or if a shape is given, it will cast the shape in the direction of its z axis.
If you use the SpringArm as a camera controller for your player, you might need to exclude the player's collider from the SpringArm's collision check.
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
	pragma(inline, true) SpringArm opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
	@disable new(size_t s);
	/**
	Adds the $(D PhysicsBody) object with the given $(D RID) to the list of $(D PhysicsBody) objects excluded from the collision check.
	*/
	void addExcludedObject(in RID RID)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addExcludedObject, _godot_object, RID);
	}
	/**
	Clears the list of $(D PhysicsBody) objects excluded from the collision check.
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
	Returns the proportion between the current arm length (after checking for collisions) and the $(D springLength). Ranges from 0 to 1.
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
	Removes the given $(D RID) from the list of $(D PhysicsBody) objects excluded from the collision check.
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
	The layers against which the collision check shall be done.
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
	When the collision check is made, a candidate length for the SpringArm is given.
	The margin is then subtracted to this length and the translation is applied to the child objects of the SpringArm.
	This margin is useful for when the SpringArm has a $(D Camera) as a child node: without the margin, the $(D Camera) would be placed on the exact point of collision, while with the margin the $(D Camera) would be placed close to the point of collision.
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
	The $(D Shape) to use for the SpringArm.
	When the shape is set, the SpringArm will cast the $(D Shape) on its z axis instead of performing a ray cast.
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
	The maximum extent of the SpringArm. This is used as a length for both the ray and the shape cast used internally to calculate the desired position of the SpringArm's child nodes.
	To know more about how to perform a shape cast or a ray cast, please consult the $(D PhysicsDirectSpaceState) documentation.
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
