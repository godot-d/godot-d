/**
$(D Mesh) type that provides utility for constructing a surface from arrays.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arraymesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.mesh;
/**
$(D Mesh) type that provides utility for constructing a surface from arrays.

The $(D ArrayMesh) is used to construct a $(D Mesh) by specifying the attributes as arrays.
The most basic example is the creation of a single triangle:


var vertices = PoolVector3Array()
vertices.push_back(Vector3(0, 1, 0))
vertices.push_back(Vector3(1, 0, 0))
vertices.push_back(Vector3(0, 0, 1))
# Initialize the ArrayMesh.
var arr_mesh = ArrayMesh.new()
var arrays = []
arrays.resize(ArrayMesh.ARRAY_MAX)
arrays$(D ArrayMesh.ARRAY_VERTEX) = vertices
# Create the Mesh.
arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
var m = MeshInstance.new()
m.mesh = arr_mesh


The $(D MeshInstance) is ready to be added to the $(D SceneTree) to be shown.
See also $(D ImmediateGeometry), $(D MeshDataTool) and $(D SurfaceTool) for procedural geometry generation.
$(B Note:) Godot uses clockwise $(D url=https://learnopengl.com/Advanced-OpenGL/Face-culling)winding order$(D /url) for front faces of triangle primitive modes.
*/
@GodotBaseClass struct ArrayMesh
{
	package(godot) enum string _GODOT_internal_name = "ArrayMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Mesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_blend_shape") GodotMethod!(void, String) addBlendShape;
		@GodotName("add_surface_from_arrays") GodotMethod!(void, long, Array, Array, long) addSurfaceFromArrays;
		@GodotName("clear_blend_shapes") GodotMethod!(void) clearBlendShapes;
		@GodotName("get_blend_shape_count") GodotMethod!(long) getBlendShapeCount;
		@GodotName("get_blend_shape_mode") GodotMethod!(Mesh.BlendShapeMode) getBlendShapeMode;
		@GodotName("get_blend_shape_name") GodotMethod!(String, long) getBlendShapeName;
		@GodotName("get_custom_aabb") GodotMethod!(AABB) getCustomAabb;
		@GodotName("lightmap_unwrap") GodotMethod!(GodotError, Transform, double) lightmapUnwrap;
		@GodotName("regen_normalmaps") GodotMethod!(void) regenNormalmaps;
		@GodotName("set_blend_shape_mode") GodotMethod!(void, long) setBlendShapeMode;
		@GodotName("set_custom_aabb") GodotMethod!(void, AABB) setCustomAabb;
		@GodotName("surface_find_by_name") GodotMethod!(long, String) surfaceFindByName;
		@GodotName("surface_get_array_index_len") GodotMethod!(long, long) surfaceGetArrayIndexLen;
		@GodotName("surface_get_array_len") GodotMethod!(long, long) surfaceGetArrayLen;
		@GodotName("surface_get_format") GodotMethod!(long, long) surfaceGetFormat;
		@GodotName("surface_get_name") GodotMethod!(String, long) surfaceGetName;
		@GodotName("surface_get_primitive_type") GodotMethod!(Mesh.PrimitiveType, long) surfaceGetPrimitiveType;
		@GodotName("surface_remove") GodotMethod!(void, long) surfaceRemove;
		@GodotName("surface_set_name") GodotMethod!(void, long, String) surfaceSetName;
		@GodotName("surface_update_region") GodotMethod!(void, long, long, PoolByteArray) surfaceUpdateRegion;
	}
	/// 
	pragma(inline, true) bool opEquals(in ArrayMesh other) const
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
	/// Construct a new instance of ArrayMesh.
	/// Note: use `memnew!ArrayMesh` instead.
	static ArrayMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ArrayMesh");
		if(constructor is null) return typeof(this).init;
		return cast(ArrayMesh)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ArrayFormat : int
	{
		/**
		Array format will include vertices (mandatory).
		*/
		arrayFormatVertex = 1,
		/**
		Array format will include normals.
		*/
		arrayFormatNormal = 2,
		/**
		Array format will include tangents.
		*/
		arrayFormatTangent = 4,
		/**
		Array format will include a color array.
		*/
		arrayFormatColor = 8,
		/**
		Array format will include UVs.
		*/
		arrayFormatTexUv = 16,
		/**
		Array format will include another set of UVs.
		*/
		arrayFormatTexUv2 = 32,
		/**
		Array format will include bone indices.
		*/
		arrayFormatBones = 64,
		/**
		Array format will include bone weights.
		*/
		arrayFormatWeights = 128,
		/**
		Index array will be used.
		*/
		arrayFormatIndex = 256,
	}
	/// 
	enum ArrayType : int
	{
		/**
		$(D PoolVector3Array), $(D PoolVector2Array), or $(D Array) of vertex positions.
		*/
		arrayVertex = 0,
		/**
		$(D PoolVector3Array) of vertex normals.
		*/
		arrayNormal = 1,
		/**
		$(D PoolRealArray) of vertex tangents. Each element in groups of 4 floats, first 3 floats determine the tangent, and the last the binormal direction as -1 or 1.
		*/
		arrayTangent = 2,
		/**
		$(D PoolColorArray) of vertex colors.
		*/
		arrayColor = 3,
		/**
		$(D PoolVector2Array) for UV coordinates.
		*/
		arrayTexUv = 4,
		/**
		$(D PoolVector2Array) for second UV coordinates.
		*/
		arrayTexUv2 = 5,
		/**
		$(D PoolRealArray) or $(D PoolIntArray) of bone indices. Each element in groups of 4 floats.
		*/
		arrayBones = 6,
		/**
		$(D PoolRealArray) of bone weights. Each element in groups of 4 floats.
		*/
		arrayWeights = 7,
		/**
		$(D PoolIntArray) of integers used as indices referencing vertices, colors, normals, tangents, and textures. All of those arrays must have the same number of elements as the vertex array. No index can be beyond the vertex array size. When this index array is present, it puts the function into "index mode," where the index selects the *i*'th vertex, normal, tangent, color, UV, etc. This means if you want to have different normals or colors along an edge, you have to duplicate the vertices.
		For triangles, the index array is interpreted as triples, referring to the vertices of each triangle. For lines, the index array is in pairs indicating the start and end of each line.
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
		/**
		Default value used for index_array_len when no indices are present.
		*/
		noIndexArray = -1,
		arrayVertex = 0,
		arrayNormal = 1,
		arrayFormatVertex = 1,
		arrayFormatNormal = 2,
		arrayTangent = 2,
		arrayColor = 3,
		/**
		Amount of weights/bone indices per vertex (always 4).
		*/
		arrayWeightsSize = 4,
		arrayFormatTangent = 4,
		arrayTexUv = 4,
		arrayTexUv2 = 5,
		arrayBones = 6,
		arrayWeights = 7,
		arrayIndex = 8,
		arrayFormatColor = 8,
		arrayMax = 9,
		arrayFormatTexUv = 16,
		arrayFormatTexUv2 = 32,
		arrayFormatBones = 64,
		arrayFormatWeights = 128,
		arrayFormatIndex = 256,
	}
	/**
	Adds name for a blend shape that will be added with $(D addSurfaceFromArrays). Must be called before surface is added.
	*/
	void addBlendShape(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addBlendShape, _godot_object, name);
	}
	/**
	Creates a new surface.
	Surfaces are created to be rendered using a `primitive`, which may be any of the types defined in $(D Mesh.primitivetype). (As a note, when using indices, it is recommended to only use points, lines or triangles.) $(D Mesh.getSurfaceCount) will become the `surf_idx` for this new surface.
	The `arrays` argument is an array of arrays. See $(D arraytype) for the values used in this array. For example, `arrays$(D 0)` is the array of vertices. That first vertex sub-array is always required; the others are optional. Adding an index array puts this function into "index mode" where the vertex and other arrays become the sources of data and the index array defines the vertex order. All sub-arrays must have the same length as the vertex array or be empty, except for $(D constant ARRAY_INDEX) if it is used.
	Adding an index array puts this function into "index mode" where the vertex and other arrays become the sources of data, and the index array defines the order of the vertices.
	*/
	void addSurfaceFromArrays(in long primitive, in Array arrays, in Array blend_shapes = Array.make(), in long compress_flags = 97280)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSurfaceFromArrays, _godot_object, primitive, arrays, blend_shapes, compress_flags);
	}
	/**
	Removes all blend shapes from this $(D ArrayMesh).
	*/
	void clearBlendShapes()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearBlendShapes, _godot_object);
	}
	/**
	Returns the number of blend shapes that the $(D ArrayMesh) holds.
	*/
	long getBlendShapeCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBlendShapeCount, _godot_object);
	}
	/**
	
	*/
	Mesh.BlendShapeMode getBlendShapeMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh.BlendShapeMode)(GDNativeClassBinding.getBlendShapeMode, _godot_object);
	}
	/**
	Returns the name of the blend shape at this index.
	*/
	String getBlendShapeName(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBlendShapeName, _godot_object, index);
	}
	/**
	
	*/
	AABB getCustomAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getCustomAabb, _godot_object);
	}
	/**
	Will perform a UV unwrap on the $(D ArrayMesh) to prepare the mesh for lightmapping.
	*/
	GodotError lightmapUnwrap(in Transform transform, in double texel_size)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.lightmapUnwrap, _godot_object, transform, texel_size);
	}
	/**
	Will regenerate normal maps for the $(D ArrayMesh).
	*/
	void regenNormalmaps()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.regenNormalmaps, _godot_object);
	}
	/**
	
	*/
	void setBlendShapeMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlendShapeMode, _godot_object, mode);
	}
	/**
	
	*/
	void setCustomAabb(in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomAabb, _godot_object, aabb);
	}
	/**
	Returns the index of the first surface with this name held within this $(D ArrayMesh). If none are found, -1 is returned.
	*/
	long surfaceFindByName(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.surfaceFindByName, _godot_object, name);
	}
	/**
	Returns the length in indices of the index array in the requested surface (see $(D addSurfaceFromArrays)).
	*/
	long surfaceGetArrayIndexLen(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.surfaceGetArrayIndexLen, _godot_object, surf_idx);
	}
	/**
	Returns the length in vertices of the vertex array in the requested surface (see $(D addSurfaceFromArrays)).
	*/
	long surfaceGetArrayLen(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.surfaceGetArrayLen, _godot_object, surf_idx);
	}
	/**
	Returns the format mask of the requested surface (see $(D addSurfaceFromArrays)).
	*/
	long surfaceGetFormat(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.surfaceGetFormat, _godot_object, surf_idx);
	}
	/**
	Gets the name assigned to this surface.
	*/
	String surfaceGetName(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.surfaceGetName, _godot_object, surf_idx);
	}
	/**
	Returns the primitive type of the requested surface (see $(D addSurfaceFromArrays)).
	*/
	Mesh.PrimitiveType surfaceGetPrimitiveType(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh.PrimitiveType)(GDNativeClassBinding.surfaceGetPrimitiveType, _godot_object, surf_idx);
	}
	/**
	Removes a surface at position `surf_idx`, shifting greater surfaces one `surf_idx` slot down.
	*/
	void surfaceRemove(in long surf_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.surfaceRemove, _godot_object, surf_idx);
	}
	/**
	Sets a name for a given surface.
	*/
	void surfaceSetName(in long surf_idx, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.surfaceSetName, _godot_object, surf_idx, name);
	}
	/**
	Updates a specified region of mesh arrays on the GPU.
	$(B Warning:) Only use if you know what you are doing. You can easily cause crashes by calling this function with improper arguments.
	*/
	void surfaceUpdateRegion(in long surf_idx, in long offset, in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.surfaceUpdateRegion, _godot_object, surf_idx, offset, data);
	}
	/**
	Sets the blend shape mode to one of $(D Mesh.blendshapemode).
	*/
	@property Mesh.BlendShapeMode blendShapeMode()
	{
		return getBlendShapeMode();
	}
	/// ditto
	@property void blendShapeMode(long v)
	{
		setBlendShapeMode(v);
	}
	/**
	Overrides the $(D AABB) with one defined by user for use with frustum culling. Especially useful to avoid unexpected culling when using a shader to offset vertices.
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
}
