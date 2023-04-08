/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.multimeshinstance2d;
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
import godot.multimesh;
import godot.texture;
/**

*/
@GodotBaseClass struct MultiMeshInstance2D
{
	package(godot) enum string _GODOT_internal_name = "MultiMeshInstance2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_multimesh") GodotMethod!(MultiMesh) getMultimesh;
		@GodotName("get_normal_map") GodotMethod!(Texture) getNormalMap;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("set_multimesh") GodotMethod!(void, MultiMesh) setMultimesh;
		@GodotName("set_normal_map") GodotMethod!(void, Texture) setNormalMap;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
	}
	/// 
	pragma(inline, true) bool opEquals(in MultiMeshInstance2D other) const
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
	/// Construct a new instance of MultiMeshInstance2D.
	/// Note: use `memnew!MultiMeshInstance2D` instead.
	static MultiMeshInstance2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MultiMeshInstance2D");
		if(constructor is null) return typeof(this).init;
		return cast(MultiMeshInstance2D)(constructor());
	}
	/**
	
	*/
	Ref!MultiMesh getMultimesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiMesh)(GDNativeClassBinding.getMultimesh, _godot_object);
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
	void setMultimesh(MultiMesh multimesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMultimesh, _godot_object, multimesh);
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
	
	*/
	@property MultiMesh multimesh()
	{
		return getMultimesh();
	}
	/// ditto
	@property void multimesh(MultiMesh v)
	{
		setMultimesh(v);
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
}
