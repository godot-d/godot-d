/**
A CSG Mesh shape that uses a mesh resource.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgmesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.csgprimitive;
import godot.mesh;
import godot.csgshape;
import godot.visualinstance;
import godot.spatial;
import godot.node;
/**
A CSG Mesh shape that uses a mesh resource.

This CSG node allows you to use any mesh resource as a CSG shape, provided it is closed, does not self-intersect, does not contain internal faces and has no edges that connect to more then two faces.
*/
@GodotBaseClass struct CSGMesh
{
	enum string _GODOT_internal_name = "CSGMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_mesh") GodotMethod!(void, Mesh) setMesh;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("_mesh_changed") GodotMethod!(void) _meshChanged;
	}
	bool opEquals(in CSGMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CSGMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CSGMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CSGMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CSGMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setMesh(Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMesh, _godot_object, mesh);
	}
	/**
	
	*/
	Ref!Mesh getMesh()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(_classBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	void _meshChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_mesh_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The mesh resource to use as a CSG shape.
	*/
	@property Mesh mesh()
	{
		return getMesh();
	}
	/// ditto
	@property void mesh(Mesh v)
	{
		setMesh(v);
	}
}
