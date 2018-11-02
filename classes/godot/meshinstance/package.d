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
import godot.visualinstance;
import godot.spatial;
import godot.node;
/**
Node that instances meshes into a scenario.

MeshInstance is a node that takes a $(D Mesh) resource and adds it to the current scenario by creating an instance of it. This is the class most often used to get 3D geometry rendered and can be used to instance a single $(D Mesh) in many places. This allows to reuse geometry and save on resources. When a $(D Mesh) has to be instanced more than thousands of times at close proximity, consider using a $(D MultiMesh) in a $(D MultiMeshInstance) instead.
*/
@GodotBaseClass struct MeshInstance
{
	enum string _GODOT_internal_name = "MeshInstance";
public:
@nogc nothrow:
	union { godot_object _godot_object; GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_mesh") GodotMethod!(void, Mesh) setMesh;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("set_skeleton_path") GodotMethod!(void, NodePath) setSkeletonPath;
		@GodotName("get_skeleton_path") GodotMethod!(NodePath) getSkeletonPath;
		@GodotName("get_surface_material_count") GodotMethod!(long) getSurfaceMaterialCount;
		@GodotName("set_surface_material") GodotMethod!(void, long, Material) setSurfaceMaterial;
		@GodotName("get_surface_material") GodotMethod!(Material, long) getSurfaceMaterial;
		@GodotName("create_trimesh_collision") GodotMethod!(void) createTrimeshCollision;
		@GodotName("create_convex_collision") GodotMethod!(void) createConvexCollision;
		@GodotName("_mesh_changed") GodotMethod!(void) _meshChanged;
		@GodotName("create_debug_tangents") GodotMethod!(void) createDebugTangents;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void setMesh(Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMesh, _godot_object, mesh);
	}
	/**
	
	*/
	Ref!Mesh getMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(_classBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	void setSkeletonPath(NodePathArg0)(in NodePathArg0 skeleton_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSkeletonPath, _godot_object, skeleton_path);
	}
	/**
	
	*/
	NodePath getSkeletonPath()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getSkeletonPath, _godot_object);
	}
	/**
	
	*/
	long getSurfaceMaterialCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSurfaceMaterialCount, _godot_object);
	}
	/**
	Sets the $(D Material) for a surface of the $(D Mesh) resource.
	*/
	void setSurfaceMaterial(in long surface, Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSurfaceMaterial, _godot_object, surface, material);
	}
	/**
	Returns the $(D Material) for a surface of the $(D Mesh) resource.
	*/
	Ref!Material getSurfaceMaterial(in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(_classBinding.getSurfaceMaterial, _godot_object, surface);
	}
	/**
	This helper creates a $(D StaticBody) child node with a $(D ConcavePolygonShape) collision shape calculated from the mesh geometry. It's mainly used for testing.
	*/
	void createTrimeshCollision()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createTrimeshCollision, _godot_object);
	}
	/**
	This helper creates a $(D StaticBody) child node with a $(D ConvexPolygonShape) collision shape calculated from the mesh geometry. It's mainly used for testing.
	*/
	void createConvexCollision()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createConvexCollision, _godot_object);
	}
	/**
	
	*/
	void _meshChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_mesh_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	This helper creates a $(D MeshInstance) child node with gizmos at every vertex calculated from the mesh geometry. It's mainly used for testing.
	*/
	void createDebugTangents()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createDebugTangents, _godot_object);
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
