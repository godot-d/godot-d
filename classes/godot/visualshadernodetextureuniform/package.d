/**
Performs a uniform texture lookup within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodetextureuniform;
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
import godot.visualshadernodeuniform;
/**
Performs a uniform texture lookup within the visual shader graph.

Performs a lookup operation on the texture provided as a uniform for the shader.
*/
@GodotBaseClass struct VisualShaderNodeTextureUniform
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeTextureUniform";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNodeUniform _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_color_default") GodotMethod!(VisualShaderNodeTextureUniform.ColorDefault) getColorDefault;
		@GodotName("get_texture_type") GodotMethod!(VisualShaderNodeTextureUniform.TextureType) getTextureType;
		@GodotName("set_color_default") GodotMethod!(void, long) setColorDefault;
		@GodotName("set_texture_type") GodotMethod!(void, long) setTextureType;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeTextureUniform other) const
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
	/// Construct a new instance of VisualShaderNodeTextureUniform.
	/// Note: use `memnew!VisualShaderNodeTextureUniform` instead.
	static VisualShaderNodeTextureUniform _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeTextureUniform");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeTextureUniform)(constructor());
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
		/**
		Adds `hint_aniso` as hint to the uniform declaration to use for a flowmap.
		*/
		typeAniso = 3,
	}
	/// 
	enum ColorDefault : int
	{
		/**
		Defaults to white color.
		*/
		colorDefaultWhite = 0,
		/**
		Defaults to black color.
		*/
		colorDefaultBlack = 1,
	}
	/// 
	enum Constants : int
	{
		typeData = 0,
		colorDefaultWhite = 0,
		colorDefaultBlack = 1,
		typeColor = 1,
		typeNormalmap = 2,
		typeAniso = 3,
	}
	/**
	
	*/
	VisualShaderNodeTextureUniform.ColorDefault getColorDefault() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeTextureUniform.ColorDefault)(GDNativeClassBinding.getColorDefault, _godot_object);
	}
	/**
	
	*/
	VisualShaderNodeTextureUniform.TextureType getTextureType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeTextureUniform.TextureType)(GDNativeClassBinding.getTextureType, _godot_object);
	}
	/**
	
	*/
	void setColorDefault(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColorDefault, _godot_object, type);
	}
	/**
	
	*/
	void setTextureType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextureType, _godot_object, type);
	}
	/**
	Sets the default color if no texture is assigned to the uniform.
	*/
	@property VisualShaderNodeTextureUniform.ColorDefault colorDefault()
	{
		return getColorDefault();
	}
	/// ditto
	@property void colorDefault(long v)
	{
		setColorDefault(v);
	}
	/**
	Defines the type of data provided by the source texture. See $(D texturetype) for options.
	*/
	@property VisualShaderNodeTextureUniform.TextureType textureType()
	{
		return getTextureType();
	}
	/// ditto
	@property void textureType(long v)
	{
		setTextureType(v);
	}
}
