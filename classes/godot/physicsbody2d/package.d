/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicsbody2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.collisionobject2d;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**

*/
@GodotBaseClass struct PhysicsBody2D
{
	package(godot) enum string _GODOT_internal_name = "PhysicsBody2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CollisionObject2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_layers") GodotMethod!(long) _getLayers;
		@GodotName("_set_layers") GodotMethod!(void, long) _setLayers;
		@GodotName("add_collision_exception_with") GodotMethod!(void, Node) addCollisionExceptionWith;
		@GodotName("get_collision_exceptions") GodotMethod!(Array) getCollisionExceptions;
		@GodotName("remove_collision_exception_with") GodotMethod!(void, Node) removeCollisionExceptionWith;
	}
	/// 
	pragma(inline, true) bool opEquals(in PhysicsBody2D other) const
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
	/// Construct a new instance of PhysicsBody2D.
	/// Note: use `memnew!PhysicsBody2D` instead.
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
	
	*/
	void addCollisionExceptionWith(Node _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCollisionExceptionWith, _godot_object, _body);
	}
	/**
	
	*/
	Array getCollisionExceptions()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getCollisionExceptions, _godot_object);
	}
	/**
	
	*/
	void removeCollisionExceptionWith(Node _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeCollisionExceptionWith, _godot_object, _body);
	}
	/**
	
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
