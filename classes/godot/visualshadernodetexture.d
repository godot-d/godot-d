/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodetexture;
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
import godot.visualshadernode;
import godot.resource;
import godot.reference;
import godot.texture;
/**

*/
@GodotBaseClass struct VisualShaderNodeTexture
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeTexture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_source") GodotMethod!(VisualShaderNodeTexture.Source) getSource;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("get_texture_type") GodotMethod!(VisualShaderNodeTexture.TextureType) getTextureType;
		@GodotName("set_source") GodotMethod!(void, long) setSource;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("set_texture_type") GodotMethod!(void, long) setTextureType;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeTexture other) const
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
	/// Construct a new instance of VisualShaderNodeTexture.
	/// Note: use `memnew!VisualShaderNodeTexture` instead.
	static VisualShaderNodeTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeTexture");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeTexture)(constructor());
	}
	/// 
	enum TextureType : int
	{
		/** */
		typeData = 0,
		/** */
		typeColor = 1,
		/** */
		typeNormalmap = 2,
	}
	/// 
	enum Source : int
	{
		/** */
		sourceTexture = 0,
		/** */
		sourceScreen = 1,
		/** */
		source2dTexture = 2,
		/** */
		source2dNormal = 3,
		/** */
		sourceDepth = 4,
		/** */
		sourcePort = 5,
	}
	/// 
	enum Constants : int
	{
		sourceTexture = 0,
		typeData = 0,
		typeColor = 1,
		sourceScreen = 1,
		typeNormalmap = 2,
		source2dTexture = 2,
		source2dNormal = 3,
		sourceDepth = 4,
		sourcePort = 5,
	}
	/**
	
	*/
	VisualShaderNodeTexture.Source getSource() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeTexture.Source)(GDNativeClassBinding.getSource, _godot_object);
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
	VisualShaderNodeTexture.TextureType getTextureType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeTexture.TextureType)(GDNativeClassBinding.getTextureType, _godot_object);
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
	void setTexture(Texture value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTexture, _godot_object, value);
	}
	/**
	
	*/
	void setTextureType(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextureType, _godot_object, value);
	}
	/**
	
	*/
	@property VisualShaderNodeTexture.Source source()
	{
		return getSource();
	}
	/// ditto
	@property void source(long v)
	{
		setSource(v);
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
	@property VisualShaderNodeTexture.TextureType textureType()
	{
		return getTextureType();
	}
	/// ditto
	@property void textureType(long v)
	{
		setTextureType(v);
	}
}
