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
import godot.reference;
import godot.texture;
/**
A custom shader program.

This class allows you to define a custom shader program that can be used by a $(D ShaderMaterial). Shaders allow you to write your own custom behavior for rendering objects or updating particle information. For a detailed explanation and usage, please see the tutorials linked below.
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
		@GodotName("get_code") GodotMethod!(String) getCode;
		@GodotName("get_default_texture_param") GodotMethod!(Texture, String) getDefaultTextureParam;
		@GodotName("get_mode") GodotMethod!(Shader.Mode) getMode;
		@GodotName("has_param") GodotMethod!(bool, String) hasParam;
		@GodotName("set_code") GodotMethod!(void, String) setCode;
		@GodotName("set_default_texture_param") GodotMethod!(void, String, Texture) setDefaultTextureParam;
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
		Mode used to draw all 3D objects.
		*/
		modeSpatial = 0,
		/**
		Mode used to draw all 2D objects.
		*/
		modeCanvasItem = 1,
		/**
		Mode used to calculate particle information on a per-particle basis. Not used for drawing.
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
	
	*/
	String getCode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getCode, _godot_object);
	}
	/**
	Returns the texture that is set as default for the specified parameter.
	$(B Note:) `param` must match the name of the uniform in the code exactly.
	*/
	Ref!Texture getDefaultTextureParam(in String param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getDefaultTextureParam, _godot_object, param);
	}
	/**
	Returns the shader mode for the shader, either $(D constant MODE_CANVAS_ITEM), $(D constant MODE_SPATIAL) or $(D constant MODE_PARTICLES).
	*/
	Shader.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shader.Mode)(_classBinding.getMode, _godot_object);
	}
	/**
	Returns `true` if the shader has this param defined as a uniform in its code.
	$(B Note:) `param` must match the name of the uniform in the code exactly.
	*/
	bool hasParam(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasParam, _godot_object, name);
	}
	/**
	
	*/
	void setCode(in String code)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCode, _godot_object, code);
	}
	/**
	Sets the default texture to be used with a texture uniform. The default is used if a texture is not set in the $(D ShaderMaterial).
	$(B Note:) `param` must match the name of the uniform in the code exactly.
	*/
	void setDefaultTextureParam(in String param, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultTextureParam, _godot_object, param, texture);
	}
	/**
	Returns the shader's code as the user has written it, not the full generated code used internally.
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
