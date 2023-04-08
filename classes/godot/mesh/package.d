/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.mesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.resource;
import godot.shape;
import godot.trianglemesh;
import godot.material;
/**

*/
@GodotBaseClass struct Mesh
{
	package(godot) enum string _GODOT_internal_name = "Mesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("create_convex_shape") GodotMethod!(Shape, bool, bool) createConvexShape;
		@GodotName("create_outline") GodotMethod!(Mesh, double) createOutline;
		@GodotName("create_trimesh_shape") GodotMethod!(Shape) createTrimeshShape;
		@GodotName("generate_triangle_mesh") GodotMethod!(TriangleMesh) generateTriangleMesh;
		@GodotName("get_aabb") GodotMethod!(AABB) getAabb;
		@GodotName("get_faces") GodotMethod!(PoolVector3Array) getFaces;
		@GodotName("get_lightmap_size_hint") GodotMethod!(Vector2) getLightmapSizeHint;
		@GodotName("get_surface_count") GodotMethod!(long) getSurfaceCount;
		@GodotName("set_lightmap_size_hint") GodotMethod!(void, Vector2) setLightmapSizeHint;
		@GodotName("surface_get_arrays") GodotMethod!(Array, long) surfaceGetArrays;
		@GodotName("surface_get_blend_shape_arrays") GodotMethod!(Array, long) surfaceGetBlendShapeArrays;
		@GodotName("surface_get_material") GodotMethod!(Material, long) surfaceGetMaterial;
		@GodotName("surface_set_material") GodotMethod!(void, long, Material) surfaceSetMaterial;
	}
	/// 
	pragma(inline, true) bool opEquals(in Mesh other) const
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
	/// Construct a new instance of Mesh.
	/// Note: use `memnew!Mesh` instead.
	static Mesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Mesh");
		if(constructor is null) return typeof(this).init;
		return cast(Mesh)(constructor());
	}
	/// 
	enum BlendShapeMode : int
	{
		/** */
		blendShapeModeNormalized = 0,
		/** */
		blendShapeModeRelative = 1,
	}
	/// 
	enum PrimitiveType : int
	{
		/** */
		primitivePoints = 0,
		/** */
		primitiveLines = 1,
		/** */
		primitiveLineStrip = 2,
		/** */
		primitiveLineLoop = 3,
		/** */
		primitiveTriangles = 4,
		/** */
		primitiveTriangleStrip = 5,
		/** */
		primitiveTriangleFan = 6,
	}
	/// 
	enum ArrayFormat : int
	{
		/** */
		arrayFormatVertex = 1,
		/** */
		arrayFormatNormal = 2,
		/** */
		arrayFormatTangent = 4,
		/** */
		arrayFormatColor = 8,
		/** */
		arrayCompressBase = 9,
		/** */
		arrayFormatTexUv = 16,
		/** */
		arrayFormatTexUv2 = 32,
		/** */
		arrayFormatBones = 64,
		/** */
		arrayFormatWeights = 128,
		/** */
		arrayFormatIndex = 256,
		/** */
		arrayCompressVertex = 512,
		/** */
		arrayCompressNormal = 1024,
		/** */
		arrayCompressTangent = 2048,
		/** */
		arrayCompressColor = 4096,
		/** */
		arrayCompressTexUv = 8192,
		/** */
		arrayCompressTexUv2 = 16384,
		/** */
		arrayCompressBones = 32768,
		/** */
		arrayCompressWeights = 65536,
		/** */
		arrayCompressIndex = 131072,
		/** */
		arrayFlagUse2dVertices = 262144,
		/** */
		arrayFlagUse16BitBones = 524288,
		/** */
		arrayFlagUseOctahedralCompression = 2097152,
		/** */
		arrayCompressDefault = 2194432,
	}
	/// 
	enum ArrayType : int
	{
		/** */
		arrayVertex = 0,
		/** */
		arrayNormal = 1,
		/** */
		arrayTangent = 2,
		/** */
		arrayColor = 3,
		/** */
		arrayTexUv = 4,
		/** */
		arrayTexUv2 = 5,
		/** */
		arrayBones = 6,
		/** */
		arrayWeights = 7,
		/** */
		arrayIndex = 8,
		/** */
		arrayMax = 9,
	}
	/// 
	enum Constants : int
	{
		blendShapeModeNormalized = 0,
		arrayVertex = 0,
		primitivePoints = 0,
		arrayFormatVertex = 1,
		blendShapeModeRelative = 1,
		primitiveLines = 1,
		arrayNormal = 1,
		arrayTangent = 2,
		arrayFormatNormal = 2,
		primitiveLineStrip = 2,
		primitiveLineLoop = 3,
		arrayColor = 3,
		arrayTexUv = 4,
		arrayFormatTangent = 4,
		primitiveTriangles = 4,
		arrayTexUv2 = 5,
		primitiveTriangleStrip = 5,
		primitiveTriangleFan = 6,
		arrayBones = 6,
		arrayWeights = 7,
		arrayIndex = 8,
		arrayFormatColor = 8,
		arrayCompressBase = 9,
		arrayMax = 9,
		arrayFormatTexUv = 16,
		arrayFormatTexUv2 = 32,
		arrayFormatBones = 64,
		arrayFormatWeights = 128,
		arrayFormatIndex = 256,
		arrayCompressVertex = 512,
		arrayCompressNormal = 1024,
		arrayCompressTangent = 2048,
		arrayCompressColor = 4096,
		arrayCompressTexUv = 8192,
		arrayCompressTexUv2 = 16384,
		arrayCompressBones = 32768,
		arrayCompressWeights = 65536,
		arrayCompressIndex = 131072,
		arrayFlagUse2dVertices = 262144,
		arrayFlagUse16BitBones = 524288,
		arrayFlagUseOctahedralCompression = 2097152,
		arrayCompressDefault = 2194432,
	}
	/**
	
	*/
	Ref!Shape createConvexShape(in bool clean = true, in bool simplify = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(GDNativeClassBinding.createConvexShape, _godot_object, clean, simplify);
	}
	/**
	
	*/
	Ref!Mesh createOutline(in double margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.createOutline, _godot_object, margin);
	}
	/**
	
	*/
	Ref!Shape createTrimeshShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(GDNativeClassBinding.createTrimeshShape, _godot_object);
	}
	/**
	
	*/
	Ref!TriangleMesh generateTriangleMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TriangleMesh)(GDNativeClassBinding.generateTriangleMesh, _godot_object);
	}
	/**
	
	*/
	AABB getAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getAabb, _godot_object);
	}
	/**
	
	*/
	PoolVector3Array getFaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getFaces, _godot_object);
	}
	/**
	
	*/
	Vector2 getLightmapSizeHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getLightmapSizeHint, _godot_object);
	}
	/**
	
	*/
	long getSurfaceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSurfaceCount, _godot_object);
	}
	/**
	
	*/
	void setLightmapSizeHint(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLightmapSizeHint, _godot_object, size);
	}
	/**
	
	*/
	Array surfaceGetArrays(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.surfaceGetArrays, _godot_object, surf_idx);
	}
	/**
	
	*/
	Array surfaceGetBlendShapeArrays(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.surfaceGetBlendShapeArrays, _godot_object, surf_idx);
	}
	/**
	
	*/
	Ref!Material surfaceGetMaterial(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.surfaceGetMaterial, _godot_object, surf_idx);
	}
	/**
	
	*/
	void surfaceSetMaterial(in long surf_idx, Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.surfaceSetMaterial, _godot_object, surf_idx, material);
	}
	/**
	
	*/
	@property Vector2 lightmapSizeHint()
	{
		return getLightmapSizeHint();
	}
	/// ditto
	@property void lightmapSizeHint(Vector2 v)
	{
		setLightmapSizeHint(v);
	}
}
