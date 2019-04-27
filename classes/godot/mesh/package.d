/**
A $(D Resource) that contains vertex-array based geometry.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.mesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
import godot.material;
import godot.shape;
import godot.trianglemesh;
import godot.reference;
/**
A $(D Resource) that contains vertex-array based geometry.

Mesh is a type of $(D Resource) that contains vertex-array based geometry, divided in $(I surfaces). Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.
*/
@GodotBaseClass struct Mesh
{
	enum string _GODOT_internal_name = "Mesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_lightmap_size_hint") GodotMethod!(void, Vector2) setLightmapSizeHint;
		@GodotName("get_lightmap_size_hint") GodotMethod!(Vector2) getLightmapSizeHint;
		@GodotName("get_surface_count") GodotMethod!(long) getSurfaceCount;
		@GodotName("surface_get_arrays") GodotMethod!(Array, long) surfaceGetArrays;
		@GodotName("surface_get_blend_shape_arrays") GodotMethod!(Array, long) surfaceGetBlendShapeArrays;
		@GodotName("surface_get_material") GodotMethod!(Material, long) surfaceGetMaterial;
		@GodotName("create_trimesh_shape") GodotMethod!(Shape) createTrimeshShape;
		@GodotName("create_convex_shape") GodotMethod!(Shape) createConvexShape;
		@GodotName("create_outline") GodotMethod!(Mesh, double) createOutline;
		@GodotName("get_faces") GodotMethod!(PoolVector3Array) getFaces;
		@GodotName("generate_triangle_mesh") GodotMethod!(TriangleMesh) generateTriangleMesh;
	}
	bool opEquals(in Mesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Mesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		
		*/
		blendShapeModeNormalized = 0,
		/**
		
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
		
		*/
		arrayFormatVertex = 1,
		/**
		
		*/
		arrayFormatNormal = 2,
		/**
		
		*/
		arrayFormatTangent = 4,
		/**
		
		*/
		arrayFormatColor = 8,
		/**
		
		*/
		arrayCompressBase = 9,
		/**
		
		*/
		arrayFormatTexUv = 16,
		/**
		
		*/
		arrayFormatTexUv2 = 32,
		/**
		
		*/
		arrayFormatBones = 64,
		/**
		
		*/
		arrayFormatWeights = 128,
		/**
		
		*/
		arrayFormatIndex = 256,
		/**
		
		*/
		arrayCompressVertex = 512,
		/**
		
		*/
		arrayCompressNormal = 1024,
		/**
		
		*/
		arrayCompressTangent = 2048,
		/**
		
		*/
		arrayCompressColor = 4096,
		/**
		
		*/
		arrayCompressTexUv = 8192,
		/**
		
		*/
		arrayCompressTexUv2 = 16384,
		/**
		
		*/
		arrayCompressBones = 32768,
		/**
		
		*/
		arrayCompressWeights = 65536,
		/**
		
		*/
		arrayCompressDefault = 97280,
		/**
		
		*/
		arrayCompressIndex = 131072,
		/**
		
		*/
		arrayFlagUse2dVertices = 262144,
		/**
		
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
		primitiveLineStrip = 2,
		arrayFormatNormal = 2,
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
	
	*/
	void setLightmapSizeHint(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLightmapSizeHint, _godot_object, size);
	}
	/**
	
	*/
	Vector2 getLightmapSizeHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getLightmapSizeHint, _godot_object);
	}
	/**
	Return the amount of surfaces that the $(D Mesh) holds.
	*/
	long getSurfaceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSurfaceCount, _godot_object);
	}
	/**
	Returns the arrays for the vertices, normals, uvs, etc. that make up the requested surface (see $(D ArrayMesh.addSurfaceFromArrays)).
	*/
	Array surfaceGetArrays(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.surfaceGetArrays, _godot_object, surf_idx);
	}
	/**
	Returns the blend shape arrays for the requested surface.
	*/
	Array surfaceGetBlendShapeArrays(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.surfaceGetBlendShapeArrays, _godot_object, surf_idx);
	}
	/**
	Return a $(D Material) in a given surface. Surface is rendered using this material.
	*/
	Ref!Material surfaceGetMaterial(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(_classBinding.surfaceGetMaterial, _godot_object, surf_idx);
	}
	/**
	Calculate a $(D ConcavePolygonShape) from the mesh.
	*/
	Ref!Shape createTrimeshShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(_classBinding.createTrimeshShape, _godot_object);
	}
	/**
	Calculate a $(D ConvexPolygonShape) from the mesh.
	*/
	Ref!Shape createConvexShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape)(_classBinding.createConvexShape, _godot_object);
	}
	/**
	Calculate an outline mesh at a defined offset (margin) from the original mesh. Note: Typically returns the vertices in reverse order (e.g. clockwise to anti-clockwise).
	*/
	Ref!Mesh createOutline(in double margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(_classBinding.createOutline, _godot_object, margin);
	}
	/**
	Returns all the vertices that make up the faces of the mesh. Each three vertices represent one triangle.
	*/
	PoolVector3Array getFaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.getFaces, _godot_object);
	}
	/**
	Generate a $(D TriangleMesh) from the mesh.
	*/
	Ref!TriangleMesh generateTriangleMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TriangleMesh)(_classBinding.generateTriangleMesh, _godot_object);
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
