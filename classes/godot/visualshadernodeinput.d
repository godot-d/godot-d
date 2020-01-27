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
import godot.d.meta;
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

*/
@GodotBaseClass struct VisualShaderNodeInput
{
	enum string _GODOT_internal_name = "VisualShaderNodeInput";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_input_name") GodotMethod!(String) getInputName;
		@GodotName("get_input_real_name") GodotMethod!(String) getInputRealName;
		@GodotName("set_input_name") GodotMethod!(void, String) setInputName;
	}
	bool opEquals(in VisualShaderNodeInput other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeInput opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		return ptrcall!(String)(_classBinding.getInputName, _godot_object);
	}
	/**
	
	*/
	String getInputRealName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getInputRealName, _godot_object);
	}
	/**
	
	*/
	void setInputName(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInputName, _godot_object, name);
	}
	/**
	
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
