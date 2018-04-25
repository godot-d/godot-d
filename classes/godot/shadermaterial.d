/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.shadermaterial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.material;
import godot.shader;
/**

*/
@GodotBaseClass struct ShaderMaterial
{
	static immutable string _GODOT_internal_name = "ShaderMaterial";
public:
@nogc nothrow:
	union { godot_object _godot_object; Material _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ShaderMaterial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ShaderMaterial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ShaderMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ShaderMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(ShaderMaterial)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Shader) _GODOT_set_shader;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shader") = _GODOT_set_shader;
	/**
	
	*/
	void setShader(Shader shader)
	{
		_GODOT_set_shader.bind("ShaderMaterial", "set_shader");
		ptrcall!(void)(_GODOT_set_shader, _godot_object, shader);
	}
	package(godot) static GodotMethod!(Shader) _GODOT_get_shader;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shader") = _GODOT_get_shader;
	/**
	
	*/
	Ref!Shader getShader() const
	{
		_GODOT_get_shader.bind("ShaderMaterial", "get_shader");
		return ptrcall!(Shader)(_GODOT_get_shader, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set_shader_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shader_param") = _GODOT_set_shader_param;
	/**
	
	*/
	void setShaderParam(StringArg0, VariantArg1)(in StringArg0 param, in VariantArg1 value)
	{
		_GODOT_set_shader_param.bind("ShaderMaterial", "set_shader_param");
		ptrcall!(void)(_GODOT_set_shader_param, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_get_shader_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shader_param") = _GODOT_get_shader_param;
	/**
	
	*/
	Variant getShaderParam(StringArg0)(in StringArg0 param) const
	{
		_GODOT_get_shader_param.bind("ShaderMaterial", "get_shader_param");
		return ptrcall!(Variant)(_GODOT_get_shader_param, _godot_object, param);
	}
	/**
	
	*/
	@property Shader shader()
	{
		return getShader();
	}
	/// ditto
	@property void shader(Shader v)
	{
		setShader(v);
	}
}
