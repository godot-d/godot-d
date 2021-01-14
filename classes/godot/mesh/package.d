/**
A $(D Resource) that contains vertex array-based geometry.

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
import godot.object;
import godot.resource;
import godot.shape;
import godot.trianglemesh;
import godot.material;
/**
A $(D Resource) that contains vertex array-based geometry.

Mesh is a type of $(D Resource) that contains vertex array-based geometry, divided in $(I surfaces). Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.
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
		@GodotName("create_convex_shape") GodotMethod!(Shape) createConvexShape;
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
	@disable new(size_t s);
	/// 
	enum BlendShapeMode : int
	{
		/**
		Blend shapes are normalized.
		*/
		blendShapeModeNormalized = 0,
		/**
		Blend shapes are relative to base weight.
		*/
		blendShapeModeRelative = 1,
	}
	/// 
	enum PrimitiveType : int
	{
		/**
		Render array as points (one vertex equals one point).
		*/
		primitivePoints = 0,
		/**
		Render array as lines (every two vertices a line is created).
		*/
		primitiveLines = 1,
		/**
		Render array as line strip.
		*/
		primitiveLineStrip = 2,
		/**
		Render array as line loop (like line strip, but closed).
		*/
		primitiveLineLoop = 3,
		/**
		Render array as triangles (every three vertices a triangle is created).
		*/
		primitiveTriangles = 4,
		/**
		Render array as triangle strips.
		*/
		primitiveTriangleStrip = 5,
		/**
		Render array as triangle fans.
		*/
		primitiveTriangleFan = 6,
	}
	/// 
	enum ArrayFormat : int
	{
		/**
		Mesh array contains vertices. All meshes require a vertex array so this should always be present.
		*/
		arrayFormatVertex = 1,
		/**
		Mesh array contains normals.
		*/
		arrayFormatNormal = 2,
		/**
		Mesh array contains tangents.
		*/
		arrayFormatTangent = 4,
		/**
		Mesh array contains colors.
		*/
		arrayFormatColor = 8,
		/**
		Used internally to calculate other `ARRAY_COMPRESS_*` enum values. Do not use.
		*/
		arrayCompressBase = 9,
		/**
		Mesh array contains UVs.
		*/
		arrayFormatTexUv = 16,
		/**
		Mesh array contains second UV.
		*/
		arrayFormatTexUv2 = 32,
		/**
		Mesh array contains bones.
		*/
		arrayFormatBones = 64,
		/**
		Mesh array contains bone weights.
		*/
		arrayFormatWeights = 128,
		/**
		Mesh array uses indices.
		*/
		arrayFormatIndex = 256,
		/**
		Flag used to mark a compressed (half float) vertex array.
		*/
		arrayCompressVertex = 512,
		/**
		Flag used to mark a compressed (half float) normal array.
		*/
		arrayCompressNormal = 1024,
		/**
		Flag used to mark a compressed (half float) tangent array.
		*/
		arrayCompressTangent = 2048,
		/**
		Flag used to mark a compressed (half float) color array.
		*/
		arrayCompressColor = 4096,
		/**
		Flag used to mark a compressed (half float) UV coordinates array.
		*/
		arrayCompressTexUv = 8192,
		/**
		Flag used to mark a compressed (half float) UV coordinates array for the second UV coordinates.
		*/
		arrayCompressTexUv2 = 16384,
		/**
		Flag used to mark a compressed bone array.
		*/
		arrayCompressBones = 32768,
		/**
		Flag used to mark a compressed (half float) weight array.
		*/
		arrayCompressWeights = 65536,
		/**
		Used to set flags $(D constant ARRAY_COMPRESS_VERTEX), $(D constant ARRAY_COMPRESS_NORMAL), $(D constant ARRAY_COMPRESS_TANGENT), $(D constant ARRAY_COMPRESS_COLOR), $(D constant ARRAY_COMPRESS_TEX_UV), $(D constant ARRAY_COMPRESS_TEX_UV2) and $(D constant ARRAY_COMPRESS_WEIGHTS) quickly.
		*/
		arrayCompressDefault = 97280,
		/**
		Flag used to mark a compressed index array.
		*/
		arrayCompressIndex = 131072,
		/**
		Flag used to mark that the array contains 2D vertices.
		*/
		arrayFlagUse2dVertices = 262144,
		/**
		Flag used to mark that the array uses 16-bit bones instead of 8-bit.
		*/
		arrayFlagUse16BitBones = 524288,
	}
	/// 
	enum ArrayType : int
	{
		/**
		Array of vertices.
		*/
		arrayVertex = 0,
		/**
		Array of normals.
		*/
		arrayNormal = 1,
		/**
		Array of tangents as an array of floats, 4 floats per tangent.
		*/
		arrayTangent = 2,
		/**
		Array of colors.
		*/
		arrayColor = 3,
		/**
		Array of UV coordinates.
		*/
		arrayTexUv = 4,
		/**
		Array of second set of UV coordinates.
		*/
		arrayTexUv2 = 5,
		/**
		Array of bone data.
		*/
		arrayBones = 6,
		/**
		Array of weights.
		*/
		arrayWeights = 7,
		/**
		Array of indices.
		*/
		arrayIndex = 8,
		/**
		Represents the size of the $(D arraytype) enum.
		*/
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
		arrayCompressDefault = 97280,
		arrayCompressIndex = 131072,
		arrayFlagUse2dVertices = 262144,
		arrayFlagUse16BitBones = 524288,
	}
	/**
	Calculate a $(D ConvexPolygonShape) from the mesh.
	*/
	Ref!Shape createConvexShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(GDNativeClassBinding.createConvexShape, _godot_object);
	}
	/**
	Calculate an outline mesh at a defined offset (margin) from the original mesh.
	$(B Note:) This method typically returns the vertices in reverse order (e.g. clockwise to counterclockwise).
	*/
	Ref!Mesh createOutline(in double margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.createOutline, _godot_object, margin);
	}
	/**
	Calculate a $(D ConcavePolygonShape) from the mesh.
	*/
	Ref!Shape createTrimeshShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(GDNativeClassBinding.createTrimeshShape, _godot_object);
	}
	/**
	Generate a $(D TriangleMesh) from the mesh.
	*/
	Ref!TriangleMesh generateTriangleMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TriangleMesh)(GDNativeClassBinding.generateTriangleMesh, _godot_object);
	}
	/**
	Returns the smallest $(D AABB) enclosing this mesh in local space. Not affected by `custom_aabb`. See also $(D VisualInstance.getTransformedAabb).
	$(B Note:) This is only implemented for $(D ArrayMesh) and $(D PrimitiveMesh).
	*/
	AABB getAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getAabb, _godot_object);
	}
	/**
	Returns all the vertices that make up the faces of the mesh. Each three vertices represent one triangle.
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
	Returns the amount of surfaces that the $(D Mesh) holds.
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
	Returns the arrays for the vertices, normals, uvs, etc. that make up the requested surface (see $(D ArrayMesh.addSurfaceFromArrays)).
	*/
	Array surfaceGetArrays(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.surfaceGetArrays, _godot_object, surf_idx);
	}
	/**
	Returns the blend shape arrays for the requested surface.
	*/
	Array surfaceGetBlendShapeArrays(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.surfaceGetBlendShapeArrays, _godot_object, surf_idx);
	}
	/**
	Returns a $(D Material) in a given surface. Surface is rendered using this material.
	*/
	Ref!Material surfaceGetMaterial(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.surfaceGetMaterial, _godot_object, surf_idx);
	}
	/**
	Sets a $(D Material) for a given surface. Surface will be rendered using this material.
	*/
	void surfaceSetMaterial(in long surf_idx, Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.surfaceSetMaterial, _godot_object, surf_idx, material);
	}
	/**
	Sets a hint to be used for lightmap resolution in $(D BakedLightmap). Overrides $(D BakedLightmap.bakeDefaultTexelsPerUnit).
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
