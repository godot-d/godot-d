/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.shader;
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
import godot.resource;
import godot.reference;
import godot.texture;
/**

*/
@GodotBaseClass struct Shader
{
	package(godot) enum string _GODOT_internal_name = "Shader";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_code") GodotMethod!(String) getCode;
		@GodotName("get_custom_defines") GodotMethod!(String) getCustomDefines;
		@GodotName("get_default_texture_param") GodotMethod!(Texture, String) getDefaultTextureParam;
		@GodotName("get_mode") GodotMethod!(Shader.Mode) getMode;
		@GodotName("has_param") GodotMethod!(bool, String) hasParam;
		@GodotName("set_code") GodotMethod!(void, String) setCode;
		@GodotName("set_custom_defines") GodotMethod!(void, String) setCustomDefines;
		@GodotName("set_default_texture_param") GodotMethod!(void, String, Texture) setDefaultTextureParam;
	}
	/// 
	pragma(inline, true) bool opEquals(in Shader other) const
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
	/// Construct a new instance of Shader.
	/// Note: use `memnew!Shader` instead.
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
		/** */
		modeSpatial = 0,
		/** */
		modeCanvasItem = 1,
		/** */
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
		return ptrcall!(String)(GDNativeClassBinding.getCode, _godot_object);
	}
	/**
	
	*/
	String getCustomDefines() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCustomDefines, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getDefaultTextureParam(in String param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getDefaultTextureParam, _godot_object, param);
	}
	/**
	
	*/
	Shader.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shader.Mode)(GDNativeClassBinding.getMode, _godot_object);
	}
	/**
	
	*/
	bool hasParam(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasParam, _godot_object, name);
	}
	/**
	
	*/
	void setCode(in String code)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCode, _godot_object, code);
	}
	/**
	
	*/
	void setCustomDefines(in String custom_defines)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomDefines, _godot_object, custom_defines);
	}
	/**
	
	*/
	void setDefaultTextureParam(in String param, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultTextureParam, _godot_object, param, texture);
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
	/**
	
	*/
	@property String customDefines()
	{
		return getCustomDefines();
	}
	/// ditto
	@property void customDefines(String v)
	{
		setCustomDefines(v);
	}
}
