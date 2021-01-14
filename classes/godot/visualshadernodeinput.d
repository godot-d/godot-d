/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodeinput;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**
Gives access to input variables (built-ins) available for the shader. See the shading reference for the list of available built-ins for each shader type (check `Tutorials` section for link).
*/
@GodotBaseClass struct VisualShaderNodeInput
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeInput";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_input_name") GodotMethod!(String) getInputName;
		@GodotName("get_input_real_name") GodotMethod!(String) getInputRealName;
		@GodotName("set_input_name") GodotMethod!(void, String) setInputName;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeInput other) const
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
	/// Construct a new instance of VisualShaderNodeInput.
	/// Note: use `memnew!VisualShaderNodeInput` instead.
	static VisualShaderNodeInput _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeInput");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeInput)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String getInputName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getInputName, _godot_object);
	}
	/**
	
	*/
	String getInputRealName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getInputRealName, _godot_object);
	}
	/**
	
	*/
	void setInputName(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputName, _godot_object, name);
	}
	/**
	One of the several input constants in lower-case style like: "vertex"(`VERTEX`) or "point_size"(`POINT_SIZE`).
	*/
	@property String inputName()
	{
		return getInputName();
	}
	/// ditto
	@property void inputName(String v)
	{
		setInputName(v);
	}
}
