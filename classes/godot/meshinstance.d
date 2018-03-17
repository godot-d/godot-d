/**
Node that instances meshes into a scenario.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.meshinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.mesh;
import godot.material;
/**
Node that instances meshes into a scenario.

MeshInstance is a node that takes a $(D Mesh) resource and adds it to the current scenario by creating an instance of it. This is the class most often used to get 3D geometry rendered and can be used to instance a single $(D Mesh) in many places. This allows to reuse geometry and save on resources. When a $(D Mesh) has to be instanced more than thousands of times at close proximity, consider using a $(D MultiMesh) in a $(D MultiMeshInstance) instead.
*/
@GodotBaseClass struct MeshInstance
{
	static immutable string _GODOT_internal_name = "MeshInstance";
public:
@nogc nothrow:
	union { godot_object _godot_object; GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in MeshInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MeshInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MeshInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MeshInstance");
		if(constructor is null) return typeof(this).init;
		return cast(MeshInstance)(constructor());
	}
	package(godot) static GodotMethod!(void, Mesh) _GODOT_set_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mesh") = _GODOT_set_mesh;
	/**
	
	*/
	void setMesh(Mesh mesh)
	{
		_GODOT_set_mesh.bind("MeshInstance", "set_mesh");
		ptrcall!(void)(_GODOT_set_mesh, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(Mesh) _GODOT_get_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mesh") = _GODOT_get_mesh;
	/**
	
	*/
	Ref!Mesh getMesh() const
	{
		_GODOT_get_mesh.bind("MeshInstance", "get_mesh");
		return ptrcall!(Mesh)(_GODOT_get_mesh, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_skeleton_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_skeleton_path") = _GODOT_set_skeleton_path;
	/**
	
	*/
	void setSkeletonPath(NodePathArg0)(in NodePathArg0 skeleton_path)
	{
		_GODOT_set_skeleton_path.bind("MeshInstance", "set_skeleton_path");
		ptrcall!(void)(_GODOT_set_skeleton_path, _godot_object, skeleton_path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_skeleton_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_skeleton_path") = _GODOT_get_skeleton_path;
	/**
	
	*/
	NodePath getSkeletonPath()
	{
		_GODOT_get_skeleton_path.bind("MeshInstance", "get_skeleton_path");
		return ptrcall!(NodePath)(_GODOT_get_skeleton_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, Material) _GODOT_set_surface_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_surface_material") = _GODOT_set_surface_material;
	/**
	Sets the $(D Material) for a surface of the $(D Mesh) resource.
	*/
	void setSurfaceMaterial(in long surface, Material material)
	{
		_GODOT_set_surface_material.bind("MeshInstance", "set_surface_material");
		ptrcall!(void)(_GODOT_set_surface_material, _godot_object, surface, material);
	}
	package(godot) static GodotMethod!(Material, long) _GODOT_get_surface_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_surface_material") = _GODOT_get_surface_material;
	/**
	Returns the $(D Material) for a surface of the $(D Mesh) resource.
	*/
	Ref!Material getSurfaceMaterial(in long surface) const
	{
		_GODOT_get_surface_material.bind("MeshInstance", "get_surface_material");
		return ptrcall!(Material)(_GODOT_get_surface_material, _godot_object, surface);
	}
	package(godot) static GodotMethod!(void) _GODOT_create_trimesh_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_trimesh_collision") = _GODOT_create_trimesh_collision;
	/**
	This helper creates a $(D StaticBody) child node with a $(D ConcavePolygonShape) collision shape calculated from the mesh geometry. It's mainly used for testing.
	*/
	void createTrimeshCollision()
	{
		_GODOT_create_trimesh_collision.bind("MeshInstance", "create_trimesh_collision");
		ptrcall!(void)(_GODOT_create_trimesh_collision, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_create_convex_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_convex_collision") = _GODOT_create_convex_collision;
	/**
	This helper creates a $(D StaticBody) child node with a $(D ConvexPolygonShape) collision shape calculated from the mesh geometry. It's mainly used for testing.
	*/
	void createConvexCollision()
	{
		_GODOT_create_convex_collision.bind("MeshInstance", "create_convex_collision");
		ptrcall!(void)(_GODOT_create_convex_collision, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__mesh_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_mesh_changed") = _GODOT__mesh_changed;
	/**
	
	*/
	void _meshChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_mesh_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_create_debug_tangents;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_debug_tangents") = _GODOT_create_debug_tangents;
	/**
	This helper creates a $(D MeshInstance) child node with gizmos at every vertex calculated from the mesh geometry. It's mainly used for testing.
	*/
	void createDebugTangents()
	{
		_GODOT_create_debug_tangents.bind("MeshInstance", "create_debug_tangents");
		ptrcall!(void)(_GODOT_create_debug_tangents, _godot_object);
	}
	/**
	The $(D Mesh) resource for the instance.
	*/
	@property Mesh mesh()
	{
		return getMesh();
	}
	/// ditto
	@property void mesh(Mesh v)
	{
		setMesh(v);
	}
	/**
	$(D NodePath) to the $(D Skeleton) associated with the instance.
	*/
	@property NodePath skeleton()
	{
		return getSkeletonPath();
	}
	/// ditto
	@property void skeleton(NodePath v)
	{
		setSkeletonPath(v);
	}
}
