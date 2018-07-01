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
/**
Base class for all primitive meshes. Handles applying a $(D Material) to a primitive mesh.


*/
@GodotBaseClass struct PrimitiveMesh
{
	static immutable string _GODOT_internal_name = "PrimitiveMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; Mesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void) _GODOT__update;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update") = _GODOT__update;
	/**
	
	*/
	void _update() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_material") = _GODOT_set_material;
	/**
	
	*/
	void setMaterial(Material material)
	{
		_GODOT_set_material.bind("PrimitiveMesh", "set_material");
		ptrcall!(void)(_GODOT_set_material, _godot_object, material);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_material") = _GODOT_get_material;
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		_GODOT_get_material.bind("PrimitiveMesh", "get_material");
		return ptrcall!(Material)(_GODOT_get_material, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_mesh_arrays;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mesh_arrays") = _GODOT_get_mesh_arrays;
	/**
	
	*/
	Array getMeshArrays() const
	{
		_GODOT_get_mesh_arrays.bind("PrimitiveMesh", "get_mesh_arrays");
		return ptrcall!(Array)(_GODOT_get_mesh_arrays, _godot_object);
	}
	package(godot) static GodotMethod!(void, AABB) _GODOT_set_custom_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_aabb") = _GODOT_set_custom_aabb;
	/**
	
	*/
	void setCustomAabb(in AABB aabb)
	{
		_GODOT_set_custom_aabb.bind("PrimitiveMesh", "set_custom_aabb");
		ptrcall!(void)(_GODOT_set_custom_aabb, _godot_object, aabb);
	}
	package(godot) static GodotMethod!(AABB) _GODOT_get_custom_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_aabb") = _GODOT_get_custom_aabb;
	/**
	
	*/
	AABB getCustomAabb() const
	{
		_GODOT_get_custom_aabb.bind("PrimitiveMesh", "get_custom_aabb");
		return ptrcall!(AABB)(_GODOT_get_custom_aabb, _godot_object);
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
