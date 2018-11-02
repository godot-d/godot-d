/**
Base class for all primitive meshes. Handles applying a $(D Material) to a primitive mesh.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.primitivemesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.mesh;
import godot.material;
import godot.resource;
import godot.reference;
/**
Base class for all primitive meshes. Handles applying a $(D Material) to a primitive mesh.


*/
@GodotBaseClass struct PrimitiveMesh
{
	enum string _GODOT_internal_name = "PrimitiveMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; Mesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_update") GodotMethod!(void) _update;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("get_mesh_arrays") GodotMethod!(Array) getMeshArrays;
		@GodotName("set_custom_aabb") GodotMethod!(void, AABB) setCustomAabb;
		@GodotName("get_custom_aabb") GodotMethod!(AABB) getCustomAabb;
		@GodotName("set_flip_faces") GodotMethod!(void, bool) setFlipFaces;
		@GodotName("get_flip_faces") GodotMethod!(bool) getFlipFaces;
	}
	bool opEquals(in PrimitiveMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PrimitiveMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PrimitiveMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PrimitiveMesh");
		if(constructor is null) return typeof(this).init;
		return cast(PrimitiveMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _update() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaterial, _godot_object, material);
	}
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(_classBinding.getMaterial, _godot_object);
	}
	/**
	
	*/
	Array getMeshArrays() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getMeshArrays, _godot_object);
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
	void setFlipFaces(in bool flip_faces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlipFaces, _godot_object, flip_faces);
	}
	/**
	
	*/
	bool getFlipFaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getFlipFaces, _godot_object);
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
	/**
	
	*/
	@property bool flipFaces()
	{
		return getFlipFaces();
	}
	/// ditto
	@property void flipFaces(bool v)
	{
		setFlipFaces(v);
	}
}
