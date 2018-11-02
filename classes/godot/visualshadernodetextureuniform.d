/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodetextureuniform;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernodeuniform;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct VisualShaderNodeTextureUniform
{
	enum string _GODOT_internal_name = "VisualShaderNodeTextureUniform";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNodeUniform _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_texture_type") GodotMethod!(void, long) setTextureType;
		@GodotName("get_texture_type") GodotMethod!(VisualShaderNodeTextureUniform.TextureType) getTextureType;
		@GodotName("set_color_default") GodotMethod!(void, long) setColorDefault;
		@GodotName("get_color_default") GodotMethod!(VisualShaderNodeTextureUniform.ColorDefault) getColorDefault;
	}
	bool opEquals(in VisualShaderNodeTextureUniform other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeTextureUniform opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		
		*/
		typeData = 0,
		/**
		
		*/
		typeColor = 1,
		/**
		
		*/
		typeNormalmap = 2,
		/**
		
		*/
		typeAniso = 3,
	}
	/// 
	enum ColorDefault : int
	{
		/**
		
		*/
		colorDefaultWhite = 0,
		/**
		
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
	void setTextureType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextureType, _godot_object, type);
	}
	/**
	
	*/
	VisualShaderNodeTextureUniform.TextureType getTextureType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeTextureUniform.TextureType)(_classBinding.getTextureType, _godot_object);
	}
	/**
	
	*/
	void setColorDefault(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColorDefault, _godot_object, type);
	}
	/**
	
	*/
	VisualShaderNodeTextureUniform.ColorDefault getColorDefault() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeTextureUniform.ColorDefault)(_classBinding.getColorDefault, _godot_object);
	}
	/**
	
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
	/**
	
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
}
