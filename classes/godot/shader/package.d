/**
A custom shader program.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.shader;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.texture;
import godot.reference;
/**
A custom shader program.

This class allows you to define a custom shader program that can be used for various materials to render objects.
*/
@GodotBaseClass struct Shader
{
	enum string _GODOT_internal_name = "Shader";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_mode") GodotMethod!(Shader.Mode) getMode;
		@GodotName("set_code") GodotMethod!(void, String) setCode;
		@GodotName("get_code") GodotMethod!(String) getCode;
		@GodotName("set_default_texture_param") GodotMethod!(void, String, Texture) setDefaultTextureParam;
		@GodotName("get_default_texture_param") GodotMethod!(Texture, String) getDefaultTextureParam;
		@GodotName("has_param") GodotMethod!(bool, String) hasParam;
	}
	bool opEquals(in Shader other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Shader opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Shader _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Shader");
		if(constructor is null) return typeof(this).init;
		return cast(Shader)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Mode : int
	{
		/**
		
		*/
		modeSpatial = 0,
		/**
		
		*/
		modeCanvasItem = 1,
		/**
		
		*/
		modeParticles = 2,
	}
	/// 
	enum Constants : int
	{
		modeSpatial = 0,
		modeCanvasItem = 1,
		modeParticles = 2,
	}
	/**
	Returns the shader mode for the shader, either `MODE_CANVAS_ITEM`, `MODE_SPATIAL` or `MODE_PARTICLES`
	*/
	Shader.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shader.Mode)(_classBinding.getMode, _godot_object);
	}
	/**
	
	*/
	void setCode(in String code)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCode, _godot_object, code);
	}
	/**
	
	*/
	String getCode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getCode, _godot_object);
	}
	/**
	
	*/
	void setDefaultTextureParam(in String param, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultTextureParam, _godot_object, param, texture);
	}
	/**
	
	*/
	Ref!Texture getDefaultTextureParam(in String param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getDefaultTextureParam, _godot_object, param);
	}
	/**
	
	*/
	bool hasParam(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasParam, _godot_object, name);
	}
	/**
	
	*/
	@property String code()
	{
		return getCode();
	}
	/// ditto
	@property void code(String v)
	{
		setCode(v);
	}
}
