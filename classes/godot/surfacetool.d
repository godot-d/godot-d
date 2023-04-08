/**


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
	/**
	
	*/
	void addBones(in PoolIntArray bones)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addBones, _godot_object, bones);
	}
	/**
	
	*/
	void addColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addColor, _godot_object, color);
	}
	/**
	
	*/
	void addIndex(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIndex, _godot_object, index);
	}
	/**
	
	*/
	void addNormal(in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addNormal, _godot_object, normal);
	}
	/**
	
	*/
	void addSmoothGroup(in bool smooth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSmoothGroup, _godot_object, smooth);
	}
	/**
	
	*/
	void addTangent(in Plane tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTangent, _godot_object, tangent);
	}
	/**
	
	*/
	void addTriangleFan(in PoolVector3Array vertices, in PoolVector2Array uvs = PoolVector2Array.init, in PoolColorArray colors = PoolColorArray.init, in PoolVector2Array uv2s = PoolVector2Array.init, in PoolVector3Array normals = PoolVector3Array.init, in Array tangents = Array.make())
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTriangleFan, _godot_object, vertices, uvs, colors, uv2s, normals, tangents);
	}
	/**
	
	*/
	void addUv(in Vector2 uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addUv, _godot_object, uv);
	}
	/**
	
	*/
	void addUv2(in Vector2 uv2)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addUv2, _godot_object, uv2);
	}
	/**
	
	*/
	void addVertex(in Vector3 vertex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addVertex, _godot_object, vertex);
	}
	/**
	
	*/
	void addWeights(in PoolRealArray weights)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addWeights, _godot_object, weights);
	}
	/**
	
	*/
	void appendFrom(Mesh existing, in long surface, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.appendFrom, _godot_object, existing, surface, transform);
	}
	/**
	
	*/
	void begin(in long primitive)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.begin, _godot_object, primitive);
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
	Ref!ArrayMesh commit(ArrayMesh existing = ArrayMesh.init, in long flags = 2194432)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ArrayMesh)(GDNativeClassBinding.commit, _godot_object, existing, flags);
	}
	/**
	
	*/
	Array commitToArrays()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.commitToArrays, _godot_object);
	}
	/**
	
	*/
	void createFrom(Mesh existing, in long surface)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createFrom, _godot_object, existing, surface);
	}
	/**
	
	*/
	void createFromBlendShape(Mesh existing, in long surface, in String blend_shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createFromBlendShape, _godot_object, existing, surface, blend_shape);
	}
	/**
	
	*/
	void deindex()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.deindex, _godot_object);
	}
	/**
	
	*/
	void generateNormals(in bool flip = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.generateNormals, _godot_object, flip);
	}
	/**
	
	*/
	void generateTangents()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.generateTangents, _godot_object);
	}
	/**
	
	*/
	void index()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.index, _godot_object);
	}
	/**
	
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaterial, _godot_object, material);
	}
}
