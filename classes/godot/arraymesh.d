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
/**

*/
@GodotBaseClass struct ArrayMesh
{
	static immutable string _GODOT_internal_name = "ArrayMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; Mesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		arrayFormatVertex = 1,
		arrayNormal = 1,
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
		arrayFormatColor = 8,
		arrayIndex = 8,
		arrayMax = 9,
		arrayFormatTexUv = 16,
		arrayFormatTexUv2 = 32,
		arrayFormatBones = 64,
		arrayFormatWeights = 128,
		arrayFormatIndex = 256,
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_blend_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_blend_shape") = _GODOT_add_blend_shape;
	/**
	
	*/
	void addBlendShape(StringArg0)(in StringArg0 name)
	{
		_GODOT_add_blend_shape.bind("ArrayMesh", "add_blend_shape");
		ptrcall!(void)(_GODOT_add_blend_shape, _godot_object, name);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_blend_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_blend_shape_count") = _GODOT_get_blend_shape_count;
	/**
	
	*/
	long getBlendShapeCount() const
	{
		_GODOT_get_blend_shape_count.bind("ArrayMesh", "get_blend_shape_count");
		return ptrcall!(long)(_GODOT_get_blend_shape_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_blend_shape_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_blend_shape_name") = _GODOT_get_blend_shape_name;
	/**
	
	*/
	String getBlendShapeName(in long index) const
	{
		_GODOT_get_blend_shape_name.bind("ArrayMesh", "get_blend_shape_name");
		return ptrcall!(String)(_GODOT_get_blend_shape_name, _godot_object, index);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_blend_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_blend_shapes") = _GODOT_clear_blend_shapes;
	/**
	
	*/
	void clearBlendShapes()
	{
		_GODOT_clear_blend_shapes.bind("ArrayMesh", "clear_blend_shapes");
		ptrcall!(void)(_GODOT_clear_blend_shapes, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_blend_shape_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_blend_shape_mode") = _GODOT_set_blend_shape_mode;
	/**
	
	*/
	void setBlendShapeMode(in long mode)
	{
		_GODOT_set_blend_shape_mode.bind("ArrayMesh", "set_blend_shape_mode");
		ptrcall!(void)(_GODOT_set_blend_shape_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Mesh.BlendShapeMode) _GODOT_get_blend_shape_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_blend_shape_mode") = _GODOT_get_blend_shape_mode;
	/**
	
	*/
	Mesh.BlendShapeMode getBlendShapeMode() const
	{
		_GODOT_get_blend_shape_mode.bind("ArrayMesh", "get_blend_shape_mode");
		return ptrcall!(Mesh.BlendShapeMode)(_GODOT_get_blend_shape_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, Array, Array, long) _GODOT_add_surface_from_arrays;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_surface_from_arrays") = _GODOT_add_surface_from_arrays;
	/**
	Creates a new surface.
	Surfaces are created to be rendered using a "primitive", which may be PRIMITIVE_POINTS, PRIMITIVE_LINES, PRIMITIVE_LINE_STRIP, PRIMITIVE_LINE_LOOP, PRIMITIVE_TRIANGLES, PRIMITIVE_TRIANGLE_STRIP, PRIMITIVE_TRIANGLE_FAN. See $(D Mesh) for details. (As a note, when using indices, it is recommended to only use points, lines or triangles). $(D getSurfaceCount) will become the surf_idx for this new surface.
	The `arrays` argument is an array of arrays. See $(D arraytype) for the values used in this array. For example, `arrays$(D 0)` is the array of vertices. That first vertex sub-array is always required; the others are optional. Adding an index array puts this function into "index mode" where the vertex and other arrays become the sources of data and the index array defines the vertex order. All sub-arrays must have the same length as the vertex array or be empty, except for `ARRAY_INDEX` if it is used.
	Adding an index array puts this function into "index mode" where the vertex and other arrays become the sources of data, and the index array defines the order of the vertices.
	Godot uses clockwise winding order for front faces of triangle primitive modes.
	*/
	void addSurfaceFromArrays(in long primitive, in Array arrays, in Array blend_shapes = Array.empty_array, in long compress_flags = 97792)
	{
		_GODOT_add_surface_from_arrays.bind("ArrayMesh", "add_surface_from_arrays");
		ptrcall!(void)(_GODOT_add_surface_from_arrays, _godot_object, primitive, arrays, blend_shapes, compress_flags);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_surface_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_surface_count") = _GODOT_get_surface_count;
	/**
	Return the amount of surfaces that the `ArrayMesh` holds.
	*/
	long getSurfaceCount() const
	{
		_GODOT_get_surface_count.bind("ArrayMesh", "get_surface_count");
		return ptrcall!(long)(_GODOT_get_surface_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_surface_remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_remove") = _GODOT_surface_remove;
	/**
	Remove a surface at position surf_idx, shifting greater surfaces one surf_idx slot down.
	*/
	void surfaceRemove(in long surf_idx)
	{
		_GODOT_surface_remove.bind("ArrayMesh", "surface_remove");
		ptrcall!(void)(_GODOT_surface_remove, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(void, long, long, PoolByteArray) _GODOT_surface_update_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_update_region") = _GODOT_surface_update_region;
	/**
	
	*/
	void surfaceUpdateRegion(in long surf_idx, in long offset, in PoolByteArray data)
	{
		_GODOT_surface_update_region.bind("ArrayMesh", "surface_update_region");
		ptrcall!(void)(_GODOT_surface_update_region, _godot_object, surf_idx, offset, data);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_surface_get_array_len;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_array_len") = _GODOT_surface_get_array_len;
	/**
	Return the length in vertices of the vertex array in the requested surface (see $(D addSurfaceFromArrays)).
	*/
	long surfaceGetArrayLen(in long surf_idx) const
	{
		_GODOT_surface_get_array_len.bind("ArrayMesh", "surface_get_array_len");
		return ptrcall!(long)(_GODOT_surface_get_array_len, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_surface_get_array_index_len;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_array_index_len") = _GODOT_surface_get_array_index_len;
	/**
	Return the length in indices of the index array in the requested surface (see $(D addSurfaceFromArrays)).
	*/
	long surfaceGetArrayIndexLen(in long surf_idx) const
	{
		_GODOT_surface_get_array_index_len.bind("ArrayMesh", "surface_get_array_index_len");
		return ptrcall!(long)(_GODOT_surface_get_array_index_len, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_surface_get_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_format") = _GODOT_surface_get_format;
	/**
	Return the format mask of the requested surface (see $(D addSurfaceFromArrays)).
	*/
	long surfaceGetFormat(in long surf_idx) const
	{
		_GODOT_surface_get_format.bind("ArrayMesh", "surface_get_format");
		return ptrcall!(long)(_GODOT_surface_get_format, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(Mesh.PrimitiveType, long) _GODOT_surface_get_primitive_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_primitive_type") = _GODOT_surface_get_primitive_type;
	/**
	Return the primitive type of the requested surface (see $(D addSurfaceFromArrays)).
	*/
	Mesh.PrimitiveType surfaceGetPrimitiveType(in long surf_idx) const
	{
		_GODOT_surface_get_primitive_type.bind("ArrayMesh", "surface_get_primitive_type");
		return ptrcall!(Mesh.PrimitiveType)(_GODOT_surface_get_primitive_type, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(void, long, Material) _GODOT_surface_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_set_material") = _GODOT_surface_set_material;
	/**
	
	*/
	void surfaceSetMaterial(in long surf_idx, Material material)
	{
		_GODOT_surface_set_material.bind("ArrayMesh", "surface_set_material");
		ptrcall!(void)(_GODOT_surface_set_material, _godot_object, surf_idx, material);
	}
	package(godot) static GodotMethod!(Material, long) _GODOT_surface_get_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_material") = _GODOT_surface_get_material;
	/**
	Return a $(D Material) in a given surface. Surface is rendered using this material.
	*/
	Ref!Material surfaceGetMaterial(in long surf_idx) const
	{
		_GODOT_surface_get_material.bind("ArrayMesh", "surface_get_material");
		return ptrcall!(Material)(_GODOT_surface_get_material, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_surface_set_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_set_name") = _GODOT_surface_set_name;
	/**
	Set a $(D Material) for a given surface. Surface will be rendered using this material.
	*/
	void surfaceSetName(StringArg1)(in long surf_idx, in StringArg1 name)
	{
		_GODOT_surface_set_name.bind("ArrayMesh", "surface_set_name");
		ptrcall!(void)(_GODOT_surface_set_name, _godot_object, surf_idx, name);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_surface_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_name") = _GODOT_surface_get_name;
	/**
	
	*/
	String surfaceGetName(in long surf_idx) const
	{
		_GODOT_surface_get_name.bind("ArrayMesh", "surface_get_name");
		return ptrcall!(String)(_GODOT_surface_get_name, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(Array, long) _GODOT_surface_get_arrays;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_arrays") = _GODOT_surface_get_arrays;
	/**
	
	*/
	Array surfaceGetArrays(in long surf_idx) const
	{
		_GODOT_surface_get_arrays.bind("ArrayMesh", "surface_get_arrays");
		return ptrcall!(Array)(_GODOT_surface_get_arrays, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(Array, long) _GODOT_surface_get_blend_shape_arrays;
	package(godot) alias _GODOT_methodBindInfo(string name : "surface_get_blend_shape_arrays") = _GODOT_surface_get_blend_shape_arrays;
	/**
	
	*/
	Array surfaceGetBlendShapeArrays(in long surf_idx) const
	{
		_GODOT_surface_get_blend_shape_arrays.bind("ArrayMesh", "surface_get_blend_shape_arrays");
		return ptrcall!(Array)(_GODOT_surface_get_blend_shape_arrays, _godot_object, surf_idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_center_geometry;
	package(godot) alias _GODOT_methodBindInfo(string name : "center_geometry") = _GODOT_center_geometry;
	/**
	
	*/
	void centerGeometry()
	{
		_GODOT_center_geometry.bind("ArrayMesh", "center_geometry");
		ptrcall!(void)(_GODOT_center_geometry, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_regen_normalmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "regen_normalmaps") = _GODOT_regen_normalmaps;
	/**
	
	*/
	void regenNormalmaps()
	{
		_GODOT_regen_normalmaps.bind("ArrayMesh", "regen_normalmaps");
		ptrcall!(void)(_GODOT_regen_normalmaps, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, Transform, double) _GODOT_lightmap_unwrap;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_unwrap") = _GODOT_lightmap_unwrap;
	/**
	
	*/
	GodotError lightmapUnwrap(in Transform arg0, in double arg1)
	{
		_GODOT_lightmap_unwrap.bind("ArrayMesh", "lightmap_unwrap");
		return ptrcall!(GodotError)(_GODOT_lightmap_unwrap, _godot_object, arg0, arg1);
	}
	package(godot) static GodotMethod!(void, AABB) _GODOT_set_custom_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_aabb") = _GODOT_set_custom_aabb;
	/**
	
	*/
	void setCustomAabb(in AABB aabb)
	{
		_GODOT_set_custom_aabb.bind("ArrayMesh", "set_custom_aabb");
		ptrcall!(void)(_GODOT_set_custom_aabb, _godot_object, aabb);
	}
	package(godot) static GodotMethod!(AABB) _GODOT_get_custom_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_aabb") = _GODOT_get_custom_aabb;
	/**
	
	*/
	AABB getCustomAabb() const
	{
		_GODOT_get_custom_aabb.bind("ArrayMesh", "get_custom_aabb");
		return ptrcall!(AABB)(_GODOT_get_custom_aabb, _godot_object);
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
