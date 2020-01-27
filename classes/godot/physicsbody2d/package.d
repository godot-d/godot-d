/**
Base class for all objects affected by physics in 2D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicsbody2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.collisionobject2d;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**
Base class for all objects affected by physics in 2D space.

PhysicsBody2D is an abstract base class for implementing a physics body. All *Body2D types inherit from it.
*/
@GodotBaseClass struct PhysicsBody2D
{
	enum string _GODOT_internal_name = "PhysicsBody2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; CollisionObject2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_get_layers") GodotMethod!(long) _getLayers;
		@GodotName("_set_layers") GodotMethod!(void, long) _setLayers;
		@GodotName("add_collision_exception_with") GodotMethod!(void, Node) addCollisionExceptionWith;
		@GodotName("get_collision_exceptions") GodotMethod!(Array) getCollisionExceptions;
		@GodotName("get_collision_layer") GodotMethod!(long) getCollisionLayer;
		@GodotName("get_collision_layer_bit") GodotMethod!(bool, long) getCollisionLayerBit;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("remove_collision_exception_with") GodotMethod!(void, Node) removeCollisionExceptionWith;
		@GodotName("set_collision_layer") GodotMethod!(void, long) setCollisionLayer;
		@GodotName("set_collision_layer_bit") GodotMethod!(void, long, bool) setCollisionLayerBit;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
	}
	bool opEquals(in PhysicsBody2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsBody2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PhysicsBody2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsBody2D");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsBody2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long _getLayers() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_layers");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	void _setLayers(in long mask)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(mask);
		String _GODOT_method_name = String("_set_layers");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a body to the list of bodies that this body can't collide with.
	*/
	void addCollisionExceptionWith(Node _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCollisionExceptionWith, _godot_object, _body);
	}
	/**
	Returns an array of nodes that were added as collision exceptions for this body.
	*/
	Array getCollisionExceptions()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getCollisionExceptions, _godot_object);
	}
	/**
	
	*/
	long getCollisionLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionLayer, _godot_object);
	}
	/**
	Returns an individual bit on the $(D collisionLayer).
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionLayerBit, _godot_object, bit);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionMask, _godot_object);
	}
	/**
	Returns an individual bit on the $(D collisionMask).
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	Removes a body from the list of bodies that this body can't collide with.
	*/
	void removeCollisionExceptionWith(Node _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeCollisionExceptionWith, _godot_object, _body);
	}
	/**
	
	*/
	void setCollisionLayer(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionLayer, _godot_object, layer);
	}
	/**
	Sets individual bits on the $(D collisionLayer) bitmask. Use this if you only need to change one layer's value.
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionLayerBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	Sets individual bits on the $(D collisionMask) bitmask. Use this if you only need to change one layer's value.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	The physics layers this area is in.
	Collidable objects can exist in any of 32 different layers. These layers work like a tagging system, and are not visual. A collidable can use these layers to select with which objects it can collide, using the $(D collisionMask) property.
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
	The physics layers this area scans for collisions.
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
	Both $(D collisionLayer) and $(D collisionMask). Returns $(D collisionLayer) when accessed. Updates $(D collisionLayer) and $(D collisionMask) when modified.
	*/
	@property long layers()
	{
		return _getLayers();
	}
	/// ditto
	@property void layers(long v)
	{
		_setLayers(v);
	}
}
