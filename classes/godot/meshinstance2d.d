/**
Node used for displaying a $(D Mesh) in 2D.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.meshinstance2d;
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
import godot.node2d;
import godot.mesh;
import godot.texture;
/**
Node used for displaying a $(D Mesh) in 2D.

Can be constructed from an existing $(D Sprite) via a tool in the editor toolbar. Select "Sprite" then "Convert to Mesh2D", select settings in popup and press "Create Mesh2D".
*/
@GodotBaseClass struct MeshInstance2D
{
	package(godot) enum string _GODOT_internal_name = "MeshInstance2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("get_normal_map") GodotMethod!(Texture) getNormalMap;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("set_mesh") GodotMethod!(void, Mesh) setMesh;
		@GodotName("set_normal_map") GodotMethod!(void, Texture) setNormalMap;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
	}
	/// 
	pragma(inline, true) bool opEquals(in MeshInstance2D other) const
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
	/// Construct a new instance of MeshInstance2D.
	/// Note: use `memnew!MeshInstance2D` instead.
	static MeshInstance2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MeshInstance2D");
		if(constructor is null) return typeof(this).init;
		return cast(MeshInstance2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!Mesh getMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getNormalMap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getNormalMap, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getTexture, _godot_object);
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
	void setNormalMap(Texture normal_map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNormalMap, _godot_object, normal_map);
	}
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTexture, _godot_object, texture);
	}
	/**
	The $(D Mesh) that will be drawn by the $(D MeshInstance2D).
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
	The normal map that will be used if using the default $(D CanvasItemMaterial).
	$(B Note:) Godot expects the normal map to use X+, Y-, and Z+ coordinates. See $(D url=http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates)this page$(D /url) for a comparison of normal map coordinates expected by popular engines.
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
	/**
	The $(D Texture) that will be used if using the default $(D CanvasItemMaterial). Can be accessed as `TEXTURE` in CanvasItem shader.
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
}
