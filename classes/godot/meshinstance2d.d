/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.meshinstance2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.mesh;
import godot.texture;
/**

*/
@GodotBaseClass struct MeshInstance2D
{
	static immutable string _GODOT_internal_name = "MeshInstance2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in MeshInstance2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MeshInstance2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MeshInstance2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MeshInstance2D");
		if(constructor is null) return typeof(this).init;
		return cast(MeshInstance2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Mesh) _GODOT_set_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mesh") = _GODOT_set_mesh;
	/**
	
	*/
	void setMesh(Mesh mesh)
	{
		_GODOT_set_mesh.bind("MeshInstance2D", "set_mesh");
		ptrcall!(void)(_GODOT_set_mesh, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(Mesh) _GODOT_get_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mesh") = _GODOT_get_mesh;
	/**
	
	*/
	Ref!Mesh getMesh() const
	{
		_GODOT_get_mesh.bind("MeshInstance2D", "get_mesh");
		return ptrcall!(Mesh)(_GODOT_get_mesh, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(Texture texture)
	{
		_GODOT_set_texture.bind("MeshInstance2D", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		_GODOT_get_texture.bind("MeshInstance2D", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_map") = _GODOT_set_normal_map;
	/**
	
	*/
	void setNormalMap(Texture normal_map)
	{
		_GODOT_set_normal_map.bind("MeshInstance2D", "set_normal_map");
		ptrcall!(void)(_GODOT_set_normal_map, _godot_object, normal_map);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_map") = _GODOT_get_normal_map;
	/**
	
	*/
	Ref!Texture getNormalMap() const
	{
		_GODOT_get_normal_map.bind("MeshInstance2D", "get_normal_map");
		return ptrcall!(Texture)(_GODOT_get_normal_map, _godot_object);
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
	/**
	
	*/
	@property Texture texture()
	{
		return getTexture();
	}
	/// ditto
	@property void texture(Texture v)
	{
		setTexture(v);
	}
	/**
	
	*/
	@property Texture normalMap()
	{
		return getNormalMap();
	}
	/// ditto
	@property void normalMap(Texture v)
	{
		setNormalMap(v);
	}
}
