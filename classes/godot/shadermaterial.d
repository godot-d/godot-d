/**
A material that uses a custom $(D Shader) program.

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
import godot.resource;
import godot.reference;
import godot.shader;
/**
A material that uses a custom $(D Shader) program.

A material that uses a custom $(D Shader) program to render either items to screen or process particles. You can create multiple materials for the same shader but configure different values for the uniforms defined in the shader.
*/
@GodotBaseClass struct ShaderMaterial
{
	package(godot) enum string _GODOT_internal_name = "ShaderMaterial";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Material _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_shader_changed") GodotMethod!(void) _shaderChanged;
		@GodotName("get_shader") GodotMethod!(Shader) getShader;
		@GodotName("get_shader_param") GodotMethod!(Variant, String) getShaderParam;
		@GodotName("property_can_revert") GodotMethod!(bool, String) propertyCanRevert;
		@GodotName("property_get_revert") GodotMethod!(Variant, String) propertyGetRevert;
		@GodotName("set_shader") GodotMethod!(void, Shader) setShader;
		@GodotName("set_shader_param") GodotMethod!(void, String, Variant) setShaderParam;
	}
	/// 
	pragma(inline, true) bool opEquals(in ShaderMaterial other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) ShaderMaterial opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of ShaderMaterial.
	/// Note: use `memnew!ShaderMaterial` instead.
	static ShaderMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ShaderMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(ShaderMaterial)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _shaderChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_shader_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Ref!Shader getShader() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shader)(GDNativeClassBinding.getShader, _godot_object);
	}
	/**
	Returns the current value set for this material of a uniform in the shader.
	*/
	Variant getShaderParam(in String param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getShaderParam, _godot_object, param);
	}
	/**
	Returns `true` if the property identified by `name` can be reverted to a default value.
	*/
	bool propertyCanRevert(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.propertyCanRevert, _godot_object, name);
	}
	/**
	Returns the default value of the material property with given `name`.
	*/
	Variant propertyGetRevert(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.propertyGetRevert, _godot_object, name);
	}
	/**
	
	*/
	void setShader(Shader shader)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShader, _godot_object, shader);
	}
	/**
	Changes the value set for this material of a uniform in the shader. $(B Note:) `param` must match the name of the uniform in the code exactly.
	*/
	void setShaderParam(VariantArg1)(in String param, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShaderParam, _godot_object, param, value);
	}
	/**
	The $(D Shader) program used to render this material.
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
