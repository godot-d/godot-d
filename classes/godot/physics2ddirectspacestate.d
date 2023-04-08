/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2ddirectspacestate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.physics2dshapequeryparameters;
/**

*/
@GodotBaseClass struct Physics2DDirectSpaceState
{
	package(godot) enum string _GODOT_internal_name = "Physics2DDirectSpaceState";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("cast_motion") GodotMethod!(Array, Physics2DShapeQueryParameters) castMotion;
		@GodotName("collide_shape") GodotMethod!(Array, Physics2DShapeQueryParameters, long) collideShape;
		@GodotName("get_rest_info") GodotMethod!(Dictionary, Physics2DShapeQueryParameters) getRestInfo;
		@GodotName("intersect_point") GodotMethod!(Array, Vector2, long, Array, long, bool, bool) intersectPoint;
		@GodotName("intersect_point_on_canvas") GodotMethod!(Array, Vector2, long, long, Array, long, bool, bool) intersectPointOnCanvas;
		@GodotName("intersect_ray") GodotMethod!(Dictionary, Vector2, Vector2, Array, long, bool, bool) intersectRay;
		@GodotName("intersect_shape") GodotMethod!(Array, Physics2DShapeQueryParameters, long) intersectShape;
	}
	/// 
	pragma(inline, true) bool opEquals(in Physics2DDirectSpaceState other) const
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
	/// Construct a new instance of Physics2DDirectSpaceState.
	/// Note: use `memnew!Physics2DDirectSpaceState` instead.
	static Physics2DDirectSpaceState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DDirectSpaceState");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DDirectSpaceState)(constructor());
	}
	/**
	
	*/
	Array castMotion(Physics2DShapeQueryParameters shape)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.castMotion, _godot_object, shape);
	}
	/**
	
	*/
	Array collideShape(Physics2DShapeQueryParameters shape, in long max_results = 32)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.collideShape, _godot_object, shape, max_results);
	}
	/**
	
	*/
	Dictionary getRestInfo(Physics2DShapeQueryParameters shape)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getRestInfo, _godot_object, shape);
	}
	/**
	
	*/
	Array intersectPoint(in Vector2 point, in long max_results = 32, in Array exclude = Array.make(), in long collision_layer = 2147483647, in bool collide_with_bodies = true, in bool collide_with_areas = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.intersectPoint, _godot_object, point, max_results, exclude, collision_layer, collide_with_bodies, collide_with_areas);
	}
	/**
	
	*/
	Array intersectPointOnCanvas(in Vector2 point, in long canvas_instance_id, in long max_results = 32, in Array exclude = Array.make(), in long collision_layer = 2147483647, in bool collide_with_bodies = true, in bool collide_with_areas = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.intersectPointOnCanvas, _godot_object, point, canvas_instance_id, max_results, exclude, collision_layer, collide_with_bodies, collide_with_areas);
	}
	/**
	
	*/
	Dictionary intersectRay(in Vector2 from, in Vector2 to, in Array exclude = Array.make(), in long collision_layer = 2147483647, in bool collide_with_bodies = true, in bool collide_with_areas = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.intersectRay, _godot_object, from, to, exclude, collision_layer, collide_with_bodies, collide_with_areas);
	}
	/**
	
	*/
	Array intersectShape(Physics2DShapeQueryParameters shape, in long max_results = 32)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.intersectShape, _godot_object, shape, max_results);
	}
}
