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
import godot.shape;
import godot.trianglemesh;
/**
A $(D Resource) that contains vertex-array based geometry.

Mesh is a type of $(D Resource) that contains vertex-array based geometry, divided in $(I surfaces). Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.
*/
@GodotBaseClass struct Mesh
{
	static immutable string _GODOT_internal_name = "Mesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		arrayCompressDefault = 97792,
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
		
		*/
		arrayVertex = 0,
		/**
		
		*/
		arrayNormal = 1,
		/**
		
		*/
		arrayTangent = 2,
		/**
		
		*/
		arrayColor = 3,
		/**
		
		*/
		arrayTexUv = 4,
		/**
		
		*/
		arrayTexUv2 = 5,
		/**
		
		*/
		arrayBones = 6,
		/**
		
		*/
		arrayWeights = 7,
		/**
		
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
		primitiveLines = 1,
		arrayFormatVertex = 1,
		arrayNormal = 1,
		blendShapeModeRelative = 1,
		primitiveLineStrip = 2,
		arrayTangent = 2,
		arrayFormatNormal = 2,
		primitiveLineLoop = 3,
		arrayColor = 3,
		primitiveTriangles = 4,
		arrayFormatTangent = 4,
		arrayTexUv = 4,
		arrayTexUv2 = 5,
		primitiveTriangleStrip = 5,
		primitiveTriangleFan = 6,
		arrayBones = 6,
		arrayWeights = 7,
		arrayFormatColor = 8,
		arrayIndex = 8,
		arrayMax = 9,
		arrayCompressBase = 9,
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
		arrayCompressDefault = 97792,
		arrayCompressIndex = 131072,
		arrayFlagUse2dVertices = 262144,
		arrayFlagUse16BitBones = 524288,
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_lightmap_size_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lightmap_size_hint") = _GODOT_set_lightmap_size_hint;
	/**
	
	*/
	void setLightmapSizeHint(in Vector2 size)
	{
		_GODOT_set_lightmap_size_hint.bind("Mesh", "set_lightmap_size_hint");
		ptrcall!(void)(_GODOT_set_lightmap_size_hint, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_lightmap_size_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lightmap_size_hint") = _GODOT_get_lightmap_size_hint;
	/**
	
	*/
	Vector2 getLightmapSizeHint() const
	{
		_GODOT_get_lightmap_size_hint.bind("Mesh", "get_lightmap_size_hint");
		return ptrcall!(Vector2)(_GODOT_get_lightmap_size_hint, _godot_object);
	}
	package(godot) static GodotMethod!(Shape) _GODOT_create_trimesh_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_trimesh_shape") = _GODOT_create_trimesh_shape;
	/**
	Calculate a $(D ConcavePolygonShape) from the mesh.
	*/
	Ref!Shape createTrimeshShape() const
	{
		_GODOT_create_trimesh_shape.bind("Mesh", "create_trimesh_shape");
		return ptrcall!(Shape)(_GODOT_create_trimesh_shape, _godot_object);
	}
	package(godot) static GodotMethod!(Shape) _GODOT_create_convex_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_convex_shape") = _GODOT_create_convex_shape;
	/**
	Calculate a $(D ConvexPolygonShape) from the mesh.
	*/
	Ref!Shape createConvexShape() const
	{
		_GODOT_create_convex_shape.bind("Mesh", "create_convex_shape");
		return ptrcall!(Shape)(_GODOT_create_convex_shape, _godot_object);
	}
	package(godot) static GodotMethod!(Mesh, double) _GODOT_create_outline;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_outline") = _GODOT_create_outline;
	/**
	Calculate an outline mesh at a defined offset (margin) from the original mesh. Note: Typically returns the vertices in reverse order (e.g. clockwise to anti-clockwise).
	*/
	Ref!Mesh createOutline(in double margin) const
	{
		_GODOT_create_outline.bind("Mesh", "create_outline");
		return ptrcall!(Mesh)(_GODOT_create_outline, _godot_object, margin);
	}
	package(godot) static GodotMethod!(PoolVector3Array) _GODOT_get_faces;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_faces") = _GODOT_get_faces;
	/**
	Returns all the vertices that make up the faces of the mesh. Each three vertices represent one triangle.
	*/
	PoolVector3Array getFaces() const
	{
		_GODOT_get_faces.bind("Mesh", "get_faces");
		return ptrcall!(PoolVector3Array)(_GODOT_get_faces, _godot_object);
	}
	package(godot) static GodotMethod!(TriangleMesh) _GODOT_generate_triangle_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_triangle_mesh") = _GODOT_generate_triangle_mesh;
	/**
	Generate a $(D TriangleMesh) from the mesh.
	*/
	Ref!TriangleMesh generateTriangleMesh() const
	{
		_GODOT_generate_triangle_mesh.bind("Mesh", "generate_triangle_mesh");
		return ptrcall!(TriangleMesh)(_GODOT_generate_triangle_mesh, _godot_object);
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
