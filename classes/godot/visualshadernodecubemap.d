/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodecubemap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.cubemap;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct VisualShaderNodeCubeMap
{
	enum string _GODOT_internal_name = "VisualShaderNodeCubeMap";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_cube_map") GodotMethod!(void, CubeMap) setCubeMap;
		@GodotName("get_cube_map") GodotMethod!(CubeMap) getCubeMap;
		@GodotName("set_texture_type") GodotMethod!(void, long) setTextureType;
		@GodotName("get_texture_type") GodotMethod!(VisualShaderNodeCubeMap.TextureType) getTextureType;
	}
	bool opEquals(in VisualShaderNodeCubeMap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeCubeMap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		
		*/
		typeData = 0,
		/**
		
		*/
		typeColor = 1,
		/**
		
		*/
		typeNormalmap = 2,
	}
	/// 
	enum Constants : int
	{
		typeData = 0,
		typeColor = 1,
		typeNormalmap = 2,
	}
	/**
	
	*/
	void setCubeMap(CubeMap value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCubeMap, _godot_object, value);
	}
	/**
	
	*/
	Ref!CubeMap getCubeMap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CubeMap)(_classBinding.getCubeMap, _godot_object);
	}
	/**
	
	*/
	void setTextureType(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextureType, _godot_object, value);
	}
	/**
	
	*/
	VisualShaderNodeCubeMap.TextureType getTextureType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeCubeMap.TextureType)(_classBinding.getTextureType, _godot_object);
	}
	/**
	
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
