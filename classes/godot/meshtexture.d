/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.meshtexture;
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
import godot.texture;
import godot.mesh;
/**

*/
@GodotBaseClass struct MeshTexture
{
	package(godot) enum string _GODOT_internal_name = "MeshTexture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_base_texture") GodotMethod!(Texture) getBaseTexture;
		@GodotName("get_image_size") GodotMethod!(Vector2) getImageSize;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("set_base_texture") GodotMethod!(void, Texture) setBaseTexture;
		@GodotName("set_image_size") GodotMethod!(void, Vector2) setImageSize;
		@GodotName("set_mesh") GodotMethod!(void, Mesh) setMesh;
	}
	/// 
	pragma(inline, true) bool opEquals(in MeshTexture other) const
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
	/// Construct a new instance of MeshTexture.
	/// Note: use `memnew!MeshTexture` instead.
	static MeshTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MeshTexture");
		if(constructor is null) return typeof(this).init;
		return cast(MeshTexture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!Texture getBaseTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getBaseTexture, _godot_object);
	}
	/**
	
	*/
	Vector2 getImageSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getImageSize, _godot_object);
	}
	/**
	
	*/
	Ref!Mesh getMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	void setBaseTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBaseTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setImageSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setImageSize, _godot_object, size);
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
	@property Texture baseTexture()
	{
		return getBaseTexture();
	}
	/// ditto
	@property void baseTexture(Texture v)
	{
		setBaseTexture(v);
	}
	/**
	
	*/
	@property Vector2 imageSize()
	{
		return getImageSize();
	}
	/// ditto
	@property void imageSize(Vector2 v)
	{
		setImageSize(v);
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
