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


var st = SurfaceTool.new()
st.begin(Mesh.PRIMITIVE_TRIANGLES)
st.add_color(Color(1, 0, 0))
st.add_uv(Vector2(0, 0))
st.add_vertex(Vector3(0, 0, 0))


The `SurfaceTool` now contains one vertex of a triangle which has a UV coordinate and a specified $(D Color). If another vertex were added without calls to $(D addUv) or $(D addColor) then the last values would be used.
It is very important that vertex attributes are passed $(B before) the call to $(D addVertex), failure to do this will result in an error when committing the vertex information to a mesh.
Additionally, the attributes used before the first vertex is added determine the format of the mesh. For example if you only add UVs to the first vertex, you cannot add color to any of the subsequent vertices.
*/
@GodotBaseClass struct SurfaceTool
{
	enum string _GODOT_internal_name = "SurfaceTool";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("begin") GodotMethod!(void, long) begin;
		@GodotName("add_vertex") GodotMethod!(void, Vector3) addVertex;
		@GodotName("add_color") GodotMethod!(void, Color) addColor;
		@GodotName("add_normal") GodotMethod!(void, Vector3) addNormal;
		@GodotName("add_tangent") GodotMethod!(void, Plane) addTangent;
		@GodotName("add_uv") GodotMethod!(void, Vector2) addUv;
		@GodotName("add_uv2") GodotMethod!(void, Vector2) addUv2;
		@GodotName("add_bones") GodotMethod!(void, PoolIntArray) addBones;
		@GodotName("add_weights") GodotMethod!(void, PoolRealArray) addWeights;
		@GodotName("add_smooth_group") GodotMethod!(void, bool) addSmoothGroup;
		@GodotName("add_triangle_fan") GodotMethod!(void, PoolVector3Array, PoolVector2Array, PoolColorArray, PoolVector2Array, PoolVector3Array, Array) addTriangleFan;
		@GodotName("add_index") GodotMethod!(void, long) addIndex;
		@GodotName("index") GodotMethod!(void) index;
		@GodotName("deindex") GodotMethod!(void) deindex;
		@GodotName("generate_normals") GodotMethod!(void, bool) generateNormals;
		@GodotName("generate_tangents") GodotMethod!(void) generateTangents;
		@GodotName("add_to_format") GodotMethod!(void, long) addToFormat;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("create_from") GodotMethod!(void, Mesh, long) createFrom;
		@GodotName("append_from") GodotMethod!(void, Mesh, long, Transform) appendFrom;
		@GodotName("commit") GodotMethod!(ArrayMesh, ArrayMesh, long) commit;
	}
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
	@disable new(size_t s);
	/**
	Called before adding any Vertices. Takes the primitive type as an argument (e.g. Mesh.PRIMITIVE_TRIANGLES).
	*/
	void begin(in long primitive)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.begin, _godot_object, primitive);
	}
	/**
	Specify position of current Vertex. Should be called after specifying other vertex properties (e.g. Color, UV).
	*/
	void addVertex(in Vector3 vertex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addVertex, _godot_object, vertex);
	}
	/**
	Specify a $(D Color) for the next Vertex to use.
	*/
	void addColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addColor, _godot_object, color);
	}
	/**
	Specify a normal for the next Vertex to use.
	*/
	void addNormal(in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addNormal, _godot_object, normal);
	}
	/**
	Specify a Tangent for the next Vertex to use.
	*/
	void addTangent(in Plane tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addTangent, _godot_object, tangent);
	}
	/**
	Specify UV Coordinate for next Vertex to use.
	*/
	void addUv(in Vector2 uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addUv, _godot_object, uv);
	}
	/**
	Specify an optional second set of UV coordinates for next Vertex to use.
	*/
	void addUv2(in Vector2 uv2)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addUv2, _godot_object, uv2);
	}
	/**
	Add an array of bones for the next Vertex to use. Array must contain 4 integers.
	*/
	void addBones(in PoolIntArray bones)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addBones, _godot_object, bones);
	}
	/**
	Specify weight values for next Vertex to use. Array must contain 4 values.
	*/
	void addWeights(in PoolRealArray weights)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addWeights, _godot_object, weights);
	}
	/**
	Specify whether current Vertex (if using only Vertex arrays) or current index (if also using index arrays) should utilize smooth normals for normal calculation.
	*/
	void addSmoothGroup(in bool smooth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addSmoothGroup, _godot_object, smooth);
	}
	/**
	Insert a triangle fan made of array data into $(D Mesh) being constructed.
	Requires primitive type be set to `PRIMITIVE_TRIANGLES`.
	*/
	void addTriangleFan(in PoolVector3Array vertexes, in PoolVector2Array uvs = PoolVector2Array.init, in PoolColorArray colors = PoolColorArray.init, in PoolVector2Array uv2s = PoolVector2Array.init, in PoolVector3Array normals = PoolVector3Array.init, in Array tangents = Array.empty_array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addTriangleFan, _godot_object, vertexes, uvs, colors, uv2s, normals, tangents);
	}
	/**
	Adds an index to index array if you are using indexed Vertices. Does not need to be called before adding Vertex.
	*/
	void addIndex(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIndex, _godot_object, index);
	}
	/**
	Shrinks Vertex array by creating an index array. Avoids reusing Vertices.
	*/
	void index()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.index, _godot_object);
	}
	/**
	Removes index array by expanding Vertex array.
	*/
	void deindex()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.deindex, _godot_object);
	}
	/**
	Generates normals from Vertices so you do not have to do it manually.
	Setting "flip" `true` inverts resulting normals.
	Requires primitive type to be set to `PRIMITIVE_TRIANGLES`.
	*/
	void generateNormals(in bool flip = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.generateNormals, _godot_object, flip);
	}
	/**
	Generates a tangent vector for each vertex.
	Requires that each vertex have UVs and normals set already.
	*/
	void generateTangents()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.generateTangents, _godot_object);
	}
	/**
	
	*/
	void addToFormat(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addToFormat, _godot_object, flags);
	}
	/**
	Sets $(D Material) to be used by the $(D Mesh) you are constructing.
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaterial, _godot_object, material);
	}
	/**
	Clear all information passed into the surface tool so far.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Creates a vertex array from an existing $(D Mesh).
	*/
	void createFrom(Mesh existing, in long surface)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createFrom, _godot_object, existing, surface);
	}
	/**
	Append vertices from a given $(D Mesh) surface onto the current vertex array with specified $(D Transform).
	*/
	void appendFrom(Mesh existing, in long surface, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.appendFrom, _godot_object, existing, surface, transform);
	}
	/**
	Returns a constructed $(D ArrayMesh) from current information passed in. If an existing $(D ArrayMesh) is passed in as an argument, will add an extra surface to the existing $(D ArrayMesh).
	*/
	Ref!ArrayMesh commit(ArrayMesh existing = ArrayMesh.init, in long flags = 97280)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ArrayMesh)(_classBinding.commit, _godot_object, existing, flags);
	}
}
