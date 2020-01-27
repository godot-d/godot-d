/**
Helper tool to access and edit $(D Mesh) data.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.meshdatatool;
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
import godot.arraymesh;
import godot.material;
/**
Helper tool to access and edit $(D Mesh) data.

MeshDataTool provides access to individual vertices in a $(D Mesh). It allows users to read and edit vertex data of meshes. It also creates an array of faces and edges.
To use MeshDataTool, load a mesh with $(D createFromSurface). When you are finished editing the data commit the data to a mesh with $(D commitToSurface).
Below is an example of how MeshDataTool may be used.


var mdt = MeshDataTool.new()
mdt.create_from_surface(mesh, 0)
for i in range(mdt.get_vertex_count()):
    var vertex = mdt.get_vertex(i)
    ...
    mdt.set_vertex(i, vertex)
mesh.surface_remove(0)
mdt.commit_to_surface(mesh)


*/
@GodotBaseClass struct MeshDataTool
{
	enum string _GODOT_internal_name = "MeshDataTool";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("commit_to_surface") GodotMethod!(GodotError, ArrayMesh) commitToSurface;
		@GodotName("create_from_surface") GodotMethod!(GodotError, ArrayMesh, long) createFromSurface;
		@GodotName("get_edge_count") GodotMethod!(long) getEdgeCount;
		@GodotName("get_edge_faces") GodotMethod!(PoolIntArray, long) getEdgeFaces;
		@GodotName("get_edge_meta") GodotMethod!(Variant, long) getEdgeMeta;
		@GodotName("get_edge_vertex") GodotMethod!(long, long, long) getEdgeVertex;
		@GodotName("get_face_count") GodotMethod!(long) getFaceCount;
		@GodotName("get_face_edge") GodotMethod!(long, long, long) getFaceEdge;
		@GodotName("get_face_meta") GodotMethod!(Variant, long) getFaceMeta;
		@GodotName("get_face_normal") GodotMethod!(Vector3, long) getFaceNormal;
		@GodotName("get_face_vertex") GodotMethod!(long, long, long) getFaceVertex;
		@GodotName("get_format") GodotMethod!(long) getFormat;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("get_vertex") GodotMethod!(Vector3, long) getVertex;
		@GodotName("get_vertex_bones") GodotMethod!(PoolIntArray, long) getVertexBones;
		@GodotName("get_vertex_color") GodotMethod!(Color, long) getVertexColor;
		@GodotName("get_vertex_count") GodotMethod!(long) getVertexCount;
		@GodotName("get_vertex_edges") GodotMethod!(PoolIntArray, long) getVertexEdges;
		@GodotName("get_vertex_faces") GodotMethod!(PoolIntArray, long) getVertexFaces;
		@GodotName("get_vertex_meta") GodotMethod!(Variant, long) getVertexMeta;
		@GodotName("get_vertex_normal") GodotMethod!(Vector3, long) getVertexNormal;
		@GodotName("get_vertex_tangent") GodotMethod!(Plane, long) getVertexTangent;
		@GodotName("get_vertex_uv") GodotMethod!(Vector2, long) getVertexUv;
		@GodotName("get_vertex_uv2") GodotMethod!(Vector2, long) getVertexUv2;
		@GodotName("get_vertex_weights") GodotMethod!(PoolRealArray, long) getVertexWeights;
		@GodotName("set_edge_meta") GodotMethod!(void, long, Variant) setEdgeMeta;
		@GodotName("set_face_meta") GodotMethod!(void, long, Variant) setFaceMeta;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("set_vertex") GodotMethod!(void, long, Vector3) setVertex;
		@GodotName("set_vertex_bones") GodotMethod!(void, long, PoolIntArray) setVertexBones;
		@GodotName("set_vertex_color") GodotMethod!(void, long, Color) setVertexColor;
		@GodotName("set_vertex_meta") GodotMethod!(void, long, Variant) setVertexMeta;
		@GodotName("set_vertex_normal") GodotMethod!(void, long, Vector3) setVertexNormal;
		@GodotName("set_vertex_tangent") GodotMethod!(void, long, Plane) setVertexTangent;
		@GodotName("set_vertex_uv") GodotMethod!(void, long, Vector2) setVertexUv;
		@GodotName("set_vertex_uv2") GodotMethod!(void, long, Vector2) setVertexUv2;
		@GodotName("set_vertex_weights") GodotMethod!(void, long, PoolRealArray) setVertexWeights;
	}
	bool opEquals(in MeshDataTool other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MeshDataTool opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MeshDataTool _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MeshDataTool");
		if(constructor is null) return typeof(this).init;
		return cast(MeshDataTool)(constructor());
	}
	@disable new(size_t s);
	/**
	Clears all data currently in MeshDataTool.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Adds a new surface to specified $(D Mesh) with edited data.
	*/
	GodotError commitToSurface(ArrayMesh mesh)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.commitToSurface, _godot_object, mesh);
	}
	/**
	Uses specified surface of given $(D Mesh) to populate data for MeshDataTool.
	Requires $(D Mesh) with primitive type $(D constant Mesh.PRIMITIVE_TRIANGLES).
	*/
	GodotError createFromSurface(ArrayMesh mesh, in long surface)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.createFromSurface, _godot_object, mesh, surface);
	}
	/**
	Returns the number of edges in this $(D Mesh).
	*/
	long getEdgeCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getEdgeCount, _godot_object);
	}
	/**
	Returns array of faces that touch given edge.
	*/
	PoolIntArray getEdgeFaces(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getEdgeFaces, _godot_object, idx);
	}
	/**
	Returns meta information assigned to given edge.
	*/
	Variant getEdgeMeta(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getEdgeMeta, _godot_object, idx);
	}
	/**
	Returns index of specified vertex connected to given edge.
	Vertex argument can only be 0 or 1 because edges are comprised of two vertices.
	*/
	long getEdgeVertex(in long idx, in long vertex) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getEdgeVertex, _godot_object, idx, vertex);
	}
	/**
	Returns the number of faces in this $(D Mesh).
	*/
	long getFaceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFaceCount, _godot_object);
	}
	/**
	Returns specified edge associated with given face.
	Edge argument must 2 or less because a face only has three edges.
	*/
	long getFaceEdge(in long idx, in long edge) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFaceEdge, _godot_object, idx, edge);
	}
	/**
	Returns the metadata associated with the given face.
	*/
	Variant getFaceMeta(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getFaceMeta, _godot_object, idx);
	}
	/**
	Calculates and returns the face normal of the given face.
	*/
	Vector3 getFaceNormal(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getFaceNormal, _godot_object, idx);
	}
	/**
	Returns the specified vertex of the given face.
	Vertex argument must be 2 or less because faces contain three vertices.
	*/
	long getFaceVertex(in long idx, in long vertex) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFaceVertex, _godot_object, idx, vertex);
	}
	/**
	Returns the $(D Mesh)'s format. Format is an integer made up of $(D Mesh) format flags combined together. For example, a mesh containing both vertices and normals would return a format of `3` because $(D constant ArrayMesh.ARRAY_FORMAT_VERTEX) is `1` and $(D constant ArrayMesh.ARRAY_FORMAT_NORMAL) is `2`.
	See $(D ArrayMesh.arrayformat) for a list of format flags.
	*/
	long getFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFormat, _godot_object);
	}
	/**
	Returns the material assigned to the $(D Mesh).
	*/
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(_classBinding.getMaterial, _godot_object);
	}
	/**
	Returns the vertex at given index.
	*/
	Vector3 getVertex(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getVertex, _godot_object, idx);
	}
	/**
	Returns the bones of the given vertex.
	*/
	PoolIntArray getVertexBones(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getVertexBones, _godot_object, idx);
	}
	/**
	Returns the color of the given vertex.
	*/
	Color getVertexColor(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getVertexColor, _godot_object, idx);
	}
	/**
	Returns the total number of vertices in $(D Mesh).
	*/
	long getVertexCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVertexCount, _godot_object);
	}
	/**
	Returns an array of edges that share the given vertex.
	*/
	PoolIntArray getVertexEdges(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getVertexEdges, _godot_object, idx);
	}
	/**
	Returns an array of faces that share the given vertex.
	*/
	PoolIntArray getVertexFaces(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getVertexFaces, _godot_object, idx);
	}
	/**
	Returns the metadata associated with the given vertex.
	*/
	Variant getVertexMeta(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getVertexMeta, _godot_object, idx);
	}
	/**
	Returns the normal of the given vertex.
	*/
	Vector3 getVertexNormal(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getVertexNormal, _godot_object, idx);
	}
	/**
	Returns the tangent of the given vertex.
	*/
	Plane getVertexTangent(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Plane)(_classBinding.getVertexTangent, _godot_object, idx);
	}
	/**
	Returns the UV of the given vertex.
	*/
	Vector2 getVertexUv(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getVertexUv, _godot_object, idx);
	}
	/**
	Returns the UV2 of the given vertex.
	*/
	Vector2 getVertexUv2(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getVertexUv2, _godot_object, idx);
	}
	/**
	Returns bone weights of the given vertex.
	*/
	PoolRealArray getVertexWeights(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(_classBinding.getVertexWeights, _godot_object, idx);
	}
	/**
	Sets the metadata of the given edge.
	*/
	void setEdgeMeta(VariantArg1)(in long idx, in VariantArg1 meta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEdgeMeta, _godot_object, idx, meta);
	}
	/**
	Sets the metadata of the given face.
	*/
	void setFaceMeta(VariantArg1)(in long idx, in VariantArg1 meta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFaceMeta, _godot_object, idx, meta);
	}
	/**
	Sets the material to be used by newly-constructed $(D Mesh).
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaterial, _godot_object, material);
	}
	/**
	Sets the position of the given vertex.
	*/
	void setVertex(in long idx, in Vector3 vertex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertex, _godot_object, idx, vertex);
	}
	/**
	Sets the bones of the given vertex.
	*/
	void setVertexBones(in long idx, in PoolIntArray bones)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertexBones, _godot_object, idx, bones);
	}
	/**
	Sets the color of the given vertex.
	*/
	void setVertexColor(in long idx, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertexColor, _godot_object, idx, color);
	}
	/**
	Sets the metadata associated with the given vertex.
	*/
	void setVertexMeta(VariantArg1)(in long idx, in VariantArg1 meta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertexMeta, _godot_object, idx, meta);
	}
	/**
	Sets the normal of the given vertex.
	*/
	void setVertexNormal(in long idx, in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertexNormal, _godot_object, idx, normal);
	}
	/**
	Sets the tangent of the given vertex.
	*/
	void setVertexTangent(in long idx, in Plane tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertexTangent, _godot_object, idx, tangent);
	}
	/**
	Sets the UV of the given vertex.
	*/
	void setVertexUv(in long idx, in Vector2 uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertexUv, _godot_object, idx, uv);
	}
	/**
	Sets the UV2 of the given vertex.
	*/
	void setVertexUv2(in long idx, in Vector2 uv2)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertexUv2, _godot_object, idx, uv2);
	}
	/**
	Sets the bone weights of the given vertex.
	*/
	void setVertexWeights(in long idx, in PoolRealArray weights)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertexWeights, _godot_object, idx, weights);
	}
}
