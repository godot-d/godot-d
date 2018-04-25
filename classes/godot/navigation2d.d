/**
2D navigation and pathfinding node.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigation2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.navigationpolygon;
/**
2D navigation and pathfinding node.

Navigation2D provides navigation and pathfinding within a 2D area, specified as a collection of $(D NavigationPolygon) resources. By default these are automatically collected from child $(D NavigationPolygonInstance) nodes, but they can also be added on the fly with $(D navpolyAdd).
*/
@GodotBaseClass struct Navigation2D
{
	static immutable string _GODOT_internal_name = "Navigation2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Navigation2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Navigation2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Navigation2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Navigation2D");
		if(constructor is null) return typeof(this).init;
		return cast(Navigation2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(long, NavigationPolygon, Transform2D, GodotObject) _GODOT_navpoly_add;
	package(godot) alias _GODOT_methodBindInfo(string name : "navpoly_add") = _GODOT_navpoly_add;
	/**
	Adds a $(D NavigationPolygon). Returns an ID for use with $(D navpolyRemove) or $(D navpolySetTransform). If given, a $(D Transform2D) is applied to the polygon. The optional `owner` is used as return value for $(D getClosestPointOwner).
	*/
	long navpolyAdd(NavigationPolygon mesh, in Transform2D xform, GodotObject owner = GodotObject.init)
	{
		_GODOT_navpoly_add.bind("Navigation2D", "navpoly_add");
		return ptrcall!(long)(_GODOT_navpoly_add, _godot_object, mesh, xform, owner);
	}
	package(godot) static GodotMethod!(void, long, Transform2D) _GODOT_navpoly_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "navpoly_set_transform") = _GODOT_navpoly_set_transform;
	/**
	Sets the transform applied to the $(D NavigationPolygon) with the given ID.
	*/
	void navpolySetTransform(in long id, in Transform2D xform)
	{
		_GODOT_navpoly_set_transform.bind("Navigation2D", "navpoly_set_transform");
		ptrcall!(void)(_GODOT_navpoly_set_transform, _godot_object, id, xform);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_navpoly_remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "navpoly_remove") = _GODOT_navpoly_remove;
	/**
	Removes the $(D NavigationPolygon) with the given ID.
	*/
	void navpolyRemove(in long id)
	{
		_GODOT_navpoly_remove.bind("Navigation2D", "navpoly_remove");
		ptrcall!(void)(_GODOT_navpoly_remove, _godot_object, id);
	}
	package(godot) static GodotMethod!(PoolVector2Array, Vector2, Vector2, bool) _GODOT_get_simple_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_simple_path") = _GODOT_get_simple_path;
	/**
	Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the path is smoothed by merging path segments where possible.
	*/
	PoolVector2Array getSimplePath(in Vector2 start, in Vector2 end, in bool optimize = true)
	{
		_GODOT_get_simple_path.bind("Navigation2D", "get_simple_path");
		return ptrcall!(PoolVector2Array)(_GODOT_get_simple_path, _godot_object, start, end, optimize);
	}
	package(godot) static GodotMethod!(Vector2, Vector2) _GODOT_get_closest_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point") = _GODOT_get_closest_point;
	/**
	Returns the navigation point closest to the point given. Points are in local coordinate space.
	*/
	Vector2 getClosestPoint(in Vector2 to_point)
	{
		_GODOT_get_closest_point.bind("Navigation2D", "get_closest_point");
		return ptrcall!(Vector2)(_GODOT_get_closest_point, _godot_object, to_point);
	}
	package(godot) static GodotMethod!(GodotObject, Vector2) _GODOT_get_closest_point_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_owner") = _GODOT_get_closest_point_owner;
	/**
	Returns the owner of the $(D NavigationPolygon) which contains the navigation point closest to the point given. This is usually a $(D NavigtionPolygonInstance). For polygons added via $(D navpolyAdd), returns the owner that was given (or `null` if the `owner` parameter was omitted).
	*/
	GodotObject getClosestPointOwner(in Vector2 to_point)
	{
		_GODOT_get_closest_point_owner.bind("Navigation2D", "get_closest_point_owner");
		return ptrcall!(GodotObject)(_GODOT_get_closest_point_owner, _godot_object, to_point);
	}
}
