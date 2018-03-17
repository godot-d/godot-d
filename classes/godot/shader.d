/**
To be changed, ignore.

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
/**
To be changed, ignore.


*/
@GodotBaseClass struct Shader
{
	static immutable string _GODOT_internal_name = "Shader";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(Shader.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	/**
	
	*/
	Shader.Mode getMode() const
	{
		_GODOT_get_mode.bind("Shader", "get_mode");
		return ptrcall!(Shader.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_code") = _GODOT_set_code;
	/**
	
	*/
	void setCode(StringArg0)(in StringArg0 code)
	{
		_GODOT_set_code.bind("Shader", "set_code");
		ptrcall!(void)(_GODOT_set_code, _godot_object, code);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_code") = _GODOT_get_code;
	/**
	
	*/
	String getCode() const
	{
		_GODOT_get_code.bind("Shader", "get_code");
		return ptrcall!(String)(_GODOT_get_code, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Texture) _GODOT_set_default_texture_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_texture_param") = _GODOT_set_default_texture_param;
	/**
	
	*/
	void setDefaultTextureParam(StringArg0)(in StringArg0 param, Texture texture)
	{
		_GODOT_set_default_texture_param.bind("Shader", "set_default_texture_param");
		ptrcall!(void)(_GODOT_set_default_texture_param, _godot_object, param, texture);
	}
	package(godot) static GodotMethod!(Texture, String) _GODOT_get_default_texture_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_texture_param") = _GODOT_get_default_texture_param;
	/**
	
	*/
	Ref!Texture getDefaultTextureParam(StringArg0)(in StringArg0 param) const
	{
		_GODOT_get_default_texture_param.bind("Shader", "get_default_texture_param");
		return ptrcall!(Texture)(_GODOT_get_default_texture_param, _godot_object, param);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_param") = _GODOT_has_param;
	/**
	
	*/
	bool hasParam(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_param.bind("Shader", "has_param");
		return ptrcall!(bool)(_GODOT_has_param, _godot_object, name);
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
