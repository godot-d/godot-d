/**
Helper tool to create geometry.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.surfacetool;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.material;
import godot.mesh;
import godot.arraymesh;
/**
Helper tool to create geometry.

The `SurfaceTool` is used to construct a $(D Mesh) by specifying vertex attributes individually. It can be used to construct a $(D Mesh) from script. All properties except index need to be added before a call to $(D addVertex). For example adding vertex colors and UVs looks like
---
var st = SurfaceTool.new()
st.begin(Mesh.PRIMITIVE_TRIANGLES)
st.add_color(Color(1, 0, 0))
st.add_uv(Vector2(0, 0))
st.add_vertex(Vector3(0, 0, 0))
---
The `SurfaceTool` now contains one vertex of a triangle which has a UV coordinate and a specified $(D Color). If another vertex were added without calls to $(D addUv) or $(D addColor) then the last values would be used.
It is very important that vertex attributes are passed $(B before) the call to $(D addVertex), failure to do this will result in an error when committing the vertex information to a mesh.
*/
@GodotBaseClass struct SurfaceTool
{
	static immutable string _GODOT_internal_name = "SurfaceTool";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in SurfaceTool other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SurfaceTool opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SurfaceTool _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SurfaceTool");
		if(constructor is null) return typeof(this).init;
		return cast(SurfaceTool)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "begin") = _GODOT_begin;
	/**
	Called before adding any Vertices. Takes the primitive type as an argument (e.g. Mesh.PRIMITIVE_TRIANGLES).
	*/
	void begin(in long primitive)
	{
		_GODOT_begin.bind("SurfaceTool", "begin");
		ptrcall!(void)(_GODOT_begin, _godot_object, primitive);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_add_vertex;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_vertex") = _GODOT_add_vertex;
	/**
	Specify position of current Vertex. Should be called after specifying other vertex properties (e.g. Color, UV).
	*/
	void addVertex(in Vector3 vertex)
	{
		_GODOT_add_vertex.bind("SurfaceTool", "add_vertex");
		ptrcall!(void)(_GODOT_add_vertex, _godot_object, vertex);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_add_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_color") = _GODOT_add_color;
	/**
	Specify a $(D Color) for the next Vertex to use.
	*/
	void addColor(in Color color)
	{
		_GODOT_add_color.bind("SurfaceTool", "add_color");
		ptrcall!(void)(_GODOT_add_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_add_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_normal") = _GODOT_add_normal;
	/**
	Specify a normal for the next Vertex to use.
	*/
	void addNormal(in Vector3 normal)
	{
		_GODOT_add_normal.bind("SurfaceTool", "add_normal");
		ptrcall!(void)(_GODOT_add_normal, _godot_object, normal);
	}
	package(godot) static GodotMethod!(void, Plane) _GODOT_add_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_tangent") = _GODOT_add_tangent;
	/**
	Specify a Tangent for the next Vertex to use.
	*/
	void addTangent(in Plane tangent)
	{
		_GODOT_add_tangent.bind("SurfaceTool", "add_tangent");
		ptrcall!(void)(_GODOT_add_tangent, _godot_object, tangent);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_add_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_uv") = _GODOT_add_uv;
	/**
	Specify UV Coordinate for next Vertex to use.
	*/
	void addUv(in Vector2 uv)
	{
		_GODOT_add_uv.bind("SurfaceTool", "add_uv");
		ptrcall!(void)(_GODOT_add_uv, _godot_object, uv);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_add_uv2;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_uv2") = _GODOT_add_uv2;
	/**
	Specify an optional second set of UV coordinates for next Vertex to use.
	*/
	void addUv2(in Vector2 uv2)
	{
		_GODOT_add_uv2.bind("SurfaceTool", "add_uv2");
		ptrcall!(void)(_GODOT_add_uv2, _godot_object, uv2);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT_add_bones;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_bones") = _GODOT_add_bones;
	/**
	Add an array of bones for the next Vertex to use.
	*/
	void addBones(in PoolIntArray bones)
	{
		_GODOT_add_bones.bind("SurfaceTool", "add_bones");
		ptrcall!(void)(_GODOT_add_bones, _godot_object, bones);
	}
	package(godot) static GodotMethod!(void, PoolRealArray) _GODOT_add_weights;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_weights") = _GODOT_add_weights;
	/**
	Specify weight value for next Vertex to use.
	*/
	void addWeights(in PoolRealArray weights)
	{
		_GODOT_add_weights.bind("SurfaceTool", "add_weights");
		ptrcall!(void)(_GODOT_add_weights, _godot_object, weights);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_add_smooth_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_smooth_group") = _GODOT_add_smooth_group;
	/**
	Specify whether current Vertex (if using only Vertex arrays) or current index (if also using index arrays) should utilize smooth normals for normal calculation.
	*/
	void addSmoothGroup(in bool smooth)
	{
		_GODOT_add_smooth_group.bind("SurfaceTool", "add_smooth_group");
		ptrcall!(void)(_GODOT_add_smooth_group, _godot_object, smooth);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array, PoolVector2Array, PoolColorArray, PoolVector2Array, PoolVector3Array, Array) _GODOT_add_triangle_fan;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_triangle_fan") = _GODOT_add_triangle_fan;
	/**
	Insert a triangle fan made of array data into $(D Mesh) being constructed.
	*/
	void addTriangleFan(in PoolVector3Array vertexes, in PoolVector2Array uvs = PoolVector2Array.init, in PoolColorArray colors = PoolColorArray.init, in PoolVector2Array uv2s = PoolVector2Array.init, in PoolVector3Array normals = PoolVector3Array.init, in Array tangents = Array.empty_array)
	{
		_GODOT_add_triangle_fan.bind("SurfaceTool", "add_triangle_fan");
		ptrcall!(void)(_GODOT_add_triangle_fan, _godot_object, vertexes, uvs, colors, uv2s, normals, tangents);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_add_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_index") = _GODOT_add_index;
	/**
	Adds an index to index array if you are using indexed Vertices. Does not need to be called before adding Vertex.
	*/
	void addIndex(in long index)
	{
		_GODOT_add_index.bind("SurfaceTool", "add_index");
		ptrcall!(void)(_GODOT_add_index, _godot_object, index);
	}
	package(godot) static GodotMethod!(void) _GODOT_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "index") = _GODOT_index;
	/**
	Shrinks Vertex array by creating an index array. Avoids reusing Vertices.
	*/
	void index()
	{
		_GODOT_index.bind("SurfaceTool", "index");
		ptrcall!(void)(_GODOT_index, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_deindex;
	package(godot) alias _GODOT_methodBindInfo(string name : "deindex") = _GODOT_deindex;
	/**
	Removes index array by expanding Vertex array.
	*/
	void deindex()
	{
		_GODOT_deindex.bind("SurfaceTool", "deindex");
		ptrcall!(void)(_GODOT_deindex, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_generate_normals;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_normals") = _GODOT_generate_normals;
	/**
	Generates normals from Vertices so you do not have to do it manually.
	*/
	void generateNormals()
	{
		_GODOT_generate_normals.bind("SurfaceTool", "generate_normals");
		ptrcall!(void)(_GODOT_generate_normals, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_generate_tangents;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_tangents") = _GODOT_generate_tangents;
	/**
	
	*/
	void generateTangents()
	{
		_GODOT_generate_tangents.bind("SurfaceTool", "generate_tangents");
		ptrcall!(void)(_GODOT_generate_tangents, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_add_to_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_to_format") = _GODOT_add_to_format;
	/**
	
	*/
	void addToFormat(in long flags)
	{
		_GODOT_add_to_format.bind("SurfaceTool", "add_to_format");
		ptrcall!(void)(_GODOT_add_to_format, _godot_object, flags);
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_material") = _GODOT_set_material;
	/**
	Sets $(D Material) to be used by the $(D Mesh) you are constructing.
	*/
	void setMaterial(Material material)
	{
		_GODOT_set_material.bind("SurfaceTool", "set_material");
		ptrcall!(void)(_GODOT_set_material, _godot_object, material);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clear all information passed into the surface tool so far.
	*/
	void clear()
	{
		_GODOT_clear.bind("SurfaceTool", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, Mesh, long) _GODOT_create_from;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from") = _GODOT_create_from;
	/**
	
	*/
	void createFrom(Mesh existing, in long surface)
	{
		_GODOT_create_from.bind("SurfaceTool", "create_from");
		ptrcall!(void)(_GODOT_create_from, _godot_object, existing, surface);
	}
	package(godot) static GodotMethod!(void, Mesh, long, Transform) _GODOT_append_from;
	package(godot) alias _GODOT_methodBindInfo(string name : "append_from") = _GODOT_append_from;
	/**
	
	*/
	void appendFrom(Mesh existing, in long surface, in Transform transform)
	{
		_GODOT_append_from.bind("SurfaceTool", "append_from");
		ptrcall!(void)(_GODOT_append_from, _godot_object, existing, surface, transform);
	}
	package(godot) static GodotMethod!(ArrayMesh, ArrayMesh, long) _GODOT_commit;
	package(godot) alias _GODOT_methodBindInfo(string name : "commit") = _GODOT_commit;
	/**
	Returns a constructed $(D ArrayMesh) from current information passed in. If an existing $(D ArrayMesh) is passed in as an argument, will add an extra surface to the existing $(D ArrayMesh).
	*/
	Ref!ArrayMesh commit(ArrayMesh existing = ArrayMesh.init, in long flags = 97792)
	{
		_GODOT_commit.bind("SurfaceTool", "commit");
		return ptrcall!(ArrayMesh)(_GODOT_commit, _godot_object, existing, flags);
	}
}
