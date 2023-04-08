/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.meshdatatool;
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
import godot.arraymesh;
import godot.material;
/**

*/
@GodotBaseClass struct MeshDataTool
{
	package(godot) enum string _GODOT_internal_name = "MeshDataTool";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in MeshDataTool other) const
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
	/// Construct a new instance of MeshDataTool.
	/// Note: use `memnew!MeshDataTool` instead.
	static MeshDataTool _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MeshDataTool");
		if(constructor is null) return typeof(this).init;
		return cast(MeshDataTool)(constructor());
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	GodotError commitToSurface(ArrayMesh mesh)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.commitToSurface, _godot_object, mesh);
	}
	/**
	
	*/
	GodotError createFromSurface(ArrayMesh mesh, in long surface)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.createFromSurface, _godot_object, mesh, surface);
	}
	/**
	
	*/
	long getEdgeCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getEdgeCount, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getEdgeFaces(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getEdgeFaces, _godot_object, idx);
	}
	/**
	
	*/
	Variant getEdgeMeta(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getEdgeMeta, _godot_object, idx);
	}
	/**
	
	*/
	long getEdgeVertex(in long idx, in long vertex) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getEdgeVertex, _godot_object, idx, vertex);
	}
	/**
	
	*/
	long getFaceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFaceCount, _godot_object);
	}
	/**
	
	*/
	long getFaceEdge(in long idx, in long edge) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFaceEdge, _godot_object, idx, edge);
	}
	/**
	
	*/
	Variant getFaceMeta(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getFaceMeta, _godot_object, idx);
	}
	/**
	
	*/
	Vector3 getFaceNormal(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getFaceNormal, _godot_object, idx);
	}
	/**
	
	*/
	long getFaceVertex(in long idx, in long vertex) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFaceVertex, _godot_object, idx, vertex);
	}
	/**
	
	*/
	long getFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFormat, _godot_object);
	}
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getMaterial, _godot_object);
	}
	/**
	
	*/
	Vector3 getVertex(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getVertex, _godot_object, idx);
	}
	/**
	
	*/
	PoolIntArray getVertexBones(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getVertexBones, _godot_object, idx);
	}
	/**
	
	*/
	Color getVertexColor(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getVertexColor, _godot_object, idx);
	}
	/**
	
	*/
	long getVertexCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVertexCount, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getVertexEdges(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getVertexEdges, _godot_object, idx);
	}
	/**
	
	*/
	PoolIntArray getVertexFaces(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getVertexFaces, _godot_object, idx);
	}
	/**
	
	*/
	Variant getVertexMeta(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getVertexMeta, _godot_object, idx);
	}
	/**
	
	*/
	Vector3 getVertexNormal(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getVertexNormal, _godot_object, idx);
	}
	/**
	
	*/
	Plane getVertexTangent(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Plane)(GDNativeClassBinding.getVertexTangent, _godot_object, idx);
	}
	/**
	
	*/
	Vector2 getVertexUv(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getVertexUv, _godot_object, idx);
	}
	/**
	
	*/
	Vector2 getVertexUv2(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getVertexUv2, _godot_object, idx);
	}
	/**
	
	*/
	PoolRealArray getVertexWeights(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(GDNativeClassBinding.getVertexWeights, _godot_object, idx);
	}
	/**
	
	*/
	void setEdgeMeta(VariantArg1)(in long idx, in VariantArg1 meta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEdgeMeta, _godot_object, idx, meta);
	}
	/**
	
	*/
	void setFaceMeta(VariantArg1)(in long idx, in VariantArg1 meta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFaceMeta, _godot_object, idx, meta);
	}
	/**
	
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaterial, _godot_object, material);
	}
	/**
	
	*/
	void setVertex(in long idx, in Vector3 vertex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertex, _godot_object, idx, vertex);
	}
	/**
	
	*/
	void setVertexBones(in long idx, in PoolIntArray bones)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertexBones, _godot_object, idx, bones);
	}
	/**
	
	*/
	void setVertexColor(in long idx, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertexColor, _godot_object, idx, color);
	}
	/**
	
	*/
	void setVertexMeta(VariantArg1)(in long idx, in VariantArg1 meta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertexMeta, _godot_object, idx, meta);
	}
	/**
	
	*/
	void setVertexNormal(in long idx, in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertexNormal, _godot_object, idx, normal);
	}
	/**
	
	*/
	void setVertexTangent(in long idx, in Plane tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertexTangent, _godot_object, idx, tangent);
	}
	/**
	
	*/
	void setVertexUv(in long idx, in Vector2 uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertexUv, _godot_object, idx, uv);
	}
	/**
	
	*/
	void setVertexUv2(in long idx, in Vector2 uv2)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertexUv2, _godot_object, idx, uv2);
	}
	/**
	
	*/
	void setVertexWeights(in long idx, in PoolRealArray weights)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertexWeights, _godot_object, idx, weights);
	}
}
