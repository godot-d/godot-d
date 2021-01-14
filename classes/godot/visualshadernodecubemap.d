/**
A $(D CubeMap) sampling node to be used within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodecubemap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
import godot.cubemap;
/**
A $(D CubeMap) sampling node to be used within the visual shader graph.

Translated to `texture(cubemap, vec3)` in the shader language. Returns a color vector and alpha channel as scalar.
*/
@GodotBaseClass struct VisualShaderNodeCubeMap
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeCubeMap";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_cube_map") GodotMethod!(CubeMap) getCubeMap;
		@GodotName("get_source") GodotMethod!(VisualShaderNodeCubeMap.Source) getSource;
		@GodotName("get_texture_type") GodotMethod!(VisualShaderNodeCubeMap.TextureType) getTextureType;
		@GodotName("set_cube_map") GodotMethod!(void, CubeMap) setCubeMap;
		@GodotName("set_source") GodotMethod!(void, long) setSource;
		@GodotName("set_texture_type") GodotMethod!(void, long) setTextureType;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeCubeMap other) const
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
	/// Construct a new instance of VisualShaderNodeCubeMap.
	/// Note: use `memnew!VisualShaderNodeCubeMap` instead.
	static VisualShaderNodeCubeMap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeCubeMap");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeCubeMap)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum TextureType : int
	{
		/**
		No hints are added to the uniform declaration.
		*/
		typeData = 0,
		/**
		Adds `hint_albedo` as hint to the uniform declaration for proper sRGB to linear conversion.
		*/
		typeColor = 1,
		/**
		Adds `hint_normal` as hint to the uniform declaration, which internally converts the texture for proper usage as normal map.
		*/
		typeNormalmap = 2,
	}
	/// 
	enum Source : int
	{
		/**
		Use the $(D CubeMap) set via $(D cubeMap). If this is set to $(D source), the `samplerCube` port is ignored.
		*/
		sourceTexture = 0,
		/**
		Use the $(D CubeMap) sampler reference passed via the `samplerCube` port. If this is set to $(D source), the $(D cubeMap) texture is ignored.
		*/
		sourcePort = 1,
	}
	/// 
	enum Constants : int
	{
		sourceTexture = 0,
		typeData = 0,
		typeColor = 1,
		sourcePort = 1,
		typeNormalmap = 2,
	}
	/**
	
	*/
	Ref!CubeMap getCubeMap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CubeMap)(GDNativeClassBinding.getCubeMap, _godot_object);
	}
	/**
	
	*/
	VisualShaderNodeCubeMap.Source getSource() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeCubeMap.Source)(GDNativeClassBinding.getSource, _godot_object);
	}
	/**
	
	*/
	VisualShaderNodeCubeMap.TextureType getTextureType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeCubeMap.TextureType)(GDNativeClassBinding.getTextureType, _godot_object);
	}
	/**
	
	*/
	void setCubeMap(CubeMap value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCubeMap, _godot_object, value);
	}
	/**
	
	*/
	void setSource(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSource, _godot_object, value);
	}
	/**
	
	*/
	void setTextureType(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextureType, _godot_object, value);
	}
	/**
	The $(D CubeMap) texture to sample when using $(D constant SOURCE_TEXTURE) as $(D source).
	*/
	@property CubeMap cubeMap()
	{
		return getCubeMap();
	}
	/// ditto
	@property void cubeMap(CubeMap v)
	{
		setCubeMap(v);
	}
	/**
	Defines which source should be used for the sampling. See $(D source) for options.
	*/
	@property VisualShaderNodeCubeMap.Source source()
	{
		return getSource();
	}
	/// ditto
	@property void source(long v)
	{
		setSource(v);
	}
	/**
	Defines the type of data provided by the source texture. See $(D texturetype) for options.
	*/
	@property VisualShaderNodeCubeMap.TextureType textureType()
	{
		return getTextureType();
	}
	/// ditto
	@property void textureType(long v)
	{
		setTextureType(v);
	}
}
