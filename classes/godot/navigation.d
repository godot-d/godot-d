/**
Mesh-based navigation and pathfinding node.

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
Mesh-based navigation and pathfinding node.

Provides navigation and pathfinding within a collection of $(D NavigationMesh)es. By default these will be automatically collected from child $(D NavigationMeshInstance) nodes, but they can also be added on the fly with $(D navmeshAdd). In addition to basic pathfinding, this class also assists with aligning navigation agents with the meshes they are navigating on.
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
	@disable new(size_t s);
	package(godot) static GodotMethod!(long, NavigationMesh, Transform, GodotObject) _GODOT_navmesh_add;
	package(godot) alias _GODOT_methodBindInfo(string name : "navmesh_add") = _GODOT_navmesh_add;
	/**
	Adds a $(D NavigationMesh). Returns an ID for use with $(D navmeshRemove) or $(D navmeshSetTransform). If given, a $(D Transform2D) is applied to the polygon. The optional `owner` is used as return value for $(D getClosestPointOwner).
	*/
	long navmeshAdd(NavigationMesh mesh, in Transform xform, GodotObject owner = GodotObject.init)
	{
		_GODOT_navmesh_add.bind("Navigation", "navmesh_add");
		return ptrcall!(long)(_GODOT_navmesh_add, _godot_object, mesh, xform, owner);
	}
	package(godot) static GodotMethod!(void, long, Transform) _GODOT_navmesh_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "navmesh_set_transform") = _GODOT_navmesh_set_transform;
	/**
	Sets the transform applied to the $(D NavigationMesh) with the given ID.
	*/
	void navmeshSetTransform(in long id, in Transform xform)
	{
		_GODOT_navmesh_set_transform.bind("Navigation", "navmesh_set_transform");
		ptrcall!(void)(_GODOT_navmesh_set_transform, _godot_object, id, xform);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_navmesh_remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "navmesh_remove") = _GODOT_navmesh_remove;
	/**
	Removes the $(D NavigationMesh) with the given ID.
	*/
	void navmeshRemove(in long id)
	{
		_GODOT_navmesh_remove.bind("Navigation", "navmesh_remove");
		ptrcall!(void)(_GODOT_navmesh_remove, _godot_object, id);
	}
	package(godot) static GodotMethod!(PoolVector3Array, Vector3, Vector3, bool) _GODOT_get_simple_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_simple_path") = _GODOT_get_simple_path;
	/**
	Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the agent properties associated with each $(D NavigationMesh) (raidus, height, etc.) are considered in the path calculation, otherwise they are ignored.
	*/
	PoolVector3Array getSimplePath(in Vector3 start, in Vector3 end, in bool optimize = true)
	{
		_GODOT_get_simple_path.bind("Navigation", "get_simple_path");
		return ptrcall!(PoolVector3Array)(_GODOT_get_simple_path, _godot_object, start, end, optimize);
	}
	package(godot) static GodotMethod!(Vector3, Vector3, Vector3, bool) _GODOT_get_closest_point_to_segment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_to_segment") = _GODOT_get_closest_point_to_segment;
	/**
	Returns the navigation point closest to the given line segment. When enabling `use_collision`, only considers intersection points between segment and navigation meshes. If multiple intersection points are found, the one closest to the segment start point is returned.
	*/
	Vector3 getClosestPointToSegment(in Vector3 start, in Vector3 end, in bool use_collision = false)
	{
		_GODOT_get_closest_point_to_segment.bind("Navigation", "get_closest_point_to_segment");
		return ptrcall!(Vector3)(_GODOT_get_closest_point_to_segment, _godot_object, start, end, use_collision);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_get_closest_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point") = _GODOT_get_closest_point;
	/**
	Returns the navigation point closest to the point given. Points are in local coordinate space.
	*/
	Vector3 getClosestPoint(in Vector3 to_point)
	{
		_GODOT_get_closest_point.bind("Navigation", "get_closest_point");
		return ptrcall!(Vector3)(_GODOT_get_closest_point, _godot_object, to_point);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_get_closest_point_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_normal") = _GODOT_get_closest_point_normal;
	/**
	Returns the surface normal at the navigation point closest to the point given. Useful for rotating a navigation agent according to the navigation mesh it moves on.
	*/
	Vector3 getClosestPointNormal(in Vector3 to_point)
	{
		_GODOT_get_closest_point_normal.bind("Navigation", "get_closest_point_normal");
		return ptrcall!(Vector3)(_GODOT_get_closest_point_normal, _godot_object, to_point);
	}
	package(godot) static GodotMethod!(GodotObject, Vector3) _GODOT_get_closest_point_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_closest_point_owner") = _GODOT_get_closest_point_owner;
	/**
	Returns the owner of the $(D NavigationMesh) which contains the navigation point closest to the point given. This is usually a $(D NavigtionMeshInstance). For meshes added via $(D navmeshAdd), returns the owner that was given (or `null` if the `owner` parameter was omitted).
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
	Defines which direction is up. By default this is `(0, 1, 0)`, which is the world up direction.
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
