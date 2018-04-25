/**
Convex polygon shape for 3D physics.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.convexpolygonshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape;
/**
Convex polygon shape for 3D physics.

Convex polygon shape resource, which can be added to a $(D PhysicsBody) or area.
*/
@GodotBaseClass struct ConvexPolygonShape
{
	static immutable string _GODOT_internal_name = "ConvexPolygonShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ConvexPolygonShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConvexPolygonShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConvexPolygonShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ConvexPolygonShape");
		if(constructor is null) return typeof(this).init;
		return cast(ConvexPolygonShape)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, PoolVector3Array) _GODOT_set_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_points") = _GODOT_set_points;
	/**
	
	*/
	void setPoints(in PoolVector3Array points)
	{
		_GODOT_set_points.bind("ConvexPolygonShape", "set_points");
		ptrcall!(void)(_GODOT_set_points, _godot_object, points);
	}
	package(godot) static GodotMethod!(PoolVector3Array) _GODOT_get_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_points") = _GODOT_get_points;
	/**
	
	*/
	PoolVector3Array getPoints() const
	{
		_GODOT_get_points.bind("ConvexPolygonShape", "get_points");
		return ptrcall!(PoolVector3Array)(_GODOT_get_points, _godot_object);
	}
	/**
	The list of 3D points forming the convex polygon shape.
	*/
	@property PoolVector3Array points()
	{
		return getPoints();
	}
	/// ditto
	@property void points(PoolVector3Array v)
	{
		setPoints(v);
	}
}
