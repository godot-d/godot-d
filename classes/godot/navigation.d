/**
A collection of `NavigationMesh` resources and methods used for pathfinding.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigation;
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
import godot.navigationmesh;
/**
A collection of `NavigationMesh` resources and methods used for pathfinding.

The Navigation node is used for basic or advanced navigation. By default it will automatically collect all child `NavigationMesh` resources, but they can also be added on the fly through scripting. It can be used for generating a simple path between two points or it can be used to ensure that a navigation agent is angled perfectly to the terrain it is navigating.
*/
@GodotBaseClass struct Navigation
{
	static immutable string _GODOT_internal_name = "Navigation";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Navigation other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Navigation opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Navigation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Navigation");
		if(constructor is null) return typeof(this).init;
		return cast(Navigation)(constructor());
	}
	package(godot) static GodotMethod!(long, NavigationMesh, Transform, GodotObject) _GODOT_navmesh_add;
	package(godot) alias _GODOT_methodBindInfo(string name : "navmesh_add") = _GODOT_navmesh_add;
	/**
	Adds a `NavigationMesh` to the list of NavigationMesh's in this node. Returns an id. Its position, rotation and scale are associated with the `Transform` passed. The `Node` (or `Object`) that owns this node is an optional parameter.
	*/
	long navmeshAdd(NavigationMesh mesh, in Transform xform, GodotObject owner = GodotObject.init)
	{
		_GODOT_navmesh_add.bind("Navigation", "navmesh_add");
		return ptrcall!(long)(_GODOT_navmesh_add, _godot_object, mesh, xform, owner);
	}
	package(godot) static GodotMethod!(void, long, Transform) _GODOT_navmesh_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "navmesh_set_transform") = _GODOT_navmesh_set_transform;
	/**
	Associates a `NavigationMesh`'s id with a `Transform`. Its position, rotation and scale are based on the `Transform` passed.
	*/
	void navmeshSetTransform(in long id, in Transform xform)
	{
		_GODOT_navmesh_set_transform.bind("Navigation", "navmesh_set_transform");
		ptrcall!(void)(_GODOT_navmesh_set_transform, _godot_object, id, xform);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_navmesh_remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "navmesh_remove") = _GODOT_navmesh_remove;
	/**
	Removes a `NavigationMesh` from the list of NavigationMesh's in this node.
	*/
	void navmeshRemove(in long id)
	{
		_GODOT_navmesh_remove.bind("Navigation", "navmesh_remove");
		ptrcall!(void)(_GODOT_navmesh_remove, _godot_object, id);
	}
	package(godot) static GodotMethod!(PoolVector3Array, Vector3, Vector3, bool) _GODOT_get_simple_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_simple_path") = _GODOT_get_simple_path;
	/**
	Returns a path of points as a `PoolVector3Array`. If `optimize` is false the `NavigationMesh` agent properties will be taken into account, otherwise it will return the nearest path and ignore agent radius, height, etc.
	*/
	PoolVector3Array getSimplePath(in Vector3 start, in Vector3 end, in bool optimize = true)
	{
		_GODOT_get_simple_path.bind("Navigation", "get_simple_path");
		return ptrcall!(PoolVector3Array)(_GODOT_get_simple_path, _godot_object, start, end, optimize);
	}
	package(godot) static GodotMethod!(Vector3, Vector3, Vector3, bool) _GODOT_get_closest_point_to_segment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_to_segment") = _GODOT_get_closest_point_to_segment;
	/**
	Returns the nearest point to the line segment passed. The third optional parameter takes collisions into account.
	*/
	Vector3 getClosestPointToSegment(in Vector3 start, in Vector3 end, in bool use_collision = false)
	{
		_GODOT_get_closest_point_to_segment.bind("Navigation", "get_closest_point_to_segment");
		return ptrcall!(Vector3)(_GODOT_get_closest_point_to_segment, _godot_object, start, end, use_collision);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_get_closest_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point") = _GODOT_get_closest_point;
	/**
	Returns the closest navigation point to the point passed.
	*/
	Vector3 getClosestPoint(in Vector3 to_point)
	{
		_GODOT_get_closest_point.bind("Navigation", "get_closest_point");
		return ptrcall!(Vector3)(_GODOT_get_closest_point, _godot_object, to_point);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_get_closest_point_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_normal") = _GODOT_get_closest_point_normal;
	/**
	Returns the surface normal of the navigation mesh at the point passed. For instance, if the point passed was at a 45 degree slope it would return something like (0.5,0.5,0). This is useful for rotating a navigation agent in accordance with the `NavigationMesh`.
	*/
	Vector3 getClosestPointNormal(in Vector3 to_point)
	{
		_GODOT_get_closest_point_normal.bind("Navigation", "get_closest_point_normal");
		return ptrcall!(Vector3)(_GODOT_get_closest_point_normal, _godot_object, to_point);
	}
	package(godot) static GodotMethod!(GodotObject, Vector3) _GODOT_get_closest_point_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_owner") = _GODOT_get_closest_point_owner;
	/**
	Returns the nearest `NavigationMeshInstance` to the point passed.
	*/
	GodotObject getClosestPointOwner(in Vector3 to_point)
	{
		_GODOT_get_closest_point_owner.bind("Navigation", "get_closest_point_owner");
		return ptrcall!(GodotObject)(_GODOT_get_closest_point_owner, _godot_object, to_point);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_up_vector;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_up_vector") = _GODOT_set_up_vector;
	/**
	
	*/
	void setUpVector(in Vector3 up)
	{
		_GODOT_set_up_vector.bind("Navigation", "set_up_vector");
		ptrcall!(void)(_GODOT_set_up_vector, _godot_object, up);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_up_vector;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_up_vector") = _GODOT_get_up_vector;
	/**
	
	*/
	Vector3 getUpVector() const
	{
		_GODOT_get_up_vector.bind("Navigation", "get_up_vector");
		return ptrcall!(Vector3)(_GODOT_get_up_vector, _godot_object);
	}
	/**
	Defines which direction is up. The default defines 0,1,0 as up which is the world up direction. To make this a ceiling use 0,-1,0 to define down as up.
	*/
	@property Vector3 upVector()
	{
		return getUpVector();
	}
	/// ditto
	@property void upVector(Vector3 v)
	{
		setUpVector(v);
	}
}
