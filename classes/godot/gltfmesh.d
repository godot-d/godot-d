/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gltfmesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.resource;
import godot.arraymesh;
/**

*/
@GodotBaseClass struct GLTFMesh
{
	package(godot) enum string _GODOT_internal_name = "GLTFMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_blend_weights") GodotMethod!(PoolRealArray) getBlendWeights;
		@GodotName("get_instance_materials") GodotMethod!(Array) getInstanceMaterials;
		@GodotName("get_mesh") GodotMethod!(ArrayMesh) getMesh;
		@GodotName("set_blend_weights") GodotMethod!(void, PoolRealArray) setBlendWeights;
		@GodotName("set_instance_materials") GodotMethod!(void, Array) setInstanceMaterials;
		@GodotName("set_mesh") GodotMethod!(void, ArrayMesh) setMesh;
	}
	/// 
	pragma(inline, true) bool opEquals(in GLTFMesh other) const
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
	/// Construct a new instance of GLTFMesh.
	/// Note: use `memnew!GLTFMesh` instead.
	static GLTFMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GLTFMesh");
		if(constructor is null) return typeof(this).init;
		return cast(GLTFMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	PoolRealArray getBlendWeights()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(GDNativeClassBinding.getBlendWeights, _godot_object);
	}
	/**
	
	*/
	Array getInstanceMaterials()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getInstanceMaterials, _godot_object);
	}
	/**
	
	*/
	Ref!ArrayMesh getMesh()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ArrayMesh)(GDNativeClassBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	void setBlendWeights(in PoolRealArray blend_weights)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlendWeights, _godot_object, blend_weights);
	}
	/**
	
	*/
	void setInstanceMaterials(in Array instance_materials)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInstanceMaterials, _godot_object, instance_materials);
	}
	/**
	
	*/
	void setMesh(ArrayMesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMesh, _godot_object, mesh);
	}
	/**
	
	*/
	@property PoolRealArray blendWeights()
	{
		return getBlendWeights();
	}
	/// ditto
	@property void blendWeights(PoolRealArray v)
	{
		setBlendWeights(v);
	}
	/**
	
	*/
	@property Array instanceMaterials()
	{
		return getInstanceMaterials();
	}
	/// ditto
	@property void instanceMaterials(Array v)
	{
		setInstanceMaterials(v);
	}
	/**
	
	*/
	@property ArrayMesh mesh()
	{
		return getMesh();
	}
	/// ditto
	@property void mesh(ArrayMesh v)
	{
		setMesh(v);
	}
}
