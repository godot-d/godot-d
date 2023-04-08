/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgmesh;
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
import godot.csgprimitive;
import godot.material;
import godot.mesh;
/**

*/
@GodotBaseClass struct CSGMesh
{
	package(godot) enum string _GODOT_internal_name = "CSGMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_mesh_changed") GodotMethod!(void) _meshChanged;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("set_mesh") GodotMethod!(void, Mesh) setMesh;
	}
	/// 
	pragma(inline, true) bool opEquals(in CSGMesh other) const
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
	/// Construct a new instance of CSGMesh.
	/// Note: use `memnew!CSGMesh` instead.
	static CSGMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CSGMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CSGMesh)(constructor());
	}
	/**
	
	*/
	void _meshChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_mesh_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	Ref!Mesh getMesh()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getMesh, _godot_object);
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
	void setMesh(Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMesh, _godot_object, mesh);
	}
	/**
	
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
