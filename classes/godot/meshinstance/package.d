/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.meshinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.visualinstance;
import godot.material;
import godot.mesh;
import godot.skin;
import godot.node;
/**

*/
@GodotBaseClass struct MeshInstance
{
	package(godot) enum string _GODOT_internal_name = "MeshInstance";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_mesh_changed") GodotMethod!(void) _meshChanged;
		@GodotName("_update_skinning") GodotMethod!(void) _updateSkinning;
		@GodotName("create_convex_collision") GodotMethod!(void, bool, bool) createConvexCollision;
		@GodotName("create_debug_tangents") GodotMethod!(void) createDebugTangents;
		@GodotName("create_multiple_convex_collisions") GodotMethod!(void) createMultipleConvexCollisions;
		@GodotName("create_trimesh_collision") GodotMethod!(void) createTrimeshCollision;
		@GodotName("get_active_material") GodotMethod!(Material, long) getActiveMaterial;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("get_skeleton_path") GodotMethod!(NodePath) getSkeletonPath;
		@GodotName("get_skin") GodotMethod!(Skin) getSkin;
		@GodotName("get_surface_material") GodotMethod!(Material, long) getSurfaceMaterial;
		@GodotName("get_surface_material_count") GodotMethod!(long) getSurfaceMaterialCount;
		@GodotName("is_mergeable_with") GodotMethod!(bool, Node) isMergeableWith;
		@GodotName("is_software_skinning_transform_normals_enabled") GodotMethod!(bool) isSoftwareSkinningTransformNormalsEnabled;
		@GodotName("merge_meshes") GodotMethod!(bool, Array, bool, bool) mergeMeshes;
		@GodotName("set_mesh") GodotMethod!(void, Mesh) setMesh;
		@GodotName("set_skeleton_path") GodotMethod!(void, NodePath) setSkeletonPath;
		@GodotName("set_skin") GodotMethod!(void, Skin) setSkin;
		@GodotName("set_software_skinning_transform_normals") GodotMethod!(void, bool) setSoftwareSkinningTransformNormals;
		@GodotName("set_surface_material") GodotMethod!(void, long, Material) setSurfaceMaterial;
	}
	/// 
	pragma(inline, true) bool opEquals(in MeshInstance other) const
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
	/// Construct a new instance of MeshInstance.
	/// Note: use `memnew!MeshInstance` instead.
	static MeshInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MeshInstance");
		if(constructor is null) return typeof(this).init;
		return cast(MeshInstance)(constructor());
	}
	/**
	
	*/
	void _meshChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_mesh_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateSkinning()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_skinning");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void createConvexCollision(in bool clean = true, in bool simplify = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createConvexCollision, _godot_object, clean, simplify);
	}
	/**
	
	*/
	void createDebugTangents()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createDebugTangents, _godot_object);
	}
	/**
	
	*/
	void createMultipleConvexCollisions()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createMultipleConvexCollisions, _godot_object);
	}
	/**
	
	*/
	void createTrimeshCollision()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createTrimeshCollision, _godot_object);
	}
	/**
	
	*/
	Ref!Material getActiveMaterial(in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getActiveMaterial, _godot_object, surface);
	}
	/**
	
	*/
	Ref!Mesh getMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	NodePath getSkeletonPath()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getSkeletonPath, _godot_object);
	}
	/**
	
	*/
	Ref!Skin getSkin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Skin)(GDNativeClassBinding.getSkin, _godot_object);
	}
	/**
	
	*/
	Ref!Material getSurfaceMaterial(in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getSurfaceMaterial, _godot_object, surface);
	}
	/**
	
	*/
	long getSurfaceMaterialCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSurfaceMaterialCount, _godot_object);
	}
	/**
	
	*/
	bool isMergeableWith(Node other_mesh_instance) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isMergeableWith, _godot_object, other_mesh_instance);
	}
	/**
	
	*/
	bool isSoftwareSkinningTransformNormalsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSoftwareSkinningTransformNormalsEnabled, _godot_object);
	}
	/**
	
	*/
	bool mergeMeshes(in Array mesh_instances = Array.make(), in bool use_global_space = false, in bool check_compatibility = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.mergeMeshes, _godot_object, mesh_instances, use_global_space, check_compatibility);
	}
	/**
	
	*/
	void setMesh(Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMesh, _godot_object, mesh);
	}
	/**
	
	*/
	void setSkeletonPath(NodePathArg0)(in NodePathArg0 skeleton_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkeletonPath, _godot_object, skeleton_path);
	}
	/**
	
	*/
	void setSkin(Skin skin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkin, _godot_object, skin);
	}
	/**
	
	*/
	void setSoftwareSkinningTransformNormals(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSoftwareSkinningTransformNormals, _godot_object, enabled);
	}
	/**
	
	*/
	void setSurfaceMaterial(in long surface, Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSurfaceMaterial, _godot_object, surface, material);
	}
	/**
	
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
	/**
	
	*/
	@property Skin skin()
	{
		return getSkin();
	}
	/// ditto
	@property void skin(Skin v)
	{
		setSkin(v);
	}
	/**
	
	*/
	@property bool softwareSkinningTransformNormals()
	{
		return isSoftwareSkinningTransformNormalsEnabled();
	}
	/// ditto
	@property void softwareSkinningTransformNormals(bool v)
	{
		setSoftwareSkinningTransformNormals(v);
	}
}
