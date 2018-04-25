/**
Base class for all objects affected by physics in 3D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicsbody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.collisionobject;
/**
Base class for all objects affected by physics in 3D space.

PhysicsBody is an abstract base class for implementing a physics body. All *Body types inherit from it.
*/
@GodotBaseClass struct PhysicsBody
{
	static immutable string _GODOT_internal_name = "PhysicsBody";
public:
@nogc nothrow:
	union { godot_object _godot_object; CollisionObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PhysicsBody other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsBody opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PhysicsBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsBody");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsBody)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, long) _GODOT_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer") = _GODOT_set_collision_layer;
	/**
	
	*/
	void setCollisionLayer(in long layer)
	{
		_GODOT_set_collision_layer.bind("PhysicsBody", "set_collision_layer");
		ptrcall!(void)(_GODOT_set_collision_layer, _godot_object, layer);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer") = _GODOT_get_collision_layer;
	/**
	
	*/
	long getCollisionLayer() const
	{
		_GODOT_get_collision_layer.bind("PhysicsBody", "get_collision_layer");
		return ptrcall!(long)(_GODOT_get_collision_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask") = _GODOT_set_collision_mask;
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		_GODOT_set_collision_mask.bind("PhysicsBody", "set_collision_mask");
		ptrcall!(void)(_GODOT_set_collision_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask") = _GODOT_get_collision_mask;
	/**
	
	*/
	long getCollisionMask() const
	{
		_GODOT_get_collision_mask.bind("PhysicsBody", "get_collision_mask");
		return ptrcall!(long)(_GODOT_get_collision_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask_bit") = _GODOT_set_collision_mask_bit;
	/**
	
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		_GODOT_set_collision_mask_bit.bind("PhysicsBody", "set_collision_mask_bit");
		ptrcall!(void)(_GODOT_set_collision_mask_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask_bit") = _GODOT_get_collision_mask_bit;
	/**
	
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		_GODOT_get_collision_mask_bit.bind("PhysicsBody", "get_collision_mask_bit");
		return ptrcall!(bool)(_GODOT_get_collision_mask_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer_bit") = _GODOT_set_collision_layer_bit;
	/**
	
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		_GODOT_set_collision_layer_bit.bind("PhysicsBody", "set_collision_layer_bit");
		ptrcall!(void)(_GODOT_set_collision_layer_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer_bit") = _GODOT_get_collision_layer_bit;
	/**
	
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		_GODOT_get_collision_layer_bit.bind("PhysicsBody", "get_collision_layer_bit");
		return ptrcall!(bool)(_GODOT_get_collision_layer_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__set_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_layers") = _GODOT__set_layers;
	/**
	
	*/
	void _setLayers(in long mask)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(mask);
		String _GODOT_method_name = String("_set_layers");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(long) _GODOT__get_layers;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_layers") = _GODOT__get_layers;
	/**
	
	*/
	long _getLayers() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_layers");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_collision_exception_with;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_collision_exception_with") = _GODOT_add_collision_exception_with;
	/**
	Adds a body to the list of bodies that this body can't collide with.
	*/
	void addCollisionExceptionWith(GodotObject _body)
	{
		_GODOT_add_collision_exception_with.bind("PhysicsBody", "add_collision_exception_with");
		ptrcall!(void)(_GODOT_add_collision_exception_with, _godot_object, _body);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_collision_exception_with;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_collision_exception_with") = _GODOT_remove_collision_exception_with;
	/**
	Removes a body from the list of bodies that this body can't collide with.
	*/
	void removeCollisionExceptionWith(GodotObject _body)
	{
		_GODOT_remove_collision_exception_with.bind("PhysicsBody", "remove_collision_exception_with");
		ptrcall!(void)(_GODOT_remove_collision_exception_with, _godot_object, _body);
	}
	/**
	The physics layers this area is in.
	Collidable objects can exist in any of 32 different layers. These layers work like a tagging system, and are not visual. A collidable can use these layers to select with which objects it can collide, using the collision_mask property.
	A contact is detected if object A is in any of the layers that object B scans, or object B is in any layer scanned by object A.
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
	The physics layers this area can scan for collisions.
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
}
