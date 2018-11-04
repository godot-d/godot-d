/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arraymesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.mesh;
import godot.material;
import godot.resource;
import godot.reference;
/**
The `ArrayMesh` is used to construct a $(D Mesh) by specifying the attributes as arrays. The most basic example is the creation of a single triangle


var vertices = PoolVector3Array()
vertices.push_back(Vector3(0,1,0))
vertices.push_back(Vector3(1,0,0))
vertices.push_back(Vector3(0,0,1))
# Initialize the ArrayMesh.
var arr_mesh = ArrayMesh.new()
var arrays = []
arrays.resize(ArrayMesh.ARRAY_MAX)
arrays$(D ArrayMesh.ARRAY_VERTEX) = vertices
# Create the Mesh.
arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
var m = MeshInstance.new()
m.mesh = arr_mesh


The `MeshInstance` is ready to be added to the SceneTree to be shown.
*/
@GodotBaseClass struct ArrayMesh
{
	enum string _GODOT_internal_name = "ArrayMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; Mesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_blend_shape") GodotMethod!(void, String) addBlendShape;
		@GodotName("get_blend_shape_count") GodotMethod!(long) getBlendShapeCount;
		@GodotName("get_blend_shape_name") GodotMethod!(String, long) getBlendShapeName;
		@GodotName("clear_blend_shapes") GodotMethod!(void) clearBlendShapes;
		@GodotName("set_blend_shape_mode") GodotMethod!(void, long) setBlendShapeMode;
		@GodotName("get_blend_shape_mode") GodotMethod!(Mesh.BlendShapeMode) getBlendShapeMode;
		@GodotName("add_surface_from_arrays") GodotMethod!(void, long, Array, Array, long) addSurfaceFromArrays;
		@GodotName("surface_remove") GodotMethod!(void, long) surfaceRemove;
		@GodotName("surface_update_region") GodotMethod!(void, long, long, PoolByteArray) surfaceUpdateRegion;
		@GodotName("surface_get_array_len") GodotMethod!(long, long) surfaceGetArrayLen;
		@GodotName("surface_get_array_index_len") GodotMethod!(long, long) surfaceGetArrayIndexLen;
		@GodotName("surface_get_format") GodotMethod!(long, long) surfaceGetFormat;
		@GodotName("surface_get_primitive_type") GodotMethod!(Mesh.PrimitiveType, long) surfaceGetPrimitiveType;
		@GodotName("surface_set_material") GodotMethod!(void, long, Material) surfaceSetMaterial;
		@GodotName("surface_find_by_name") GodotMethod!(long, String) surfaceFindByName;
		@GodotName("surface_set_name") GodotMethod!(void, long, String) surfaceSetName;
		@GodotName("surface_get_name") GodotMethod!(String, long) surfaceGetName;
		@GodotName("center_geometry") GodotMethod!(void) centerGeometry;
		@GodotName("regen_normalmaps") GodotMethod!(void) regenNormalmaps;
		@GodotName("lightmap_unwrap") GodotMethod!(GodotError, Transform, double) lightmapUnwrap;
		@GodotName("set_custom_aabb") GodotMethod!(void, AABB) setCustomAabb;
		@GodotName("get_custom_aabb") GodotMethod!(AABB) getCustomAabb;
	}
	bool opEquals(in ArrayMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ArrayMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Array format will include normals
		*/
		arrayFormatNormal = 2,
		/**
		Array format will include tangents
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
		Vertex array (array of $(D Vector3) vertices).
		*/
		arrayVertex = 0,
		/**
		Normal array (array of $(D Vector3) normals).
		*/
		arrayNormal = 1,
		/**
		Tangent array, array of groups of 4 floats. first 3 floats determine the tangent, and the last the binormal direction as -1 or 1.
		*/
		arrayTangent = 2,
		/**
		Vertex array (array of $(D Color) colors).
		*/
		arrayColor = 3,
		/**
		UV array (array of $(D Vector3) UVs or float array of groups of 2 floats (u,v)).
		*/
		arrayTexUv = 4,
		/**
		Second UV array (array of $(D Vector3) UVs or float array of groups of 2 floats (u,v)).
		*/
		arrayTexUv2 = 5,
		/**
		Array of bone indices, as a float array. Each element in groups of 4 floats.
		*/
		arrayBones = 6,
		/**
		Array of bone weights, as a float array. Each element in groups of 4 floats.
		*/
		arrayWeights = 7,
		/**
		$(D Array) of integers used as indices referencing vertices, colors, normals, tangents, and textures. All of those arrays must have the same number of elements as the vertex array. No index can be beyond the vertex array size. When this index array is present, it puts the function into "index mode," where the index selects the *i*'th vertex, normal, tangent, color, UV, etc. This means if you want to have different normals or colors along an edge, you have to duplicate the vertices.
		For triangles, the index array is interpreted as triples, referring to the vertices of each triangle. For lines, the index array is in pairs indicating the start and end of each line.
		*/
		arrayIndex = 8,
		/**
		
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
		arrayTexUv = 4,
		arrayFormatTangent = 4,
		arrayTexUv2 = 5,
		arrayBones = 6,
		arrayWeights = 7,
		arrayFormatColor = 8,
		arrayIndex = 8,
		arrayMax = 9,
		arrayFormatTexUv = 16,
		arrayFormatTexUv2 = 32,
		arrayFormatBones = 64,
		arrayFormatWeights = 128,
		arrayFormatIndex = 256,
	}
	/**
	
	*/
	void addBlendShape(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addBlendShape, _godot_object, name);
	}
	/**
	Returns the number of blend shapes that the `ArrayMesh` holds.
	*/
	long getBlendShapeCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBlendShapeCount, _godot_object);
	}
	/**
	Returns the name of the blend shape at this index.
	*/
	String getBlendShapeName(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBlendShapeName, _godot_object, index);
	}
	/**
	Remove all blend shapes from this `ArrayMesh`.
	*/
	void clearBlendShapes()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearBlendShapes, _godot_object);
	}
	/**
	
	*/
	void setBlendShapeMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBlendShapeMode, _godot_object, mode);
	}
	/**
	
	*/
	Mesh.BlendShapeMode getBlendShapeMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh.BlendShapeMode)(_classBinding.getBlendShapeMode, _godot_object);
	}
	/**
	Creates a new surface.
	Surfaces are created to be rendered using a "primitive", which may be PRIMITIVE_POINTS, PRIMITIVE_LINES, PRIMITIVE_LINE_STRIP, PRIMITIVE_LINE_LOOP, PRIMITIVE_TRIANGLES, PRIMITIVE_TRIANGLE_STRIP, PRIMITIVE_TRIANGLE_FAN. See $(D Mesh) for details. (As a note, when using indices, it is recommended to only use points, lines or triangles). $(D Mesh.getSurfaceCount) will become the `surf_idx` for this new surface.
	The `arrays` argument is an array of arrays. See $(D arraytype) for the values used in this array. For example, `arrays$(D 0)` is the array of vertices. That first vertex sub-array is always required; the others are optional. Adding an index array puts this function into "index mode" where the vertex and other arrays become the sources of data and the index array defines the vertex order. All sub-arrays must have the same length as the vertex array or be empty, except for `ARRAY_INDEX` if it is used.
	Adding an index array puts this function into "index mode" where the vertex and other arrays become the sources of data, and the index array defines the order of the vertices.
	Godot uses clockwise winding order for front faces of triangle primitive modes.
	*/
	void addSurfaceFromArrays(in long primitive, in Array arrays, in Array blend_shapes = Array.empty_array, in long compress_flags = 97280)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addSurfaceFromArrays, _godot_object, primitive, arrays, blend_shapes, compress_flags);
	}
	/**
	Remove a surface at position surf_idx, shifting greater surfaces one surf_idx slot down.
	*/
	void surfaceRemove(in long surf_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.surfaceRemove, _godot_object, surf_idx);
	}
	/**
	
	*/
	void surfaceUpdateRegion(in long surf_idx, in long offset, in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.surfaceUpdateRegion, _godot_object, surf_idx, offset, data);
	}
	/**
	Return the length in vertices of the vertex array in the requested surface (see $(D addSurfaceFromArrays)).
	*/
	long surfaceGetArrayLen(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.surfaceGetArrayLen, _godot_object, surf_idx);
	}
	/**
	Return the length in indices of the index array in the requested surface (see $(D addSurfaceFromArrays)).
	*/
	long surfaceGetArrayIndexLen(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.surfaceGetArrayIndexLen, _godot_object, surf_idx);
	}
	/**
	Return the format mask of the requested surface (see $(D addSurfaceFromArrays)).
	*/
	long surfaceGetFormat(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.surfaceGetFormat, _godot_object, surf_idx);
	}
	/**
	Return the primitive type of the requested surface (see $(D addSurfaceFromArrays)).
	*/
	Mesh.PrimitiveType surfaceGetPrimitiveType(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh.PrimitiveType)(_classBinding.surfaceGetPrimitiveType, _godot_object, surf_idx);
	}
	/**
	Set a $(D Material) for a given surface. Surface will be rendered using this material.
	*/
	void surfaceSetMaterial(in long surf_idx, Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.surfaceSetMaterial, _godot_object, surf_idx, material);
	}
	/**
	Return the index of the first surface with this name held within this `ArrayMesh`. If none are found -1 is returned.
	*/
	long surfaceFindByName(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.surfaceFindByName, _godot_object, name);
	}
	/**
	Set a name for a given surface.
	*/
	void surfaceSetName(in long surf_idx, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.surfaceSetName, _godot_object, surf_idx, name);
	}
	/**
	Get the name assigned to this surface.
	*/
	String surfaceGetName(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.surfaceGetName, _godot_object, surf_idx);
	}
	/**
	Centers the geometry.
	*/
	void centerGeometry()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.centerGeometry, _godot_object);
	}
	/**
	Will regenerate normal maps for the `ArrayMesh`.
	*/
	void regenNormalmaps()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.regenNormalmaps, _godot_object);
	}
	/**
	Will perform a UV unwrap on the `ArrayMesh` to prepare the mesh for lightmapping.
	*/
	GodotError lightmapUnwrap(in Transform transform, in double texel_size)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.lightmapUnwrap, _godot_object, transform, texel_size);
	}
	/**
	
	*/
	void setCustomAabb(in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomAabb, _godot_object, aabb);
	}
	/**
	
	*/
	AABB getCustomAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.getCustomAabb, _godot_object);
	}
	/**
	
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
	An overriding bounding box for this mesh.
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
