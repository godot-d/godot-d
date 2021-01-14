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
import godot.d.traits;
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

Provides navigation and pathfinding within a collection of $(D NavigationMesh)es. By default, these will be automatically collected from child $(D NavigationMeshInstance) nodes, but they can also be added on the fly with $(D navmeshAdd). In addition to basic pathfinding, this class also assists with aligning navigation agents with the meshes they are navigating on.
*/
@GodotBaseClass struct Navigation
{
	package(godot) enum string _GODOT_internal_name = "Navigation";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_closest_point") GodotMethod!(Vector3, Vector3) getClosestPoint;
		@GodotName("get_closest_point_normal") GodotMethod!(Vector3, Vector3) getClosestPointNormal;
		@GodotName("get_closest_point_owner") GodotMethod!(GodotObject, Vector3) getClosestPointOwner;
		@GodotName("get_closest_point_to_segment") GodotMethod!(Vector3, Vector3, Vector3, bool) getClosestPointToSegment;
		@GodotName("get_simple_path") GodotMethod!(PoolVector3Array, Vector3, Vector3, bool) getSimplePath;
		@GodotName("get_up_vector") GodotMethod!(Vector3) getUpVector;
		@GodotName("navmesh_add") GodotMethod!(long, NavigationMesh, Transform, GodotObject) navmeshAdd;
		@GodotName("navmesh_remove") GodotMethod!(void, long) navmeshRemove;
		@GodotName("navmesh_set_transform") GodotMethod!(void, long, Transform) navmeshSetTransform;
		@GodotName("set_up_vector") GodotMethod!(void, Vector3) setUpVector;
	}
	/// 
	pragma(inline, true) bool opEquals(in Navigation other) const
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
	/// Construct a new instance of Navigation.
	/// Note: use `memnew!Navigation` instead.
	static Navigation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Navigation");
		if(constructor is null) return typeof(this).init;
		return cast(Navigation)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the navigation point closest to the point given. Points are in local coordinate space.
	*/
	Vector3 getClosestPoint(in Vector3 to_point)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getClosestPoint, _godot_object, to_point);
	}
	/**
	Returns the surface normal at the navigation point closest to the point given. Useful for rotating a navigation agent according to the navigation mesh it moves on.
	*/
	Vector3 getClosestPointNormal(in Vector3 to_point)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getClosestPointNormal, _godot_object, to_point);
	}
	/**
	Returns the owner of the $(D NavigationMesh) which contains the navigation point closest to the point given. This is usually a $(D NavigationMeshInstance). For meshes added via $(D navmeshAdd), returns the owner that was given (or `null` if the `owner` parameter was omitted).
	*/
	GodotObject getClosestPointOwner(in Vector3 to_point)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.getClosestPointOwner, _godot_object, to_point);
	}
	/**
	Returns the navigation point closest to the given line segment. When enabling `use_collision`, only considers intersection points between segment and navigation meshes. If multiple intersection points are found, the one closest to the segment start point is returned.
	*/
	Vector3 getClosestPointToSegment(in Vector3 start, in Vector3 end, in bool use_collision = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getClosestPointToSegment, _godot_object, start, end, use_collision);
	}
	/**
	Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the agent properties associated with each $(D NavigationMesh) (radius, height, etc.) are considered in the path calculation, otherwise they are ignored.
	*/
	PoolVector3Array getSimplePath(in Vector3 start, in Vector3 end, in bool optimize = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getSimplePath, _godot_object, start, end, optimize);
	}
	/**
	
	*/
	Vector3 getUpVector() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getUpVector, _godot_object);
	}
	/**
	Adds a $(D NavigationMesh). Returns an ID for use with $(D navmeshRemove) or $(D navmeshSetTransform). If given, a $(D Transform2D) is applied to the polygon. The optional `owner` is used as return value for $(D getClosestPointOwner).
	*/
	long navmeshAdd(NavigationMesh mesh, in Transform xform, GodotObject owner = GodotObject.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.navmeshAdd, _godot_object, mesh, xform, owner);
	}
	/**
	Removes the $(D NavigationMesh) with the given ID.
	*/
	void navmeshRemove(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.navmeshRemove, _godot_object, id);
	}
	/**
	Sets the transform applied to the $(D NavigationMesh) with the given ID.
	*/
	void navmeshSetTransform(in long id, in Transform xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.navmeshSetTransform, _godot_object, id, xform);
	}
	/**
	
	*/
	void setUpVector(in Vector3 up)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUpVector, _godot_object, up);
	}
	/**
	Defines which direction is up. By default, this is `(0, 1, 0)`, which is the world's "up" direction.
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
