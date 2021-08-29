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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.mesh;
import godot.arraymesh;
import godot.material;
/**
Helper tool to create geometry.

The $(D SurfaceTool) is used to construct a $(D Mesh) by specifying vertex attributes individually. It can be used to construct a $(D Mesh) from a script. All properties except indices need to be added before calling $(D addVertex). For example, to add vertex colors and UVs:


var st = SurfaceTool.new()
st.begin(Mesh.PRIMITIVE_TRIANGLES)
st.add_color(Color(1, 0, 0))
st.add_uv(Vector2(0, 0))
st.add_vertex(Vector3(0, 0, 0))


The above $(D SurfaceTool) now contains one vertex of a triangle which has a UV coordinate and a specified $(D Color). If another vertex were added without calling $(D addUv) or $(D addColor), then the last values would be used.
Vertex attributes must be passed $(B before) calling $(D addVertex). Failure to do so will result in an error when committing the vertex information to a mesh.
Additionally, the attributes used before the first vertex is added determine the format of the mesh. For example, if you only add UVs to the first vertex, you cannot add color to any of the subsequent vertices.
See also $(D ArrayMesh), $(D ImmediateGeometry) and $(D MeshDataTool) for procedural geometry generation.
$(B Note:) Godot uses clockwise $(D url=https://learnopengl.com/Advanced-OpenGL/Face-culling)winding order$(D /url) for front faces of triangle primitive modes.
*/
@GodotBaseClass struct SurfaceTool
{
	package(godot) enum string _GODOT_internal_name = "SurfaceTool";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_bones") GodotMethod!(void, PoolIntArray) addBones;
		@GodotName("add_color") GodotMethod!(void, Color) addColor;
		@GodotName("add_index") GodotMethod!(void, long) addIndex;
		@GodotName("add_normal") GodotMethod!(void, Vector3) addNormal;
		@GodotName("add_smooth_group") GodotMethod!(void, bool) addSmoothGroup;
		@GodotName("add_tangent") GodotMethod!(void, Plane) addTangent;
		@GodotName("add_triangle_fan") GodotMethod!(void, PoolVector3Array, PoolVector2Array, PoolColorArray, PoolVector2Array, PoolVector3Array, Array) addTriangleFan;
		@GodotName("add_uv") GodotMethod!(void, Vector2) addUv;
		@GodotName("add_uv2") GodotMethod!(void, Vector2) addUv2;
		@GodotName("add_vertex") GodotMethod!(void, Vector3) addVertex;
		@GodotName("add_weights") GodotMethod!(void, PoolRealArray) addWeights;
		@GodotName("append_from") GodotMethod!(void, Mesh, long, Transform) appendFrom;
		@GodotName("begin") GodotMethod!(void, long) begin;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("commit") GodotMethod!(ArrayMesh, ArrayMesh, long) commit;
		@GodotName("commit_to_arrays") GodotMethod!(Array) commitToArrays;
		@GodotName("create_from") GodotMethod!(void, Mesh, long) createFrom;
		@GodotName("create_from_blend_shape") GodotMethod!(void, Mesh, long, String) createFromBlendShape;
		@GodotName("deindex") GodotMethod!(void) deindex;
		@GodotName("generate_normals") GodotMethod!(void, bool) generateNormals;
		@GodotName("generate_tangents") GodotMethod!(void) generateTangents;
		@GodotName("index") GodotMethod!(void) index;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
	}
	/// 
	pragma(inline, true) bool opEquals(in SurfaceTool other) const
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
	/// Construct a new instance of SurfaceTool.
	/// Note: use `memnew!SurfaceTool` instead.
	static SurfaceTool _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SurfaceTool");
		if(constructor is null) return typeof(this).init;
		return cast(SurfaceTool)(constructor());
	}
	@disable new(size_t s);
	/**
	Specifies an array of bones to use for the $(I next) vertex. `bones` must contain 4 integers.
	*/
	void addBones(in PoolIntArray bones)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addBones, _godot_object, bones);
	}
	/**
	Specifies a $(D Color) to use for the $(I next) vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
	$(B Note:) The material must have $(D SpatialMaterial.vertexColorUseAsAlbedo) enabled for the vertex color to be visible.
	*/
	void addColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addColor, _godot_object, color);
	}
	/**
	Adds an index to index array if you are using indexed vertices. Does not need to be called before adding vertices.
	*/
	void addIndex(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIndex, _godot_object, index);
	}
	/**
	Specifies a normal to use for the $(I next) vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
	*/
	void addNormal(in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addNormal, _godot_object, normal);
	}
	/**
	Specifies whether the current vertex (if using only vertex arrays) or current index (if also using index arrays) should use smooth normals for normal calculation.
	*/
	void addSmoothGroup(in bool smooth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSmoothGroup, _godot_object, smooth);
	}
	/**
	Specifies a tangent to use for the $(I next) vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
	*/
	void addTangent(in Plane tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTangent, _godot_object, tangent);
	}
	/**
	Inserts a triangle fan made of array data into $(D Mesh) being constructed.
	Requires the primitive type be set to $(D constant Mesh.PRIMITIVE_TRIANGLES).
	*/
	void addTriangleFan(in PoolVector3Array vertices, in PoolVector2Array uvs = PoolVector2Array.init, in PoolColorArray colors = PoolColorArray.init, in PoolVector2Array uv2s = PoolVector2Array.init, in PoolVector3Array normals = PoolVector3Array.init, in Array tangents = Array.make())
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTriangleFan, _godot_object, vertices, uvs, colors, uv2s, normals, tangents);
	}
	/**
	Specifies a set of UV coordinates to use for the $(I next) vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
	*/
	void addUv(in Vector2 uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addUv, _godot_object, uv);
	}
	/**
	Specifies an optional second set of UV coordinates to use for the $(I next) vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
	*/
	void addUv2(in Vector2 uv2)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addUv2, _godot_object, uv2);
	}
	/**
	Specifies the position of current vertex. Should be called after specifying other vertex properties (e.g. Color, UV).
	*/
	void addVertex(in Vector3 vertex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addVertex, _godot_object, vertex);
	}
	/**
	Specifies weight values to use for the $(I next) vertex. `weights` must contain 4 values. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
	*/
	void addWeights(in PoolRealArray weights)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addWeights, _godot_object, weights);
	}
	/**
	Append vertices from a given $(D Mesh) surface onto the current vertex array with specified $(D Transform).
	*/
	void appendFrom(Mesh existing, in long surface, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.appendFrom, _godot_object, existing, surface, transform);
	}
	/**
	Called before adding any vertices. Takes the primitive type as an argument (e.g. $(D constant Mesh.PRIMITIVE_TRIANGLES)).
	*/
	void begin(in long primitive)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.begin, _godot_object, primitive);
	}
	/**
	Clear all information passed into the surface tool so far.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	Returns a constructed $(D ArrayMesh) from current information passed in. If an existing $(D ArrayMesh) is passed in as an argument, will add an extra surface to the existing $(D ArrayMesh).
	Default flag is $(D constant Mesh.ARRAY_COMPRESS_DEFAULT). See `ARRAY_COMPRESS_*` constants in $(D Mesh.arrayformat) for other flags.
	*/
	Ref!ArrayMesh commit(ArrayMesh existing = ArrayMesh.init, in long flags = 97280)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ArrayMesh)(GDNativeClassBinding.commit, _godot_object, existing, flags);
	}
	/**
	Commits the data to the same format used by $(D ArrayMesh.addSurfaceFromArrays). This way you can further process the mesh data using the $(D ArrayMesh) API.
	*/
	Array commitToArrays()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.commitToArrays, _godot_object);
	}
	/**
	Creates a vertex array from an existing $(D Mesh).
	*/
	void createFrom(Mesh existing, in long surface)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createFrom, _godot_object, existing, surface);
	}
	/**
	Creates a vertex array from the specified blend shape of an existing $(D Mesh). This can be used to extract a specific pose from a blend shape.
	*/
	void createFromBlendShape(Mesh existing, in long surface, in String blend_shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createFromBlendShape, _godot_object, existing, surface, blend_shape);
	}
	/**
	Removes the index array by expanding the vertex array.
	*/
	void deindex()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.deindex, _godot_object);
	}
	/**
	Generates normals from vertices so you do not have to do it manually. If `flip` is `true`, the resulting normals will be inverted. $(D generateNormals) should be called $(I after) generating geometry and $(I before) committing the mesh using $(D commit) or $(D commitToArrays).
	$(B Note:) $(D generateNormals) only works if the primitive type to be set to $(D constant Mesh.PRIMITIVE_TRIANGLES).
	*/
	void generateNormals(in bool flip = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.generateNormals, _godot_object, flip);
	}
	/**
	Generates a tangent vector for each vertex. Requires that each vertex have UVs and normals set already.
	*/
	void generateTangents()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.generateTangents, _godot_object);
	}
	/**
	Shrinks the vertex array by creating an index array. This can improve performance by avoiding vertex reuse.
	*/
	void index()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.index, _godot_object);
	}
	/**
	Sets $(D Material) to be used by the $(D Mesh) you are constructing.
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaterial, _godot_object, material);
	}
}
