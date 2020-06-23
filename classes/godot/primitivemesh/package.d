/**
Base class for all primitive meshes. Handles applying a $(D Material) to a primitive mesh.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.primitivemesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.mesh;
import godot.resource;
import godot.material;
/**
Base class for all primitive meshes. Handles applying a $(D Material) to a primitive mesh.

Examples include $(D CapsuleMesh), $(D CubeMesh), $(D CylinderMesh), $(D PlaneMesh), $(D PrismMesh), $(D QuadMesh), and $(D SphereMesh).
*/
@GodotBaseClass struct PrimitiveMesh
{
	package(godot) enum string _GODOT_internal_name = "PrimitiveMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Mesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_update") GodotMethod!(void) _update;
		@GodotName("get_custom_aabb") GodotMethod!(AABB) getCustomAabb;
		@GodotName("get_flip_faces") GodotMethod!(bool) getFlipFaces;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("get_mesh_arrays") GodotMethod!(Array) getMeshArrays;
		@GodotName("set_custom_aabb") GodotMethod!(void, AABB) setCustomAabb;
		@GodotName("set_flip_faces") GodotMethod!(void, bool) setFlipFaces;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
	}
	/// 
	pragma(inline, true) bool opEquals(in PrimitiveMesh other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) PrimitiveMesh opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of PrimitiveMesh.
	/// Note: use `memnew!PrimitiveMesh` instead.
	static PrimitiveMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PrimitiveMesh");
		if(constructor is null) return typeof(this).init;
		return cast(PrimitiveMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _update() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	AABB getCustomAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getCustomAabb, _godot_object);
	}
	/**
	
	*/
	bool getFlipFaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFlipFaces, _godot_object);
	}
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getMaterial, _godot_object);
	}
	/**
	Returns mesh arrays used to constitute surface of $(D Mesh). Mesh arrays can be used with $(D ArrayMesh) to create new surfaces.
	*/
	Array getMeshArrays() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getMeshArrays, _godot_object);
	}
	/**
	
	*/
	void setCustomAabb(in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomAabb, _godot_object, aabb);
	}
	/**
	
	*/
	void setFlipFaces(in bool flip_faces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlipFaces, _godot_object, flip_faces);
	}
	/**
	
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaterial, _godot_object, material);
	}
	/**
	Overrides the $(D AABB) with one defined by user for use with frustum culling. Especially useful to avoid unnexpected culling when  using a shader to offset vertices.
	*/
	@property AABB customAabb()
	{
		return getCustomAabb();
	}
	/// ditto
	@property void customAabb(AABB v)
	{
		setCustomAabb(v);
	}
	/**
	If set, the order of the vertices in each triangle are reversed resulting in the backside of the mesh being drawn.
	This gives the same result as using $(D constant SpatialMaterial.CULL_BACK) in $(D SpatialMaterial.paramsCullMode).
	*/
	@property bool flipFaces()
	{
		return getFlipFaces();
	}
	/// ditto
	@property void flipFaces(bool v)
	{
		setFlipFaces(v);
	}
}
