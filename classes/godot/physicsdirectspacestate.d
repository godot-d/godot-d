/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicsdirectspacestate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.physicsshapequeryparameters;
/**

*/
@GodotBaseClass struct PhysicsDirectSpaceState
{
	package(godot) enum string _GODOT_internal_name = "PhysicsDirectSpaceState";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("cast_motion") GodotMethod!(Array, PhysicsShapeQueryParameters, Vector3) castMotion;
		@GodotName("collide_shape") GodotMethod!(Array, PhysicsShapeQueryParameters, long) collideShape;
		@GodotName("get_rest_info") GodotMethod!(Dictionary, PhysicsShapeQueryParameters) getRestInfo;
		@GodotName("intersect_point") GodotMethod!(Array, Vector3, long, Array, long, bool, bool) intersectPoint;
		@GodotName("intersect_ray") GodotMethod!(Dictionary, Vector3, Vector3, Array, long, bool, bool) intersectRay;
		@GodotName("intersect_shape") GodotMethod!(Array, PhysicsShapeQueryParameters, long) intersectShape;
	}
	/// 
	pragma(inline, true) bool opEquals(in PhysicsDirectSpaceState other) const
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
	/// Construct a new instance of PhysicsDirectSpaceState.
	/// Note: use `memnew!PhysicsDirectSpaceState` instead.
	static PhysicsDirectSpaceState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsDirectSpaceState");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsDirectSpaceState)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Array castMotion(PhysicsShapeQueryParameters shape, in Vector3 motion)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.castMotion, _godot_object, shape, motion);
	}
	/**
	
	*/
	Array collideShape(PhysicsShapeQueryParameters shape, in long max_results = 32)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.collideShape, _godot_object, shape, max_results);
	}
	/**
	
	*/
	Dictionary getRestInfo(PhysicsShapeQueryParameters shape)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getRestInfo, _godot_object, shape);
	}
	/**
	
	*/
	Array intersectPoint(in Vector3 point, in long max_results = 32, in Array exclude = Array.make(), in long collision_layer = 2147483647, in bool collide_with_bodies = true, in bool collide_with_areas = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.intersectPoint, _godot_object, point, max_results, exclude, collision_layer, collide_with_bodies, collide_with_areas);
	}
	/**
	
	*/
	Dictionary intersectRay(in Vector3 from, in Vector3 to, in Array exclude = Array.make(), in long collision_mask = 2147483647, in bool collide_with_bodies = true, in bool collide_with_areas = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.intersectRay, _godot_object, from, to, exclude, collision_mask, collide_with_bodies, collide_with_areas);
	}
	/**
	
	*/
	Array intersectShape(PhysicsShapeQueryParameters shape, in long max_results = 32)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.intersectShape, _godot_object, shape, max_results);
	}
}
