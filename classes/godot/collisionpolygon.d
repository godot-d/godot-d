/**
Editor-only class for defining a collision polygon in 3D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionpolygon;
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
/**
Editor-only class for defining a collision polygon in 3D space.

Allows editing a collision polygon's vertices on a selected plane. Can also set a depth perpendicular to that plane. This class is only available in the editor. It will not appear in the scene tree at runtime. Creates a $(D Shape) for gameplay. Properties modified during gameplay will have no effect.
*/
@GodotBaseClass struct CollisionPolygon
{
	static immutable string _GODOT_internal_name = "CollisionPolygon";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CollisionPolygon other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionPolygon opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CollisionPolygon _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionPolygon");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionPolygon)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_depth") = _GODOT_set_depth;
	/**
	
	*/
	void setDepth(in double depth)
	{
		_GODOT_set_depth.bind("CollisionPolygon", "set_depth");
		ptrcall!(void)(_GODOT_set_depth, _godot_object, depth);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_depth") = _GODOT_get_depth;
	/**
	
	*/
	double getDepth() const
	{
		_GODOT_get_depth.bind("CollisionPolygon", "get_depth");
		return ptrcall!(double)(_GODOT_get_depth, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_polygon") = _GODOT_set_polygon;
	/**
	
	*/
	void setPolygon(in PoolVector2Array polygon)
	{
		_GODOT_set_polygon.bind("CollisionPolygon", "set_polygon");
		ptrcall!(void)(_GODOT_set_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon") = _GODOT_get_polygon;
	/**
	
	*/
	PoolVector2Array getPolygon() const
	{
		_GODOT_get_polygon.bind("CollisionPolygon", "get_polygon");
		return ptrcall!(PoolVector2Array)(_GODOT_get_polygon, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled") = _GODOT_set_disabled;
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		_GODOT_set_disabled.bind("CollisionPolygon", "set_disabled");
		ptrcall!(void)(_GODOT_set_disabled, _godot_object, disabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_disabled") = _GODOT_is_disabled;
	/**
	
	*/
	bool isDisabled() const
	{
		_GODOT_is_disabled.bind("CollisionPolygon", "is_disabled");
		return ptrcall!(bool)(_GODOT_is_disabled, _godot_object);
	}
	/**
	Length that the resulting collision extends in either direction perpendicular to its polygon.
	*/
	@property double depth()
	{
		return getDepth();
	}
	/// ditto
	@property void depth(double v)
	{
		setDepth(v);
	}
	/**
	If true, no collision will be produced.
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
	Array of vertices which define the polygon.
	*/
	@property PoolVector2Array polygon()
	{
		return getPolygon();
	}
	/// ditto
	@property void polygon(PoolVector2Array v)
	{
		setPolygon(v);
	}
}
